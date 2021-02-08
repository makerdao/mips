# MIP46: Parameter Proposal Groups

## Preamble
```
MIP#: 46
Title: Parameter Proposal Groups
Author(s): @LongForWisdom, Sam MacPherson (@hexonaut)
Contributors: @ultraschuppi
Type: General
Status: RFC
Date Proposed: 2021-02-03
Date Ratified: <yyyy-mm-dd>
Dependencies: None
Replaces: None
```
## References

None.

## Sentence Summary

MIP46 proposes the formalization of Parameter Proposal Groups. These groups are tasked with evaluating information produced by contributors and domain teams and using this analysis to produce parameter change proposals for consideration by governance.

## Paragraph Summary

MIP46 proposes the formalization of Parameter Proposal Groups. These groups are tasked with evaluating information produced by contributors and domain teams and using this analysis to produce parameter change proposals for consideration by governance. Parameter Proposal Groups can form organically without a governance vote and are expected to consistently produce parameter adjustment proposals which may be included in the weekly governance cycle by the Governance Facilitator(s).

## Component Summary

**MIP46c1: Parameter Proposal Group Requirements**

Details the requirements for a group to be recognized as a Parameter Proposal Group under this MIP.

**MIP46c2: Parameter Proposal Requirements**

Details the requirements that a Parameter Proposal must meet to be valid for inclusion in the Weekly Cycle.

**MIP46c3: Parameter Proposal Process**

Details the governance process for parameter proposals created by recognized Parameter Proposal Groups.

## Motivation

Certain parameters in the Maker protocol require frequent adjustment based on changing ecosystem conditions. As the Maker protocol grows in complexity it becomes harder for governance to micro-manage these system parameters.

To counteract this growing complexity, an intermediate set of groups is proposed, which will take responsibility for analyzing and evaluating parameter settings in the context of the wider ecosystem.

MIP46 proposes a framework for these groups to form in a consistent and transparent way.

In order to avoid introducing further governance work, it is proposed that these groups can form organically without requiring a governance vote. Instead, they need only follow certain requirements laid out in this MIP in order to be recognized as a Parameter Proposal Group. In the event that these groups become more widespread, a ratification requirement can be introduced.

## Specification / Proposal Details

### MIP46c1: Parameter Proposal Group Requirements

Each prospective Parameter Proposal Group must fulfill and maintain a set of requirements in order to be recognized by the Governance Facilitators as a Parameter Proposal Group. Each Parameter Proposal group must announce its creation in the forum and respond to each of the points below.

**Objectives** - The Parameter Proposal Group must lay out what high objective or objectives they are trying to achieve through their proposals.

**Scope** - The Parameter Proposal Group must lay out which parameters they consider 'in-scope' for the group. This should be related back to the group's objective or objectives. 

**Identity** - Every new Parameter Proposal Group must take a new number in the PPG-X format where X is an increasing integer starting at 1. Each group may also use a more descriptive or informal name if they wish.

**Membership** - The Parameter Proposal Group must publicize its members. Pseudonymous identities are acceptable but should have displayed activity in the community prior to the group's formation. It is suggested (but not required) that a Parameter Proposal Group consists of at least three individuals.

**Consistency** - The Parameter Proposal Group must commit to meeting once per month to discuss potential parameter changes. The outcome of this meeting must be communicated via the official forum, even if no parameter changes are proposed.

**Conflicts of Interest** - The Parameter Proposal Group members must publicize any conflicts of interest at the time of group formation, and if further conflicts arise, these should be communicated via the official forum. Conflicts of Interest are not an issue so long as they are properly disclosed.

**Cooperative** - Parameter Proposal Groups are not in competition with each other. All groups are encouraged to share and make public the data they are using. Where multiple Parameter Proposal Groups are covering the same parameters these groups must coordinate timing to give governance a choice of proposals. 

**Reactive** - In the event of unforeseen changes to the ecosystem or operation of the Maker Protocol, parameter proposal groups should consider making additional proposals.

### MIP46c2: Parameter Proposal Requirements

Each parameter proposal must fulfill a set of requirements in order to be recognized by the Governance Facilitators as a valid proposal. These requirements are laid out here.

**Communication** - Parameter Proposals must be posted publicly on the Maker Governance forum. 

**Discussion** - Parameter Proposals must be presented with enough of a feedback period to give the community time to respond and discuss the proposal. Questions, concerns, or queries must be answered if brought up by the Maker community, and feedback must be considered before finalizing the proposal.

**Clear and Unambiguous** - Parameter Proposals must be clearly formatted and presented. There must be no confusion as to which parameter changes are being proposed, or what the current values of these parameters are. 

**Rationale** - Each parameter change must be accompanied by a rationale that explains why the change has been proposed. This rationale must connect to the stated goal of the Parameter Proposal Group.

### MIP46c3: Parameter Proposal Process

Parameter Proposals are first presented on the Maker Governance forum and are then entered into the weekly governance cycle by the Governance Facilitators. Where possible, Parameter Proposals should be made public on the first Monday of the month for inclusion into the weekly cycle in the second week of the month. 

Sufficient time must be given for discussion, and inclusion in the weekly cycle may be delayed by the Governance Facilitators if they feel more discussion is required.

Proposed Parameter Changes will be bundled into a single on-chain poll for inclusion in the weekly cycle, and if the outcome is favorable, will proceed to that week's executive vote absent unforeseen circumstances.

Urgent or emergency proposals from Parameter Proposal Groups should follow the existing guidelines for urgent or emergency proposals.  
