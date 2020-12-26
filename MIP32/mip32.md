# MIP32: Peg Stability Module - Compound Mixed Exposure

## Preamble
```
MIP#: 32
Title: Peg Stability Module - Compound Mixed Exposure
Author(s): Alexis
Contributors: None
Type: MIP Type
Status: TBD
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

## Component Summary

**Proposed code:** contains snippet of proposed implementation.

**Test cases:** lists existing test cases

**Security considerations:** comments on the security implications

**Licensing:** states the license under which the proposal and code are distributed.


## Motivation

Currently, the usdc token inside the PSM is inefficient and needs to be diversified. 
By using `cDai` and `cUsdc` we will bring some diversification. 
The leverage is also motivated by a better outcome and a better diversification.

## Specification

PSM Mixed Exposure is articulated around 3 components :
- The PSM (entry point)
- The Join (urn)
- The excess delegator (excess token conversion)

### MIP32a : The Psm

It is very similar at the actual Psm (MIPs 29) with two vaults one in Dai and one in Usdc.

it has 3 methods:
 - sellGem(address usr, uint256 gemAmt)
 - buyGem(address usr, uint256 gemAmt)
 - harvest()

the two same prameters as psm:
- `tin`: The fraction of the Gem -> Dai transaction sent to the `vow` as a fee. Encoded as `tin` in `wad` units.
- `tout`: The fraction of the Dai -> Gem transaction sent to the `vow` as a fee. Encoded as `tout` in `wad` units.

The functionality is similar to the actual PSM with an extra method `harvest()`.

`sellGem` will take in input usdc, 
convert usdc into dai via the new `lending join` (usdc/dai). 
Take the dai and convert it to dai via another `lending join` (Dai/Dai).
Take the fees and return the Dai.

`buyGem` will take in input dai,
convert the dai after fee into dai via the `lending join` (dai/dai).
Take the dai and convert it to usdc via the `lending join` (Dai/Usdc).
return the Usdc.

`harvest` calls `harvest()` from both join (cDai and cUsdc).
It can be processed by anyone.

**extra specification:**  
The same level of debt is maintain for both position ( the leverage urn and the gem urn).

![dss-psm-cme](dss-psm-cme.png?raw=true)

### MIP32b : The Lending Join 

It is a classic maker join with on top the conversion from and to the lender.
There is an additional method `harvest()` behind an allowlist - the PSM -.
The collateral is register and allow borrowing on it exactly like a normal collateral, but the `lending join` lends it to compound.

The join is an `auth-join` type accessible only by the PSM.

the extra method 'harvest()' have 3 actions :
- move the excess token to the delegator.
- move the bonus token to the delegator.
- call the delegator.

the join has one parameter the delegator. `excessDelegator`.

**extra specification:**  
to calculate the excess, we look at all authorized and de-authorized user to the join
and we sum the ink and the gem to calculate the amount own by the join.  
Then we subtract this amount from the lendler underlying collateral.


![lending-join](lending-join.png?raw=true)


### MIP32c : The Burn Delegator

The Delegator is replaceable, its main purpose is to manage the token conversion and what we do with it.

This delegator has 4 methods:
- `call` callback for the join.

- `processUsdc` convert the usdc to dai via the psm.
- `processComp` convert token bonus to dai via uniswap.  
- `processDai`  convert dai to MKR via uniswap and burn the MKR.

there is 6 parameters :
- `psm` : psm address - can be changed
- `route` : uniswap route address - can be changed

- `bonus_auction_duration`: min time is sec between 2 uniswap swap
- `max_bonus_auction_amount` : max comp amount by swap.
- `dai_auction_duration`: min time is sec between 2 uniswap swap
- `max_dai_auction_amount` : max dai amount by swap.

### Globaly


![dss-psm-cme](dss-psm-cme-global.png?raw=true)


## Proposed code

The code : [dds-psm-cme](https://github.com/alexisgayte/dss-psm-cme/)

## Test cases
Unit tested :


 [DssPsmCme.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.t.sol)

 [BurnDelegator.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/BurnDelegator.t.sol)

 [join-lending-auth.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-auth.t.sol)

## Security considerations

##### Compound technical risk

Errors or security vulnerabilities in the Compound system could result in the underlying USDC deposits to be lost or stolen.

##### implementation technical risk

In addition to the technical risk inherent to Compound, the adapter implementation itself is non-trivial and could increase the attack/error surface.

Due to the design of multi-collateral DAI, worst-case losses should be limited to the collateral deposited in the adapter, and the debt ceiling should be set with this in mind.

There is security consideration about the code itself, compound tokens.
In this implementation as we don't use leverage on compound, the c-token can't be sized.

Another risk: uniswap interaction, but limited to the extra bonus.

## Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)