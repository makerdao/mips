# MIP12c2-SP7: YFI Collateral Onboarding

## Preamble

```
MIP12c2-SP: 7
Title: YFI Collateral Onboarding
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors: Charles St.Louis (@CPSTL), monetsupply (@monet-supply), Wil Barnes (@wil)
Status: Formal Submission (FS)
Date Proposed: 2020-10-07
Date ratified: <yyyy-mm-dd>
```

## Specification

### Summary

This proposal defines the documentation and work requirements for the onboarding of the [YFI Collateral type](https://etherscan.io/token/0x0bc529c00C6401aEF6D220BE8C6Ea1667F6Ad93e) to the Maker Protocol, explicitly highlighting the domain teams' objectives and work requirements needed to get it implemented to the Maker Protocol. If this proposal is ratified, the YFI collateral type will be added to the Maker Protocol allowing anyone to lock YFI in a Maker Vault to generate Dai.


### Proposal Details

This subproposal contains the domain work products required for the YFI collateral asset to be added to the Maker Protocol. More specifically, it includes the risk parameters, oracle solutions, and the necessarily smart contracts required for the successful onboarding of YFI.

1. **Risk Domain Work:** The risk domain team's work contains the following risk assessment for the YFI collateral type:
    - [[YFI] Risk Domain Team Assessment](https://forum.makerdao.com/t/yfi-collateral-onboarding-risk-evaluation/4575)

2. **Smart Contracts Domain Work:** The smart contracts domain team's work required to get YFI added to the Maker Protocol includes an assessment of the general and technical information about the YFI token, a risk summary, formal verification considerations, audits & related documentation, a contract logic summary, administrative addresses, and lastly a contract risk summary. The full assessment can be viewed below:

    - [[YFI] ERC20 Token Smart Contract Domain Team Assessment](https://forum.makerdao.com/t/yfi-erc20-token-smart-contract-technical-assessment/4626)

3. **Oracles Domain Work:** The oracles domain team's work required to get YFI added to the Maker Protocol, includes making sure the oracle price feeds to support the new collateral type are prepared. The full assessment can be viewed below:

    - [[YFI] Oracle Domain Team Assessment](https://forum.makerdao.com/t/mip10c3-sp10-proposal-yfiusd-oracle-collateral-onboarding-oracle-assessment/4220)

### Motivation

The goal of this proposal is to provide transparency to the Maker Community as to what the domain teams' (Risk, Smart Contracts, and Oracles) work consists of in order to successfully add the YFI collateral type to the Maker Protocol.

### Relevant Information

- [MIP6 MCD Application: Yearn Finance [YFI]](https://forum.makerdao.com/t/yfi-mip6-collateral-onboarding-yearn/3815)
- [Collateral Status Index](https://forum.makerdao.com/t/collateral-status-index/2231)


---