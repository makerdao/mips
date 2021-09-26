# MIP36: Peg Stability - Compound Governance Dai Leverage

## Preamble
```
MIP#: 36
Title: Peg Stability - Compound Governance Dai Leverage
Author(s): Alexis
Contributors: None
Type: Technical
Status: Withdrawn
Date Proposed: 2021-01-09
Date Ratified: <yyyy-mm-dd>
Dependencies: Join Dai-farming, Join Dai-lendler 
Replaces: n/a
License: AGPL3+
```
## References

* The proposed implementation is part of the [dss-psm-cme](https://github.com/alexisgayte/dss-psm-cme) - Peg Stability Compound Mixed Exposure - project.

## Sentence Summary

This proposal defines a Peg stabilizer actionable only by governance, 
which uses flash minting technique with **MIP35c2: Dai farming vault** or **MIP32c2: Dai lending vault**
to leverage our position on cDai.

## Paragraph Summary

By governance vote, or by executing order, we can call one of the methods define in this MIP. These methods will leverage/deleverage our position on one of the Compound Dai Vault.

For that we use flash minting technique on Dai [MIP25](https://forum.makerdao.com/t/mip25-flash-mint-module/4400), then we convert Dai to cDai using either the farming or the lending Vault which will increase our position, then we return the Dai.
 Both vaults are already defined previously ([MIP32](https://forum.makerdao.com/t/mip32-peg-stability-module-compound-mixed-exposure/5684), [MIP35](https://forum.makerdao.com/t/mip35-peg-stability-module-compound-mixed-exposure-with-farming/6024)).

Here is the last part of the - Peg Stability Compound Mixed Exposure - project.  

## Component Summary

**MIP36c1: The Peg Stabilizer Compound Dai Leverage**  

**MIP36c2: The Joins**

**MIP36c3: Proposed Code**

**MIP36c4: Test cases** Lists existing test cases

**MIP36c5: Security considerations** Comments on the security implications

**MIP36c6: Licensing** States the license under which the proposal and code are distributed.


## Motivation

Currently, the USDC token inside the PSM is inefficient and needs to be diversified.
All previous MIPs ( [MIP29](https://forum.makerdao.com/t/mip29-peg-stability-module/5071), [MIP32](https://forum.makerdao.com/t/mip32-peg-stability-module-compound-mixed-exposure/5684), [MIP35](https://forum.makerdao.com/t/mip35-peg-stability-module-compound-mixed-exposure-with-farming/6024)) 
are mint to control the peg under or over a certain level, for example the current PSM levels the Dai at 1.001 or 0.999 on the other side. 
But none of them can actually move the price, this stabilizer allows the governance to push down or up the price. 
I believe this tool is needed for example in case the price stays stuck on one side and in any case it gives more power to the governance.  
The governance can move the market price by sending supply to the market via `cDai` or by removing supply.

## Specification


### MIP36c1: The Peg Stabilizer Compound Dai Leverage

The contract has 2 methods only accessible by governance :
 - `leverage(uint256 amount)`
 - `deleverage(uint256 amount)`

`leverage()` flash mint the amount of Dai pass as parameter. Increase its position on cDai using one Compound join and return the Dai flash minted. 

`deleverage()` flash mint the amount of Dai pass as parameter. Use the Dai to pay back its debt using one Compound join, decrease its position and return the Dai flash minted.  

Two contracts will be deployed one for the Lending Join one for the Farming Join.

### MIP36c2: The Joins 

We reuse both join defined with MIP32 and MIP35.

### MIP36c3: Proposed code

The code : [dds-psm-cme](https://github.com/alexisgayte/dss-psm-cme/)

- [DssPsmCdl.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCdl.sol)
- [join-lending-leverage-auth.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-leverage-auth.sol)
- [join-lending-auth.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-auth.sol)


- [spell-DssPsmCdl](https://github.com/alexisgayte/dss-psm-cme/blob/main/src/spell/DssPsmCompDaiGovLeverageSpell.sol)


### MIP36c4: Test cases
Unit tests:

- [DssPsmCdl.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.t.sol)
- [join-lending-leverage-auth.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-leverage-auth.t.sol)
- [join-lending-auth.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-auth.t.sol)


### MIP36c5: Security considerations

##### Compound technical risk

Errors or security vulnerabilities in the Compound system could result in the underlying USDC deposits to be lost or stolen.

##### Implementation technical risk

In addition to the technical risk inherent to Compound, the adapter implementation itself is non-trivial and could increase the attack/error surface.

Due to the design of multi-collateral DAI, worst-case losses should be limited to the collateral deposited in the adapter, and the debt ceiling should be set with this in mind.

There is security consideration about the code itself, compound tokens.
In this implementation as we use leverage on compound, the c-token can be sized.
By using leverage on compound we also expose ourselves to a lost of the assert which is currently compensated by COMP token.

Another risk: Uniswap interaction, but limited to the extra bonus.

### MIP36c6: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
