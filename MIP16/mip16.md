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
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-monthly-governance-cycle-bundle-increase-the-eth-a-debt-ceiling?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip17-weekly-actual-debt-ceiling-and-actual-risk-premium-adjustments/3021
Extra: This MIP has been amended. See [MIP4c2-SP12](https://mips.makerdao.com/mips/details/MIP4c2SP12), [MIP4c2-SP20](https://mips.makerdao.com/mips/details/MIP4c2SP20), and [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1). The original version can be found [here](https://github.com/makerdao/mips/blob/a42a0d21dc9929d222d31ac16300637cd403085f/MIP16/mip16.md).
```

## References

n/a

## Sentence Summary

MIP16 defines and formalizes the Weekly Governance Cycle to provide a more predictable weekly framework for Maker governance decisions.

## Paragraph Summary

This proposal formalizes a Weekly Governance Cycle for the Maker Governance system. In short, the Weekly Governance Cycle provides a predictable framework for Maker Governance decisions to be made on a per-week basis. It complements the Monthly Governance Cycle ([MIP51](https://github.com/makerdao/mips/blob/master/MIP51/mip51.md)) by enabling recurring weekly decisions to be made that require quicker action.

## Component Summary

**MIP16c1: Weekly Governance Cycle Definitions**
Defines key terms related to the Weekly Governance cycle.

**MIP16c2: Weekly Governance Cycle Breakdown**
Breaks the Weekly Governance Cycle down into the actions that take place over the course of the week.

**MIP16c3: Limiting Governance to MIP-defined processes**
Defines the requirement of only allowing MIP-defined processes to be used for Maker Governance.

## Motivation

The goal of the standardized Weekly Governance Cycle is to formalize the current-day weekly operations that Maker governance uses to maintain the Maker Protocol. The Weekly Governance Cycle is used explicitly for recurring operational decisions that require quicker action than the Monthly Governance Cycle (defined in [MIP51](https://github.com/makerdao/mips/blob/master/MIP51/mip51.md)). For example, the Weekly Cycle will be used to modify rates and debt ceilings for the collateral types in the Maker collateral portfolio.

It is important to note that due to the frequency of such changes, the Weekly Cycle is not suitable for long-term or substantial decisions but is ideal for specific time-sensitive decisions that do not require an Emergency vote. Lastly, the Weekly Cycle provides MKR holders and community members with more advanced notification of governance activities.

## Specification / Proposal Details

### MIP16c1: Weekly Governance Cycle Definitions

- A **Weekly Poll** is a non-binding MKR poll that determines the weekly Executive Vote contents. In this context, a non-binding weekly poll refers to the fact that a weekly poll cannot change the system parameters independently; it merely dictates what will be included at the end of the week in the Executive Vote.
- A **Non-Standard Weekly Poll** is a non-binding weekly poll that has arbitrary time-sensitive decisions that MKR holders have to make in a relatively short period of time. These polls are needed to be expedited through the Maker governance process via a separate vote. The use of non-standard weekly polls is dedicated to Facilitators, given that they have already established a high level of trust with the community. Furthermore, the use of non-standard weekly governance polls will be limited to situations where the weekly governance cycle is determined to operate too slowly to be usable.
- Facilitators listed in the Governance Scope Bounded Mutable Alignment Artifact have been authorized by Maker Governance to make proposals using the Weekly Cycle to enable them to fulfill their responsibilities.
- To protect the integrity of existing MIPs, Signal Requests are only permitted when they are specifically triggered and required by an existing MIP.
- This component explicitly forbids the possibility of community-triggered Signal Requests about arbitrary issues. It is also explicitly specified that the only way to make arbitrary changes to Maker Governance is through the amendment of Scope Frameworks.

---

### MIP16c2: Weekly Governance Cycle Breakdown

- Every Monday, the Weekly Cycle begins; it includes standard recurring decisions proposed in the form of weekly polls. The polls run for three days.

- The Governance or Protocol Facilitators confirm the Executive Vote contents and deliver the spell copy to the Governance Security Engineering team. The the Governance Security Engineering team starts preparation of the mainnet spell.

- The the Governance Security Engineering team reviews the mainnet spell.

- The the Governance Security Engineering team deploys the mainnet spell, creates and reviews a mainnet fork.

- The Governance or Protocol Facilitators add the Executive Vote to the voting portal and communicates this to the MakerDAO Community. The Weekly Executive Vote has an expiration of thirty days.

#### Overview of the Weekly Governance Cycle

The weekdays displayed in the image are recommended but may vary based on the decisions made by the Governance Facilitators and the Governance Security Engineering team, with the exception of the days designated for the weekly poll:

![image](https://github.com/makerdao/mips/blob/master/MIP16/weekly_governance_cycle.png)

**Important Notes:**

- As the Weekly Governance Cycle runs from Monday until the following Wednesday, there will in effect be two concurrent Weekly Governance Cycles from Monday to Wednesday each week.
- If there are no substantive changes due to be made to the Maker Protocol, the Governance Facilitators, in conjunction with the Governance Security Engineering team and the Protocol Facilitators, may opt not to publish an Executive Vote. This decision should be announced and justified on the Maker Forum.
- If a non-standard weekly poll ("signal request") has been proposed, it will also be put in the weekly poll. To create a non-standard weekly poll requires an urgent and apparent reason from a timing perspective to justify it. It is important to note that a non-standard weekly poll cannot be used for long-term decisions and requires consensus from the Governance or Protocol Facilitators before it can be accepted and published.
- The scheduled spell can be postponed if deemed necessary by the Governance Facilitators, the Governance Security Engineering team, and the Protocol Facilitators.
- Additional spells outside the regular schedule may be introduced if deemed necessary by the Governance Facilitators, the Governance Security Engineering team, and the Protocol Facilitators.

---
### MIP16c3: Limiting Governance to MIP-defined processes

With the acceptance of this MIP, non-emergency governance of the Maker Protocol must now happen under processes defined by Accepted MIPs. MIPs defining governance processes include [MIP51](https://github.com/makerdao/mips/blob/master/MIP51/mip51.md) and [MIP16](https://github.com/makerdao/mips/blob/master/MIP16/mip16.md), which define monthly and weekly Governance Cycles, respectively.

In addition, the use of the Weekly Cycle as defined in this MIP should only occur where there is a specific need to use the Weekly Cycle as opposed to the Monthly Cycle. Consensus among the Governance Facilitators is required in order to make use of the Weekly Cycle as opposed to the Monthly Cycle.

Emergency governance actions are explicitly allowed outside of MIP-defined governance processes due to the time-sensitive nature of emergency responses and the permissionless nature of on-chain proposals and voting.
