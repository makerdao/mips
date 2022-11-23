# MIP41: Facilitator Framework

## Preamble

```
MIP#: 41
Title: Facilitator Framework
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh, @blimpa, @gala, @twblack88
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
Specifies what Interim Facilitators are, the situations where they are necessary, and how they are appointed.
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

A Facilitator can be offboarded without having the Core Unit they are attached to being offboarded. An Interim Facilitator will take over responsibilities during the transition. A MIP41c4 subproposal proposing a new Facilitator should be submitted by the Interim Facilitator or by any other member of the Community.

If a Facilitator wishes to voluntarily offboard, a MIP41c4 subproposal proposing a new Facilitator should be submitted by the Interim Facilitator or by any other member of the Community.

If a Facilitator goes missing, an Interim Facilitator will take over responsibilities during the transition. A MIP41c4 subproposal proposing a new Facilitator should be submitted by the Interim Facilitator or by any other member of the Community.

MIP41c5 subproposal parameters are:

- Minimum Feedback Period: 2 weeks.
- Minimum Frozen Period: 1 week.
- Poll Duration: 1 week.

MIP41c5 subproposals must use the template located at [MIP41c5-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c5-Subproposal-Template.md)

---

### MIP41c6: Interim Facilitators

#### Interim Facilitators

Whenever a Core Unit finds itself with no Facilitator, an Interim Facilitator is needed to ensure the continuity or graceful wind-down of the Core Unit.

A Retiring Faciliator may nominate a single Interim Facilitator. Subject to the nominated Interim Facilitator's acceptance, they are immediately ratified as the Interim Facilitator.

The Facilitators of other Core Units may elect an alternative Interim Facilitator within 72 hours of the initial Facilitator Offboarding using the Interim Facilitator Election Process. In the event an alternative Interim Facilitator is elected, they immediately replace the current Interim Facilitator, if one exists.

The incentive to volunteer as an Interim Facilitator is the compensation tied to a Core Unit unwinding plan. In the event of a missing, failed succession, or headless core unit, the incentive to volunteer as an Interim Facilitator is a transfer of the former Facilitator's compensation during the interim period.

#### Interim Facilitator Responsibilities And Powers

An Interim Facilitator is empowered to serve in this role for a maximum of two months. 

In the event of a Core Unit offboarding, the Interim Facilitator is responsible for overseeing and executing the unwinding process. 

In the event of a Facilitator offboarding, the Interim Facilitator is responsible for both:
* Ensuring the functional continuity of the Core Unit during the interim period.
* Making a good faith effort to deliver one or more viable Facilitator Onboarding subproposals for the Core Unit to Maker Governance.

The Interim Facilitator is empowered to use the Facilitator Governance Powers defined in MIP41c2 to keep existing operational processes running smoothly during the interim period.

#### Interim Facilitator Election Process

The Interim Facilitator Election Process assumes the existence of one or more permanent Governance Facilitators. If this is not the case, MIP41c6 must be considered non-binding.

An Interim Facilitator may be elected by a majority of Core Units voting in favour of a given individual. The individual must be willing to take the role to be eligible for election. Each Core Unit may cast a single vote for or against each candidate. In the event of a Core Unit containing multiple facilitators, they must come to consensus on their Core Unit's votes before communicating them publicly.

In the absence of succesful Interim Facilitator selection or election within 72 hours, one or more permanent facilitator onboarding proposals may be made under the next weekly governance cycle. This overrides the normal rules relating to the feedback and frozen periods.

The Governance Facilitators are responsible for the implementation of this proces. A majority of  Governance Facilitators may modify this process to suit the circumstances by communicating details and reasoning publicly prior to the beginning of the process. 

Core Unit Facilitators should refrain from casting votes prior to the Governance Facilitators publicly communicating the details of the process's implementation. 


#### Edge Cases

If a Retiring Facilitator has not nominated an Interim Facilitator, the other Core Unit Facilitators must use the Interim Facilitator Election Process to elect an Interim Facilitator.

If a permenant facilitator is missing and uncontactable without notice and for unknown reasons, a majority of Governance Facilitators must use their best judgement as how to proceed with this process.

If a Core Unit has no active Facilitators as a result of involuntary offboarding and has no active budget, no Interim Facilitator will be appointed unless there are winding down activities that require one.

If a permament Facilitator has not been chosen prior to the expiry of an Interim Facilitator's two month term, the Core Unit is offboarded, and any budgets revoked. A majority of Governance Facilitators may extend this time-limit by stating publicly that they are doing so, and the reason they are doing so. 

If the full Interim Facilitator Election Process (including the expedited weekly cycle permenent facilitator subproposals) fails to install either an Interim or permenant Facilitator, the Core Unit should be considered offboarded, and any budgets revoked. Appropriate MIP subproposals should be filled out by the Governance Facilitators and marked as Approved without going to vote.

If any other edge-cases occur, a majority of Governance Facilitators may resolve them to the best of their ability.

