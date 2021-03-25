# MIP40: Budget Framework

## Preamble
```
MIP#: 40
Title: Budget Framework
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh
Type: Process
Status: Accepted
Date Proposed: 2021-01-18
Date Ratified: 2021-25-03
Dependencies: MIP38, MIP39, MIP41, MIP4c2-SP10, MIP4c2-SP12
Replaces: n/a
```

## References

MIP40c3-SP-Template

## Sentence Summary

MIP40: Budget Framework contains a framework for managing budgets and modifying them in the DAO Primitives State MIP.

## Paragraph Summary

MIP40: Budget Framework contains a framework for managing budgets and modifying them in the DAO Primitives State MIP. The Framework includes features to provide transparency and clarity for Governance when making decisions around budgets and a design that enables a high degree of flexibility in implementing payment structures for the Core Units.

## Component Summary

**MIP40c1: Budget Framework**
Gives an overview of the most critical characteristics of Budgets.

**MIP40c2: Composition of a Budget**
Describes the components of a Core Unit Budget proposal.

**MIP40c3: Adding/Modifying Core Unit Budget Process**
Describes the process for adding a budget to a new Core Unit or modifying the Core Unit's existing budget.

**MIP40c4: Budget Implementation Details**
Provides clarity on how the budget payouts are addressed from a practical perspective once approved.

## Motivation

The Budget Framework MIP allows Governance to manage and prioritize Core Units in a standardized way, promoting transparency and reducing Governance overhead and minimizing abuse and increase fairness in the budget process.
The budget system gives Facilitators the flexibility to modify their plans away from the initially submitted budget breakdown if conditions were to change. If they need to allocate the money differently, this would be possible but never exceeding the aggregate amount defined by their Budget Implementation code.
The Framework can help Governance guide a given Core Unit, as they could vote (or not) to attach multiple budgets to a Core Unit, each with a different, more specific objective.

## Specification / Proposal Details

### MIP40c1: Budget Framework

Budgets are used to fund the work defined by the Core Units chosen by Maker Governance. A budget is attached to a Core Unit and is meant to be used only for that Core Unit.

The Facilitators of each Core Unit administer core Unit budgets.

The Core Unit Facilitators must ensure that transparency and accountability exist as the budget is spent.

If a Facilitator is offboarded from their Core Unit, quits, or goes missing, the budget will continue to be available to pay out according to its Budget Implementation to allow the Core Unit to continue with long-term operations as much as possible. See MIP41c6 for details on this process.


### MIP40c2: Composition of a Budget

Core Unit Budgets can have multiple entries. Each entry has both a Budget Breakdown and a Budget Implementation.

Having multiple budget entries, each with its implementation and breakdown, enables more advanced compensation and funding structures to be created if desired.

Once a budget is approved, the Core Unit's Facilitators can begin drawing payments to fund their Core Unit according to their Budget Implementation.

#### Budget Breakdown

The Budget Breakdown component consists of the Core Unit Facilitators' best guess breakdown of spending for their Core Unit during the budget period.

The Budget Breakdown component is non-binding and is intended to encourage transparency and communication between the Core Unit Facilitators and Maker Governance. The breakdown allows Maker Governance to make a more informed decision when deciding whether to approve the budget.

#### Budget Implementation

The Budget Implementation defines when and how the Core Unit Facilitators will receive the funds that make up their budget.

Unlike the breakdown, the Budget Implementation is binding. It should be understood to directly authorize the proposed funds to be drawn from the funding source (either the Maker Protocol or a treasury contract controlled by Maker Governance).


### MIP40c3: Adding/Modifying Core Unit Budget Process

This subproposal process modifies the Budget Implementations and Budget Breakdowns entries of a Core Unit in the DAO Primitives State.

Once a MIP40c3-SP subproposal passes, the Governance Facilitators or the MIP Editors will update the domain state MIP (MIP38) accordingly.

This is a technical process component that can have on-chain effects that alter the Maker Protocol's state. When subproposals generated from this component reach the executive vote stage of the MIPs cycle, the executive vote must include a technical state change to authorize the budget implementations specified in the subproposal to draw funds from the Maker Protocol.

The proposal parameters are:
* Minimum feedback period: 1 month.
* Minimum frozen period: 1 week.

---

### MIP40c4: Budget Implementation Details

Core Unit Budgets are paid out through Budget Implementations, which are smart contracts authorized by Maker Governance to draw funds from the Protocol. It can also be a manual (not smart contract-based) pre-approval by Governance.

Facilitators can propose simple, manual or advanced Budget Implementations that will control their access to the Core Unit's budget.

Maker Governance can explicitly turn a budget implementation off.

#### Simple Budget Implementations

Simple Budget Implementations create a fixed rate of funds taken from the Protocol and given directly to the Core Unit's Facilitators.

Simple Budget Implementations can be used for reliable base expenses, even if MKR has to be diluted to fund them. This feature makes them useful for creating job security and attracting talent.

#### Manual Budget Implementations

Manual Budget Implementations are discouraged but exist as a backup solution that can stand in if a Simple Budget Implementation isn't available for any given reason.

Manual Budget Implementations aren't based on a smart contract but rather on Governance, giving a Facilitator the power to use the governance cycle to draw funds at the rate specified in the DAO Primitives State.

Manual Budget Implementations should be replaced by smart contract-based solutions as soon as possible to reduce Governance overhead.

#### Advanced Budget Implementations

Advanced Budget Implementations cover any mechanism beyond the Simple and Manual Implementations described above.

Advanced Budget Implementations can be used for more innovative cases, such as incentive payments or unpredictable expenses. They can be implemented in various ways, such as relying on multi-sig access or dependent on system variables such as Protocol auctions, Dai supply or Stability Fees.

Advanced Budget Implementations can also be used to hard-code payment streams to long-term contributors or other automated distribution mechanisms that bypass Core Unit Facilitators and send funds directly to contributors.

#### Different Fund Types

The Budget Implementation could draw funds from the Protocol in various ways, depending on the implementation's objective. It could draw Dai from the Surplus Buffer and other sources, such as Governance owned smart contracts or reserves that are compatible with Budget Implementations, or by getting authorization to print MKR directly.

Printing MKR through this MIP is only allowed if the MKR is to be distributed with a programmed time-lock of at least 12 months. Budget Implementations that don't verifiably distribute MKR with at least a 12-month time lock cannot be proposed through this MIP.

---
