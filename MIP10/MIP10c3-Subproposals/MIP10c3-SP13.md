# MIP10c3-SP13: Subproposal to Onboard the GUSD/USD Oracle

## Preamble
```
MIP10c3-SP#: 13
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: Formal Submission (FS)
Date Proposed: 2020-10-16
Date Ratified:
```

## Sentence Summary
MIP10c3-SP13 onboards the GUSD/USD Oracle.

## Specification

### Introduction

This Oracle would provide the GUSD/USD price as part of the collateral onboarding process for GUSD.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |       1      |    GUSD/USD   |  N/A  |      N/A    |      N/A     |


### Oracle Supporting Data Model(s)

N/A

### Oracle Address
- Medianizer - Mainnet TBD
- Oracle Security Module (OSM) - Mainnet TBD
    
### Supported Tools
- Setzer - N/A
- Omnia - N/A
- GUSD/USD DSValue on Kovan Testnet - [0x6425dfB15f9a48a2532AbaEc823A6e5958B90041](https://kovan.etherscan.io/address/0x6425dfB15f9a48a2532AbaEc823A6e5958B90041)

### Remaining Work

- Deploy and configure DSValue and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate

### Summary

As a regulated fiat-backed stablecoin, GUSD can be treated similarly to the manner the Maker Protocol handles USDC, TUSD, and PAX. This is a relatively safe operation due to the redeemable guarantees of GUSD for the underlying USD as well as the regulatory and legal guarantees surrounding the deposit trusts.

This fixed value is meant to incentivize Dai generation as there is no risk of liquidation. Similarly this mechanism protects the Maker Protocol from triggering short-sighted liquidations when short-term blips such as a flash crash arise in the market when the $1 peg should soon thereafter recover in most circumstances.
