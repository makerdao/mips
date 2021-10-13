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

#### NAME-XXX
- **ID** - XXX# (assigned by the Operational Support Core Unit or a MIP Editor)
- **Summary** - 30 word max summary.
- **Date Ratified** - [yyyy-dd-mm]
- **Mandate** - [MIP39c2-SPX] (link)
- **Budget Amount** - xxx,xxx DAI / year
- **Budget Implementation** - Manual/Simple/Advanced - [MIP40c2-SPX] (link)
- **Budget Breakdown** - [MIP40c2-SPX](example.com/budget_implementation)
- **Facilitator A** - Awes M. Example - [MIP41c2-SPX] (link)
- **Facilitator B** - Gre T. Example - [MIP41c2-SPY] (link)

---

### MIP38c2: Core Unit State

#### Real-World Finance

- **ID** - RWF-001
- **Summary** - This Core Unit is designed to pursue Real-World Asset work and more generally helps MakerDAO to take over the traditional finance world.
- **Date Ratified** - 2021-25-03
- **Mandate** - [MIP39c2-SP1](https://mips.makerdao.com/mips/details/MIP39c2SP1)
- **Budget Amount** 40,000 DAI / month
- **Budget Implementation** - Manual - [MIP40c3-SP12](https://mips.makerdao.com/mips/details/MIP40c3SP12#list-of-budget-implementations)
- **Budget Breakdown** - [MIP40c3-SP12](https://mips.makerdao.com/mips/details/MIP40c3SP12#list-of-budget-breakdowns)
- **Facilitator** - Sébastien Derivaux - [MIP41c4-SP1](https://mips.makerdao.com/mips/details/MIP41c4SP1)

---

#### Risk

- **ID** - RISK-001
- **Summary** - Risk Core Unit ensures Maker Protocol can continue to grow safely by having proper risk management parameters and risk mitigation tools applied.
- **Date Ratified** - 2021-25-03
- **Mandate** - [MIP39c2-SP2](https://mips.makerdao.com/mips/details/MIP39c2SP2)
- **Budget Amount** 546,000 DAI / quarter
- **Budget Implementation** - Manual - [MIP40c3-SP13](https://mips.makerdao.com/mips/details/MIP40c3SP13#list-of-budget-implementations)
- **Budget Breakdown** - [MIP40c3-SP13](https://mips.makerdao.com/mips/details/MIP40c3SP13#budget-breakdown-items)
- **Facilitator** - Primož Kordež - [MIP41c4-SP1](https://mips.makerdao.com/mips/details/MIP41c4SP2)

---

#### Governance

- **ID** - GOV-001
- **Summary** - This Core Unit intends to fulfill MakerDAO's requirement of a consistent and - well-run governance process managed by elected facilitators in order to remain stable and secure as it grows.
- **Date Ratified** - 2021-25-03
- **Mandate** - [MIP39c2-SP3](https://mips.makerdao.com/mips/details/MIP39c2SP3)
- **Budget Amount** - 520,000 DAI / quarter
- **Budget Implementation** - Manual - [MIP40c3-SP11](https://mips.makerdao.com/mips/details/MIP40c3SP11#budget-implementation)
- **Budget Breakdown** - [MIP40c3-SP11](https://mips.makerdao.com/mips/details/MIP40c3SP11#budget-breakdown)
- **Facilitator** - LongForWisdom - [MIP41c4-SP3](https://mips.makerdao.com/mips/details/MIP41c4SP3)
- **Facilitator** - Payton Rose - [MIP41c4-SP12](https://mips.makerdao.com/mips/details/MIP41c4SP12)

---

#### Protocol Engineering

- **ID** - PE-001
- **Summary** - The Protocol Engineering Team’s responsibility is to extend the functionality of the Maker protocol, assist with the maintenance and operation of existing smart contracts and ensure the safety and correctness of protocol design and implementation.
- **Date Ratified** - 2021-27-04
- **Mandate** - [MIP39c2-SP7](https://mips.makerdao.com/mips/details/MIP39c2SP7)
- **Budget Amount** - 510,000 DAI / month
- **Budget Implementation** - Manual - [MIP40c3-SP7](https://mips.makerdao.com/mips/details/MIP40c3SP7#smart-contract-implementation)
- **Budget Breakdown** - [MIP40c3-SP7](https://mips.makerdao.com/mips/details/MIP40c3SP7#budget)
- **Facilitator** - Derek Flossman - [MIP41c4-SP7](https://mips.makerdao.com/mips/details/MIP41c4SP7)

---

#### Growth

- **ID** - GRO-001
- **Summary** - The Growth Core Unit aims to grow the available distribution channels for the Maker protocol by intelligently deploying the human and financial capital given by the DAO, increasing the supply and demand of Dai in the global markets.
- **Date Ratified** - 2021-27-04
- **Mandate** - [MIP39c2-SP19](https://mips.makerdao.com/mips/details/MIP40c3SP19)
- **Budget Amount** - 937,950 Dai / quarter
	- **Budget Implementation** - Manual - [MIP40c3-SP19](https://mips.makerdao.com/mips/details/MIP40c3SP19#budget-implementation)
	- **Budget Breakdown** - [MIP40c3-SP19](https://mips.makerdao.com/mips/details/MIP40c3SP19#budget-breakdown)
- **MKR Incentive Plan** - [MIP40c3-SP23](https://mips.makerdao.com/mips/details/MIP40c3SP23)
	- **Payment Implementation** - [MIP40c3-SP23](https://mips.makerdao.com/mips/details/MIP40c3SP23#payment-implementation) 
- **Facilitator** - Nadia Alvarez - [MIP41c4-SP4](https://mips.makerdao.com/mips/details/MIP41c4SP4)

---

#### Content Production

- **ID** - MKT-001
- **Summary** - The Content Production Core Unit is responsible for creating, and supporting the creation of written, audio, and visual content that educates audiences on MakerDAO, promotes the work and culture of the ecosystem, and encourages people to use Dai and the Maker Protocol.
- **Date Ratified** - 2021-27-04
- **Mandate** - [MIP39c2-SP5](https://mips.makerdao.com/mips/details/MIP39c2SP5)
- **Budget Amount** - 44,375 DAI / month
- **Budget Implementation** - Manual - [MIP40c3-SP5](https://mips.makerdao.com/mips/details/MIP41c3SP5#budget-implementation)
- **Budget Breakdown** - [MIP40c3-SP5](https://mips.makerdao.com/mips/details/MIP41c3SP5#breakdown)
- **Facilitator** - Seth Goldfarb - [MIP41c4-SP5](https://mips.makerdao.com/mips/details/MIP41c4SP5)

---

#### MakerDAO Shop

- **ID** - MDS-001
- **Summary** - The MakerDAO Shop Core Unit helps build brand awareness and goodwill for MakerDAO and Dai by offering branded items (Swag, NFTs, etc) via the official MakerDAO store
- **Date Ratified** - 2021-27-04
- **Mandate** - [MIP39c2-SP6](https://mips.makerdao.com/mips/details/MIP39c2SP6)
- **Budget Amount** - 0 DAI (50/50 profit sharing)
- **Budget Implementation** - Manual - [MIP40c3-SP6](https://mips.makerdao.com/mips/details/MIP40c3SP6#list-of-budget-implementations)
- **Budget Breakdown** - [MIP40c3-SP6](https://mips.makerdao.com/mips/details/MIP40c3SP6#budget-breakdown-items)
- **Facilitator** - Coulter Mulligan - [MIP41c4-SP6](https://mips.makerdao.com/mips/details/MIP41c4SP6)
- **Facilitator** - Mike Porcaro - [MIP41c4-SP6](https://mips.makerdao.com/mips/details/MIP41c4SP6)

---

#### Sustainable Ecosystem Scaling

- **ID** - SES-001
- **Summary** - The Sustainable Ecosystem Scaling Core Unit's mission is to sustainably grow the Maker Protocol’s moats by systematically removing barriers between the decentralized workforce, capital, and work.
- **Date Ratified** - 2021-25-05
- **Mandate** - [MIP39c2-SP10](https://mips.makerdao.com/mips/details/MIP39c2SP10)
- **Budget Amount** - 1,153,480 DAI / quarter
- **Budget Implementation** - Manual - [MIP40c3-SP10](https://mips.makerdao.com/mips/details/MIP40c3SP10#budget-implementation), [MIP40c3-SP17 (MKR Incentive Plan)](https://mips.makerdao.com/mips/details/MIP40c3SP17)
- **Budget Breakdown** - [MIP40c3-SP10](https://mips.makerdao.com/mips/details/MIP40c3SP10#budget-breakdown)
- **Facilitator** - juanjuan - [MIP41c4-SP10](https://mips.makerdao.com/mips/details/MIP41c4SP10)

---

#### Oracles

- **ID** - ORA-001
- **Summary** - The Oracle Core Unit is responsible for developing and administrating the Oracle Protocol. Oracles are a critical component of securing the Maker Protocol to ensure positions are sufficiently collateralized. 
- **Date Ratified** - 2021-28-06
- **Mandate** - [MIP39c2-SP13](https://mips.makerdao.com/mips/details/MIP39c2SP13)
- **Budget Amount** - 5,036,124 DAI / year
- **Budget Implementation** - Manual - [MIP40c3-SP15](https://mips.makerdao.com/mips/details/MIP40c3SP15)
- **Budget Breakdown** - [MIP40c3-SP15](https://mips.makerdao.com/mips/details/MIP40c3SP15)
- **Facilitator** - Niklas Kunkel - [MIP41c4-SP13](https://mips.makerdao.com/mips/details/MIP41c4SP13)

---

#### Governance Communications

- **ID** - COM-001
- **Summary** - The Governance Communications Core Unit performs a complementary set of resources and services that focus on MakerDAO's informational accessibility and communication practices as a public organization. 
- **Date Ratified** - 2021-26-07
- **Mandate** - [MIP39c2-SP8](https://mips.makerdao.com/mips/details/MIP39c2SP8)
- **Budget Amount** - 163,200 Dai - Aug 2021-Dec 2021
- **Budget Implementation** - Manual - [MIP40c3-SP8](https://mips.makerdao.com/mips/details/MIP40c3SP8#budget-implementation)
- **Budget Breakdown** - [MIP40c3-SP8](https://mips.makerdao.com/mips/details/MIP40c3SP8#budget-breakdown)
- **Facilitator** - David Utrobin - [MIP41c4-SP8](https://mips.makerdao.com/mips/details/MIP41c4SP8)

---

#### Dai Foundation

- **ID** - DAIF-001
- **Summary** - The Dai Foundation Core Unit is responsible for facilitating the dialogue between the Dai Foundation and the Community regarding intellectual property safeguarding, intellectual property usage, and related activities.
- **Date Ratified** - 2021-23-08
- **Mandate** - [MIP39c2-SP17](https://mips.makerdao.com/mips/details/MIP39c2SP17)
- **Budget Amount** - 2,138,591 Dai (first year); 1,038,599 Dai (second year); 463,186 Dai (third year)
- **Budget Implementation** - [MIP40c3-SP24](https://mips.makerdao.com/mips/details/MIP40c3SP24#payment-implementation)
- **Budget Breakdown** - [MIP40c3-SP24](https://mips.makerdao.com/mips/details/MIP40c3SP24#budget-breakdown)
- **Facilitator** - Søren Peter Nielsen - [MIP41c4-SP18](https://mips.makerdao.com/mips/details/MIP41c4SP18)

---

- **ID** - SNE-001
- **Summary** - In a volatile, high gas cost environment, DeFi protocols are attempting to build bridges to L2 protocols to access liquidity and remain competitive. This proposal is a plan to build a DAI bridge over Starknet within 3 months (phase I).
- **Date Ratified** - 2021-27-09
- **Mandate** - [MIP39c2-SP19](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP19.md)
- **Budget Amount** - 210,375 Dai - Oct 2021-Dec 2021
- **Budget Implementation** - [MIP40c3-SP28](https://mips.makerdao.com/mips/details/MIP40c3SP28#budget-implementation)
- **Budget Breakdown** - [MIP40c3-SP28](https://mips.makerdao.com/mips/details/MIP40c3SP28#list-of-budget-breakdowns)
- **Facilitator** - Louis Baudoin - [MIP41c4-SP20](https://mips.makerdao.com/mips/details/MIP41c4SP20)

---

- **ID** - CES-001
- **Summary** - To operationalize collateral management within the Maker Protocol allowing anyone to onboard collateral while ensuring the stability and security of the ecosystem.
- **Date Ratified** - 2021-27-09
- **Mandate** - [MIP39c2-SP20](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP20.md)
- **Budget Amount** - 1,223,552 Dai (Total Budget Cap spanning a six-month cycle)
- **Budget Implementation** - [MIP40c3-SP30](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP30.md#budget-implementation-1)
- **Budget Breakdown** - [MIP40c3-SP30](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP30.md#list-of-budget-breakdowns)
- **Facilitator** - Robert Jordan - [MIP41c4-SP21](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP21.md)

---

- **ID** - DUX-001
- **Summary** - Enabling the best-in-class decentralized decision making for the Maker Protocol by providing a meaningful user experience for all governance participants.
- **Date Ratified** - 2021-27-09
- **Mandate** - [MIP39c2-SP18](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP18.md)
- **Budget Amount** - 483,575 Dai (Total Budget Cap spanning a three-month cycle)
- **Budget Implementation** - [MIP40c3-SP26](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP26.md#transfers)
- **Budget Breakdown** - [MIP40c3-SP16](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP16.md#budget-breakdown)
- **Facilitator** - Philip Bain - [MIP41c4-SP19](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP19.md)

---

- **ID** - SH-001
- **Summary** - he SHCU aims to promote community engagement and promote the Maker brand by strategically spreading happiness, positive vibes, and mild but delightful confusion throughout the Maker Community via memes, shitposts, and Bespoke Happiness Airdrops.
- **Date Ratified** - 2021-27-09
- **Mandate** - [MIP39c2-SP11](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP11.md)
- **Budget Amount** - 58,000 Dai - Oct 2021-Dec 2021 + 106,500 DAI (initial payment)
- **Budget Implementation** - [MIP40c3-SP26](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP26.md#transfers)
- **Budget Breakdown** - [MIP40c3-SP26](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP26.md#quarterly-budget-implementation)
- **Facilitator** - Andrew Burban - [MIP41c4-SP11](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP11.md)
