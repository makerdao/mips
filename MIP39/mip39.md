# MIP39: Core Unit Framework

## Preamble
```
MIP#: 39
Title: Core Unit Framework
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh
Type: Process
Status: Accepted
Date Proposed: 2021-01-18
Date Ratified: 2021-25-03
Dependencies: MIP38, MIP40, MIP41, MIP4c2-SP10, MIP4c2-SP12
Replaces: n/a
```
## References
MIP39c2-SP-Template
MIP39c3-SP-Template
MIP39c4-SP-Template

## Sentence Summary

MIP39: Core Unit Framework contains a framework for managing Core Units and modifying them in the DAO Primitives State MIP.

## Paragraph Summary

MIP39: Core Unit Framework contains a framework for managing Core Units and modifying them in the DAO Primitives State MIP. The Core Unit is the basic building block for organizing work for the DAO. It denotes particular long-term objectives that Maker Governance has decided for the protocol to be secure and successful.

## Component Summary

**MIP39c1: Core Units**
Gives an overview of the most important characteristics of Core Units.

**MIP39c2: Adding Core Units (Subproposal Process)**
The process for adding new Core Units to the DAO primitives State.

**MIP39c3: Modifying Core Units (Subproposal Process)**
The process for modifying Core Units in the DAO primitives State.

**MIP39c4: Removing Core Units (Subproposal Process)**
The process for removing Core Units from the DAO primitives State.

## Motivation

As the Foundation dissolves, MakerDAO must take over the tasks and responsibilities no longer fulfilled. We believe MakerDAO's current structure is too ill-defined to be able to integrate these successfully. A new scheme is needed for MakerDAO to achieve this crucial integration on its way to full autonomy.

Core Units are DAO Primitives designed to be easy-to-transition-to and capable of accommodating both the current structures and the Foundation's newly delegated operations within a coherent framework.

Core Units define long-term work areas and cover a broad set of responsibilities or focus. They are the basic units of work that Maker Governance is able to oversee, manage and prioritize.

## Specification / Proposal Details

### MIP39c1: Core Units

**What is a Core Unit?**

A Core Unit is a structure that has a budget attached to it, managed by one or more Facilitators, that coordinate and pay contributors working to achieve a long-term goal within MakerDAO.

Core Units are proposed by community members and voted on by Maker Governance. Each Core Unit may have a budget (MIP40). The Facilitators (MIP41) of a Core Unit may have additional permissions over the Maker Protocol or Governance Processes depending on their Core Unit's nature.


**Core Unit Mandates**

Core Unit Mandates set the direction of the work that Facilitators must help carry out by using their budget and exercising their Governance Powers.

Mandates should be high-level and avoid trying to micromanage the Core Unit processes; instead, they should be broad, open-ended and give room for manoeuvre so as not to stifle the Facilitators' ability to come up with innovative solutions and efficient processes.

Mandates can be regarded as "questions" for Facilitators to "answer" with their Facilitator Commitment (MIP41) when proposing to be onboarded to a given Core Unit.

Mandates from different Core Units can overlap to create redundancy and parallelize and decentralize work within the DAO.

**Core Objectives and Domains**

Core Objectives and Domains are not directly defined in the DAO Primitives MIP Set but are flexible concepts that emerge through the interaction of DAO Primitives.

Core Units are at the intersection of Domains (which denote skillsets and capabilities) and Objectives (which denote cross-domain long term workstreams.)

A Core Unit can participate in multiple objectives and can fall under one or more domains.


---

### MIP39c2: Adding/Modifying Core Units (Subproposal Process)

- This subproposal process allows Governance to create or modify an existing Core Unit by setting its Mandate and/or its name.
    > Care should be taken so that names and Mandates don't end up drifting apart from each other.
- Once a subproposal is approved, the Governance Facilitator or the MIP Editor modifies the DAO Primitives State (MIP38) to append a new entry with the Core Unit specified in the subproposal. The Operational Support Core Unit, or the MIP Editor or Governance Facilitator, will also assign a Core Unit ID (e.g.: `GOV1`) to uniquely identify the given Core Unit.
- The proposal parameters are:
    - Minimum feedback period: 1 month.
    - Minimum frozen period: 1 week.

---

### MIP39c3: Removing Core Units (Subproposal Process)

- This subproposal process allows Governance to remove a Core Unit from the DAO Primitives State (MIP38). A Core Unit can only be removed if it has no active budget implementations (see MIP40) and no active facilitators (see MIP41).
- The proposal parameters are:
    - Minimum feedback period 1 month
    - Minimum frozen period: 1 week
