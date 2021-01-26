# MIP32: Peg Stability Module - Compound Mixed Exposure

## Preamble
```
MIP#: 32
Title: Peg Stability Module - Compound Mixed Exposure
Author(s): Alexis
Contributors: None
Type: Technical
Status: Request for Comments (RFC)
Date Proposed: 2020-12-18
Date Ratified: <yyyy-mm-dd>
Dependencies: PSM, Uniswap, Vat, Join Usdc-lendler, Join Dai-lendler 
Replaces: n/a
License: AGPL3+
```
## References

* The proposed implementation : [dss-psm-cme](https://github.com/alexisgayte/dss-psm-cme)

## Sentence Summary

This proposal define a new Peg Stability Module which converts USDC to DAI and DAI to USDC, during the conversion it lends the gem via lender token and 
leverage the position using cdai.

## Paragraph Summary

The PSM Compound Mixed Exposure is based on the classic PSM but with a second join plug in serie to leverage the position with Dai.
It also uses a "lending gem join" which lend dai to cdai and usdc to cusdc.

The join is a generic 'maker join' and can be plugged to any vaults.
It takes as input a collateral and lends it behind the scene to compound, 
on the output the join redeems the position and return the collateral. 
It can be applied to Dai or any compound collaterals.

Optional fees `tin` and `tout` can be activated as well which send a fraction of the trade into the `vow`.

This PSM will have 2 urns one `cDai` and one `cUsdc`, but the maker position for this PSM is still on uscd and dai.

#### Global Overview Diagram 

![image](https://user-images.githubusercontent.com/32653033/103847910-32df0280-506f-11eb-8ca0-10215baf708d.png)

## Component Summary

**MIP32c1: The PSM** Contains snippet of proposed implementation.

**MIP32c2: The Lending Join**

**MIP32c3: The Burn Delegator**

**MIP32c4: The Harvest contract**

**MIP32c5: Proposed Code**

**MIP32c6: Test cases** Lists existing test cases

**MIP32c7: Security considerations** Comments on the security implications

**MIP32c8: Licensing** States the license under which the proposal and code are distributed.


## Motivation

Currently, the usdc token inside the PSM is inefficient and needs to be diversified. 
By using `cDai` and `cUsdc` we will bring some diversification. 
The leverage is also motivated by a better outcome and a better diversification.

## Specification

The PSM Mixed Exposure is articulated around 3 main components:
- The PSM (entry point)
- The Join (urn)
- The excess delegator (excess token conversion)

- The harvest contract

### MIP32c1: The PSM

It is very similar at the actual PSM ([MIP 29](https://github.com/makerdao/mips/blob/formal-submission/MIP29/mip29.md)) with two vaults, one in Dai and one in Usdc.

It has 3 methods:
 - `sell(address usr, uint256 gemAmt)`
 - `buy(address usr, uint256 gemAmt)`
 - `reserve()`

The two same prameters as psm:
- `tin`: The fraction of the Gem -> Dai transaction sent to the `vow` as a fee. Encoded as `tin` in `wad` units.
- `tout`: The fraction of the Dai -> Gem transaction sent to the `vow` as a fee. Encoded as `tout` in `wad` units.


`sell` will take in input usdc, convert usdc into dai via the new `lending join` (usdc/dai). Then it will take the dai and convert it to dai via another `lending join` (Dai/Dai) and take the fees and return the Dai.

`buy` will take in input dai, convert the dai after fee into dai via the `lending join` (dai/dai). Then it will take the dai and convert it to usdc via the `lending join` (Dai/Usdc) and return the Usdc.

`reserve` will return the reserve inside the contract in dai,token - this is based on the uniswap reserve() call.


**Additional specification:**  
The same level of debt is maintained for both positions (the leverage urn and the gem urn).

![image](https://user-images.githubusercontent.com/32653033/103847611-b4826080-506e-11eb-8392-ddf008c5d638.png)

### MIP32c2: The Lending Join 

This uses a classic maker join with on top the conversion from and to the lender. There is an additional method `harvest()` behind an allowlist.
The collateral is register and allow borrowing on it exactly like a normal collateral, but the `lending join` lends it to compound.

The join is an `auth-join` type accessible only by the PSM.

The extra method 'harvest()' have 2 actions:
- move the excess token to the delegator.
- move the bonus token to the delegator.

The join has one parameter the delegator. `excess_delegator`.

**Additional specification:**  
In order to calculate the excess, we add a total variable which represent the amount own by the join. Then we subtract this amount from the lendler underlying collateral.

![image](https://user-images.githubusercontent.com/32653033/103847811-01fecd80-506f-11eb-8b9f-771c1db62912.png)


### MIP32c3: The Burn Delegator

The Delegator is replaceable, its main purpose is to manage the token conversion and what we do with it.

This delegator has 3 methods:
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

### MIP32c4: The Harvest contract

This contract will have only one external method `harvest()` which calls harvest from the join.
Two contract will be deployed to call both join.

We separated this method from the PSM to allow more flexibility for update.

### MIP32c5: Proposed code

The code : [dds-psm-cme](https://github.com/alexisgayte/dss-psm-cme/)

- [DssPsmCme.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.sol)
- [BurnDelegator.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/BurnDelegator.sol)
- [join-lending-auth.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-auth.sol)

- [spell-DssPsmCme](https://github.com/alexisgayte/dss-psm-cme/blob/main/src/spell/DssPsmCompMixExposureLenderJoinSpell.sol)


### MIP32c6: Test cases
Unit tests:

- [DssPsmCme.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.t.sol)
- [BurnDelegator.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/BurnDelegator.t.sol)
- [join-lending-auth.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-auth.t.sol)

### MIP32c7: Security considerations

##### Compound technical risk

Errors or security vulnerabilities in the Compound system could result in the underlying USDC deposits to be lost or stolen.

##### Implementation technical risk

In addition to the technical risk inherent to Compound, the adapter implementation itself is non-trivial and could increase the attack/error surface.

Due to the design of multi-collateral DAI, worst-case losses should be limited to the collateral deposited in the adapter, and the debt ceiling should be set with this in mind.

There is security consideration about the code itself, compound tokens.
In this implementation as we don't use leverage on compound, the c-token can't be sized.

Another risk: uniswap interaction, but limited to the extra bonus.

### MIP32c8: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
