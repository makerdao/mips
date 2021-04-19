# MIP38: DAO Primitives State

## Preamble
```
MIP#: 38
Title: DAO Primitives State
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh
Tags: general, core-unit-framework, mip-set, core-unit-mipset
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

**MIP38c1: Core Unit State Maintenence**
This component defines the Core Unit State list, its format and its upkeep.

**MIP38c2: Core Unit State**
The component that contains all of the DAO Primitives State, with Core Units as the key.

## Motivation

This MIP lays down a basic structure based on Core Units (MIP39) capable of supporting the increasing complexity of the DAO and its continuous expansion. It also documents and keeps track of the state of the elements that make up this new structure and their dependencies.

Under its stripped-down, homogeneous nature, this structure avoids the hassle of ad-hoc implementations that are hard to analyze and interface.

Thinking forward, it also provides Governance with a straightforward process to fund teams beyond the dissolution of the Foundation.

## Specification / Proposal Details

### MIP38c1: Core Unit State Maintenence

This dataset contains all of the Core Units approved by the community, alongside the Core Units' data. It includes:
- Core Unit Mandates
- Budget Implementation and Breakdown
- Facilitator name, information, and commitment.
- Key Dates

This dataset is updated by the MIP Editors when a subproposal from MIP39, MIP40, or MIP41 becomes accepted.


**List Entry Template:**

---

#### NAME-XXX
**ID** - XXX# (assigned by the Operational Support Core Unit or a MIP Editor)
**Summary** - 30 word max summary.
**Date Ratified** - <date ratified>
**Mandate** - [MIP39c2-SPX](link)
**Budget Amount** - xxx,xxx DAI / year
**Budget Implementation** - Manual/Simple/Advanced - [MIP40c2-SPX](link)
**Budget Breakdown** - [MIP40c2-SPX](example.com/budget_implementation)
**Facilitator A** - Awes M. Example - [MIP41c2-SPX](link)
**Facilitator B** - Gre T. Example - [MIP41c2-SPY](link)
...

---

### MIP38c2: Core Unit State

#### Real-World Finance
**ID** - RWF-001
** Summary** - This Core Unit is designed to pursue Real-World Asset work and more generally helps MakerDAO to take over the traditional finance world.
**Date Ratified** - 2021-25-03
**Mandate** - [MIP39c2-SP1](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP1.md)
**Budget Amount** 40,000 DAI / month
** Budget Implementation** - Manual - [MIP40c3-SP1](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP1.md)
**Budget Breakdown** - [MIP40c3-SP1](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP1.md)
**Facilitator** - Sébastien Derivaux - [MIP41c4-SP1](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP1.md)

---

#### Risk
**ID** - RISK-001
** Summary** - Risk Core Unit ensures Maker Protocol can continue to grow safely by having proper risk management parameters and risk mitigation tools applied.
**Date Ratified** - 2021-25-03
**Mandate** - [MIP39c2-SP2](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP2.md)
**Budget Amount** 100,500 / month
** Budget Implementation** - Manual - [MIP40c3-SP2](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP2.md)
**Budget Breakdown** - [MIP40c3-SP2](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP2.md)
**Facilitator** - Primož Kordež - [MIP41c4-SP1](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP2.md)

---

#### Governance
**ID** - GOV-001
**Summary** - This Core Unit intends to fulfill MakerDAO's requirement of a consistent and well-run governance process managed by elected facilitators in order to remain stable and secure as it grows.
**Date Ratified** -  2021-25-03
**Mandate** - [MIP39c2-SP3](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP3.md)
**Budget Amount** - 240,000 DAI / quarter
**Budget Implementation** - Manual - [MIP40c3-SP3](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP3.md)
**Budget Breakdown** - [MIP40c3-SP3](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP3.md)
**Facilitator** - LongForWisdom - [MIP41c4-SP3](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP3.md)

---
