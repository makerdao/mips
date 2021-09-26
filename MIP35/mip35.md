# MIP35: Peg Stability Module - Compound Mixed Exposure - With Farming

## Preamble
```
MIP#: 35
Title: Peg Stability Module - Compound Mixed Exposure - With Farming
Author(s): Alexis
Contributors: None
Type: Technical
Status: Withdrawn
Date Proposed: 2021-01-09
Date Ratified: <yyyy-mm-dd>
Dependencies: PSM, Uniswap, Vat, Join Usdc-lendler, Join Dai-lendler 
Replaces: n/a
License: AGPL3+
```
## References

* The proposed implementation is part of the [dss-psm-cme](https://github.com/alexisgayte/dss-psm-cme) - Peg Stability Compound Mixed Exposure - project.

## Sentence Summary

This proposal define a new Peg Stability Module which converts USDC to DAI and DAI to USDC, during the conversion it lends and farm the gem via lender token and 
leverage the position using cDai using the same technique to farm it too.

## Paragraph Summary

The PSM Compound Mixed Exposure With Farming is based on the PSM Compound Mixed Exposure [MIP32](https://forum.makerdao.com/t/mip32-peg-stability-module-compound-mixed-exposure/5684) 
but with two farming join on each token (cDai and cUsdc).

The join use the generic 'maker join' interface. It takes as input a collateral, lends and farm it behind the scene to compound, 
on the output the join redeems the position and return the collateral.

This PSM will have 2 urns one `cDai` and one `cUsdc` which are both leverage in compound, but the maker position for this PSM is still on USDC and Dai.

## Component Summary

**MIP35c1: The PSM** Contains snippet of proposed implementation.

**MIP35c2: The Lending Join**

**MIP35c3: The Burn Delegator**

**MIP35c4: The Harvest Contract**

**MIP35c5: Proposed Code**

**MIP35c6: Test cases** Lists existing test cases

**MIP35c7: Security considerations** Comments on the security implications

**MIP35c8: Licensing** States the license under which the proposal and code are distributed.


## Motivation

Currently, the USDC token inside the PSM is inefficient and needs to be diversified.
By using `cDai` and `cUsdc` and farm them we will bring more diversification. 
The farming bring more risk as the token is locked as collateral, but it is also motivated by a better outcome.

## Specification

The PSM Mixed Exposure is articulated around 3 main components:
- The PSM (entry point) - **Same as MIP32**
- The New Farming Join 
- The excess delegator (excess token conversion) - **Same as MIP32**

- The harvest contract - **Same as MIP32**

### MIP35c1: The PSM

**We reuse the MIP32 component** and plug the new `farming join` on it.

It has three methods:
 - `sell(address usr, uint256 gemAmt)`
 - `buy(address usr, uint256 gemAmt)`
 - `reserve()`

It also has three admin methods
 - `file(bytes32 what, data)` : To change parameters
 - `rely(address contract)` : To add authorized address
 - `deny(address contract)` : To remove authorized address

There are three parameters:
- `tin` : The fraction of the Gem -> Dai transaction sent to the `vow` as a fee. Encoded as `tin` in `wad` units.
- `tout`: The fraction of the Dai -> Gem transaction sent to the `vow` as a fee. Encoded as `tout` in `wad` units.
- `line`: The maximum amount of USDC owns by the PSM. Encoded as `line` in `wad` units.

 
`sell` will take in input USDC, convert USDC into Dai via the new `farming join` (USDC/Dai). Then it will take the Dai and convert it to Dai via another `farming join` (Dai/Dai) and take the fees and return the Dai.

`buy` will take in input Dai, convert the Dai after fee into Dai via the `farming join` (Dai/Dai). Then it will take the Dai and convert it to USDC via the `farming join` (Dai/USDC) and return the USDC.

`reserve` will return the reserve inside the contract in Dai,token - this is based on the Uniswap reserve() call.

**Additional specification:**  
The same level of debt is maintained for both positions (the leverage urn and the gem urn).

![image](https://user-images.githubusercontent.com/32653033/103847611-b4826080-506e-11eb-8392-ddf008c5d638.png)

### MIP35c2: The Farming Join 

The Farming Join is a new Join.

It uses the same join interface as MIP32. A classic join interface with an additional method `harvest()` behind an allowlist.  

The join has one external methods
 - `exit(address guy, uint256 amount)`

The join has two authenticated methods
 - `join(address guy, uint256 amount)`
 - `harvest()` : To move excess to the delegator

The join also has forth admin methods
 - `file(bytes32 what, data)` : To change parameters
 - `rely(address contract)` : To add authorized address
 - `deny(address contract)` : To remove authorized address
 - `cage()` : To cage the join

The join has seven parameters : 
 - `excess_delegator` The delegator address.
 - `excess_margin` Margin amount until we start sending asserts to the delegator. 
 - `cf_target` The compound coefficient target in WAD
 - `cf_max` The coefficient max in WAD. It overrides the compound provided max coefficient, this parameter is here for safety. If it is set above the compound value the join will take the compound one.
 - `route` The Uniswap contract to swap token.
 - `max_bonus_auction_amount` Max amount we send to Uniswap each time - to fight against eventual attack and slippage.
 - `bonus_auction_duration` Minimum time between two Uniswap auction. 
 

The collateral is register against the `vat` and allow borrowing on it exactly like a normal collateral, but the `farming join` lends, and farm the collateral with compound.
The join is an `auth-join` type accessible only by allow list.

* The exposure is adjusted to the coefficient target each time we remove or add some assert to the vault. `Join()`, `exit()` and `harvest()`.
* The coefficient target is calculated by using the minimum between :  
       - 98% of the compound maximum coefficient  
       - 98% of `cf_max`  
       - `cf_target`   
       
  If `cf_target` is set above the maximum coefficient we use 98% of the maximum coefficient for target as safety.
  
* After `join()`, `exit()` and `harvest()` we check with compound the status of our position and reject the transaction if the vault in a liquidation stage.
* We `wind` and `Unwind` our position using a loop, we `borrow` and `mint` or `redeemUnderlying` and `repayBorrow` up to 99% of the max allowed by compound to reach the `cf_target`. 
 The last iteration will exit the loop.


`harvest()` method will first check if we have a position superior at 100.1% in compound of the underlying collateral to allow a exit from the join in good order. Please Note, Farming can bring a risk of losing some part of the main collateral.

* **if we don't hold the position** and if we hold COMP we process to an Uniswap auction using the parameters `max_bonus_auction_amount` and `bonus_auction_duration` 
to limit the frequency and the amount. We auction an amount up to max comp or the corresponding Dai to go up to 100.1% + `excess_margin`

* **if we hold the position** 
   * we move the excess token minus the `excess_margin` to the delegator.
   * we move the bonus token to the delegator.

![image](https://user-images.githubusercontent.com/32653033/103847811-01fecd80-506f-11eb-8b9f-771c1db62912.png)


### MIP35c3: The Burn Delegator

**We reuse the MIP32 component**   
This delegator has three public methods:
- `processUsdc()` convert the USDC to Dai via the PSM.
- `processComp()` convert token bonus to Dai via Uniswap.  
- `processDai()`  convert Dai to MKR via Uniswap and burn the MKR.

The join also has forth admin methods
 - `file(bytes32 what, data)` : To change parameters
 - `rely(address contract)` : To add authorized address
 - `deny(address contract)` : To remove authorized address
 - `cage()` : To cage the join
 
There are six parameters :
- `psm` : PSM address - can be changed
- `route` : Uniswap route address - can be changed
- `bonus_auction_duration`: min time is sec between 2 Uniswap swap
- `max_bonus_auction_amount` : max comp amount by swap.
- `dai_auction_duration`: min time is sec between 2 Uniswap swap
- `max_dai_auction_amount` : max Dai amount by swap.


### MIP35c4: The Harvest contract

This contract will have only one external method `harvest()` which calls harvest from the join.
Two contract will be deployed to call both join.

This contract has only one public methods:
- `harvest()` call harvest from the join

We separated this method from the PSM to allow more flexibility for update.

### MIP35c5: Proposed code

The code : [dds-psm-cme](https://github.com/alexisgayte/dss-psm-cme/)

- [DssPsmCme.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.sol)
- [BurnDelegator.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/BurnDelegator.sol)
- [LendingHarvest.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/LendingHarvest.sol)
- [join-lending-leverage-auth.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-leverage-auth.sol)

- [spell-DssPsmCme-with-farming](https://github.com/alexisgayte/dss-psm-cme/blob/main/src/spell/DssPsmCompMixExposureLenderLeverageJoinSpell.sol)


### MIP35c6: Test cases
Unit tests:

- [DssPsmCme.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.t.sol)
- [BurnDelegator.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/BurnDelegator.t.sol)
- [LendingHarvest.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/LendingHarvest.t.sol)
- [join-lending-leverage-auth.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-leverage-auth.t.sol)

### MIP35c7: Security considerations

##### Compound technical risk

Errors or security vulnerabilities in the Compound system could result in the underlying USDC deposits to be lost or stolen.

##### Implementation technical risk

In addition to the technical risk inherent to Compound, the adapter implementation itself is non-trivial and could increase the attack/error surface.

Due to the design of multi-collateral DAI, worst-case losses should be limited to the collateral deposited in the adapter, and the debt ceiling should be set with this in mind.

There is security consideration about the code itself, compound tokens.
In this implementation as we use leverage on compound, the c-token can be sized.
By using leverage on compound we also expose ourselves to a lost of the assert which is currently compensated by COMP token.

Another risk: Uniswap interaction, but limited to the extra bonus.

### MIP35c8: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
