# MIP12c2-SP3: Domain Work Requirements for the Onboarding of MANA

## Preamble

```
MIP12c2-SP: 3
Title: Domain work requirements for onboarding the MANA collateral type
Author(s): Cyrus Younessi (@DonutJr), Niklas Kunkel (@NiklasKunkel), Mariano Conti (@nanexcool)
Contributors: Charles St.Louis (@CPSTL)
Status: Formal Submission (FS)
Date Proposed: 2020-07-08
Date ratified: <yyyy-mm-dd>
```

## Specification

### Summary

This proposal defines the documentation and work requirements for the onboarding of the [MANA collateral type](https://etherscan.io/address/0x0f5d2fb29fb7d3cfee444a200298f468908cc942) to the Maker Protocol, explicitly highlighting the domain teams' objectives and work requirements needed to get it implemented to the Maker Protocol.

### Proposal Details

This subproposal contains the domain work products required for the MANA collateral asset to be added to the Maker Protocol. More specifically, it includes the risk parameters/risk evaluation, oracle solutions, and necessarily smart contracts needed for the successful onboarding of MANA.

1. **Risk Domain Work:** The risk domain team's work contains the following risk construct/risk evaluation for the MANA collateral type:
    - [[MANA] Collateral Onboarding Risk Evaluation](https://forum.makerdao.com/t/mana-mip12c2-sp2-collateral-onboarding-risk-evaluation/3128)

2. **Smart Contracts Domain Work:** The smart contracts domain team's work required to get MANA added to the Maker Protocol includes an assessment of the collateral type-token contracts, work products for the operational collateral adapter, medianizer, oracle security module, and information regarding the deploying the executive vote code (spell). More specifically:

    - [[MANA] ERC20 Token Smart Contract Domain Team Assessment](https://forum.makerdao.com/t/mana-erc20-token-smart-contract-domain-team-assessment/3095)

3. **Oracles Domain Work:** The oracles domain team's work required to get MANA added to the Maker Protocol, includes making sure the oracle price feeds to support the new collateral type are prepared. More specifically, this includes:

    - [[MANA] Oracle Domain Team Assesment](https://forum.makerdao.com/t/mip10c3-sp3-proposal-manausd-oracle-collateral-onboarding/3133)

### Motivation

The goal of this proposal is to provide transparency to the Maker Community as to what the domain teams' (Risk, Smart Contracts, and Oracles) work consists of in order to add the MANA collateral type to the Maker Protocol.

### Relevant Information

- [MIP6 MCD Application: Decentraland [MANA]](https://forum.makerdao.com/t/mana-mcd-application-by-decentraland/2320)
- [Collateral Status Index](https://forum.makerdao.com/t/collateral-status-index/2231)

**Relevant Definitions:**

- **Spell:** A spell is an un-owned object that performs one action or a series of atomic actions (multiple transactions) one time only to the Maker protocol.
- **OSM:** ensures that new price values propagated from the Oracles are not taken up by the system until a specified delay has passed ([OSM Documentation](https://docs.makerdao.com/smart-contract-modules/oracle-module/oracle-security-module-osm-detailed-documentation)).
- **Median:** provides Maker's trusted reference price. In short, it works by taking the median of a set of price updates posted by governance appointed Feeds. ([Median Documentation)](https://docs.makerdao.com/smart-contract-modules/oracle-module/median-detailed-documentation).


---
