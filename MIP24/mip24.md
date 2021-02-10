# MIP24: Emergency Voting System

## Preamble

```
MIP#: 24
Title: Emergency Response
Author(s): @Davidutro, @jtathmann
Contributors:
Type: General
Status: Accepted
Date Proposed: 2020-09-07
Date Ratified: 2020-11-24
Dependencies:
Replaces: MIP 5
```

## References

[MIP5: Emergency Voting System](https://github.com/makerdao/mips/blob/Accepted/MIP5/mip5.md)
[Forum Thread: Emergency / Urgent Governance Process](https://forum.makerdao.com/t/emergency-urgent-governance-process/3926)
[Forum Thread: Covid Crash: Emergency Governance Summary](https://forum.makerdao.com/t/covid-crash-emergency-governance-summary/2437)

## Sentence Summary

MIP24 defines emergency and urgent situations for the Maker protocol, as well as the process for handling them.

## Paragraph Summary

This proposal defines an emergency voting system. Emergency votes are executive votes that can be initiated by any community member. This MIP aims to provide a general guide that can be applied to a wide range of urgent situations. Additionally, this MIP will differentiate between an emergency and an urgent situation, and provide processes which can be carried out to deal with either consistently.

## Component Summary

**MIP24c1: Situation Definitions**

Defines the terms "urgent" and "emergency" for purposes of an expedited governance change.

**MIP24c2: Considerations of Expedited Protocol Changes**

Outlines the various considerations that should be made before enacting expedited changes.

**MIP24c3: Emergency Response Procedure**

A general procedure for managing emergency situations.

**MIP24c4: Urgent Response Procedure**

A general procedure for managing urgent situations.

**MIP24c5: Role of Governance Facilitators**

Outlines the tasks of the Governance Facilitators during emergency interventions.

**MIP24c6: Governance Facilitator Emergency Vote**

Outlines the specific process when a Governance Facilitator role is being abused to attack or manipulate the Community.

## Motivation

The Protocol has often required changes outside of the standard weekly and monthly governance cycles to help maintain the peg or to respond to changes in the ecosystem. The goal of this MIP is to provide a consistent process to manage emergencies and urgent issues.

## Specification / Proposal Details

### MIP24c1: Situation Definitions

The procedure for managing expedited changes to the Protocol will depend on whether a situation is classified as an emergency or urgent.

**Emergency:** Any situation that would require immediate intervention to prevent initiation of Emergency Shutdown, severe peg divergence, or harm to members and users of the ecosystem.

**Urgent:** Any situation that includes a time-sensitive matter that would need an expedited governance process, where following a standard governance cycle would be too slow, risk a larger problem, or constitute an important missed opportunity.

### MIP24c2: Considerations of Expedited Protocol Changes

There are several important factors to consider before expediting changes to the protocol.

- Potential for MKR holders to miss a poll or executive vote due to departure from the standard governance cycles.
- Expedited votes may not allow for sufficient discussion, leading to a sub-optimal solution.
- Increased governance burden on Community and increased workload for domain teams.
- Frequent expedited votes may signal a lack of appreciation for a consistent and predictable governance process.

### MIP24c3: Emergency Response Procedure

The ability to declare an emergency will be reserved for Domain Teams and Governance Facilitators due to their proximity to, and knowledge of, the Maker Protocol and surrounding ecosystem. If a community member wishes to declare an emergency, they will follow the urgent response procedure outlined in MIP24c4. If a Governance Facilitator agrees that the status of the urgent situation should be escalated to "emergency," they will do so.

**The emergency response process will be initiated as follows:**

Declare an emergency in the public forum providing sufficient detail regarding the issue and why immediate action is required. If time does not permit, a forum post will be created immediately after or in parallel to taking emergency action. Creating a signal request thread or governance poll is optional.

- If a remedy is known and uncontentious the Governance Facilitators will coordinate with necessary domain teams to expedite an executive vote.
- If a remedy is not known or is contentious the Governance Facilitators will coordinate an emergency governance call to discuss solutions and a plan for subsequent actions, explicitly inviting known stakeholders.

### MIP24c4: Urgent Response Procedure

An urgent response may be requested by any community member if they believe the system is experiencing an emergency or urgent situation as defined in MIP24c1.

**The urgent response process will be initiated as follows:**

The process will be initiated with a signal request thread in the public forum stating the need for expedited governance action and include the following:

- Sufficient detail regarding the issue.
- Proposed action or request to discuss what action governance should take.
- Signal Poll to gauge community sentiment of whether urgent action is needed.
- Tag `@Gov-Facilitators` at the bottom of the post, so that they will be notified and oversee discussion.

#### Signal Poll Requirement

Any signal poll must adhere to the [Practical Guide](https://forum.makerdao.com/t/practical-guide-to-the-signaling-process/2623) as closely as possible given the circumstances for the change.

- In order for the community to make a change to a system parameter, a signal request must reach a 50% majority and have a reasonable quorum of voters given recent participation.
- In order for the community to make a change outside of the existing system parameters, a signal request must reach a 66% majority and have a reasonable quorum of voters given recent participation.

#### Mandated Actor Responsibilities

If the signal for an urgent response passes, Governance Facilitators will coordinate with necessary Core Units and Domain Teams to expedite a governance poll for MKR holders or to advance an executive vote, at their discretion.

At any time during the urgent response procedure a Domain Team or Governance Facilitator may elevate the status to an emergency. At that time, the procedure in MIP24c3 will be carried out.

### MIP24c5: Role of Governance Facilitators

Governance Facilitators will oversee emergency and urgent situation processes to ensure they are carried out in a civil and consistent manner. They will be responsible for confirming poll outcomes and identifying whether the community or external actors have attempted to abuse or game the emergency voting system, and may block a request for emergency action at their discretion.

### MIP24c6: Governance Facilitator Emergency Vote

If the community discovers the Governance Facilitator role is being abused to attack or manipulate the Community, such as baselessly censoring MIPs and other governance proposals from functioning properly, a Governance Facilitator Emergency Vote can be used to end the censorship without bypassing the MIPs framework.

#### Definition and Process

A Governance Facilitator Emergency Vote is an executive vote that provides a list of Emergency Governance Facilitators by encoding a list of one or more website URLs and corresponding Facilitator Name and Information items into an on-chain executive vote (spell).

The on-chain executive vote (spell) also contains logic that immediately removes control of any technical Budget Implementation by the existing Governance Facilitators. If the executive vote gets the most MKR votes and becomes the active proposal (hat) a state of emergency begins, and the existing Governance Facilitators are removed.
> In practice this means that all Governance Core Units (Core Units with the ID `GOV` in MIP38: DAO Primitives state) have their Facilitators removed as if they were offboarded using MIP41c5.

#### Governace Facilitator Governance Powers

The regular MIP41c6 Fallback Decision Process applies for choosing Interim Facilitators to take control of the Budget Implementations of the Governance Core Units, but the special Governance Facilitator Governance Powers are not transitioned this way (as they would normally if a Governance Core Unit was vacated for some other reason than a state of emergency).

#### Tranisition of Governance Powers and Responsibilities

The Governance Facilitator Governance Powers and responsibilities for running the governance process and Community are instead transitioned to the new set of Emergency Governance Facilitators specified in the Governance Facilitator Emergency Vote (who can also be the same people that become the Interim Facilitators through the Fallback Decision Process).

#### Emergency Governance Facilitators' Platforms

The list of website URLs and Facilitator name and information corresponds to the new Emergency Governance Facilitators and their governance platforms (voting frontend, communication channels) that replace the former Governance Facilitators who were just removed. These Emergency Governance Facilitators will then take over running the Governance processes specified in MIP0, MIP16 and MIP24 until a regular MIP41c4 Facilitator Onboarding is done to at least one Governance Core Unit.

#### End of the State of Emergency

Once a permanent Facilitator has been onboarded to a Governance Core Unit the state of emergency ends and the Emergency Governance Facilitators lose their Governance Facilitator Governance Powers. Interim Facilitators that were chosen through the Fallback Decision Process because of the state of emergency, and that remain after the state of emergency ends (because a permanent facilitator for the specific Core Unit they were chosen to take over hasn't been onboarded yet), still do not get Governance Facilitator Governance Powers but still only control the Budget Implementations.

Additionally, when a Governance Facilitator Emergency Vote passes, The current governance cycle is cancelled, and the new Interim Governance Facilitators initiate a new governance cycle on the following 1st Monday of the month.