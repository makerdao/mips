# MIP52: Dispute Resolution

## Preamble

```
MIP#: 52
Title: Dispute Resolution
Author(s): Gregory Di Prisco (g_dip)
Contributors: None
Type: General
Status: Accepted
Date Proposed: 2021-05-04
Date Ratified: 2021-07-26
Dependencies: MIP3c1
Replaces: n/a
```

## Sentence Summary

MIP52 outlines a process by which any community member or stakeholder can elevate the resolution of a dispute directly to MKR holders

## Paragraph Summary

This MIP outlines a process by which any community member or stakeholder can elevate the resolution of a dispute directly to MKR holders. There will be two primary components to this MIP, one which allows for the dispute to be settled in the normal governance cycle and another that permits for an immediate resolution, and a third component which sets a parameter for the immediate resolution component.

## Component Summary

**MIP52c1: Standard Dispute Resolution**

This component outlines a process by which a community member or stakeholder can have the MKR holders vote on a binary outcome in the inclusion polls of the monthly governance cycle.

**MIP52c2: Immediate Dispute Resolution**

This component outlines a process by which a community member or stakeholder can cause an immediate on-chain binary option poll in the next eligible weekly governance cycle.

**MIP52c3 - MI52c2 Burn Amount**

A parameter set by governance which specifies the amount of MKR that must be burned to utilize MIP52c2.

## Motivation

While bureaucracy and delegation of tasks is necessary to ensure the smooth operation of the DAO, all stakeholders should ultimately have recourse directly to MKR holders. As the DAO continues to add Core Units and add Mandated Actors, it is inevitable that a community member or stakeholder will disagree with a decision being made by these groups or individuals. This MIP will allow that community member or stakeholder appropriate recourse. This will also allow the MKR holders to have a process by which they can have their voices heard in any situation.

## Specification / Proposal Details

### MIP52c1: Standard Dispute Resolution

In the event that a community member or stakeholder disagrees with any action of the DAO, whether that action has been taken by a Core Unit, Mandated Actor, or any other person or group directly or indirectly elected by MKR holders (the “Official DAO Members”), this community member or stakeholder may use this MIP to call a vote which provides a binary outcome for MKR holders to determine. The language used by the community member or stakeholder must be structured as a yes or no question. Both parties involved must be given the opportunity to write their own language for the poll. The language in the poll itself should be limited to a number of characters set by the Governance Facilitator (and must be the same for both parties), but each party may provide a link to a forum post outlining a longer form argument. This question will then be presented to MKR holders in the inclusion polls of the monthly governance cycle. The poll will resolve with a simple majority of MKR, but must meet the positive participation threshold for all Ratification polls. The outcome of the poll will be considered a binding resolution to the dispute. Any ambiguity in the outcome of a poll will be deferred to the judgement of the Governance Facilitators. Once the outcome of the dispute has been determined by MKR holders, any Official DAO Member that refuses to comply with the outcome shall be considered to be acting explicitly against the will of the MKR holders.

### MIP52c2: Immediate Dispute Resolution

Since certain circumstances are time sensitive, this component provides a path to immediately resolve a dispute. Please note that this component is separate from MIP5 and is not intended to be used in emergency situations. Since an immediate resolution causes friction and overhead to the DAO and MKR holders, there should be a cost associated with utilizing this component. To deter abuse and ensure a sufficiently high bar to utilize this component, the community member must burn a predetermined amount of MKR (the “MIP52c2 Burn Amount”). In order to avoid confusion, the address from which the MKR will be burned should be posted publicly in the forums before the MKR is destroyed. The community member or stakeholder shall burn the MKR by sending it to 0x0000000000000000000000000000000000000000 after posting a MIP52c2 subproposal which includes the address that will destroy the MKR. If there remains any doubt that the community member or stakeholder is in control of the address destroying the MKR, a Governance Facilitator may demand further proof of control by requesting the address to sign a message. Once the MKR is burned, the poll will be placed in the next eligible weekly cycle.

In the event that a community member or stakeholder disagrees with any action of the DAO, whether that action has been taken by a Core Unit, Mandated Actor, or any other person or group directly or indirectly elected by MKR holders (the “Official DAO Members”), this community member or stakeholder may use this MIP to call a vote which provides a binary outcome for MKR holders to determine. The language used by the community member or stakeholder must be structured as a yes or no question. Both parties involved must be given the opportunity to write their own language for the poll. The language in the poll itself should be limited to a number of characters set by the Governance Facilitator (and must be the same for both parties), but each party may provide a link to a forum post outlining a longer form argument. This question will then be presented to MKR holders in the inclusion polls of the monthly governance cycle. The poll will resolve with a simple majority of MKR, but must meet the positive participation threshold for all Ratification Polls. The outcome of the poll will be considered a binding resolution to the dispute. Any ambiguity in the outcome of a poll will be deferred to the judgement of the Governance Facilitators. Upon completion of the poll, the Governance Facilitators shall determine whether to return the burned MKR to the user of the MIP and, if choosing to do so, may include the transfer in the next eligible monthly governance cycle. Once the outcome of the dispute has been determined by MKR holders, any Official DAO Member that refuses to comply with the outcome shall be considered to be acting explicitly against the will of the MKR holders. MIP52c2 will override any calendar exceptions outlined in MIP3c4.

### MIP52c3: MIP52c2 Burn Amount

This component specifies the amount of MKR that a community member or stakeholder must burn in order to utilize MIP52c2. It is recommended that it be initially set to 10,000 Dai worth of MKR (at the previous day's price of MKR on Coinbase at 4:00pm EST) and can be modified via subproposal.

MIP52c3 is a Process MIP component that allows the amendment of the burn amount in MIP52c2

If onboarded through a MIP52c3 subproposal, the amount and pricing mechanism are thereon utilized for the purposes of MIP52c2.

MIP52c3 subproposals have the following parameters:

* **Feedback Period**: 1 week
* **Frozen Period**: 1 week

MIP52c3 subproposals must use the template located at **[MIP52c3-Subproposal-Template.md](https://github.com/gdipri01/mips/blob/704b85a7cb4e7fd084256d2deebab476b10a2054/MIP52/MIP52c3-subproposal-template.md)**. This template is considered ratified once this MIP moves to Accepted status.
