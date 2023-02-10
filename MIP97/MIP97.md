# MIP97: The DAO-Level Objective Framework

## Preamble

```
MIP#: 97
Title: The DAO-Level Objective Framework
Author(s): @retro, @juan
Contributors: 
Tags: process
Type: General
Status: RFC
Date Proposed: 2022-01-11
Date Ratified: 
Forum URL: https://forum.makerdao.com/t/mip97-the-dao-level-objective-framework/19390
Ratification Poll URL: 
```
## Sentence Summary
The DAO-Level Objective Framework enables a process for Governance to define contribution opportunities to Maker through projects with specific deliverables. 

## Paragraph Summary
The DAO-Level Objective Framework is a tool for Maker Governance to increase the alignment and coordination of a decentralized workforce to desired projects. This is accomplished by the utilization of a DLO --- a Request for Proposal document --- that defines the opportunity or project, the available budget for the delivery of the objective, desired milestones, and the required timeline for delivery.

## Component Summary
**MIP97c1: The DAO-Level Objective Framework**  
Provides an overview of the overall framework.

**MIP97c2: Adding a DAO-Level Objective Proposal (DLO)**  
Describes the proposal template and requirements to submit an eligible DLO.

**MIP97c3: Standard DAO-Level Objective Proposal (DLO) parameters**  
Provides defined best practices increasing the usability of DLOs by Governance and the opportunities for continuous improvement. 

**MIP97c4: Governance Cycle**  
Defines how the DLO framework integrates with Maker's Governance Cycles. 

**MIP97c5: DLO Tracking**  
Defines how Governance must track and archive DLO data. 

## Motivation
The DAO-Level Objective (DLO) Framework furnishes governance with a set of processes and procedures to efficiently pair MakerDAO's work/project requests with a willing, undertaking workforce.

We consider the introduction of this framework timely at this conjuncture where Maker requires its workforce to reorganize into Endgame-ready entities. We believe it is a much-needed Governance catalyst to enable the ground-breaking work demanded by the Endgame.

This MIP does not impact any currently approved budgets at MakerDAO. The utilization of this framework for current or future budgets is optional. This framework is being introduced as a further tool for the DAO to use as deemed fit.

## Specification / Proposal Details 

### MIP97c1: The DAO-Level Objective Framework

