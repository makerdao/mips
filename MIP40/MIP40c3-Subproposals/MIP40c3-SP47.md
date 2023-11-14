# MIP40c3-SP47: Core Unit Budget (SNE-001) - Phase II: StarkNet Fast Withdrawal and Wormhole

## Preamble

```
MIP40c3-SP#: 47
Author(s): @badgerofthe9d
Contributors: @maciejka, @ohad_barta_starkware, @nulven  
Tags: core-unit, cu-sne-001, budget, dai-budget, active
Status: Accepted
Date Proposed: 2021-07-12
Date Ratified: 2022-01-24
Forum URL: https://forum.makerdao.com/t/mip40c3-sp47-core-unit-budget-sne-001-phase-ii-starknet-fast-withdrawal-and-wormhole
Ratification Poll URL: https://vote.makerdao.com/polling/QmPBwinN
```

## Sentence Summary

After delivering the StarkNet bridge, the StarkNet Engineering Core Unit is requesting a budget extension of $487,292 to build L2->L1 fast withdrawals and the L2<>L2 teleportation as per the [Protocol Engineering (PE-001) Wormhole design](https://forum.makerdao.com/t/introducing-maker-wormhole/11550). The bridge built in [Phase I](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP19.md#proposed-roadmap) ([GitHub repository](https://github.com/makerdao/starknet-dai-bridge)) has been audited by ChainSecurity (see [audit report](https://chainsecurity.com/security-audit/makerdao-starknet-dai-bridge/)). Risk and implementation details of the new phase proposed are explained further in this post: [StarkNet wormhole implementation details](https://forum.makerdao.com/t/starknet-wormhole-implementation-details/12042).

## Paragraph Summary

The StarkNet Engineering Core Unit has produced the deliverables for Phase I as detailed in [MIP39C2-SP19](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP19.md#proposed-roadmap): the L1 and L2 contract ([bridge code](https://github.com/makerdao/starknet-dai-bridge)), the governance upgradeability mechanism, the DAI bridge limit, and proper documentation of the code. The deployment will happen in January when events are available on StarkNet, and when we have integrated StarkNet's bridge interface.

StarkNet Engineering Core Unit is proposing a next phase for a requested budget of $487,292. The budget is split 50/50 between Maker and StarkWare, as was the case in [MIP40c3-SP28](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP28.md): StarkWare will also fund $487,292. The total budget of Phase II is $974,583.

The deliverables are fast withdrawals L2->L1 and L2<>L2 teleportation. The approach is detailed in [this forum post](https://forum.makerdao.com/t/starknet-wormhole-implementation-details/12042). The scope of the next phase follows the Wormhole design developed by Protocol Engineering (PE-001): [Introducing Maker Wormhole](https://forum.makerdao.com/t/introducing-maker-wormhole/11550).

## Specification

### Motivation

The Wormhole design will make DAI easy to move across domains that have an official Maker bridge, as well as MCD vat and other Wormhole-related contracts. The Wormhole design covers both L1->L2 fast withdrawals and L2<>L2 teleportation. Protocol Engineering (PE-001) and Oracle (ORA-001) have started working on fast withdrawals for EVM-compatible chains and expect to deliver L2->L1 fast withdrawals in Q1 2022, and L2<>L2 teleportation in Q2 2022.

StarkNet Engineering (SNE-001) submits this subproposal to develop the necessary components for fast withdrawals and teleportation on StarkNet. Our delivery timeline will track as much as posssible that of PE-001 working on optimistic rollups (ORs). We expect to deliver one or two months after the development on ORs. Before fast withdrawals are deployed, Risk (RISK-001) will propose bridge limits and debt ceilings (see the [Risk section of the associated post](https://forum.makerdao.com/t/starknet-wormhole-implementation-details/12042#risk-remediation-17)).

### Core Unit ID

SNE-001

### List of Budget Implementations

* Due to the predictability and regularity of costs, this budget implementation is a Simple Budget Implementation under [MIP40c4](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md#mip40c4-budget-implementation-details).
* Core Unit wallet address: 0x6D348f18c88D45243705D4fdEeB6538c6a9191F1
* Keyholder: [@badgerofthe9d](https://forum.makerdao.com/u/badgerofthe9d/) - 0x83626A05588bbA91DAeDE52346E5282d123e0280
* The first disbursement requested is DAI 229,792 on February 4th, which breaks down to:
  * DAI 42,917 for January salaries
  * DAI 186,875 for bug bounty, gas costs, audit, travel, and front-end resources
* Monthly transfers
  * A total of DAI 257,500 (6*42,917) will be streamed to 0x6D348f18c88D45243705D4fdEeB6538c6a9191F1 starting 02-01-2022 and ending 07-31-2022

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP47/implementation.png)

### List of Budget Breakdowns

All the amounts in the table below and in this section represent the amount requested to MakerDAO. They represent exactly 50% of the total cost for each item, as StarkWare will finance the other 50%.

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP47/breakdown-table1.png)

- **Salaries:**
    - 1 full-time Facilitator
    - 2 full-time Senior Engineers who are familiar with Cairo and Maker, with prior knowledge of Solidity and validity proofs
    - 1 Junior Engineer with a focus on Cairo development
    - 1 part-time Front-end Engineer for 3 months

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP47/breakdown-table2.png)

- **Bug bounty:** $12,500. Bug Bounties allow us to support whitehat involvement in the work we do. Payout amounts will be assessed and determined by the team. This amount is only covering a minimal bug bounty. A broader bug bounty with a larger budget will be organized with Protocol Engineering (PE-001) and Oracles (ORA-001) to cover the wormhole design as a whole. We might leverage Immunefi Security (IS-001) in case it is approved by governance
- **Gas cost:** $12,500. Rough estimate, based on gas cost needed by other Core Units, taking into account the scope of phase I
- **Audit:** $125,000. We will work with a firm familiar with Cairo (e.g., ChainSecurity, or Peckshield)
- **Travel:** $5,000. It covers travel to conferences to meet and work in person with PE-001 and ORA-001
