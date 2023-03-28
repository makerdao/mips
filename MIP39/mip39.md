# MIP39: Core Unit Framework

## Preamble

```
MIP#: 39
Title: Core Unit Framework
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh
Tags: process, core-unit-framework, mip-set, core-unit-framework-mipset
Type: Process
Status: Accepted
Date Proposed: 2021-01-18
Date Ratified: 2021-25-03
Dependencies: MIP38, MIP40, MIP41, MIP4c2-SP10, MIP4c2-SP12
Replaces: n/a
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-march-2021-governance-cycle-bundle-march-22-2021?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip39-core-unit-framework/6096
Extra: This MIP has been amended. See [MIP4c2-SP15](https://forum.makerdao.com/t/mip4c2-sp15-core-unit-offboarding-process-amendments/15291) and [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1). The original version can be found [here](https://github.com/makerdao/mips/blob/7fdb552680486bbd84dfd84b64980e0999249043/MIP39/mip39.md).
```

## References

[MIP39c2-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposal-Template.md)
[MIP39c3-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c3-Subproposal-Template.md)

## Sentence Summary

MIP39 is part of the Core Unit Framework MIP Set and describes the processes for 1) onboarding and offboarding Core Units, 2) modifying Core Unit Mandates, and 3) renaming Core Units.

## Paragraph Summary

MIP39 is part of the Core Unit Framework MIP Set, which further comprises MIP38, MIP40, and MIP41. MIP39 contains the full definition of *Mandate* within the Core Unit Framework; it also establishes the processes for:

- Onboarding and offboarding Core Units.
- Modifying Core Unit Mandates.
- Renaming Core Units.

## Component Summary

**MIP39c1: Core Unit Mandate**
Defines Core Unit Mandates.

**MIP39c2: Adding/Modifying Core Units (Process Component)**
Defines the processes for onboarding Core Units, refreshing Core Unit Mandates, and renaming Core Units.

**MIP39c3: Offboarding Core Units (Process Component)**
Defines the process for offboarding Core Units.

**MIP39c4: Endgame Transition**
This component defines the special rules of Endgame Transition as they apply to all Core Unit related MIPs.


## Motivation

As the Foundation dissolves, MakerDAO must take over the tasks and responsibilities no longer fulfilled. We believe MakerDAO's current structure is too ill-defined to be able to integrate these successfully. A new architecture is needed for MakerDAO to achieve full autonomy.

Core Units are designed to be easy-to-transition-to and capable of accommodating both the current structures and the Foundation’s newly delegated operations within a coherent framework.

Core Units define long-term work areas and cover a broad set of responsibilities or focus. They are the basic units of work that Maker Governance is able to oversee, manage and prioritize.

## Specification / Proposal Details

### MIP39c1: Core Unit Mandate

Mandates are self-imposed declarations that define the work scope and responsibilities for any given Core Unit. Mandates are initially ratified at onboarding time, but they can be modified at a later time via single MIP39c2 subproposals.

In the interest of being flexible, relatively broad and open-ended Mandates are to be preferred over granular Mandates. In the interest of promoting redundancy, parallelization, and decentralization within the DAO, Mandates can overlap across Core Units.

Mandates are one of the three fundamental entities that define a Core Unit along with Budgets and Facilitators. The interaction among these entities is detailed in MIP38.

### MIP39c2: Adding/Modifying Core Units

MIP39c2 subproposals spearhead the onboarding of Core Units by defining their name and Mandate. Alternatively, when applied singly on a ratified Core Unit, MIP39c2 subproposals can be used to modify its name or Mandate or both.

#### Core Unit Onboarding Process

A Core Unit is brought into existence within MakerDAO upon the simultaneous, bundled ratification of at least three subproposals:

- One MIP39c2 subproposal that defines its name and *Mandate*.
- One MIP40c3 subproposal that defines its *Budget*.
- One or more MIP41c4 subproposals that define its *Facilitators*.

In the particular case of Governance Core Units, their Core Unit ID must have the prefix `GOV`.

Although these subproposals can fulfill their Feedback and Frozen Periods independently, they need to be formally submitted at the same time.

Upon Formal Submission, these subproposals will be bundled into one single, binary Ratification Poll that can be either fully rejected or fully accepted.