The DAO-Level Objective (DLO) Framework furnishes governance with powerful coordination tools to (1) consistently define and broadcast what works/projects the DAO needs done and (2) pair these with agreeing, undertaking workforce (internal or external to MakerDAO) through [MIP98: The Work Proposal Framework](https://forum.makerdao.com/t/mip98-the-work-proposal-framework/19391).

DLOs (see MIP97c2) can be drafted and submitted for Maker Governance consideration by any individual. DLOs are subject to Maker Governance approval; they enter the weekly governance cycle and follow specific governance cycle parameters (see MIP97c4).

Note that the introduction of this framework does not proscribe other ratified funding mechanisms (e.g., MIP40, MIP55). Although we anticipate objections and wariness that the introduction of a further framework will increase Governance overhead, we believe that proper utilization (distilled in best practices in MIP97c3) of the framework will outweigh any possible drawbacks by streamlining funding requests and creating enriching engagement with the workforce.

Best Practices may not apply to all cases all the time --- deviating from them can indeed be the smart thing to do sometimes. The DLO Framework recognizes this and is therefore flexible, allowing for bespoke DLO configurations.

Finally, component MIP97c5 is used for both tracking and retrospective archival purposes.

### MIP97c2: The DAO-Level Objective Proposal (DLO)
A DLO is a defined opportunity or project that serves as a request from MakerDAO to workforces (either internal or external to MakerDAO) to deliver well-defined work. The objective and deliverables are defined using a top-down approach. DLOs allow Governance to provide clear expectations of available funding, desired reporting details, timelines, and other specific DLO parameters detailed below.

DLOs must follow the [DLO template](https://hackmd.io/@0xRetro/S165wKfPj), which includes the following sections:

**1. Sentence Description of the Objective**: A one-sentence, short description of the Objective.

**2. Paragraph Description of the Objective**: A long-form description of the Objective. This section should describe (1) the origins of the objective, (2) the future state of the DAO once this objective is achieved, and (3) any known challenges the DAO has faced previously related to this objective, if available.

**3. List of Deliverables**: A well-defined and obtainable list of deliverables. Deliverables are quantifiable byproducts of work. Deliverables may or may not be subject to Maker Governance approval upon delivery. Deliverable parameters are defined in the next (4th) point.

**4. Desired Timeline and Milestones for Delivery**
* **Timeline**: An Objective may require a specific timeline for delivery. This section defines the desired timeline for a DLO's Deliverables. This is defined as a number of months and is set for the overall DLO. 
* **Milestones**: Milestones dictate operational parameters for Deliverables. Milestones must be defined for all Deliverables listed in the previous (4th) point. Milestones can be used to build budget distributions and reporting requirements, to define the order for completing Deliverables, etc.

**5. DLO Parameters**: These are specific parameters that DLO authors can utilize to tailor the DLO to diverse circumstances and opportunities.
* **Maximum Number of Workforce Teams**: A DLO is designed to enable one or more teams to deliver work. The number of workforce teams can be set to _unlimited_, with the Budget Cap utilization by approved Work Proposals being the practical limit in that case.
* **Workforce Team Requirements or Restrictions** - This parameter defines any desired requirements or restrictions for a Workforce Team to be considered eligible for the DLO. Any requirements should be easily verifiable, ideally using a methodology that protects the workforce's anonymity. 
* **DLO Expiry** - Once a DLO is approved by Governance, the DLO becomes active and workforce teams can request assignment of the work through a [Work Proposal (MIP98)](https://forum.makerdao.com/t/mip97-the-work-proposal-framework/19391). It is expected that larger, more complex projects may require some period of time for a Work Proposal to be submitted and accepted. It is also expected that some DLOs may require immediate action. To manage the overhead of the lifecycle of DLOs, they are required to have a defined Expiry, also defined in months. The expiry of a DLO does not impact accepted Work Proposals, it simply prevents new Work Proposal submissions and/or assignments of DLOs to workforce teams.

**6. Budget Cap** - A DLO must define the overall budget that Maker Governance commits to accomplishing the DLO. Both Dai and MKR are in-scope as appropriate types of capital for funding. 

A template for DLOs is provided here: https://hackmd.io/gdrU2YpnSFetobcud6c83g

### MIP97c3: Standard DAO-Level Objective Proposal (DLO) Parameters

```!!! WIP !!!```

### MIP97c4: Governance Cycle

DLO subproposals may enter the Weekly Governance Cycle, provided the Feedback and Frozen Periods have been fulfilled. 

* Minimum Feedback Period: `2 Weeks`
* Minimum Frozen Period: `1 Week`
* On-chain vote: `1 Week`

### MIP97c5: DLO Tracking
This component is used for tracking the status of Approved DLOs through their defined life cycle. A MIP editor must update this MIP following a successful on-chain vote. 
* The DLO # is an index number that increments by 1 for every approved DLO. This is done to increase the ability for discussion on the proposal by assigning an easier-to-communicate index to it instead of the standard subproposal nomenclature.
* **Open** status defines a DLO as approved and (1) unallocated budget from the defined CAP or (2) approved Work Proposals assigned to the DLO are below the maximum number approved.
* **Closed** status defines a DLO that has reached expiry and cannot be assigned to any new teams.
* Approved Work Proposals that assigned the DLO to a Workforce Team must also be listed with a hyperlink to the approved Work Proposals. 

A sample entry is provided below:

```
DLO # - Short Description
Status: Open/Closed
Expiry Date: YYYY-MM-DD
Approved Work Proposals: MIP98c2-SPxx
```

#### DLO Tracking Entries:
