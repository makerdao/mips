# MIP10c3-SP7: Subproposal to Onboard Oracle

## Preamble
```
MIP10c3-SP#: 7
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: Accepted
Date Proposed: 2020-08-05
Date Ratified: 2020-09-08
```

## Sentence Summary
MIP10c3-SP7 onboards the PAX/USD Oracle.

## Specification

### Introduction

This Oracle would provide the PAX/USD price as part of the collateral onboarding process for PAX.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |       1      |    PAX/USD    |  N/A  |      N/A    |      N/A     |


### Oracle Supporting Data Model(s)

N/A

### Oracle Address
- Medianizer - Mainnet TBD
- Oracle Security Module (OSM) - Mainnet TBD
    
### Supported Tools
- Setzer - N/A
- Omnia - N/A
- PAX/USD DSValue on Kovan Testnet - [0x437e95fef67f931e47279692812bfb35a127e0dc](https://kovan.etherscan.io/address/0x437e95fef67f931e47279692812bfb35a127e0dc)

### Remaining Work

- Deploy and configure DSValue and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate

### Summary

As a regulated fiat-backed stablecoin, PAX can be treated similarly to the manner the Maker Protocol handles USDC and TUSD. This is a relatively safe operation due to the redeemable guarantees of PAXOS for the underlying USD as well as the regulatory and legal guarantees surrounding the deposit trusts.

This fixed value is meant to incentivize Dai generation as there is no risk of liquidation. Similarly this mechanism protects the Maker Protocol from triggering short-sighted liquidations when short-term blips such as a flash crash arise in the market when the $1 peg should soon thereafter recover in most circumstances.
