# MIP16: The Weekly Governance Cycle

## Preamble

```
MIP#: 16
Title: The Weekly Governance Cycle
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Contributors:
Tags: process, governance
Type: Process
Status: Accepted
Date Proposed: 2020-07-01
Date Ratified: 2020-07-28
Dependencies:
Replaces: n/a
```

## References

n/a

## Sentence Summary

MIP16 defines and formalizes the Weekly Governance Cycle to provide a more predictable weekly framework for Maker governance decisions.

## Paragraph Summary

This proposal formalizes a Weekly Governance Cycle for the Maker Governance system. In short, the Weekly Governance Cycle provides a predictable framework for Maker Governance decisions to be made on a per-week basis. It will also complement the Monthly Governance Cycle ([MIP3](https://github.com/makerdao/mips/blob/master/MIP3/mip3.md)) by enabling recurring weekly decisions to be made that require quicker action.


## Component Summary

**MIP16c1: Weekly Governance Cycle Definitions**

Defines key terms related to the Weekly Governance cycle.

**MIP16c2: Weekly Governance Cycle Breakdown**

Breaks the Weekly Governance Cycle down into the actions that take place over the course of the week.

**MIP16c3: Limiting Governance to MIP-defined processes**

Defines the requirement of only allowing MIP-defined processes to be used for Maker Governance.

## Motivation

The goal of the standardized Weekly Governance Cycle is to formalize the current-day weekly operations that Maker governance uses to maintain the Maker Protocol. The Weekly Governance Cycle is used explicitly for recurring operational decisions that require quicker action than the Monthly Governance Cycle (defined in [MIP3](https://github.com/makerdao/mips/blob/master/MIP3/mip3.md)). For example, the Weekly Cycle will be used to modify rates and debt ceilings for the collateral types in the Maker collateral portfolio. It is important to note that due to the frequency of such changes, the Weekly Cycle is not suitable for long term or substantial decisions but is ideal for specific time-sensitive decisions that do not require an Emergency vote. Lastly, the Weekly Cycle provides MKR holders and community members more advanced notification of governance activities.

## Specification / Proposal Details

### MIP16c1: Weekly Governance Cycle Definitions

- A **Governance Poll** is, specifically in the monthly cycle, a yes/no MKR poll that accepts or rejects the combination of all MIPs that passed the inclusion poll stage, including acceptance of any Executive Vote code from Technical MIP components or subproposals.
- A **Weekly Poll** is a non-binding MKR poll that determines the weekly Executive Vote contents. In this context, a non-binding weekly poll refers to the fact that a weekly poll cannot change the system parameters independently; it merely dictates what will be included at the end of week in the Executive Vote.
- A **Non-Standard Weekly Poll** is a non-binding weekly poll that has arbitrary time-sensitive decisions that MKR holders have to make in a relatively short period of time. These polls are needed to be expedited through the Maker governance process via a separate vote. The use of non-standard weekly polls is dedicated to Facilitators, given that they have already established a high level of trust with the community. Furthermore, the use of non-standard weekly governance polls will be limited to situations where the weekly governance cycle is determined to operate too slowly to be usable.
- Facilitators that have been onboarded into MIP38: DAO Primitives State have been authorized by Maker Governance to efficiently interact with the weekly cycle to enable them to fulfill their Core Unit Mandate with as little friction as possible. Facilitators are authorized to submit non-standard Weekly polls that are related to their Core Unit Mandate and include logic in the weekly Executive Vote that is related to their Core Unit Mandate. If necessary, and if it is related to their Core Unit Mandate, Facilitators can skip the Non-Standard Weekly poll and include logic directly into the weekly Executive Vote.

---

### MIP16c2: Weekly Governance Cycle Breakdown


**Monday**

- Every Monday, the weekly cycle begins and includes standard recurring decisions proposed in the form of a weekly poll. The poll will run for three days ending Thursday before the Governance and Risk Call.

**Thursday**

- The weekly poll results will be reviewed on the Governance and Risk Call.

**Friday**

- Every Friday, given the Monday Weekly Governance Poll passes, the weekly polls are put up for an Executive Vote. The Weekly Executive vote has an expiration of one week, but can be overridden by the Monthly MIPs Executive Vote if it occurs the following Monday.

### Overview of the Governance Cycles

![weekly_monthly-gov](https://user-images.githubusercontent.com/32653033/85932289-b0dc7880-b898-11ea-8a11-b1379dde04fb.png)

**Important Notes:**
- If a non-standard weekly poll ("signal request") has been proposed, it will also be put in the weekly poll. To create a non-standard weekly poll requires an urgent and apparent reason from a timing perspective to justify it. It is important to note that a non-standard weekly poll cannot be used for long-term decisions and requires consensus from the Governance facilitators before it can be accepted and published.

---
### MIP16c3: Limiting Governance to MIP-defined processes

With the acceptance of this MIP, non-emergency governance of the Maker Protocol must now happen under processes defined by Accepted MIPs. At the time of writing, MIPs defining governance processes include the [Core Governance MIPs Set](https://github.com/makerdao/mips#core-governance-framework). Such as [MIP3](https://github.com/makerdao/mips/tree/master/MIP3) and [MIP16](https://github.com/makerdao/mips/blob/RFC/MIP16/mip16.md), which define monthly and weekly governance cycles, respectively.

In addition, the use of the weekly cycle as defined in this MIP should only occur where there is a specific need to use the weekly cycle as opposed to the monthly cycle. Consensus among the Governance Facilitators is required in order to make use of the weekly cycle as opposed to the monthly cycle.

Emergency governance actions are explicitly allowed outside of MIP-defined governance processes due to the time-sensitive nature of emergency responses and the permissionless nature of on-chain proposals and voting.

---