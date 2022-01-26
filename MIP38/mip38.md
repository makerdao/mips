# MIP38: DAO Primitives State

## Preamble
```
MIP#: 38
Title: DAO Primitives State
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh
Tags: general, core-unit-framework, mip-set, core-unit-framework-mipset, living
Type: Informational
Status: Accepted
Date Proposed: 2021-01-18
Date Ratified: 2021-25-03
Dependencies: MIP39, MIP40, MIP41, MIP4c2-SP10, MIP4c2-SP12
Replaces: n/a
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-march-2021-governance-cycle-bundle-march-22-2021?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip38-dao-primitives-state/6095
```

## References

N/A

## Sentence Summary

DAO Primitives State is a MIP that keeps track of all the states related to Core Units, Budgets and Facilitators.

## Paragraph Summary

DAO Primitives State is a MIP that keeps track of the current state related to Core Units, Budgets and Facilitators. The state of the Primitives is maintained in the DAO Primitives MIP. The Primitives cannot be modified through this MIP but by the corresponding dedicated MIP Component in the MIP Set.

## Component Summary

**MIP38c1: Core Unit State Maintenance**
This component defines the Core Unit State list, its format and its upkeep.

**MIP38c2: Core Unit State**
The component that contains all of the DAO Primitives State, with Core Units as the key.

## Motivation

This MIP lays down a basic structure based on Core Units (MIP39) capable of supporting the increasing complexity of the DAO and its continuous expansion. It also documents and keeps track of the state of the elements that make up this new structure and their dependencies.

Under its stripped-down, homogeneous nature, this structure avoids the hassle of ad-hoc implementations that are hard to analyze and interface.

Thinking forward, it also provides Governance with a straightforward process to fund teams beyond the dissolution of the Foundation.

## Specification / Proposal Details

### MIP38c1: Core Unit State Maintenance

This dataset contains all of the Core Units approved by the community, alongside the Core Units' data. It includes:
- Core Unit Mandates
- Budget Implementation and Breakdown
- Facilitator name, information, and commitment.
- Key Dates

This dataset is updated by the MIP Editors when a subproposal from MIP39, MIP40, or MIP41 becomes accepted.


**List Entry Template:**

---

> #### Core Unit Name (Core Unit ID)
>
> - **Summary** - 30 word max summary.
> - **Ratification Date for the Initial Proposal Set** - [yyyy-dd-mm]
>
> ##### Mandate
>
> -  [MIP39c2-SPX](link)
>
> ##### Budget
>
> - **Active Budget** - [MIP40c3-SPX](link)
>     - **Budget Amount** - xxx,xxx DAI / year
>     - **Budget Implementation** - Manual/Simple/Advanced - [MIP40c3-SPX](link)
>     - **Budget Breakdown** - [MIP40c3-SPX internal anchor link](example.com/budget_implementation)
>
> ##### Facilitator
>
> - Awes M. Example - [MIP41c4-SPX](link)
> - Gre T. Example - [MIP41c4-SPY](link)

---

### MIP38c2: Core Unit State

#### Real-World Finance (RWF-001)

- **Summary** - This Core Unit is designed to pursue Real-World Asset work and more generally helps MakerDAO to take over the traditional finance world.
- **Ratification Date for the Initial Proposal Set** - 2021-25-03

##### Mandate

- [MIP39c2-SP1](https://mips.makerdao.com/mips/details/MIP39c2SP1)

##### Budget

- **Active Budget** - [MIP40c3-SP39](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP39.md)
    - **Ratification Date** - 2021-22-11
    - **Budget Amount** * A total of 1,860,000 Dai will be streamed starting 2022-01-01 and ending 2022-12-31 at a rate of 155,000 Dai per month
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP39 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP39.md#list-of-budget-breakdowns)
- **MKR Vesting** - [MIP40c3-SP38](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP38.md)

##### Facilitator

- Sébastien Derivaux - [MIP41c4-SP1](https://mips.makerdao.com/mips/details/MIP41c4SP1)

---

#### Risk (RISK-001)

- **Summary** - Risk Core Unit ensures Maker Protocol can continue to grow safely by having proper risk management parameters and risk mitigation tools applied.
- **Ratification Date for the Initial Proposal Set** - 2021-25-03

##### Mandate

- [MIP39c2-SP2](https://mips.makerdao.com/mips/details/MIP39c2SP2)

##### Active Budget

- **Active Budget** - [MIP40c3-SP13](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP13.md)
    - **Ratification Date** - 2021-28-06
    - **Budget Amount** * 546,000 Dai / quarter
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP13 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP13.md#budget-breakdown--items)
- **MKR Vesting** - [MIP40c3-SP25](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP25.md)

##### Facilitator

- Primož Kordež - [MIP41c4-SP1](https://mips.makerdao.com/mips/details/MIP41c4SP2)

---

#### GovAlpha (GOV-001)

- **Summary** - This Core Unit intends to fulfill MakerDAO's requirement of a consistent and - well-run governance process managed by elected facilitators in order to remain stable and secure as it grows.
- **Ratification Date for the Initial Proposal Set** - 2021-25-03

##### Mandate

- [MIP39c2-SP3](https://mips.makerdao.com/mips/details/MIP39c2SP3)

##### Budget

- **Active Budget** - [MIP40c3-SP29](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP29.md)
    - **Ratification Date** - 2021-27-09
    - **Budget Amount** - 538,400 DAI / October, 2021 to March, 2022
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP29 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP29.md#budget-breakdown---october-through-march-combined)

##### Facilitator

- LongForWisdom - [MIP41c4-SP3](https://mips.makerdao.com/mips/details/MIP41c4SP3)
- Payton Rose - [MIP41c4-SP12](https://mips.makerdao.com/mips/details/MIP41c4SP12)

---

#### Protocol Engineering (PE-001)

- **Summary** - The Protocol Engineering Team’s responsibility is to extend the functionality of the Maker protocol, assist with the maintenance and operation of existing smart contracts and ensure the safety and correctness of protocol design and implementation.
- **Ratification Date for the Initial Proposal Set** - 2021-27-04

##### Mandate

- [MIP39c2-SP7](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP7.md)

##### Budget

- **Active Dai Budget** - [MIP40c3-SP7](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP7.md)
    - **Ratification Date** - 2021-27-04
    - **Budget Amount** - 510,000 DAI / month
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP7 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP7.md#budget)
- MKR Vesting - [MIP40c3-SP7](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP7.md)

##### Facilitator

- Derek Flossman - [MIP41c4-SP7](https://mips.makerdao.com/mips/details/MIP41c4SP7)

---

#### Growth (GRO-001)

- **Summary** - The Growth Core Unit aims to grow the available distribution channels for the Maker protocol by intelligently deploying the human and financial capital given by the DAO, increasing the supply and demand of Dai in the global markets.
- **Ratification Date for the Initial Proposal Set** - 2021-27-04

##### Mandate

- [MIP39c2-SP19](https://mips.makerdao.com/mips/details/MIP40c3SP19)

##### Budget

- **Active Budget** - [MIP40c37](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP37.md)
    - **Ratification Date** - 2021-25-10
    - **Budget Amount** - 2,208,484 DAI / eight months
	- **Budget Implementation** - Simple via dssvest
	- **Budget Breakdown** - [MIP40c3-SP37 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP37.md#combined-november-december-2021-and-h1-2022-budget---november-2021-to-june-2022)
- **MKR Incentive Plan** - [MIP40c3-SP23](https://mips.makerdao.com/mips/details/MIP40c3SP23)

##### Facilitator

- Nadia Alvarez - [MIP41c4-SP4](https://mips.makerdao.com/mips/details/MIP41c4SP4)

---

#### MakerDAO Shop (MDS-001)

- **Summary** - The MakerDAO Shop Core Unit helps build brand awareness and goodwill for MakerDAO and Dai by offering branded items (Swag, NFTs, etc) via the official MakerDAO store
- **Ratification Date for the Initial Proposal Set** - 2021-27-04

##### Mandate

- [MIP39c2-SP6](https://mips.makerdao.com/mips/details/MIP39c2SP6)

##### Budget

- **Active Budget** - [MIP40c3-SP6](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP6.md)
    - **Ratification Date** - 2021-04-27
    - **Budget Amount** - 0 DAI (50/50 profit sharing)

##### Facilitator

- Coulter Mulligan - [MIP41c4-SP6](https://mips.makerdao.com/mips/details/MIP41c4SP6)
- Mike Porcaro - [MIP41c4-SP6](https://mips.makerdao.com/mips/details/MIP41c4SP6)

---

#### Sustainable Ecosystem Scaling (SES-001)

- **Summary** - The Sustainable Ecosystem Scaling Core Unit's mission is to sustainably grow the Maker Protocol’s moats by systematically removing barriers between the decentralized workforce, capital, and work.
- **Ratification Date for the Initial Proposal Set** - 2021-25-05

##### Mandate

- [MIP39c2-SP10](https://mips.makerdao.com/mips/details/MIP39c2SP10)

##### Budget

- **Active Budget** - [MIP40c3-SP31](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP31.md)
    - **Ratification Date** - 2021-08-11
    - **Budget Amount** - 1,461,111 Dai (Total Budget Cap spanning a three-month cycle)
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP31 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP31.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP17](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP17.md)

##### Facilitator

- juanjuan - [MIP41c4-SP10](https://mips.makerdao.com/mips/details/MIP41c4SP10)

---

#### Oracles (ORA-001)

- **Summary** - The Oracle Core Unit is responsible for developing and administrating the Oracle Protocol. Oracles are a critical component of securing the Maker Protocol to ensure positions are sufficiently collateralized.
- **Ratification Date for the Initial Proposal Set** - 2021-28-06

##### Mandate

- [MIP39c2-SP13](https://mips.makerdao.com/mips/details/MIP39c2SP13)

##### Budget

- **Active Budget** - [MIP40c3-SP15](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP15.md)
    - **Ratification Date** - 2021-05-12
    - **Budget Amount** - 5,036,124 DAI / year
    - **Budget Implementation** - Manual
    - **Budget Breakdown** - [MIP40c3-SP15 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP15.md#budget)
- **MKR Vesting** - [MIP40c3-SP15](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP15.md)

##### Facilitator

- Niklas Kunkel - [MIP41c4-SP13](https://mips.makerdao.com/mips/details/MIP41c4SP13)

---

#### Governance Communications (COM-001)

- **Summary** - The Governance Communications Core Unit performs a complementary set of resources and services that focus on MakerDAO's informational accessibility and communication practices as a public organization.
- **Ratification Date for the Initial Proposal Set** - 2021-26-07

##### Mandate

- [MIP39c2-SP8](https://mips.makerdao.com/mips/details/MIP39c2SP8)

##### Budget

- **Active Budget** - [MIP40c3-SP40](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP40.md)
    - **Ratification Date** - 2021-11-22
    - **Budget Amount**
        - A total of 257,500.02 DAI will be streamed starting 2022-01-01 and ending 2022-06-30
        - A total of 12,241.67 DAI streamed starting 2021-12-01 and ending 2021-12-31
    - **Budget Implementation** - Simple
    - **Budget Breakdown** - [MIP40c3-SP40 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP40.md#budget-breakdown)

##### Facilitator

- David Utrobin - [MIP41c4-SP8](https://mips.makerdao.com/mips/details/MIP41c4SP8)

---

#### Dai Foundation (DAIF-001)

- **Summary** - The Dai Foundation Core Unit is responsible for facilitating the dialogue between the Dai Foundation and the Community regarding intellectual property safeguarding, intellectual property usage, and related activities.
- **Date Ratified** - 2021-23-08

##### Mandate

- [MIP39c2-SP17](https://mips.makerdao.com/mips/details/MIP39c2SP17)

##### Budget

- **Active Budget** - [MIP40c3-SP24](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP24.md)
    - **Ratification Date** - 2021-08-23
    - **Budget Amount**
        - 2,138,591 Dai (first year)
        - 1,038,599 Dai (second year)
        - 463,186 Dai (third year)
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP24 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP24.md#budget-breakdown)

##### Facilitator

- Søren Peter Nielsen - [MIP41c4-SP18](https://mips.makerdao.com/mips/details/MIP41c4SP18)

---

#### StarkNet Engineering (SNE-001)

- **Summary** - In a volatile, high gas cost environment, DeFi protocols are attempting to build bridges to L2 protocols to access liquidity and remain competitive. This proposal is a plan to build a DAI bridge over Starknet within 3 months (phase I).
- **Ratification Date for the Initial Proposal Set** - 2021-27-09

##### Mandate

- [MIP39c2-SP19](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP19.md)

##### Budget

- **Active Budget** - [MIP40c3-SP28](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP28.md)
    - **Ratification Date** - 2021-09-27
    - **Budget Amount**
        - One-off setup of 75,000 Dai
        - 134,375 Dai streamed starting 2021-10-1 and ending 2021-12-31
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP28 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP28.md#budget)

##### Facilitator

- Louis Baudoin - [MIP41c4-SP20](https://mips.makerdao.com/mips/details/MIP41c4SP20)

---

#### Collateral Engineering Services (CES-001)

- **Summary** - To operationalize collateral management within the Maker Protocol allowing anyone to onboard collateral while ensuring the stability and security of the ecosystem.
- **Ratification Date for the Initial Proposal Set** - 2021-27-09

##### Mandate

- [MIP39c2-SP20](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP20.md)

##### Budget

- **Active Budget** - [MIP40c3-SP30](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP30.md)
    - **Ratification Date** - 2021-09-27
    - **Budget Amount** - 1,223,552 Dai (Total Budget Cap spanning a six-month cycle)
    - **Budget Implementation** - Manual
    - **Budget Breakdown** - [MIP40c3-SP30 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP30.md#list-of-budget-breakdowns)
- **MKR Vesting** - [MIP40c3-SP30](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP30.md)

##### Facilitator

- Robert Jordan - [MIP41c4-SP21](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP21.md)

---

#### Development and UX (DUX-001)

- **Summary** - Enabling the best-in-class decentralized decision making for the Maker Protocol by providing a meaningful user experience for all governance participants.
- **Ratification Date for the Initial ProposalSet** - 2021-27-09

##### Mandate

- [MIP39c2-SP18](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP18.md)

##### Budget

- **Active Budget** - [MIP40c3-SP26](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP26.md)
    - **Ratification Date** - 2021-09-27
    - **Budget Amount** - 483,575 Dai (Total Budget Cap spanning a three-month cycle)
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP26 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP26.md)
- **MKR Vesting** - [MIP40c3-SP27](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP27.md)

##### Facilitator

- Philip Bain - [MIP41c4-SP19](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP19.md)

---

#### Strategic Happiness (SH-001)

- **Summary** - The SHCU aims to promote community engagement and promote the Maker brand by strategically spreading happiness, positive vibes, and mild but delightful confusion throughout the Maker Community via memes, shitposts, and Bespoke Happiness Airdrops.
- **Ratification Poll for the Initial Proposal Set** - 2021-27-09

##### Mandate

- [MIP39c2-SP11](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP11.md)

##### Budget

- **Active Budget** - [MIP40c3-SP16](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP16.md)
    - **Ratification Date** - 2021-09-27
    - **Budget Amount** - 58,000 Dai from Oct 2021 to Dec 2021 + 106,500 Dai (initial payment)
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP16 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP16.md#quarterly-budget-implementation)
- **MKR Vesting** - [MIP40c3-SP16](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP16.md)

##### Facilitator

- Andrew Burban - [MIP41c4-SP11](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP11.md)

---

#### Data Insights (DIN-001)

- **Summary** - The Data Insights Core Unit (DIN-001) is responsible for providing free and permissionless datasets based on detailed Maker Protocol history.
- **Ratification Date for the Initial Proposal Set** - 2021-25-10

##### Mandate

- [MIP39c2-SP22](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP22.md)

##### Budget

- **Active Budget** - [MIP40c3-SP34](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP34.md)
    - **Ratification Date** - 2021-09-07
    - **Budget Amount**
        - 107,500 DAI transferred on November 10, 2020
        - 357,000 DAI streamed starting 2021-11-01 and ending 2022-04-30
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP34 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP34.md#budget-considerations)

##### Facilitator

- Tomek Mierzwa - [MIP41c4-SP23](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP23.md)

---

#### Deco Fixed-Rate (DECO-001)

- **Summary** - The Deco protocol is a fixed rate protocol designed to be flexible and safe. Its design anticipated that its first and most effective initial application may be on Maker.
- **Ratification Date for the Initial Proposal Set** - 2021-22-11

##### Mandate

- [MIP39c2-SP23](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP23.md)

##### Budget

- **Active Budget** - [MIP40c3-SP35](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP35)
    - **Ratification Date** - 2021-11-22
    - **Budget Amount**
        - Initial seed transfer of 465,625 Dai
        - 155,208.33 Dai/month streamed continuously
    - **Budget Implementation** -
    - **Budget Breakdown** - [MIP40c3-SP35 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP35.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP36](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP36.md)

##### Facilitator

- Vamsi Alluri - [MIP41c4-SP24](https://mips.makerdao.com/mips/details/MIP41c4SP24)

---

#### Immunefi Security (IS-001)

- **Summary** - Immunefi's Mission is to systematically improve security for builders, end users, and other stakeholders in the Maker Ecosystem by providing both reactive and proactive security services.
- **Ratification Date for the Initial Proposal Set** - 2021-22-11


##### Mandate

- [MIP39c2-SP24](https://mips.makerdao.com/mips/details/MIP39c2SP24)

##### Budget

- **Active Budget** - [MIP40c3-SP42](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP42.md)
    - **Budget Amount** - 634,972.45 Dai (Total Budget Cap spanning a 12-month cycle)
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP42 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP42.md#budget-cap-breakdown)
- **MKR Vesting** - [MIP40c3-SP41](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP41.md)

##### Facilitator

- Travin Keith - [MIP41c4-SP25](https://mips.makerdao.com/mips/details/MIP41c4SP25)

---

#### Sidestream Auction Services (SAS-001)

- **Summary** - Sidestream Auction Services's mission is to improve security, transparency and accessibility of the Maker Protocol by providing and maintaining auction services through open-source development.
- **Ratification Date for the Initial Proposal Set** - 2021-22-11

##### Mandate

- [MIP39c2-SP25](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP25.md)

##### Budget

- **Active Budget** - [MIP40c3-SP43](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP43.md)
    - **Budget Amount** - 282,598.13 Dai (Total Budget Cap spanning a three-month runway)
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP43 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP43.md#list-of-budget-breakdowns)
- **MKR Vesting** - [MIP40c3-SP44](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP44.md)

##### Facilitator

- Daniel Kremerov - [MIP41c4-SP26](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP26.md)

#### Strategic Finance (SF-001)

- **Summary** - Strategic Finance Core Unit's mission is to provide financial reporting and analysis to assist the DAO in evaluating the financial health of the protocol to enable strategic decision making and allocate capital more effectively.
- **Ratification Date for the Initial Proposal Set** - 2022-24-01

##### Mandate

- [MIP39c2-SP27](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP27.md)

##### Budget

- **Active Budget** - [MIP40c3-SP46](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP46.md)
      - **Budget Amount** - 989,004 DAI / year
      - **Budget Implementation** - Simple via dssvest - [MIP40c3SP46 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP46.md#budget-implementation)
      - **Budget Breakdown** - [MIP40c3-SP46 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP46.md#budget-breakdown)

##### Facilitator

- Mark Phillips (@Aes) - [MIP41c4-SP28](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP28.md)

#### TechOps (TECH-001)

- **Summary** - TechOps Core Unit mission is to handle the system administration and technical support needs of the Maker Protocol and its Core Units.
- **Ratification Date for the Initial Proposal Set** - 2022-24-01

##### Mandate

- [MIP39c2-SP29](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP29.md)

##### Budget

- **Active Budget** - [MIP40c3-SP53](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP53.md)
      - **Budget Amount** - 2,246,400 DAI / year
      - **Budget Implementation** - Simple via dssvest - [MIP40c3SP53 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP53.md#budget-implementation)
      - **Budget Breakdown** - [MIP40c3-SP53 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP53.md#budget-breakdown)

##### Facilitator

- Dumitru Zavrotschi (@dumitru) - [MIP41c4-SP30](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP30.md)
- Simon Kelada-Polupanov (@simonkp) - [MIP41c3-SP31](https://forum.makerdao.com/t/mip41c4-sp31-techops-core-unit-facilitator-onboarding-simon-kelada-polupanov/12073)

---

### Offboarded Core Units:


#### Content Production (MKT-001)

- **Summary** - The Content Production Core Unit is responsible for creating, and supporting the creation of written, audio, and visual content that educates audiences on MakerDAO, promotes the work and culture of the ecosystem, and encourages people to use Dai and the Maker Protocol.
- **Ratification Date for the Initial Proposal Set** - 2021-27-04

##### Mandate

- [MIP39c2-SP5](https://mips.makerdao.com/mips/details/MIP39c2SP5)

##### Budget

- **Active Budget** - [MIP40c3-SP33](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP33.md)
    - **Ratification Date** - 2021-22-11
    - **Budget Amount** - A total of 424,944 Dai DAI will be streamed starting 2021-12-01 and ending 2022-04-30
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP33 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP33.md#budget-breakdown)

##### Facilitator

- Seth Goldfarb - [MIP41c4-SP5](https://mips.makerdao.com/mips/details/MIP41c4SP5)

---
