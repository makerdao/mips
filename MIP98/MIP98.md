# MIP98: The Work Proposal Framework

## Preamble

```
MIP#: 98
Title: The Work Proposal Framework
Author(s): @retro, @juan
Contributors:
Tags: process
Type: general
Status: Obsolete
Date Proposed: 2022-01-11
Date Ratified:
Forum URL: https://forum.makerdao.com/t/mip98-the-work-proposal-framework/19391
Ratification Poll URL:
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## Sentence Summary
The Work Proposal Framework enables a clear pathway for decentralized workforce teams to coordinate with Maker Governance when requesting funds from the protocol.

## Paragraph Summary
The Work Proposal Framework is a request for funds mechanism for a decentralized workforce that coordinates opportunities to deliver work in exchange for funding from MakerDAO. The framework defines the overall process, templates, and best practices for increased MIP usability. The framework can be viewed as an evolution of both [MIP40](https://mips.makerdao.com/mips/details/MIP40) and [MIP55](https://mips.makerdao.com/mips/details/MIP55), with more mature operations and engagement points for Governance and the workforce. 

## Component Summary

**MIP98c1: The Work Proposal Framework**  
Describes the overall process to request and receive work assignments and funding from MakerDAO.

**MIP98c2: Adding a Work Proposal**  
Describes the proposal template and requirements to submit an eligible Work Proposal.

**MIP98c3: Standard Work Proposal Parameters**  
Describes the standard, best-practice conditions for certain sections of the Work Proposal available to workforce teams to utilize.

**MIP98c4: Governance Cycle**  
Defines how the Work Proposal framework integrates with Maker's Governance Cycle.

**MIP98c5: Work Proposal Tracking**  
Defines how Governance must track and archive Work Proposals data.

## Motivation

The Work Proposal Framework is a response to the challenges and frustrations observed with the current funding and coordination mechanisms available to Governance and the decentralized workforce. This framework is created to enhance the alignment of the workforce to the desires of Governance, by clearly defining how funding expectations relate to producing deliverables and value. This is accomplished by creating a dynamic but efficient process to communicate a workforce team's ability to deliver, approach to delivery, work-related use of funds, and consistent reporting requirements to unlock insight into the work.

This MIP does not impact any currently approved budgets at MakerDAO and utilization for current or future budgets is optional. It is being introduced as an available tool for the DAO to use as desired.

## Specification

### MIP98c1: The Work Proposal Framework Overview

The Work Proposal Framework is initiated through the submission of a Work Proposal to Maker Governance. The Work Proposal Framework is dependent on the [DAO-level Objective Framework (MIP97)](https://forum.makerdao.com/t/mip97-the-dao-level-objective-framework/19390) and requires a DLO to first define available opportunities for the team to submit Work Proposals against. The Work Proposal is available for any individual or team to submit to Governance for approval as long as it meets the requirements defined in MIP98c2 and the intended DLO.

This framework does not restrict the definition of workforce teams --- meaning this is available to Core Units, vendors, businesses, or any group of contributors that organize around an opportunity. It should be noted that assessment of the Work Proposal's team is taken into consideration, and a DLO can restrict what teams or entities are eligible for Work Proposal submissions.

This framework aims to reduce governance overhead and ease the proposal writing process by documenting best practices for consistent use in Work Proposals. To accomplish this, best practices are named and defined in MIP98c3. Bespoke configurations of Work Proposals may be needed for some sections to bring innovation to the delivery of a project; however, other sections of the proposal are better suited for default configurations (such as Budget Implementations). Governance should amend this MIP with updated best practices as they are discovered to encourage the maturity of the framework.

A Work Proposal is subject to Maker Governance approval. MIP98c4 defines the Governance cycle defined for Work Proposals.

Once a Work Proposal is approved, a MIP Editor must update MIP98c5 for the tracking of active teams contributing to MakerDAO, the objectives they are working on, and retrospective archival purposes.

### MIP98c2: Adding a Work Proposal

A Work Proposal is a proposal or application, made by a team, to complete deliverables related to a specific [DAO-level Objective (MIP97)](https://forum.makerdao.com/t/mip97-the-dao-level-objective-framework/19390). Work Proposals use a bottom-up approach enabling workforce teams to practice autonomy while defining their unique approach and value-add for the project.

A Work Proposal has the following required sections:

**1. DLO Index Number** - A DLO index number is assigned by a MIP Editor once a DLO is approved. This defines the relationship between a Work Proposal and a DLO.

**2. Workforce Team Bio** - A name and description of the Workforce team. This section is to provide previous work examples related to the DLO and demonstrate the team's abilities and unique attributes that position them to successfully deliver against the objective. If a DLO defines any Workforce Team requirements or restrictions, proof of meeting the requirements for the DLO is provided here.

* The Workforce Team Bio must define a point of contact ---or a team lead--- and their contact information. This is to ensure clear lines of communication and to define a point of contact that interfaces with the DAO.

**3. Project Plan for Producing Deliverables** - A description of the strategy or methodologies the team will use to produce the Deliverables for a DLO. This section should also confirm the Deliverables will meet (or beat) the defined DLO timeline.

**4. Milestones** - A DLO defines specific Deliverables to consider an objective as delivered, while also defining additional milestone parameters the DLO defines. This section of a Work Proposal is to confirm the milestones parameters, reporting requirements, and other potential parameters are understood and agreed upon, or to commit to more aggressive commitments. DLO parameters should be defined as the upper limit for a Work Proposal, and committing to more aggressive parameters creates competition among potentially multiple workforce teams for the same limited Objective.

**5. Forecasted Challenges that May Impact Deliverables or Timeline** - MakerDAO is an innovative project with many challenges to navigate. The value expert-workforce participants bring to Maker is to navigate these challenges proactively. This section details challenges if non-ideal conditions arise and describes how the team will address those challenges or lists strategies they will utilize to overcome them.


**6. Budget** - A DLO defines a Budget Cap for an Objective. This Budget Cap may be shared among several teams or directed towards an individual team. A DLO may also dictate how funding for a project is enabled (such as streaming, milestone-based, or even defined incentives). A DLO may also leave the budget-related parameters to be defined by the Work Proposal. This section allows for price competition and operational budget maturity to be an attribute of Work Proposal comparisons if desired and allowed by the DLO. This section must include the following subsections --- acknowledging and accepting the DLO required budget parameters or proposing values for these parameters.

* **Budget Breakdown** - A category-level forecast for expenses related to the project.
* **Budget Distribution Schedule** - A description of how the Work Proposal Budget is distributed to the workforce team.
* **Budget Implementation** - A technical-level implementation of how the protocol will transfer funds to the workforce team.

A template for Work Proposals is provided [here](https://hackmd.io/@0xRetro/BJjfjj75j)

### MIP98c3: Standard Work Proposal Configurations

`!!!WIP!!!`

### MIP98c4: Governance Cycle

Work Proposal Submissions follow the following governance cadence:

* RFC Period: `2 weeks minimum`
* Formal Submission: `Any time after the RFC period has passed`
* Frozen Period: `2 weeks before Formal Submission`
* On-chain vote: `1 week`

The voting parameters for a DLO on-chain vote are:

* Abstain
* Approve
* Reject

### MIP98c5: Work Proposal Tracking

This Work Proposal Framework component is reserved for tracking the status of Approved Work Proposals and key details for delivery. A MIP Editor must update this MIP following an on-chain vote with an *Approve* outcome. A sample entry is provided below:

* **Active** status defines a Work Proposal as accepted and currently worked on by a team.
* **Delivered** status defines a Work Proposal's deliverables as complete as it relates to the Workforce team, but the Work Proposal still has a pending future milestone (typically in situations where a performance-based milestone is leveraged). This means that expenses related to the Work Proposal are not closed.
* **Closed** status defines a Work Proposal that has either been delivered or all funds related to the proposal have been transferred. This could be because of the completion of a Work Proposal, or the early termination of a proposal.

```
MIP98c2-SP98 - Work related to DLO #
Team: Name
Status: Active/Delivered/Closed
Work Proposal Reporting Forum thread:
```

#### Work Proposal Tracking Entries:
