# MIP5: Emergency Voting System

## Preamble
```
MIP#: 5
Title: Emergency Voting System
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Contributors: @LongForWisdom
Type: Process
Status: Obsolete
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Dependencies: n/a
Replaces: n/a
Replaced by: MIP24
```

## References
No referenced materials.

## Sentence Summary

MIP5 defines emergency changes to the protocol and Governance Facilitator role and how they should be handled in practice.

## Paragraph Summary

This proposal defines an emergency voting system. Emergency votes are executive votes that can be initiated by any community member.

## Component Summary

**MIP5c1: Governance Facilitator Emergency Votes**  
This component addresses the emergency removal of an individual from the Governance Facilitator role.

**MIP5c2: An Emergency State Change**  
This component addresses emergency state changes to the protocol and how they are to be handled by the Governance Facilitators.

## Motivation

This standard is being proposed in order to allow the community to overcome the constraints of the governance cycle ([MIP3](https://github.com/makerdao/mips/blob/master/MIP3/mip3.md)) in special situations where it is time critical to make changes or remove a part of the operating system.

## Specification / Proposal Details

### MIP5c1: Governance Facilitator Emergency Votes

A governance facilitator emergency vote encodes one or more website URLs into an on-chain voting contract (spell), as well as containing logic that stops any payment stream to the existing governance facilitators. If the executive vote gets the most MKR votes and becomes the active proposal the existing Governance facilitators are then removed. The list of website URLs then corresponds to a list of one or more new Interim Governance facilitators and their governance platforms that will replace the current governance facilitators. The current governance cycle is canceled, and the new Interim Governance Facilitators initiate a new governance cycle on the following 1st Monday of the month.

---
### MIP5c2: An Emergency State Change

An emergency executive vote that contains state change logic. For example, changing the DSR or removing a collateral type. These types of votes can in some cases be used to reduce risk in the system, help stabilize the peg, or fix critical technical issues. However, they are also very dangerous and must be used carefully as they can potentially be attacks that, for example, drain all the collateral from the system.

Governance Facilitators can ignore an emergency state change, or either declare support for an emergency state change by adding it as an irregularly scheduled executive vote on their governance portals, or declare it a governance attack, potentially encouraging users to trigger an emergency shutdown in response.

---
