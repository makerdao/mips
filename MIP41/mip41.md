# MIP41: Facilitator Framework

## Preamble

```
MIP#: 41
Title: Facilitator Framework
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh, @blimpa, @gala, @twblack88, @LongForWisdom
Tags: process, core-unit-framework, personnel-xboarding, mip-set, core-unit-framework-mipset
Type: Process
Status: Accepted
Date Proposed: 2021-01-18
Date Ratified: 2021-25-03
Dependencies: MIP38, MIP39, MIP40, MIP4c2-SP10, MIP4c2-SP12
Replaces: n/a
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-march-2021-governance-cycle-bundle-march-22-2021?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip41-facilitator-framework/6098
Extra: This MIP has been amended. See [MIP4c2-SP15](https://forum.makerdao.com/t/mip4c2-sp15-core-unit-offboarding-process-amendments/15291). The original version can be found [here](https://github.com/makerdao/mips/blob/7fdb552680486bbd84dfd84b64980e0999249043/MIP41/mip41.md)
```

## References

[MIP41c4-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposal-Template.md)
[MIP41c5-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c5-Subproposal-Template.md)

## Sentence Summary

MIP41: Facilitator Framework describes the processes for onboarding and offboarding Core Units' Facilitators.

## Paragraph Summary

MIP41: Facilitator Framework describes the processes for onboarding and offboarding Core Unit Facilitators. Facilitators are the accountable individuals responsible for interfacing between Maker Governance, the Contributors, and external resources to achieve the Core Objectives of the Protocol. Facilitators are always attached to one or more Core Units and cannot exist in a void, i.e., Facilitators are Facilitators only *if* they are attached to at least one Core Unit.

## Component Summary

**MIP41c1: The Facilitator Framework**  
Gives an overview of the important characteristics of the Facilitator Framework MIP.

**MIP41c2: Facilitator Governance Powers**  
Specifies the Facilitators' unique powers when interacting with the Maker Governance processes.

**MIP41c3: Governance Facilitator Governance Powers**  
Specifies the special case of Governance Facilitators and their central role in the Maker Governance processes.

**MIP41c4: Facilitator Onboarding**  
A process component that defines the process for onboarding a Facilitator to a Core Unit.

**MIP41c5: Facilitator Offboarding (Subproposal Process)**
A process component that defines the process for removing a Facilitator.

**MIP41c6: Interim Facilitators**  
Specifies what Interim Facilitators are, the situations where they are necessary, and their responsibilities.

**MIP41c7: Interim Facilitator Appointment Process**  
Specifies the process used to appoint an Interim Facilitator to a Core Unit.

**MIP41c8: Endgame Transition**
This component defines the special rules of Endgame Transition as they apply to all Core Unit related MIPs.


## Motivation

A Facilitator is the most trusted actor in the MakerDAO community; they are given a high degree of autonomy and have resources and governance powers at their disposal. This Framework provides Governance with a simple way of managing and holding Facilitators accountable through the MIPs process.

## Specification / Proposal Details

### MIP41c1: The Facilitator Framework

Facilitators play a key role in the Maker ecosystem by acting as the link between Maker Governance and the Contributors. Facilitators are always attached to a Core Unit that represents their primary responsibility and their Budget and Governance Powers. The Budget they manage and their Governance Powers are dependent on the existence of that Core Unit.

The Core Unit Budget allows the facilitators to meet their responsibilities by hiring Contributors and purchasing services and products. Facilitators attached to a Core Unit administer the Budget for that Core Unit. How this is implemented in practice depends on the specific Budget Implementation.

The Facilitator Commitment is an essential part of a Facilitator proposal. There, the Facilitator specifies their perspective on how to successfully achieve the Mandate of the Core Unit they will be attached to, how they plan to organize, and how they will develop accountability.

The Facilitator Governance Powers enable the Facilitators to efficiently interact with Maker Governance processes related to their Core Unit.

---

### MIP41c2: Facilitator Governance Powers

Facilitators have special privileges in the Maker Governance Framework:

- Facilitators have the power to propose expedited, urgent or emergency Executive Votes (defined in MIP24) related to their Core Unit.
- Facilitators have the power to propose weekly non-standard Governance Polls (defined in MIP16) related to their Core Units.
- Facilitators have the power to propose weekly Executive Votes (defined in MIP16) related to their Core Units.
- Facilitator governance powers for particular Core Units can be extended through MIPs. They may include technical access to smart contracts like multisigs or other privileges in the governance process.

---

### MIP41c3: Governance Facilitator Governance Powers

Governance Facilitators have extraordinary powers to respond to their responsibilities listed on [MIP0c10:Governance Facilitator Role](https://mips.makerdao.com/mips/details/MIP0#core-responsibilities).

In relation to governance processes, Governance Facilitators have exceptional powers and responsibilities. These are defined in multiple MIPs like:

- The MIPs Framework (MIP0).
- The weekly governance cycle (MIP16).
- The urgent and emergency voting processes (MIP24).
- And others.

Governance Facilitators interpret the meaning of MIPs and their practical consequences.

Governance Facilitators decide whether a Facilitator's use of the powers defined in MIP41c2 are related to the Facilitators Core Unit, and therefore valid.

---

### MIP41c4: Facilitator Onboarding

This process component allows Governance to onboard a new facilitator with a Facilitator Commitment.

The proposal parameters are:
* Minimum feedback period: 1 month
* Minimum frozen period: 1 week

Once a Subproposal passes, the MIP Editor or Governance Facilitators modify the Core Unit's entry specified with the new Facilitator's name and information, and the new Facilitator Commitment.

MIP41c4 subproposals must use the template located at [MIP41c4-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposal-Template.md)

---

### MIP41c5: Facilitator Offboarding

This component is twofold:

1. It describes how Facilitators are to be handled in the event of a Core Unit offboarding via MIP39c3.
2. It establishes the process to offboard *Facilitators*. Full Core Unit offboardings are to be put forth via MIP39c3.

#### 1. Facilitators and Core Unit Offboardings via MIP39c3

If a Core Unit offboarding subproposal passes, the Facilitator(s) of the affected Core Unit immediately loses all special powers listed on MIP41c2/MIP41c3.

The Facilitator becomes a *Retiring* Facilitator in charge of executing the unwinding process for the offboarding Core Unit (described on MIP39c3). If the Retiring Facilitator fails to execute the unwinding plan, an *Interim* Facilitator - further defined in MIP41c6 - will take over these responsibilities.

#### 2. Facilitator Offboarding Process

A Facilitator can be offboarded without having the Core Unit they are attached to being offboarded. If there are no permanent facilitators remaining in the Core Unit then an Interim Facilitator will be appointed to take over responsibilities during the transition period as detailed in MIP41c7.

MIP41c5 subproposal parameters are:

- Minimum Feedback Period: 2 weeks.
- Minimum Frozen Period: 1 week.
- Poll Duration: 1 week.

MIP41c5 subproposals must use the template located at [MIP41c5-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c5-Subproposal-Template.md)

---

### MIP41c6: Interim Facilitators

Whenever a Core Unit finds itself with no Facilitator, an Interim Facilitator is needed to ensure the continuity or graceful wind-down of the Core Unit.

An Interim Facilitator is empowered to serve in this role for a maximum of two months. 

If a new permanent Facilitator is onboarded to the relevant Core Unit through a MIP41c4 subproposal the Interim Facilitator is immediately offboarded and all powers and responsibilities are transferred to the new permanent Facilitator.

In the event of a Core Unit offboarding, the Interim Facilitator is responsible for overseeing and executing the unwinding process as defined in MIP39c3. 

In the event of a Facilitator offboarding, the Interim Facilitator is responsible for both:
* Ensuring the functional continuity of the Core Unit during the interim period.
* Making a good faith effort to deliver one or more viable Facilitator Onboarding subproposals for the Core Unit to Maker Governance. The Interim Facilitator may propose themselves as a permanent Facilitator.

The Interim Facilitator is empowered to use the Facilitator Governance Powers defined in MIP41c2 to keep existing operational processes running smoothly during the interim period.

If the Core Unit is not being offboarded, the Interim Facilitator will receive monthly DAI compensation equal to that of the previous permanent Facilitator. If this information is not publicly available, the monthly compensation will be 15,000 DAI. 

When a Core Unit is offboarded and an Interim Facilitator is judged to be necessary to wind down the Core Unit gracefully, then compensation for an Interim Facilitator must be included as part of the offboarding subproposal.

---

### MIP41c7: Interim Facilitator Appointment Process 

The Interim Facilitator Appointment Process assumes the existence of one or more permanent Governance Facilitators. If this is not the case, MIP41c7 must be considered non-binding. The Governance Facilitators are responsible for the implementation of this process. A majority of Governance Facilitators may modify this process to suit the circumstances by communicating details and reasoning publicly before the process begins.

A voluntarily offboarding permanent Facilitator may publicly nominate a single Interim Facilitator. Subject to the nominated individual's acceptance, they are immediately ratified as the Interim Facilitator.

A single Interim Facilitator may be elected by a majority of Core Units voting in favor of a given individual within 72 hours of the initial Facilitator Offboarding. The individual must be willing to take the role to be eligible for election. Each Core Unit may cast a single vote for or against each candidate. In the event of a Core Unit containing multiple facilitators, they must come to a consensus and cast a single vote for their Core Unit per candidate. In the event an alternative Interim Facilitator is elected, they immediately replace the current Interim Facilitator, if one exists.

Core Unit Facilitators should refrain from casting votes before the Governance Facilitators publicly communicate the details of the process in this instance. 
 
In the absence of a successful Interim Facilitator appointment within 72 hours, one or more permanent Facilitator onboarding proposals for the Core Unit may be submitted into the weekly governance cycle. This overrides the normal rules relating to the feedback and frozen periods.

#### Edge Cases

If a voluntarily offboarding Facilitator has not nominated an Interim Facilitator, the other Core Unit Facilitators must elect an Interim Facilitator within 72 hours.

If a permanent Facilitator is missing and uncontactable without notice and for unknown reasons, a majority of Governance Facilitators must use their best judgment as to how and when to proceed with the election process.

If a Core Unit has no active Facilitators as a result of involuntary offboarding and has no active budget, no Interim Facilitator will be appointed unless there are winding down activities that require one.

If a permanent Facilitator has not been chosen before the expiry of an Interim Facilitator's two-month term, a majority of Governance Facilitators may extend the term by stating publicly that they are doing so, and the reasoning for this decision. If the Governance Facilitators do not do this, the Core Unit is offboarded, and any budgets are revoked. 

If after one month the full Interim Facilitator Appointment Process (including the expedited weekly cycle permanent Facilitator subproposals) fails to install either an Interim or permanent Facilitator, the Core Unit should be considered offboarded, and any budgets revoked. Appropriate MIP subproposals should be filled out by the Governance Facilitators and marked as Approved without going to vote.

If any other edge cases occur, a majority of Governance Facilitators may resolve them to the best of their ability.

### MIP41c8: Endgame Transition

In case of conflict, this component supersedes other components in the MIP.

To enable the smooth transition to Endgame, Core Unit related MIPs ([MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md)) continue to function temporarily during the Pregame after the Maker Constitution has passed. They are used only to provide budget continuity for existing, approved budgets, and to provide a temporary solution for designating Responsible Facilitators in the Scopes.

New Core Units can no longer be proposed or be approved, new budgets cannot be proposed or approved, and recurring budgets do not automatically renew. The only exception to the rule against recurring budget is the Strategic Finance Budget which can recur a single time.

All Core Unit roles defined in the Core Unit related MIPs no longer apply, and are superseded by the rules and responsibilities defined in the Maker Constituion or Scope Frameworks. If no direction is given to a Core Unit in the Maker Constitution or the Scope Frameworks, they can fall back on their existing Core Unit mandate, but must also make efforts to support and enable the transition to Endgame, and provide input for how their work can be incorporated in the Scopes.

Over time, all budgets provided from the Core Unit related MIPs will run out, and the Core Units will be transitioned to new budgets and have their work regulated through the Maker Constitution and Scopes. Once the transition is complete and all budgets have run out or been offboarded, and no more payments occur to any Core Unit defined in the Core Unit MIPs, all of the Core Unit MIPs become obsolete and stop having any effect.
