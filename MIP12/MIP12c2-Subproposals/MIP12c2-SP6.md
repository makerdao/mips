# MIP12c2-SP5: COMP Collateral Onboarding

## Preamble

```
MIP12c2-SP: 5
Title: Domain work requirements for onboarding the COMP collateral type
Author(s): @Niklas Kunkel (@NiklasKunkel)
Contributors: Charles St.Louis (@CPSTL)
Status: Formal Submission (FS)
Date Proposed: 2020-09-09
Date ratified: <yyyy-mm-dd>
```

## Specification

### Summary

This proposal defines the documentation and work requirements for the onboarding of the [COMP Collateral type](https://etherscan.io/token/0xc00e94cb662c3520282e6f5717214004a7f26888) to the Maker Protocol, explicitly highlighting the domain teams' objectives and work requirements needed to get it implemented to the Maker Protocol. If this proposal is ratified, the COMP collateral type will be added to the Maker Protocol allowing anyone to lock COMP in a Maker Vault to generate Dai.


### Proposal Details

This subproposal contains the domain work products required for the COMP collateral asset to be added to the Maker Protocol. More specifically, it includes the risk parameters, oracle solutions, and the necessarily smart contracts required for the successful onboarding of COMP.

1. **Risk Domain Work:** The risk domain team's work contains the following risk assessment for the COMP collateral type:
    - [[COMP] Risk Domain Team Assessment](https://forum.makerdao.com/t/comp-collateral-onboarding-risk-evaluation/4049)

2. **Smart Contracts Domain Work:** The smart contracts domain team's work required to get COMP added to the Maker Protocol includes an assessment of the general and technical information about the COMP token, a risk summary, formal verification considerations, audits & related documentation, a contract logic summary, administrative addresses, and lastly a contract risk summary. The full assessment can be viewed below:

    - [[COMP] ERC20 Token Smart Contract Domain Team Assessment](https://forum.makerdao.com/t/comp-erc20-token-smart-contract-domain-community-assessment/3587)

3. **Oracles Domain Work:** The oracles domain team's work required to get COMP added to the Maker Protocol, includes making sure the oracle price feeds to support the new collateral type are prepared. The full assessment can be viewed below:

    - [[COMP] Oracle Domain Team Assessment](https://forum.makerdao.com/t/mip10c3-sp9-proposal-compusd-oracle-collateral-onboarding-oracle-assessment/4045)

### Motivation

The goal of this proposal is to provide transparency to the Maker Community as to what the domain teams' (Risk, Smart Contracts, and Oracles) work consists of in order to successfully add the COMP collateral type to the Maker Protocol.

### Relevant Information

- [MIP6 MCD Application: Compound [COMP]](https://forum.makerdao.com/t/comp-mip6-collateral-onboarding-compound/3024)
- [Collateral Status Index](https://forum.makerdao.com/t/collateral-status-index/2231)


---
