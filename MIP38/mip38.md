# MIP38: DAO Primitives State

## Preamble
```
MIP#: 38
Title: DAO Primitives State
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh
Type: Informational
Status: Formal Submission
Date Proposed: <2021-01-18>
Date Ratified: <yyyy-mm-dd>
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

There are currently no active Core Units. Entry 'EXMPL-000' exists as an example for formatting Core Unit State Entries.

---

#### EXMPL-000
**Example Core Unit** - Provides a decent descriptive name for a Core Unit example.
**Summary** - Provides an awesome and great example of a Core Unit List template.
**Date Ratified** -  1970-01-01
**Mandate** - [MIP39c2-SP0](example.com/mandate)
**Budget Amount** - 100,000 DAI / year
**Budget Implementation** - Manual - [MIP40c2-SP0](example.com/budget_implementation)
**Budget Breakdown** - [MIP40c2-SP0](example.com/budget_implementation)
**Facilitator A** - Awes M. Example - [MIP41c2-SP0](example.com/commitment_A)
**Facilitator B** - Gre T. Example - [MIP41c2-SP00](example.com/commitment_A)

---
