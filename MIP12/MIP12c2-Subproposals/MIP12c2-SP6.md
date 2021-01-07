# MIP12c2-SP6: LINK Collateral Onboarding

## Preamble

```
MIP12c2-SP: 6
Title: Domain work requirements for onboarding the LINK collateral type
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors: Charles St.Louis (@CPSTL)
Status: Accepted
Date Proposed: 2020-09-09
Date ratified: <yyyy-mm-dd>
```

## Specification

### Summary

This proposal defines the documentation and work requirements for the onboarding of the [LINK Collateral type](https://etherscan.io/token/0x514910771af9ca656af840dff83e8264ecf986ca) to the Maker Protocol, explicitly highlighting the domain teams' objectives and work requirements needed to get it implemented to the Maker Protocol. If this proposal is ratified, the LINK collateral type will be added to the Maker Protocol allowing anyone to lock LINK in a Maker Vault to generate Dai.


### Proposal Details

This subproposal contains the domain work products required for the LINK collateral asset to be added to the Maker Protocol. More specifically, it includes the risk parameters, oracle solutions, and the necessarily smart contracts required for the successful onboarding of LINK.

1. **Risk Domain Work:** The risk domain team's work contains the following risk assessment for the LINK collateral type:
    - [[LINK] Risk Domain Team Assessment](https://forum.makerdao.com/t/link-collateral-onboarding-risk-evaluation/4047/2)

2. **Smart Contracts Domain Work:** The smart contracts domain team's work required to get LINK added to the Maker Protocol includes an assessment of the general and technical information about the LINK token, a risk summary, formal verification considerations, audits & related documentation, a contract logic summary, administrative addresses, and lastly a contract risk summary. The full assessment can be viewed below:

    - [[LINK] ERC20 Token Smart Contract Domain Team Assessment](https://forum.makerdao.com/t/link-erc20-token-smart-contract-technical-assessment/3467)

3. **Oracles Domain Work:** The oracles domain team's work required to get LINK added to the Maker Protocol, includes making sure the oracle price feeds to support the new collateral type are prepared. The full assessment can be viewed below:

    - [[LINK] Oracle Domain Team Assessment](https://forum.makerdao.com/t/mip10c3-sp8-proposal-linkusd-oracle-collateral-onboarding-oracle-assessment/4039)

### Motivation

The goal of this proposal is to provide transparency to the Maker Community as to what the domain teams' (Risk, Smart Contracts, and Oracles) work consists of in order to successfully add the LINK collateral type to the Maker Protocol.

### Relevant Information

- [MIP6 MCD Application: Chainlink [LINK]](https://forum.makerdao.com/t/link-collateral-onboarding-application/2586)
- [Collateral Status Index](https://forum.makerdao.com/t/collateral-status-index/2231)


---
