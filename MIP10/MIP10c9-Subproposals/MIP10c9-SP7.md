# MIP10c9-SP7: Subproposal to Whitelist Maker v1 Medianizer for ETH/USD Oracle Access

## Preamble
```
MIP10c9-SP#: 7
Author(s): Andrew Leone
Contributors: Nik Kunkel (@NiklasKunkel)
Status: Formal Submission
Date Proposed: 2020-09-09
Date Ratified: <yyyy-mm-dd>
``` 

## Sentence Summary
MIP10c9-SP7 whitelists Maker v1 Medianizer for ETH/USD Oracle Access.

## Specification
 
### Introduction
Opyn has outstanding insurance options for cDAI, cUSDC, aUSDC which utilize the v1 Maker medianizer oracle for the ETH/USD price.  The ETH/USD price is required throughout each Opyn insurance option’s life to ensure that options are correctly collateralized and to calculate a settlement value upon an exercise of an option.  The options are collateralized in ETH and pay out an amount of USDC or DAI, in ETH. 
 
Shutting off the v1 medianizer has paused the contracts as the price of ETH/USD is no longer being returned. The options expire on February 10, 2021 and June 30, 2021.  Future options will not be deployed using the v1 medianizer as a price source and Opyn will not require the v1 medianizer after June 30, 2021.  The v1 medianizer can be removed from the v2 medianizer whitelist after that date.


This proposal is to:
1. Whitelist the v1 Maker medianizer address with the v2 Maker medianizer.
2. Reconfigure the v1 medianizer to allow poke() to query the v2 medianizer for the ETH/USD medianizer price. peek() will return the value most recently queried from the v2 medianizer.
 
### Oracle Name
- ETH/USD
 
### Customer(s)
- Opyn - andrew@opyn.co
 
### Whitelist
- Maker v1 Medianizer - 0x729D19f657BD0614b4985Cf1D82531c67569197B - Medianizer
 
### Requirements
For each customer address to be whitelisted:   
    - Is the contract source code verified on etherscan? Yes   
    - Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? No   
    - Is Oracle data written to storage? Yes   
        - If Oracle data is stored, is it stored in a private variable? No 
        - If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? No   
 
### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.