|![](https://i.imgur.com/i8SO7AI.png)|
|--|
| Subproposals involved in the Core Unit onboarding process. (Note that multiple MIP41c4 subproposals can be submitted when a Core Unit is to have more than one Facilitator.) |

#### Core Unit Mandate Refreshing Process / Core Unit Renaming Process

MIP39c2 subproposals can also be applied singly on ratified, active Core Units to modify their name or Mandate or both.

![](https://i.imgur.com/bcXKles.png)

#### Subproposal Parameters and Template

The parameters for MIP39c2 subproposals are:

- **Minimum Feedback Period**: 1 month.
- **Minimum Frozen Period**: 1 week.
- **Governance Cycle**: Monthly.

MIP39c2 subproposals must use the template located at [MIP39c2-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposal-Template.md).

### MIP39c3: Offboarding Core Units (Process Component)

Core Units can be offboarded from MakerDAO by utilizing MIP39c3 subproposals. The ratification of a MIP39c3 subproposal triggers the following sequence of events:

- Determining who will be executing the unwinding plan:
    - The Retiring Facilitator
    - An Interim Facilitator chosen via the Fallback Process defined in MIP41c6.
- Adapting the Facilitator's permissions to meet the needs of the unwinding plan
- Executing the unwinding plans for the Core Unit

An offboarded Core Unit should conduct all winding down activities within four months from the ratification date of the offboarding.

#### Unwinding Execution Plan

Budgets built after the Core Unit Budget Process ratified via MIP4c2-SP19 include an unwinding plan that defines the tasks to execute at offboarding time and the compensation for them.

Legacy budgets do not include unwinding plans. A broad, default plan and a compensation is provided here for them:

- Transferring intangible MakerDAO assets (access to DAO-claimable platforms, e-mail accounts, websites, etc.) back into the DAO.
- Documenting and delegating the activities previously carried out by the unwinding Core Unit that impact the DAO. To the extent that this is reasonable and possible, provide enough detail so that other Core Units can pick up these activities.
- Settling outstanding debts both to contributors and external actors/services.
- Returning unused funds.

Unwinding compensation will transfer to the Retiring/Interim Facilitator upon completion. The compensation is set to be 33% of the annual salary of the Facilitator of the Core Unit that is being offboarded, as per its latest ratified budget. If the Core Unit budget is not public or cannot be accessed, a fallback budget is recommended. Compensation parameters could be set to Full-time, moderate facilitator experience, using a recent transparent budget as a reference.

#### Permissions

Immediately after the ratification of the offboarding, some of the Facilitators' permissions will be removed. They will only retain permissions that are necessary for the Core Unit unwinding. At this stage, the Facilitators are to be considered ***Retiring*** Facilitators.

#### Overview of the Offboarding Process upon a MIP39c3 Subproposal Ratification

|![](https://i.imgur.com/iIGkQce.png) |
|--|
| Sequence of events triggered by a ratified MIP39c3 subproposal. |

MIP39c3 subproposals must use the template located at [MIP39c3-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c3-Subproposal-Template.md)

The parameters for MIP39c3 subproposals are:

- **Minimum Feedback Period**: 1 month.
- **Minimum Frozen Period**: 1 week.

MIP39c3 subproposals must use the template located at [MIP39c3-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c3-Subproposal-Template.md).

### MIP39c4: Endgame Transition

In case of conflict, this component supersedes other components in the MIP.

To enable the smooth transition to Endgame, Core Unit related MIPs ([MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md)) continue to function temporarily during the Pregame after the Maker Constitution has passed. They are used only to provide budget continuity for existing, approved budgets, and to provide a temporary solution for designating Responsible Facilitators in the Scopes.

New Core Units can no longer be proposed or be approved, new budgets cannot be proposed or approved, and recurring budgets do not automatically renew. The only exception to the rule against recurring budget is the Strategic Finance Budget which can recur a single time.

All Core Unit roles defined in the Core Unit related MIPs no longer apply, and are superseded by the rules and responsibilities defined in the Maker Constitution or Scope Frameworks. If no direction is given to a Core Unit in the Maker Constitution or the Scope Frameworks, they can fall back on their existing Core Unit mandate, but must also make efforts to support and enable the transition to Endgame, and provide input for how their work can be incorporated in the Scopes.

Over time, all budgets provided from the Core Unit related MIPs will run out, and the Core Units will be transitioned to new budgets and have their work regulated through the Maker Constitution and Scopes. Once the transition is complete and all budgets have run out or been offboarded, and no more payments occur to any Core Unit defined in the Core Unit MIPs, all of the Core Unit MIPs become obsolete and stop having any effect.
