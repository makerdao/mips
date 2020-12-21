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
- The delegator (token manipulation)

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
It is triggered automatically at any sell or buy and can be processed manually by anyone too.

![dss-psm-cme](dss-psm-cme.png?raw=true)

### MIP32b : The Lending Join 

It is a classic maker join with the conversion from and to the lender.
There is an additional method `harvest()` accessible by an allowlist - the PSM -.
The collateral is register and allow borrowing on it, but the PSM lends it to compound.

The join is an `auth-join` type accessible only by the PSM.

the extra method 'harvest()' have 3 actions :
- move the excess token to the delegator
- move the bonus token to the delegator.
- call the delegator.

the join has one parameter the delegator. `excessDelegator`.

![lending-join](lending-join.png?raw=true)


### MIP32c : The Delegator

The delegator has one method only accessible by an allowlist. - the join -
this method does 3 actions:
- convert the usdc to dai via the classic psm and send them to vow
- convert token bonus to dai via uniswap and send them to vow  
- send dai to vow.

there is 5 parameters :
- `psm` : psm address - can be changed
- `route` : uniswap route address - can be changed

- `psm_circuit_breaker` : to by pass the psm sell.

- `auction_duration`: min time is sec between 2 uniswap swap
- `max_sell_amount` : max amount by swap.


### Globaly

We will also introduce on the PSM module - sell and buy - an auto circuit_break on odd block_number to allow the PSM to be 
half operational to mitigate any breaking transaction from either the classic psm or uniswap via the return.


![dss-psm-cme](dss-psm-cme-global.png?raw=true)


## Proposed code

The code : [dds-psm-cme](https://github.com/alexisgayte/dss-psm-cme/)

## Test cases
Unit tested :


 [DssPsmCme.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.t.sol)

 [SellDelegator.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/SellDelegator.t.sol)

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