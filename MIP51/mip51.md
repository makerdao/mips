# MIP51: Monthly Governance Cycle

## Preamble  

```
MIP#: 51
Title: Monthly Governance Cycle
Author(s): @LongForWisdom 
Contributors: Charles St.Louis (@CPSTL), Payton Rose (@prose11), Pablo (@Blimpa), @Elihu
Tags: governance-cycle
Type: General
Status: Accepted
Date Proposed: 2021-04-07
Date Ratified: 2021-05-25
Dependencies: MIP0, MIP16
Replaces: MIP3
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-may-2021-governance-cycle-may-24-2021?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip51-monthly-governance-cycle/7366
Extra: This MIP has been amended. See [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1). The original version can be found [here](https://github.com/makerdao/mips/blob/4547015a050eb4b2b0dba5442ccde5b450078600/MIP51/mip51.md).
```

## References  

N/A

## Sentence Summary

MIP51 defines a Monthly Governance Cycle that provides a predictable framework for Maker Governance decisions.

## Paragraph Summary

MIP51 defines a Monthly Governance Cycle that provides a predictable framework for Maker Governance decisions. It replaces the existing [Monthly Governance Cycle (MIP3)](https://github.com/makerdao/mips/tree/master/MIP3). This new Governance Cycle aims to provide a more efficient and accessible framework for Maker Governance decisions.

## Component Summary

**MIP51c1: Governance Cycle Breakdown**
Breaks the Governance Cycle down into the actions that take place each week of the monthly cycle.

**MIP51c2: Ratification Poll**
Defines the parameters for a Ratification Poll under the MIPs process.

**MIP51c3: Minimum Positive Participation Changes**
Defines the process for modifying the Minimum Positive Participation required for Ratification Polls to pass.

**MIP51c4: Calendar Exceptions** 
Defines exceptions to the Monthly Governance Cycle due to holidays.

## Motivation

The new Monthly Governance Cycle has several goals versus the previous Monthly Governance Cycle defined in MIP3.

First, it aims to reduce the cost of participation for governance by reducing the number of votes that take place for each monthly cycle. Many participants expressed frustration over the number of votes required in each cycle, and many simply remained confused as to why multiple votes were required each month.

Second, it aims to increase protocol security by ensuring that only one Executive Vote is required per week under normal circumstances. It has been observed that the amount of MKR on the hat suffers during weeks where we have multiple Executive Votes, and this has caused some concern among the Smart Contracts Team.

Third, it aims to remove the possibility of a monthly governance executive failing due to a lack of participation combined with a 4-day Executive Proposal expiry. This could be a significant setback for the DAO. Additionally, the difficulty in determining if the Executive failed due to lack of participation or opposition would complicate the steps taken after that eventuality. 

The proposed Monthly Governance Cycle should resolve these issues and allow the Monthly Governance Cycle to proceed more efficiently, with less of a security risk, and with additional participation.

Additionally, the new Monthly Governance Cycle is less complex and hopefully more clear than the previous version.

## Specification / Proposal Details

### MIP51c1: Governance Cycle Breakdown

The first Monday of each calendar month marks the beginning of the Monthly Governance Cycle.

Proposals submitted into the Monthly Governance Cycle must follow the guidelines defined in [MIP0](https://github.com/makerdao/mips/blob/master/MIP0/mip0.md).

*Time is inclusive and based on UTC (Coordinated Universal Time) and the Gregorian Calendar*.

**Week 1, Monday**
-   MIP Authors move their proposals to **Formal Submission** (Phase 5 described in [MIP0c3](https://github.com/makerdao/mips/blob/master/MIP0/mip0.md#mip0c3-the-mip-lifecycle)). This phase lasts for 3 days.
-   Proposals must be moved into the [formal submission](https://forum.makerdao.com/c/mips/fs/16) subcategory on the MakerDAO forums under the [Maker Improvement Proposal](https://forum.makerdao.com/c/mips/14) category (as defined in Phase 5 in [MIP0c3](https://github.com/makerdao/mips/blob/master/MIP0/mip0.md#mip0c3-the-mip-lifecycle)).
-   Governance Process Support Ecosystem Actors must be informed by MIP Authors of the status change via commonly used communications channels.

**Week 1, Thursday**
- The Arbitration or Ecosystem Facilitators must come to consensus on whether each submission warrants moving forward to a Ratification Poll.
    - Arbitration or Ecosystem Facilitators may consider blocking a proposal if they believe that moving forward to a Ratification Poll would negatively affect community cohesion.
    - If the Arbitration or Ecosystem Facilitators prevent a proposal from moving to a Ratification Poll, they must clearly communicate their reasons for doing so via the official [forum](https://forum.makerdao.com).
    - In the event the Arbitration or Ecosystem Facilitators abuse this power they should be removed from their positions via any method Maker Governance determines is appropriate.

**Week 2, Monday**
-   The Arbitration or Ecosystem Facilitators publish the set of **Ratification Polls**. The format of these is defined in MIP51c2.
-   Ratification Polls are published to the [community GitHub](https://github.com/makerdao/community/tree/master/governance/polls), submitted on-chain and appear on the official [Voting Portal](https://vote.makerdao.com/).

**Week 4, Monday**
-   The Ratification Polls conclude, and each proposal or set of proposals is marked as either Accepted or Rejected by the Governance Process Support Ecosystem Actors.

---

### MIP51c2: Ratification Poll

Ratification Polls under the Monthly Governance Cycle must meet these requirements:
* **Duration:** 2 Weeks.
* **Minimum Positive Participation:** 10,000 MKR.
* **Type:** Binary Poll (yes/no/abstain).

Ratification Polls under the Monthly Governance Cycle must contain:
* Links to a *specific version* of a single proposal or set of related proposals (MIP Set) within the official MIPs GitHub.
* The Sentence and Paragraph Summaries of each included proposal.

In order for a Ratification Poll to conclude successfully and the contained proposal(s) move to Accepted status, each of the following conditions must be true:
* `Yes` vote-weight must exceed `No` vote-weight when the poll closes.
* `Yes` vote-weight must exceed the `Minimum Positive Participation` value of 10,000 MKR when the poll closes.

---

### MIP51c3: Minimum Positive Participation Changes

The Minimum Positive Participation value defined in MIP51c2 may be modified via a successful Polling Vote under the Weekly Governance Cycle (MIP16).

If such a vote is successful, the Governance Process Support Ecosystem Actors will update MIP51c2 and the change will come into effect in the _following_ Monthly Governance Cycle.

The Minimum Positive Participation value may not be changed for Ratification Polls that are in progress under any circumstances.

---

### MIP51c4: Calendar Exceptions

Due to the multitude of cultural and religious holidays occurring in and around the month of December, there will be no Monthly Governance Cycle in the December of each year.

---
