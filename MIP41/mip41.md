# MIP41: Facilitator Framework

## Preamble

```
MIP#: 41
Title: Facilitator Framework
Author(s): @juanjuan
Contributors: @elprogreso, @iammeeoh
Tags: process, core-unit-framework, personnel-xboarding, mip-set, core-unit-framework-mipset
Type: Process
Status: Accepted
Date Proposed: 2021-01-18
Date Ratified: 2021-03-25
Dependencies: MIP38, MIP39, MIP40, MIP4c2-SP10, MIP4c2-SP12
Replaces: n/a
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-march-2021-governance-cycle-bundle-march-22-2021?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip41-facilitator-framework/6098
```

## References

[MIP41c4-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposal-Template.md)
[MIP41c5-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c5-Subproposal-Template.md)

## Sentence Summary

MIP41: Facilitator Framework contains a framework with subproposal processes for managing Facilitators and modifying them in the DAO Primitives State MIP.

## Paragraph Summary

MIP41: Facilitator Framework contains a framework with subproposal processes for managing Facilitators and modifying them in the DAO Primitives State MIP. Facilitators are the accountable individuals responsible for interfacing between Maker Governance, Contributors, and other resources to achieve the Core Objectives of the Protocol. Facilitators are always attached to one or more Core Units and cannot exist in a void, i.e., Facilitators are Facilitators only inasmuch as they are attached to at least one Core Unit.

## Component Summary

**MIP41c1: The Facilitator Framework**
Gives an overview of the important characteristics of the Facilitator Framework MIP.

**MIP41c2: Facilitator Governance Powers**
Specifies the unique powers that Facilitators have when interacting with the Maker Governance processes.

**MIP41c3: Governance Facilitator Governance Powers**
Specifies the special case of Governance Facilitators and their central role in the Maker Governance processes.

**MIP41c4: Facilitator Onboarding**
A process component that defines the process for onboarding a new Facilitator to a Core Unit or moving an existing Facilitator to a different Core Unit.

**MIP41c5: Facilitator Offboarding (Subproposal Process)**
A process component that defines the process for removing a Facilitator from a Core Unit.

**MIP41c6: Interim Facilitators and the Fallback Decision Process**
Specifies how Interim Facilitators function, the situations where they are necessary, and how they are invoked.

## Motivation

A Facilitator is the most trusted actor in the MakerDAO community; they are given a high degree of autonomy and have resources and governance powers at their disposal. This Framework provides Governance with a simple way of managing and holding Facilitators accountable through the MIPs process.

## Specification / Proposal Details

### MIP41c1: The Facilitator Framework

Facilitators play a key role in the Maker ecosystem by acting as the link between Maker Governance and the Contributors. Facilitators are always attached to a Core Unit that defines their primary responsibility and their Budget and Governance Powers.

The Core Unit Budget allows the Facilitators to meet their responsibilities by hiring Contributors and purchasing services and products. Facilitators attached to a Core Unit administer the Budget for that Core Unit. How this is implemented in practice depends on the specific Budget Implementation.

The Facilitator Commitment is an essential part of a Facilitator proposal, where the Facilitator specifies their perspective, in as great detail as possible, on how to successfully achieve the Core Unit Mandate of the Core Unit they are proposing to onboard to, and how they plan to organize and provide accountability into their use of the budget.

The Facilitator Governance Powers enable the Facilitators to efficiently interact with Maker Governance processes related to their Core Unit.

---

### MIP41c2: Facilitator Governance Powers

Facilitators have special privileges in the Maker Governance Framework due to their trusted status in the Community and the requirements of their role as Facilitator of a Core Unit.

Facilitators have the power to propose expedited, urgent or emergency Executive Votes (defined in MIP24) related to their Core Unit.

Facilitators have the power to propose weekly non-standard Governance Polls (defined in MIP16) related to their Core Units.

Facilitators have the power to propose weekly Executive Votes (defined in MIP16) related to their Core Units.

