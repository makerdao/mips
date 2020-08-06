# MIP12c2-SP4: LRC Collateral Onboarding

## Preamble

```
MIP12c2-SP: 4
Title: Domain work requirements for onboarding the LRC collateral type
Author(s): Cyrus Younessi (@DonutJr), Niklas Kunkel (@NiklasKunkel), Mariano Conti (@nanexcool)
Contributors: Charles St.Louis (@CPSTL)
Status: Formal Submission (FS)
Date Proposed: 2020-08-05
Date ratified: <yyyy-mm-dd>
```

## Specification

### Summary

This proposal defines the documentation and work requirements for the onboarding of the [LRC Collateral type](https://etherscan.io/token/0xbbbbca6a901c926f240b89eacb641d8aec7aeafd#readContract) to the Maker Protocol, explicitly highlighting the domain teams' objectives and work requirements needed to get it implemented to the Maker Protocol. If this proposal is ratified, the LRC collateral type will be added to the Maker Protocol allowing anyone to lock LRC in a Maker Vault to generate Dai.


### Proposal Details

This subproposal contains the domain work products required for the LRC collateral asset to be added to the Maker Protocol. More specifically, it includes the risk parameters, oracle solutions, and the necessarily smart contracts required for the successful onboarding of LRC.

1. **Risk Domain Work:** The risk domain team's work contains the following risk construct/evaluation for the LRC collateral type:
    - [[LRC] Collateral Onboarding Risk Evaluation](https://forum.makerdao.com/t/lrc-mip12c2-sp2-collateral-onboarding-risk-evaluation/3549)

2. **Smart Contracts Domain Work:** The smart contracts domain team's work required to get LRC added to the Maker Protocol includes an assessment of the general and technical information about the LRC token, a risk summary, formal verification considerations, audits & related documentation, a contract logic summary, administrative addresses, and lastly a contract risk summary. The full assessment can be viewed below:

    - [[LRC] ERC20 Token Smart Contract Domain Team Assessment](https://forum.makerdao.com/t/lrc-erc20-token-sc-domain-team-assessment/3471)

3. **Oracles Domain Work:** The oracles domain team's work required to get LRC added to the Maker Protocol, includes making sure the oracle price feeds to support the new collateral type are prepared. The full assessment can be viewed below:

    - [[LRC] Oracle Domain Team Assessment](https://forum.makerdao.com/t/mip10c3-sp5-proposal-lrcusd-oracle-collateral-onboarding-oracle-assessment/3540)

### Motivation

The goal of this proposal is to provide transparency to the Maker Community as to what the domain teams' (Risk, Smart Contracts, and Oracles) work consists of in order to successfully add the LRC collateral type to the Maker Protocol.

### Relevant Information

- [MIP6 MCD Application: Loopring [LRC]](https://forum.makerdao.com/t/lrc-mip6-collateral-onboarding-application/2935)
- [Collateral Status Index](https://forum.makerdao.com/t/collateral-status-index/2231)


---