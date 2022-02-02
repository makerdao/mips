MIP4c2-SP15: Core Unit Offboarding Process Amendments

Preamble
MIP4c2-SP#: 15
Title: Core Unit Offboarding Process Amendments
Author(s): GFX Labs (@gfxlabs)
Contributors: @PaperImperium, @psychonaut. @longforwisdom, @juan, @davidutro, @seth, @twblack88, @sebventures, @MadShills 
Tags:
Type: process
Status: RFC
Date Proposed: 2022-01-28
Date Ratified: <yyyy-mm-dd>
Dependencies:
Replaces: None

**References**

* [MIP4: MIP Amendment And Removal Process](https://mips.makerdao.com/mips/details/MIP4)
* [MIP39c2: Adding/Modifying Core Units](https://mips.makerdao.com/mips/details/MIP39#MIP39c2)
* [MIP39c3: Removing Core Units](https://mips.makerdao.com/mips/details/MIP39#MIP39c3)
* [MIP40c3: Adding/Modifying Core Unit Budget Process](https://mips.makerdao.com/mips/details/MIP40#MIP40c3)
* [MIP41c5:](https://mips.makerdao.com/mips/details/MIP41#MIP41c5) [Facilitator Offboarding](https://mips.makerdao.com/mips/details/MIP41#MIP41c5)

**Sentence Summary**

This proposal describes changes to MIPs 39, 40, and 41 with regard to the offboarding process.

**Paragraph Summary**
Recent events have shown the process for involuntarily offboarding facilitators and core units could be improved. These changes are an attempt to make the process more transparent, orderly, and conducive to substantive discussion surrounding an offboarding proposal prior to a vote.

**Component Summary**

**MIPXXc1: Amendments to MIP39**
MIPXXc1 describes the amendments to MIP39.

**MIPXXc2: Amendments to MIP40**
MIPXXc2 describes the amendments to MIP40.

**MIPXXc3: Amendments to MIP41**
MIPXXc3 describes the amendments to MIP41.

**MIPXXc4: Template for Offboarding**
MIPXXc4 provides the template for facilitator and Core Unit offboarding proposals.

**Motivation**

There have been [several](https://forum.makerdao.com/t/mip41c5-sp2-facilitator-offboarding-rwf-001/11306) recent [proposals](https://forum.makerdao.com/t/mip41c5-sp3-facilitator-offboarding-mkt-001/12058) to [involuntarily](https://forum.makerdao.com/t/mip40c3-sp49-modify-core-unit-budget-mkt-001/12059) offboard a facilitator or a core unit. The current process needs revisions. These changes are meant to remove confusion, streamline the process, and encourage substantive debate prior to votes.

**Specific Goals**

1. Clarify that a Core Unit can be offboarded in the same governance cycle as removing its budget and facilitator(s).
2. Establish a standard for proposers to include detailed reasoning.
3. Add an explicit Facilitator succession plan so that election by active Facilitators becomes a fall-back process.

**Specification / Proposal Details**

**MIPXXc1: Amendments to MIP39**
**[MIP39c3](https://mips.makerdao.com/mips/details/MIP39#MIP39c3)** states, “A Core Unit can only be removed if it has no active budget implementations (see MIP40) and no active facilitators (see MIP41).”

Add the following language immediately after:
“If a Core Unit has no active budget implementation, no active facilitators, no facilitator onboarding proposals in formal submission, and no budget requests in formal submission, no further action is required for the Core Unit to be officially offboarded.

An Interim Facilitator as referenced in **MIP41c6** is not an active facilitator for the purposes of MIP39c3. A Core Unit with an Interim Facilitator conducting winding down activities (such as returning assets to MakerDAO) shall be considered offboarded, even if those winding down activities are not yet complete.”

Also add the following language to **MIP39c3**:
“A Core Unit that has been offboarded should conduct all winding down activities within 2 weeks. This includes (but is not limited to) settling outstanding obligations to all contributors, settling any outstanding debts or current obligations of that Core Unit to third parties, orderly transfer of any intangible assets of the DAO to another Core Unit, and return of any DAI in excess of that needed to wind down activities in an orderly manner.”

**MIPXXc2: Amendments to MIP40**
Add the following language to **[MIP40c3](https://mips.makerdao.com/mips/details/MIP40#MIP40c3)**:
“A budget modification proposal for a Core Unit made by anyone other than a member or facilitator of that Core Unit may only be to reduce budget to 0, and may not be voted upon until the earliest of:
1) All active DAI budgets to the Core Unit have been fully disbursed.
2) Two months from RFC submission..
3) Explicit endorsement from the CU’s facilitator or Interim Facilitator, in which case regular rules apply with regard to the RFC period.
5) Explicit endorsement by a combination of two (2) Recognized Delegates, OR two (2) Core Unit facilitators.
6) Explicit endorsement by a combination of (1) Recognized Delegate and one (1) Core Unit facilitator.

**MIPXXc3: Amendments to MIP41**
**[MIP41c6](https://mips.makerdao.com/mips/details/MIP41#MIP41c6)** states:
“When the Facilitator of a Core Unit becomes unavailable, an existing permanent Facilitator of another Core Unit is temporarily attached to allow the aforementioned Core Unit to maintain the continuity.

The Interim Facilitator controls the budget to continue doing regular payouts to core Contributors and pay for other critical expenses and infrastructure while a permanent Core Unit Facilitator is sought.”

Add the following language immediately after:

“If a Core Unit has no active facilitators as a result of involuntary offboarding and has no active budget, no Interim Facilitator will be appointed unless there are winding down activities (such as returning assets to MakerDAO) that require one. An Interim Facilitator shall not be considered an active facilitator for purposes of **MIP39c3**.”

**MIP41c6** also states:
“Interim Facilitators are designated based on the Fallback Decision Process, where a simple majority of all currently active Facilitators have to reach an agreement. The Fallback Decision Process can instantly designate an existing Facilitator (who must agree to the decision) and assign them as an Interim Facilitator to a Core Unit that is without a Facilitator, or that has a Facilitator who has gone missing.”

That will be replaced with:
“Interim Facilitators are designated based on the Succession Plan publicly documented by a Core Unit at onboarding. An Interim Facilitator appointed based upon a succession plan must be a current or former member of that Core Unit.

In the event a Core Unit does not have a succession plan publicly documented, or the candidate(s) named in it are not willing or eligible to become Interim Facilitator, the outgoing facilitator may nominate another Interim Facilitator, subject to approval by a simple majority vote of all active facilitators.

In the event a Core Unit has no succession plan, the candidate(s) are not willing or eligible to become Interim Facilitator, and the outgoing facilitator is unable or unwilling to nominate a candidate able to be approved by majority vote of all active facilitators, the appointment will revert to the Fallback Decision Process, where a simple majority of all currently active Facilitators have to reach an agreement. The Fallback Decision Process can instantly designate an existing Facilitator or existing member of that Core Unit (who must agree to the decision) and assign them as an Interim Facilitator to a Core Unit that is without a Facilitator, or that has a Facilitator who has gone missing.”

**MIP41c4** requires the use of this [template](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposal-Template.md). Add the following language to that template:

“Succession Plan:
In the event this facilitator is no longer active (for any reason), state which individual person or role within the Core Unit will serve as Interim Facilitator. If this is unnecessary (e.g. the Core Unit has multiple facilitators), state the reasoning specifically.”

Updates to a Core Unit’s Succession Plan do not require a governance vote if the updates are:
1) Publicly documented.
2) Proposed by a facilitator of that Core Unit.

**MIPXXc4: Template for Offboarding**
Summary of reason for offboarding:
*State the argument for offboarding. Include proactive actions performed to help the core unit achieve its mandate, if relevant.*

Explicit deliverables and responsibilities:
*List deliverables and responsibilities from the Core Unit’s MIP39 mandate, as well as any other specifically declared deliverables and responsibilities (link to source when possible).*

Implicit deliverables and responsibilities:
*List deliverables and responsibilities implied by the Core Unit (link to source when possible).*

Examples of unfulfilled deliverables and responsibilities:
*List examples of unmet or poorly executed deliverables and responsibilities.*

Possible remedy to avoid offboarding:
*Suggest a path to accountability for the Core Unit, so the offboarding proposal could be withdrawn. . (Optional)*