Facilitator governance powers for particular Core Units can be extended through MIPs. They may include technical access to smart contracts like multisigs or other privileges in the governance process.

---

### MIP41c3: Governance Facilitator Governance Powers

The Governance Facilitator role is a special case of a Facilitator attached to a Core Unit that contains `GOV` in the Core Unit ID in the DAO Primitives State MIP.

Governance Facilitators are fundamental to the operation of the various governance processes and have powers and responsibilities defined in multiple MIPs in relation to this. This includes:
* The MIPs Framework (MIP0).
* The Weekly Governance Cycle (MIP16).
* The urgent and emergency voting processes (MIP24).

Governance Facilitators interpret the meaning of MIPs and their practical consequences.

Governance Facilitators decide whether a Facilitator's proposal to the weekly cycle is related to the Facilitators Core Unit, and therefore valid.

---

### MIP41c4: Facilitator Onboarding

This process component allows Governance to onboard a new Facilitator with a Facilitator Commitment.

Practical control of the Budget of the Core Unit is transferred as a part of this Subproposal process. Depending on the Budget Implementations, a Subproposal may contain a technical state change to modify the Budget Implementation control to correspond to the new Facilitator.

The proposal parameters are:
* Minimum Feedback Period: 1 Month.
* Minimum Frozen Period: 1 Week.

Once a Subproposal passes, the MIP Editor or Governance Facilitators modify the Core Unit's entry specified with the new Facilitator's name and information, and the new Facilitator Commitment.

MIP41c4 subproposals must use the template located at [MIP41c4-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposal-Template.md)

---

### MIP41c5: Facilitator offboarding

This process component allows Governance to offboard a Facilitator.

Depending on the Core Unit's Budget Implementations, this Subproposal may include a technical state change to remove control of the Budget Implementations from the offboarded Facilitator.

The proposal parameters are:
* Minimum Feedback Period: 1 Month.
* Minimum Frozen Period: 1 Week.

Once a Subproposal passes, the MIP Editor or Governance Facilitators modify the Core Unit's entry specified by removing the Facilitator's name and information, and their Commitment.

MIP41c5 subproposals must use the template located at [MIP41c5-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c5-Subproposal-Template.md)

---


### MIP41c6: Interim Facilitators and the Fallback Decision Process

#### Interim Facilitators

When the Facilitator of a Core Unit becomes unavailable, an existing permanent Facilitator of another Core Unit is temporarily attached to allow the aforementioned Core Unit to maintain continuity.

The Interim Facilitator controls the budget to continue doing regular payouts to core Contributors and pay for other critical expenses and infrastructure while a permanent Core Unit Facilitator is sought.

#### The Fallback Decision Process

Interim Facilitators are designated based on the Fallback Decision Process, where a simple majority of all currently active Facilitators have to reach an agreement. The Fallback Decision Process can instantly designate an existing Facilitator (who must agree to the decision) and assign them as an Interim Facilitator to a Core Unit that is without a Facilitator, or that has a Facilitator who has gone missing.

#### The Transition

Once an Interim Facilitator has been assigned to a Core Unit through the Fallback Decision Process, the Community must then work together to transition over the critical responsibilities that must be maintained to continue operations of the Protocol until a permanent Facilitator can be found to replace the Interim Facilitator.

#### Budget Implementations Transitions

Most importantly, this change involves transitioning control of the Budget Implementations that need to continue to run smoothly to pay out Core Unit's Contributors properly. How this is done in practice depends on the particular Budget Implementation. For example, it could involve using a multisig authority to change control of the Budget Implementation directly. Or propose an executive vote to the Weekly Governance Cycle. Or, in very time-sensitive cases (such as active embezzlement, Facilitator missing), an urgent/emergency executive vote that changes the control of the Budget Implementation, or another appropriate solution that works with the specific Budget Implementations. 

#### Governance Powers

The Interim Facilitator may also need to use Governance Powers of the Core Unit to keep existing operational processes running smoothly during the interim period.
