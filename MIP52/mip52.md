# MIP52: Dispute Resolution

## Preamble

```
MIP#: 52
Title: Dispute Resolution
Author(s): Gregory Di Prisco (g_dip)
Contributors: None
Tags:
Type: General
Status: RFC
Date Proposed: 2021-05-04
Date Ratified: n/a
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

This component outlines a process by which a community member or stakeholder can cause an immediate on-chain binary option poll with a three day duration.

**MIP52c3 - MI52c2 Burn Amount**

A parameter set by governance which specifies the amount of MKR that must be burned to utilize MIP52c2.

## Motivation

While bureaucracy and delegation of tasks is necessary to ensure the smooth operation of the DAO, all stakeholders should ultimately have recourse directly to MKR holders. As the DAO continues to add Core Units and add Mandated Actors, it is inevitable that a community member or stakeholder will disagree with a decision being made by these groups or individuals. This MIP will allow that community member or stakeholder appropriate recourse. This will also allow the MKR holders to have a process by which they can have their voices heard in any situation.

## Specification / Proposal Details

### MIP52c1: Standard Dispute Resolution

In the event that a community member or stakeholder disagrees with any action of the DAO, whether that action has been taken by a Core Unit, Mandated Actor, or any other person or group directly or indirectly elected by MKR holders (the “Official DAO Members”), this community member or stakeholder may use this MIP to call a vote which provides a binary outcome for MKR holders to determine. The language used by the community member or stakeholder must be structured as a yes or no question. This question will then be presented to MKR holders in the inclusion polls of the monthly governance cycle. The outcome of the poll will not need to be ratified in the monthly executive vote nor must it meet any inclusion thresholds - a simple majority of MKR will determine the outcome. The outcome of the poll will be considered a binding resolution to the dispute. Once the outcome of the dispute has been determined by MKR holders, any Official DAO Member that refuses to comply with the outcome shall be considered in breach of their mandate.

### MIP52c2: Immediate Dispute Resolution

Since certain circumstances are time sensitive, this component provides a path to immediately resolve a dispute. Please note that this component is separate from MIP5 and is not intended to be used in emergency situations. Since an immediate resolution causes friction and overhead to the DAO and MKR holders, there should be a cost associated with utilizing this component. To deter abuse and ensure a sufficiently high bar to utilize this component, the community member must burn a predetermined amount of MKR (the “MIP52c2 Burn Amount”). In order to avoid confusion, the address from which the MKR will be burned should be posted publicly in the forums before the MKR is destroyed. The community member or stakeholder shall burn the MKR by sending it to 0x0000000000000000000000000000000000000000 after posting a MIP52c2 subproposal which includes the address that will destroy the MKR. If there remains any doubt that the community member or stakeholder is in control of the address destroying the MKR, a Governance Facilitator may demand further proof of control by requesting the address to sign a message.

In the event that a community member or stakeholder disagrees with any action of the DAO, whether that action has been taken by a Core Unit, Mandated Actor, or any other person or group directly or indirectly elected by MKR holders (the “Official DAO Members”), this community member or stakeholder may use this MIP to call a vote which provides a binary outcome for MKR holders to determine. The language used by the community member or stakeholder must be structured as a yes or no question. This question will then be presented to MKR holders in an on-chain poll that will have a duration of three days. The outcome of the poll will not need to be ratified in the monthly executive vote nor must it meet any inclusion thresholds - a simple majority of MKR will determine the outcome. The outcome of the poll will be considered a binding resolution to the dispute. Once the outcome of the dispute has been determined by MKR holders, any Official DAO Member that refuses to comply with the outcome shall be considered in breach of their mandate. MIP52c2 will override any calendar exceptions outlined in MIP3c4.

### MIP52c3: MIP52c2 Burn Amount

This component specifies the amount of MKR that a community member or stakeholder must burn in order to utilize MIP52c2. It is recommended that it be initially set to 100 MKR and can be modified via subproposal.