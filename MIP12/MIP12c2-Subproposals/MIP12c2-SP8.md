# MIP12c2-SP8: BAL Collateral Onboarding

## Preamble

```
MIP12c2-SP: 8
Title: BAL Collateral Onboarding
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors: Charles St.Louis (@CPSTL), Will Remor (@williamr), Sam MacPherson (@hexonaut) 
Status: Accepted
Date Proposed: 2020-10-07
Date ratified: 2020-11-12
```

## Sentence Summary
MIP12c2-SP8 defines the documentation and work requirements for the onboarding of the BAL Collateral type.

## Specification

### Summary

This proposal defines the documentation and work requirements for the onboarding of the [BAL Collateral type](https://etherscan.io/token/0xba100000625a3754423978a60c9317c58a424e3d) to the Maker Protocol, explicitly highlighting the domain teams' objectives and work requirements needed to get it implemented to the Maker Protocol. If this proposal is ratified, the BAL collateral type will be added to the Maker Protocol allowing anyone to lock BAL in a Maker Vault to generate Dai.


### Proposal Details

This subproposal contains the domain work products required for the BAL collateral asset to be added to the Maker Protocol. More specifically, it includes the risk parameters, oracle solutions, and the necessarily smart contracts required for the successful onboarding of BAL.

1. **Risk Domain Work:** The risk domain team's work contains the following risk assessment for the BAL collateral type:
    - [[BAL] Risk Domain Team Assessment](https://forum.makerdao.com/t/bal-collateral-onboarding-risk-evaluation/4600)

2. **Smart Contracts Domain Work:** The smart contracts domain team's work required to get BAL added to the Maker Protocol includes an assessment of the general and technical information about the BAL token, a risk summary, formal verification considerations, audits & related documentation, a contract logic summary, administrative addresses, and lastly a contract risk summary. The full assessment can be viewed below:

    - [[BAL] ERC20 Token Smart Contract Domain Team Assessment](https://forum.makerdao.com/t/bal-erc20-token-smart-contract-technical-assessment/4630)

3. **Oracles Domain Work:** The oracles domain team's work required to get BAL added to the Maker Protocol, includes making sure the oracle price feeds to support the new collateral type are prepared. The full assessment can be viewed below:

    - [[BAL] Oracle Domain Team Assessment](https://forum.makerdao.com/t/mip10c3-sp12-proposal-balusd-oracle-collateral-onboarding-oracle-assessment/4638)

### Motivation

The goal of this proposal is to provide transparency to the Maker Community as to what the domain teams' (Risk, Smart Contracts, and Oracles) work consists of in order to successfully add the BAL collateral type to the Maker Protocol.

### Relevant Information

- [MIP6 MCD Application: Yearn Finance [BAL]](https://forum.makerdao.com/t/bal-mip6-collateral-onboarding-application/3880)
- [Collateral Status Index](https://forum.makerdao.com/t/collateral-status-index/2231)


---