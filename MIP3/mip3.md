# MIP3: Governance Cycle

## Preamble

```
MIP#: 3
Title: Governance Cycle
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Contributors: @LongForWisdom
Tags: process, governance, mip-set, core-governance-mipset
Type: Process
Status: Obsolete
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Dependencies: n/a
Replaces: n/a
Ratification Poll URL:
Forum URL: https://forum.makerdao.com/t/mip3-governance-cycle/1905
Extra: This MIP has been amended. See [MIP4c2-SP6](https://mips.makerdao.com/mips/details/MIP4c2SP6). The original version can be found [here](https://github.com/makerdao/mips/blob/83a76311a2cf75d5ea4aa72c61103cfb4748fcf3/MIP3/mip3.md).
Extra: This MIP has been made obsolete by the passage of [MIP51](https://mips.makerdao.com/mips/details/MIP51).
```

## References

**[MIP3c2-Subproposal-Template.md](MIP3c2-Subproposal-Template.md)**

## Sentence Summary

MIP3 defines a monthly Governance Cycle with the aim of providing a predictable framework for Maker governance decisions.

## Paragraph Summary

This proposal formally introduces a Governance Cycle. The Governance Cycle provides a predictable framework for Maker Governance decisions. Furthermore, it provides participants (MKR holders) with a monthly overview of the decisions that are to be made, allowing participation despite time constraints.

## Component Summary

**MIP3c1: Governance Cycle Definitions**

Defines key terms related to the Governance cycle.

**MIP3c2: Governance Cycle Breakdown**

Breaks the Governance Cycle down into the actions that take place each week of the monthly cycle.

**MIP3c3: Default Inclusion Threshold Modification Subproposals**

A process component that defines a method and template for the modification of the default inclusion threshold.

**MIP3c4: Calendar Exceptions**  

Defines exceptions to the monthly governance cycle due to holidays.

## Motivation

The goal of the standardized monthly governance cycle is to provide advance notification and high predictability of governance activities in order to enable MKR holders to stay informed on relevant topics and participate in voting despite being time-constrained.

The structure of the governance cycle enables active governance participants to join the discussion at the proposal submission level from the beginning of the month, while less active governance participants can simply review the end results at the end of the month and decide whether or not to vote for the final executive vote.

## Specification / Proposal Details

### MIP3c1: Governance Cycle Definitions

- **Default Inclusion Threshold** is a variable amount that can be changed by MIP3c3 subproposals. The default inclusion threshold value is automatically counted towards the no vote tally of each item in the inclusion poll. The default inclusion threshold is set at 3000 MKR but can be changed with [MIP3c2 subproposals](MIP3c2-Subproposal-Template.md).
- **Inclusion Poll** When governance users decide what they want to bundle together into the governance poll. The inclusion poll also serves as the threshold to necessitate the attention of a governance poll. An important aspect of the inclusion poll is that it allows MKR holders to have a big impact early on in the governance cycle.
- **Governance Poll** The Governance Poll is a yes/no MKR poll that accepts or rejects the combination of all MIPs that passed the inclusion poll stage, including acceptance of any executive vote code from Technical MIP components or subproposals.
- **Executive Vote** The final vote to determine if proposals ultimately gets accepted or rejected.

---

### MIP3c2: Governance Cycle Breakdown

Each monthly governance cycle begins on the first Monday of the month, with Maker Improvement Proposals (MIPs) submitted by community members (defined within the MIP0 Framework). These proposals will be considered for inclusion at the end of the month's Executive vote. The governance cycle ends with an Executive vote that begins on the 4th Monday of the month.

Proposals submitted must follow the guidelines defined in MIP0.

### Week-by-week breakdown of the Monthly Governance Cycle

*Time is inclusive and in based on UTC (Coordinated Universal Time) and the Gregorian calendar*

**Week 1, Monday**
-   The **Formal Submission** (Phase 5 described in [MIP0c3](https://github.com/makerdao/mips/blob/master/MIP0/mip0.md#mip0c3-the-mip-lifecycle)) of proposals that are to be included in the new governance cycle by the MIP Authors. This phase lasts for 3 days.
-   The formal submission of MIPs are done on the formal submission category on the MakerDAO forums under the Maker Improvement Proposal subcategory (as defined in Phase 5 in [MIP0c3](https://github.com/makerdao/mips/blob/master/MIP0/mip0.md#mip0c3-the-mip-lifecycle)).

**Week 1, Thursday**
-  Governance Facilitators do the **Submission Review** as part of the governance meeting and determine which of the proposed MIPs are in accordance with guidelines (defined in the MIP0 Framework) and should be included in the inclusion poll.

**Week 2, Monday**
-   The Governance facilitators publish the set of **Inclusion Polls**, one per proposal. Each poll has two options:
	-   Yes or no.
	-   Where the `no` votes simply increase the barrier of the proposal to pass.
-   If the Yes votes for a given option in the inclusion poll are higher than the combination of No votes and the `default inclusion threshold` at the end of the Inclusion Poll, the proposal will be included in the **Governance Poll**.
    -   The default inclusion threshold is set to 3000 MKR.
	-   If votes: `yes` > (`no` + `default inclusion threshold`) = inclusion in governance poll.

**Week 2, Thursday**

-   The Governance facilitators do the **Inclusion Review** as part of the governance meeting in which they confirm the inclusions in the **Governance Poll**.

**Week 3, Monday**
-   The **Governance Poll** is submitted by the Governance Facilitators. This poll runs for 3 days.

**Week 3,Thursday**
-   The Governance Facilitators do the  **Governance Poll Review** as part of the governance meeting in which they confirm the outcome of the **Governance Poll**.
- The Governance Facilitators must come to consensus on whether the results of the governance poll warrant moving forward to the executive vote.
    - This responsibility is intended to be used in the case in which the Governance Facilitators believe that moving forward to an **Executive Vote** would negatively affect community cohesion.
    - If the Governance Facilitators oppose the **Governance Poll** outcome, they must clearly communicate their reasons for disregarding the poll results.
    - In the event the Governance Facilitators abuse this power, they should be removed using a [MIP0c13 subproposal](https://github.com/makerdao/mips/blob/templates/MIP0/MIP0c13-Subproposal-Template.md).

**Week 4, Monday**
- The **Executive Vote** is submitted if the Governance Facilitators confirm the 'yes' outcome of the **Governance Poll**.
- The **Executive Vote** must have an expiration of 4 days, after which is has no effect.
- MIPs and subproposals only move to the 'Accepted' status if the executive vote they are included in passes within the 4-day limit. If the executive vote fails to pass within the 4-day limit, the MIPs and subproposals have their status changed to 'Rejected'.

**Week 4, Thursday**
- The Governance Facilitators do the **Governance Cycle Review** as part of the governance meeting in which they summarize and discuss the Governance Cycle with the community.
- The Governance Facilitators also discuss the upcoming governance cycle and potential submissions with the community.

### Governance Cycle Overview

![Gov Cycle](https://user-images.githubusercontent.com/32653033/80249627-2f6e2d00-8640-11ea-8b56-6163276ded4c.png)

### MIP Life Cycle Overview
![mip_life_cycle](https://user-images.githubusercontent.com/32653033/79087211-8e60a780-7d0c-11ea-833a-70d12cad56aa.png)

---

### MIP3c3: Default Inclusion Threshold Modification Subproposals

MIP3c2 is a Process MIP component that allows the Default Inclusion Threshold to be modified for the Inclusion poll. This is done through a subproposal. The subproposals are submitted to the governance cycle like any other proposal and if ratified, their modified default inclusion threshold takes effect from the governance cycle following the successful passing of their governance cycle’s executive vote.

MIP3c2 subproposals have the following parameters:
- **Default Feedback Period**: 3 months
- **Frozen Period**: 1 month

MIP3c2 subproposals must use the template located at  **[MIP3c2-Subproposal-Template.md](MIP3c2-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.

---

### MIP3c4: Calendar Exceptions

In order to allow Maker Governance to enjoy the holiday season, there will be no monthly governance cycle in the month of December. 

Although Maker is intended to be a global protocol, in its current state the majority of the active members of governance are located in the United States or Europe. Both these regions have winter holidays that would clash with the conclusion of a monthly governance cycle in December. It is hoped that this exception can be removed in the future when governance of the protocol is more globally distributed.

---
