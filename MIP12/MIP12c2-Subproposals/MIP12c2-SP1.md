# MIP12c2-SP1: Domain work requirements for onboarding the ZRX collateral type

## Preamble

```
MIP12c2-SP: 1
Title: Domain work requirements for onboarding the ZRX collateral type
Author(s): Cyrus Younessi (@DonutJr), Niklas Kunkel (@NiklasKunkel), Mariano Conti (@nanexcool)
Contributors: Charles St.Louis (@CPSTL)
Status: Obsolete
Date Proposed: 2020-06-03
Date ratified: n/a
```

## Sentence Summary
MIP12c2-SP1 defines the documentation and work requirements for the onboarding of the ZRX collateral type.

## Specification

### Summary

This proposal defines the documentation and work requirements for the onboarding of the ZRX collateral type to the Maker Protocol, explicitly highlighting the domain teams' objectives and work requirements needed to get it implemented to the Maker Protocol.

### Proposal Details

This subproposal contains the domain work products required for the ZRX collateral asset to be added to the Maker Protocol. More specifically, it includes the risk parameters/risk evaluation, oracle solutions, and necessarily smart contracts needed for ZRX. 

1. **Risk Domain Work:** The risk domain team's work contains a risk construct/risk evaluation for the ZRX collateral type:
    1. [[ZRX] MIP12c2-SP1 Collateral Onboarding Risk Evaluation](https://forum.makerdao.com/t/zrx-mip12c2-sp1-collateral-onboarding-risk-evaluation/2730)

2. **Smart Contracts Domain Work:** The smart contracts domain team's work required to get ZRX added to the Maker Protocol includes an assessment of the collateral type-token contracts[,](https://etherscan.io/token/0xdd974d5c2e2928dea5f71b9825b8b646686bd200) work products for the operational collateral adapter, medianizer, oracle security module, and deploying the executive vote code (spell). More specifically, this includes:

    1. Perform a review of the ZRX ERC20 contract to determine if they conform to the standard and can indeed be used with the existing smart contract collateral adapters.
    2. Perform the testing on the Kovan testnet, confirming that adapters and auction contracts ork well with the Maker Protocol.
    3. Create the spells to include the collaterals on our Kovan deployment. 
    4. Finally, the team will deploy the smart contracts and build the executive vote spells for the Ethereum Mainnet.

3. **Oracles Domain Work:** The oracles domain team's work required to get ZRX added to the Maker Protocol, includes making sure the oracle price feeds to support the new collateral type are prepared. More specifically, this includes:

    1. Add support for ZRX to [setzer](https://github.com/makerdao/setzer)
    2. Add support for ZRX to [omnia](https://github.com/makerdao/oracles-v2)
    3. Deploy release candidate to the Kovan testnet for testing
    4. Coordinate Feeds to upgrade to latest release candidate
    5. Deploy Oracle smart contracts
        - [Median](https://github.com/makerdao/median)
        - [Oracle Security Module (OSM)](https://github.com/makerdao/osm)
    6. Update Relayers to include ZRX

### Motivation

The goal of this proposal is to provide transparency to the Maker Community as to what the domain teams' (Risk, Smart Contracts, and Oracles) work consists of in order to add the ZRX collateral type to the Maker Protocol.

### Relevant Information

- [[ZRX] - MCD collateral application (MIP6)](https://forum.makerdao.com/t/zrx-mcd-collateral-application/2312)
- [Collateral Status Index](https://forum.makerdao.com/t/collateral-status-index/2231)

**Relevant Definitions:**

- **Spell:** A spell is an un-owned object that performs one action or a series of atomic actions (multiple transactions) one time only to the Maker protocol.
- **OSM:** ensures that new price values propagated from the Oracles are not taken up by the system until a specified delay has passed ([OSM Documentation](https://docs.makerdao.com/smart-contract-modules/oracle-module/oracle-security-module-osm-detailed-documentation)).
- **Median:** provides Maker's trusted reference price. In short, it works by taking the median of a set of price updates posted by governance appointed Feeds. ([Median Documentation)](https://docs.makerdao.com/smart-contract-modules/oracle-module/median-detailed-documentation).
