# MIP3: Governance Cycle

## Preamble
```
MIP#: 3
Title: Governance Cycle
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Contributors: @LongForWisdom
Type: Process
Status: Request for Comments (RFC)
Date Proposed: 2020-04-06
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: n/a
```

## References
No referenced materials.

## Sentence Summary

MIP3 defines a monthly Governance Cycle with the aim of providing a predictable framework for Maker governance decisions.

## Paragraph Summary

This proposal formally introduces a Governance Cycle. The Governance Cycle provides a predictable framework for Maker Governance decisions. Furthermore, it provides participants (MKR holders) with a monthly overview of the decisions that are to be made, allowing participation despite time constraints.

## Component Summary

**MIP3c1: Governance Cycle Breakdown**  
Breaks the Governance Cycle down into the actions that take place each week of the monthly cycle. 

**MIP3c2: Default Inclusion Threshold Modification Subproposals**  
A process component that defines a method and template for the modification of the default inclusion threshold.


## Motivation

The goal of the standardized monthly governance cycle is to provide advance notification and high predictability of governance activities in order to enable MKR holders to stay informed on relevant topics and participate in voting despite being time-constrained.

The structure of the governance cycle enables active governance participants to join the discussion at the proposal submission level from the beginning of the month, while less active governance participants can simply review the end results at the end of the month and decide whether or not to vote for the final executive vote.

## Specification / Proposal Details

### MIP3c1: Governance Cycle Breakdown

Each monthly governance cycle begins on the first Monday of the month, with Maker Improvement Proposals (MIPs) submitted by community members (defined within the MIP0 Framework). These proposals will be considered for inclusion at the end of the month's Executive vote. The governance cycle ends with an Executive vote that begins on the 4th Monday of the month.

Proposals submitted must follow the guidelines defined in MIP0.


### Week-by-week breakdown of the Monthly Governance Cycle

  

*Time is inclusive and in based on UTC (Coordinated Universal Time) and the Gregorian calendar*

**Week 1**
-   **1st Monday-Wednesday of the month:**
	-   The **Formal submission** (Phase 5 described in MIP0c2) of proposals that are to be included in the new governance cycle.
	-   The formal submission is done on the formal submission category on the MIPs Discourse forum (as defined in Phase 5 in MIP0c2)
-   **1st Thursday of the month:**
	-  **Inclusion Poll Review (Governance Meeting):** Discussion surrounding which proposals are in accordance with guidelines (defined in the MIP0 Framework), which proposals are inadequate (even if technically following the guidelines)
    

**Week 2**

-   **2nd Monday of the month**:
	-   The Governance facilitators publish an inclusion poll. The proposals that the specific Governance Facilitators' have general consensus on are included, but each Governance Facilitator, in their own can add their own individual short description and list order (which is critical for voter heuristic behaviour and important power of a governance facilitator in times of dispute or uncertainty).
	-   The **Default Inclusion Threshold** is a variable amount that can be changed by MIP3c3 sub proposals. The default inclusion threshold value is automatically counted towards the no vote tally of each item in the inclusion poll. The default inclusion threshold is changed with MIP3c2 subproposals.
	-   **An MKR voter has 2 options for each proposal in an inclusion poll:**
		-   Yes or no.
		-   Where the `no` votes simply increase the barrier of the proposal to pass.
	-   **Outcomes:** If the Yes votes for a given option in the inclusion poll are higher than the combination of No votes and the `default inclusion threshold`, the proposal will be included in the governance poll.
		-   If votes: `yes` > (`no` + `default inclusion threshold`) = inclusion in governance poll.

-   **2nd Thursday of the month:**
	-   **The Governance Poll Review (Governance Meeting)**: occurs, covering the general risk and governance topics at hand and without any MIP decision making discussion.
    

**Week 3**
    

-   **3rd Monday-Wednesday of the month:**
	-   The Governance poll submitted by the Governance Facilitator.
	-   The Governance poll will run from Monday until Wednesday.
	-   The Governance Poll is a yes/no MKR poll that accepts or rejects the combination of all MIPs that passed the inclusion poll stage, including any executive vote code from Technical MIP components or sub proposals.
-   **3rd Thursday of the month:**
	-   **Executive Vote Review (Governance Meeting)** - this public meeting will focus on either future proposals or controversy around the current governance poll and the future upcoming executive vote.
	-   In case there are too many `no` votes in the governance poll, and there is evidence that there is an effort to silence legitimate concerns in the community this meeting provides opportunities for compromise and the community and governance facilitators must consider whether it is creating a risk of governance split. If a governance facilitator believes that the proposed executive vote will result in a governance split, the Governance Facilitator should not deploy the executive vote and must instead work with the community to resolve the problem. Thus, if all governance facilitators are in consensus that the executive vote creates a significant risk of a community split, the executive vote will not happen and the MIPs that were supposed to be up for an executive vote, instead have their status changed to deferred.
    

**Week 4**

-   **4th Monday of the month:**
	-   The Executive vote is submitted if the governance poll has passed and the `no` votes are not too high to deem it a threat to consensus.
	-   Regular Executive votes must have an expiration of 7 days, meaning they blank themselves after 7 days.
	-   MIPs and Sub Proposals only get the accepted status if the executive vote they are included in passes within the 7-day limit. If the executive vote fails to pass within the 7-day limit, the MIPs and Sub Proposals have their status changed to rejected.    
-   **4th Thursday of the month:**
	-   The **Retro & Planning Meeting** occurs, covering the general risk and governance topics at hand and without any MIP decision making discussion. Discussion around the governance poll outcomes (for proposed collateral types) and proposals for next month, or retrospective on current governance cycle controversy.
	-   MIP3 sub proposals focus on modifying the default inclusion threshold for the inclusion polls.
	-   They are submitted to the governance cycle like any other proposal and their modified default inclusion threshold takes effect from the governance cycle following the successful passing of their governance cycle’s executive vote.
    

### Governance Cycle Overview Diagram

![Gov Cycle (1)](https://user-images.githubusercontent.com/32653033/79087199-8acd2080-7d0c-11ea-8978-178aa61f52b9.png)

### MIP Life Cycle Overview
![mip_life_cycle](https://user-images.githubusercontent.com/32653033/79087211-8e60a780-7d0c-11ea-833a-70d12cad56aa.png)


---

### MIP3c2: Default Inclusion Threshold Modification Subproposals

The Default Inclusion Threshold can be modified with subproposals. The subproposals will follow the logic below: 
- **Default Feedback Period**: 3 months
- **Frozen Period**: 1 month
-   **Subproposal Template**:

```
Introduction

- MIP3c2-SP#:
- Author(s): 
- Date Proposed: <date created on, in (yyyy-mm-dd) format>


Specification

Summary
- Proposal to modify the Default Inclusion Threshold

Motivation
- Input the motivation and reasoning behind the proposed change of the default inclusion threshold.

Specification / Proposal Details
- The new default inclusion threshold amount (number).
```

---
