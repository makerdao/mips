# MIP75: Task Forces

## Preamble

```
MIP#: 75
Title: Task Forces
Author(s): Sam MacPherson (@hexonaut)
Contributors: Adrian (@adcv), Sébastien Derivaux (@SebVentures), TJ Ragsdale (@teej), Luca Prosperi (@luca_pro)
Tags: governance
Type: General
Status: RFC
Date Proposed: 2022-05-11
Date Ratified: N/A
Dependencies: None
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip75-task-forces/15093
Ratification Poll URL:
```

## References

None.

## Sentence Summary

MIP75 proposes the formalization of Task Forces. These groups will be responsible for coordinating high level business decisions on behalf of the DAO. They may also work with an associated discretionary fund to realize business objectives.

## Paragraph Summary

MIP75 proposes the formalization of Task Forces. These groups are designed to directly interface with the delegates to coordinate and agree upon terms in advance to provide more autonomy within the Core Units. Task Forces can be formed by any group, but the ratification process needs to be put to a vote due to discretionary fund requests being attached. Task Forces are free to add or remove members by their own consensus rules.

## Component Summary

**MIP75c1: Task Force Requirements**

Task Force compliance guidelines .

**MIP75c2: Onboard Task Force**

Task Force submission template.

**MIP75c3: Task Forces List**

List of active Task Forces.

**MIP75c4: Offboard Task Force**

Task Force dissolution template.

**MIP75c5: Request for Additional Funds**

Task Force request for additional funds template.

## Motivation

There is a need to realize growth opportunities in an agile way, without having to burden the governance process with minutiae and without having to disclose potentially sensitive commercial details in the course of a negotiation. This includes, but is not limited to, commercial opportunities, ability to execute on deals, running DAO-wide offsites and Maker-led conferences like MakerCON/StableCON.

Currently the process for getting cross-CU funds goes through the [Special Purpose Fund](https://mips.makerdao.com/mips/details/MIP55) which involves a 2 month period of uncertainty for anything beyond a trivial amount of cash. Additionally there's no process to discuss agreements with third parties and make decisions without disclosing sensitive information to the community.

This MIP aims to provide a group of DAO domain experts with the ability to transparently deploy cash in a timely manner. Task Forces must maintain a log with explanations of all purchases for the DAO to be able to review unless this would break the confidentiality of an agreement in progress. In addition these Task Forces should be viewed as an expert resource the delegates can directly communicate with to reach advanced consensus before proposals are posted to the forum.

This MIP is meant to be a practical first step to get the ball rolling and is not intended to be a long term solution. As such it is intentionally designed to minimally disrupt the current MIP process, but instead to augment with informal consensus guidelines. There are other more detailed attempts to organize the governance structure for the long haul. This should be viewed as a pragmatic, interim solution to be replaced by a more robust DAO / Core Unit / Delegate overhaul.

Proposals submitted by Task Forces can go through an expedited process if desired to reach advanced consensus ahead of votes and speed up the RFC phase. The expedited process will differ from the regular process with an advanced meeting between the Task Force and top delegates. This part is somewhat informal as the requirements may differ depending on the sensitivity of the deal. For example, if there are sensitive private details the Task Force should not include shadow delegates or low MKR delegates to minimize the chance of leak.

The formal difference between the expedited and regular processes is that the public RFC phase is reduced to at most 1 week. In total there will be 1 week public RFC and 1 week frozen. The monthly MIP process proceeds normally after this. This is still enough time for the community to halt any possible attack scenario. The goal here is to find a middle ground between trust and governance overhead.

Here is an example of the difference with an expedited process:

![|624x365](upload://gjGi98O6hKh3vz6JLGEVKhL56DY.png)

Most proposals should still go through the regular public process, but this new expedited process will allow us to reach consensus in advance of the vote for proposals being submitted by trusted members of the community.

## Specification / Proposal Details

### MIP75c1: Task Force Requirements

Task Forces are expected to maintain effective communication with the wider Maker community. Meetings between Task Forces and Delegates should be held whenever necessary, and the recommendations of those meetings should be posted to the forum.

Task Forces are free to update their mandate and membership as they see fit with no governance process.

### MIP75c2: Onboard Task Force

This subproposal onboards a new Task Force.

The parameters for MIP75c2 subproposals are:

Feedback Period: 3 weeks

Frozen Period: 1 week

Outcome: Task Force is either onboarded successfully or is rejected. If onboarded, a one-time payment of the requested initial funding is sent to the multi-sig.

MIP75c2 subproposals must use the MIP75c2-Subproposal-Template template.

Ratification Polls for MIP75c2 subproposals involving a Task Force Onboarding will require using ranked-choice voting, with the options as follows:

* A: Approve Task Force and associated delegated authority to spend funds
* B: Approve Task Force without associated delegated authority to spend funds
* C: Reject Task Force
* D: Abstain

In order for this Ratification Poll to conclude successfully and the contained proposal(s) move to Accepted status, each of the following conditions must be true:

* A or B vote-weight must exceed C vote-weight when the poll closes.
* Winning vote-weight must exceed the Minimum Positive Participation value of 10,000 MKR when the poll closes.

======= TEMPLATE =======

# MIP75c2-SP123: Onboard Task Force

## Preamble

```
MIP75c2-SP#: 123
Title: Onboard Task Force - NAME OF TASK FORCE
Author(s): Name (@handle)
Contributors:
Tags: task-force
Status: RFC
Date Proposed: YYYY-MM-DD
Date Ratified: N/A
Forum URL:
Ratification Poll URL:
```

## Specification

- **Name**: NAME OF TASK FORCE
- **Members**:

Member Name (@handle) - Description of Role

- **Requested Initial Funding**: FUNDING AMOUNT IN DAI
- **Multi-sig Address (m-of-n)**: MULTISIG ADDRESS

## Description

Free-form description of the Task Force. Should include vision, goals, strategy, etc.

======= END TEMPLATE =======

### MIP75c3: Task Forces List

This listing is to be maintained and updated by the Governance Facilitators. It will serve as an active registry of approved Task Forces.

**Entries into this list should contain the following information:**

> Name: The name of the Task Force
> - Date Added: (yyyy-mm-dd)

#### Task Forces List

### MIP75c4: Offboard Task Force

Any community member can begin an offboarding process.

The parameters for MIP75c4 subproposals are:

- **Feedback Period**: 3 weeks

- **Frozen Period**: 1 week

**Outcome**: Task Force is either offboarded successfully or they continue as-is. If offboarded, any outstanding unspent funding must be returned to the DAO at the earliest convenience.

======= TEMPLATE =======

```
MIP75c4-SP#: 123
Title: Offboard Task Force - NAME OF TASK FORCE
Author(s): Name (@handle)
Contributors:
Tags: task-force
Status: RFC
Date Proposed: YYYY-MM-DD
Date Ratified: N/A
Forum URL:
Ratification Poll URL:
```

## Specification

- **Name**: NAME OF TASK FORCE
- **Target SP #**: # of the Onboarding Proposal to Offboard

## Description

Free-form description of why this Task Force should be offboarded.

======= END TEMPLATE =======

### MIP75c5: Request for Additional Funds

Any Task Force member may begin a request for additional funds for their own group.

======= TEMPLATE =======

```
MIP75c5-SP#: 123
Title: Request for Additional Funds - NAME OF TASK FORCE
Author(s): Name (@handle)
Contributors:
Tags: task-force
Status: RFC
Date Proposed: YYYY-MM-DD
Date Ratified: N/A
Forum URL:
Ratification Poll URL:
```

## Specification

- **Name**: NAME OF TASK FORCE
- **Target SP #**: # of the Onboarding Proposal to Offboard
- **Requested Initial Funding**: FUNDING AMOUNT IN DAI
- **Multi-sig Address (m-of-n)**: MULTISIG ADDRESS

## Description

Free-form description of why this Task Force needs more funds.

======= END TEMPLATE =======  
