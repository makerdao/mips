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

**MIP41c6: Interim Facilitators and the Fallback Decision Process**
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

Governance Facilitators decide whether a Facilitator's proposal to the weekly cycle is related to the Facilitators Core Unit, and therefore valid.

---

### MIP41c4: Facilitator Onboarding

This process component allows Governance to onboard a new facilitator with a Facilitator Commitment.

The proposal parameters are:
* Minimum feedback period: 1 month
* Minimum frozen period: 1 week

Once a Subproposal passes, the MIP Editor or Governance Facilitators modify the Core Unit's entry specified with the new Facilitator's name and information, and the new Facilitator Commitment.

MIP41c4 subproposals must use the template located at [MIP41c4-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposal-Template.md)

---

### MIP41c5: Facilitator offboarding

This process component allows Governance to offboard a Facilitator.

If a Core Unit is being offboarded, the Facilitator immediately loses all special powers listed on MIP41c2/ MIP41c3.

The Facilitator becomes a *Retiring* Facilitator in charge of executing the unwinding process for the offboarding Core Unit (described on MIP39c3). If the Retiring Facilitator fails to execute the unwinding plan, an *Interim* Facilitator - further defined in MIP41c6 - will take over these responsibilities.

A Facilitator can be offboarded without having the Core Unit they are attached to being offboarded. An Interim Facilitator will take over responsibilities during the transition. A MIP41c4 subproposal proposing a new Facilitator should be submitted by the Interim Facilitator or by any other member of the Community.

If a Facilitator wishes to voluntarily offboard, a MIP41c4 subproposal proposing a new Facilitator should be submitted by the Interim Facilitator or by any other member of the Community.

If a Facilitator goes missing, an Interim Facilitator will take over responsibilities during the transition. A MIP41c4 subproposal proposing a new Facilitator should be submitted by the Interim Facilitator or by any other member of the Community.

The proposal parameters are:
* Minimum feedback period: 1 month
* Minimum frozen period: 1 week

MIP41c5 subproposals must use the template located at [MIP41c5-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c5-Subproposal-Template.md)

---


### MIP41c6: Interim Facilitators and the Fallback Decision Process

#### Interim Facilitators

Whenever a Core Unit finds itself with no Facilitator, an Interim Facilitator is needed to fill any gaps. The process to chose the Interim Facilitator is called "The Fallback Decision Process" and it is detailed below.

If a Retiring Facilitator is willing, they may nominate an Interim Facilitator. Subject to the nominated Interim Facilitator's acceptance, they are ratified as the new Facilitator by a simple majority vote of all active facilitators.

In the event of a Core Unit offboarding, if the Retiring Facilitator is uncooperative, the Interim Facilitator will be in charge of overseeing/executing the unwinding process. In the event of a Facilitator offboarding, they will be in charge of ensuring the functional continuity of the Core Unit until a new permanent Facilitator is ratified. Interim facilitators should clearly state their intented time of service.

The incentive to volunteer as an Interim Facilitator is the compensation tied to a Core Unit unwinding plan. In the event of a missing, failed succession, or headless core unit, the incentive to volunteer as an Interim Facilitator is a transfer of the former Facilitator's compensation for an interim timeline.

If a Core Unit has no active Facilitators as a result of involuntary offboarding and has no active budget, no Interim Facilitator will be appointed unless there are winding down activities that require one.

#### The Fallback Decision Process

For the first fallback vote, a ranked choice vote from a list of volunteer Interim Facilitators and current active Facilitators is put up for one week. The winner is the Interim Facilitator. In the case of a tie, the winner is selected by coin toss of an American 1964 silver quarter (or an otherwise fair coin). If the vote fails because nobody voted then all Facilitators shall endeavour to meet in person on Awashima Island, sit in a circle in a comfortable grassy field, and together commit ritual suicide (切腹).

The Interim Facilitator, once approved on a short cycle, is assigned to that Core Unit.

If the candidate refuses the role, a member of a Governance Core Unit shall be appointed to fulfill the responsibilities of the Interim Facilitator.

#### Governance Powers

The Interim Facilitator may also need to use Governance Powers of the Core Unit to keep existing operational processes running smoothly during the interim period.
