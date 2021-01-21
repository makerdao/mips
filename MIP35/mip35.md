# MIP35: Peg Stability Module - Compound Mixed Exposure - With Farming

## Preamble
```
MIP#: 35
Title: Peg Stability Module - Compound Mixed Exposure - With Farming
Author(s): Alexis
Contributors: None
Type: Technical
Status: Conception
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
leverage the position using cdai using the same technique to farm it too.

## Paragraph Summary

The PSM Compound Mixed Exposure With Farming is based on the PSM Compound Mixed Exposure [MIP32](https://forum.makerdao.com/t/mip32-peg-stability-module-compound-mixed-exposure/5684) 
but with two farming join on each token (cDai and cUsdc).

The join use the generic 'maker join' interface. It takes as input a collateral, lends and farm it behind the scene to compound, 
on the output the join redeems the position and return the collateral.

This PSM will have 2 urns one `cDai` and one `cUsdc` which are both leverage in compound, but the maker position for this PSM is still on uscd and dai.

## Component Summary

**MIP35c1: The PSM** Contains snippet of proposed implementation.

**MIP35c2: The Lending Join**

**MIP35c3: The Burn Delegator**

**MIP35c4: Proposed Code**

**MIP35c5: Test cases** Lists existing test cases

**MIP35c6: Security considerations** Comments on the security implications

**MIP35c7: Licensing** States the license under which the proposal and code are distributed.


## Motivation

Currently, the usdc token inside the PSM is inefficient and needs to be diversified.
By using `cDai` and `cUsdc` and farm them we will bring more diversification. 
The farming bring more risk as the token is locked as collateral, but it is also motivated by a better outcome.

## Specification

The PSM Mixed Exposure is articulated around 3 main components:
- The PSM (entry point) - **Same as MIP32**
- The New Farming Join 
- The excess delegator (excess token conversion) - **Same as MIP32**

### MIP35c1: The PSM

**We reuse the MIP32 component** and plug the new `farming join` on it.

Parameters are:
- `tin`: The fraction of the Gem -> Dai transaction sent to the `vow` as a fee. Encoded as `tin` in `wad` units.
- `tout`: The fraction of the Dai -> Gem transaction sent to the `vow` as a fee. Encoded as `tout` in `wad` units.

It has 3 methods:
 - `sellGem(address usr, uint256 gemAmt)`
 - `buyGem(address usr, uint256 gemAmt)`
 - `harvest()`

`sellGem` will take in input usdc, convert usdc into dai via the new `farming join` (usdc/dai). Then it will take the dai and convert it to dai via another `farming join` (Dai/Dai) and take the fees and return the Dai.

`buyGem` will take in input dai, convert the dai after fee into dai via the `farming join` (dai/dai). Then it will take the dai and convert it to usdc via the `farming join` (Dai/Usdc) and return the Usdc.

`harvest` calls `harvest()` from both join. It can be processed by anyone.

**Additional specification:**  
The same level of debt is maintained for both positions (the leverage urn and the gem urn).

![image](https://user-images.githubusercontent.com/32653033/103847611-b4826080-506e-11eb-8392-ddf008c5d638.png)

### MIP35c2: The Farming Join 

The Farming Join is a new Join.

It uses the same join interface as MIP32. A classic join interface with an additional method `harvest()` behind an allowlist - the PSM -.  
The join has 7 parameters : 
 - `excess_delegator` The delegator.
 - `excess_margin` Margin amount until we start sending asserts to the delegator. 
 - `cf_target` The compound coefficient target in WAD
 - `cf_max` The coefficient max in WAD. It overrides the compound provided max coefficient, this parameter is here for safety. If it is set above the compound value the join will take the compound one.
 - `route` The uniswap contract to swap token.
 - `max_bonus_auction_amount` Max amount we send to uniswap each time - to figth against eventual attack and slippage.
 - `bonus_auction_duration` Minimun time between two uniswap auction. 
 

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

* **if we don't hold the position** and if we hold COMP we process to an uniswap auction using the parameters `max_bonus_auction_amount` and `bonus_auction_duration` 
to limit the frequency and the amount. We auction an amount up to max comp or the corresponding dai to go up to 100.1% + `excess_margin`

* **if we hold the position** 
   * we move the excess token minus the `excess_margin` to the delegator.
   * we move the bonus token to the delegator.
   * we call the delegator.

![image](https://user-images.githubusercontent.com/32653033/103847811-01fecd80-506f-11eb-8b9f-771c1db62912.png)


### MIP35c3: The Burn Delegator

**We reuse the MIP32 component**   
This delegator has 4 methods:
- `call` call for the join.
- `processUsdc` convert the usdc to dai via the psm.
- `processComp` convert token bonus to dai via uniswap.  
- `processDai`  convert dai to MKR via uniswap and burn the MKR.

There are 6 parameters :
- `psm` : psm address - can be changed
- `route` : uniswap route address - can be changed
- `bonus_auction_duration`: min time is sec between 2 uniswap swap
- `max_bonus_auction_amount` : max comp amount by swap.
- `dai_auction_duration`: min time is sec between 2 uniswap swap
- `max_dai_auction_amount` : max dai amount by swap.


### MIP35c4: Proposed code

The code : [dds-psm-cme](https://github.com/alexisgayte/dss-psm-cme/)

- [DssPsmCme.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.sol)
- [BurnDelegator.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/BurnDelegator.sol)
- [join-lending-leverage-auth.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-leverage-auth.sol)

- [spell-DssPsmCme-with-farming](https://github.com/alexisgayte/dss-psm-cme/blob/main/src/spell/DssPsmCompMixExposureLenderLeverageJoinSpell.sol)


### MIP35c5: Test cases
Unit tests:

- [DssPsmCme.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.t.sol)
- [BurnDelegator.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/BurnDelegator.t.sol)
- [join-lending-leverage-auth.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-leverage-auth.t.sol)

### MIP35c6: Security considerations

##### Compound technical risk

Errors or security vulnerabilities in the Compound system could result in the underlying USDC deposits to be lost or stolen.

##### Implementation technical risk

In addition to the technical risk inherent to Compound, the adapter implementation itself is non-trivial and could increase the attack/error surface.

Due to the design of multi-collateral DAI, worst-case losses should be limited to the collateral deposited in the adapter, and the debt ceiling should be set with this in mind.

There is security consideration about the code itself, compound tokens.
In this implementation as we use leverage on compound, the c-token can be sized.
By using leverage on compound we also expose ourself to a lost of the assert which is currently compensated by COMP token.

Another risk: uniswap interaction, but limited to the extra bonus.

### MIP35c7: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
