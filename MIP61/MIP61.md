# MIP61: Delegate Compensation

## Preamble

```
MIP#: 61
Title: Recognized Delegate Compensation
Author(s): Joshua Pritikin (@jpritikin)
Contributors: @g_dip, @LongForWisdom
Tags: template
Type: process
Status: RFC
Date Proposed: 2021-10-01
Date Ratified: <yyyy-mm-dd>
Dependencies:
Replaces: <List of MIP it is replacing>
Forum URL: https://forum.makerdao.com/t/mip61-delegate-compensation/
```

## References

- [Delegation and MakerDAO](https://forum.makerdao.com/t/delegation-and-makerdao/9429)
- [Whether to compensate delegates](https://forum.makerdao.com/t/delegate-compensation-informal-poll/10042)
- [Compensating recognized delegates, parameters](https://forum.makerdao.com/t/informal-poll-compensating-recognized-delegates-parameters/10196).

## Sentence Summary

This proposal describes how Recognized Delegates will be compensated.

## Paragraph Summary

Governance Facilitators will compute and send the compensation to Recognized Delegates starting from the MIP adoption date with payments sent monthly.

## Component Summary

**MIP61c1: Definitions**
MIP61c1 defines key terms.

**MIP61c2: Compensation Formula and Process**
MIP61c2 specifies how to calculate the compensation and convey it to Recognized Delegates.

**MIP61c3: Accommodation for Delegate Contract Migration**
MIP61c3 specifies how Recognized Delegates can continue to receive predictable payments during a contract migration.

**MIP61c4: Examples**
MIP61c4 provides examples of the calculation for a few different situations.

**MIP61c5: Modification of Parameters**
MIP61c5 is a process component that allows authors to appeal to Maker Governance to change compensation parameters.

## Motivation

> If I don’t delegate my MKR, why should I contribute to the expenses of those that do? I am receiving no benefit from this, and in fact may be harmed by a delegate who votes against my wishes.

- Active engagement of delegates with the community and each other. This is unlikely if MKR holders hire their own delegates. Robust discussion and engagement should lead to better decision-making for the protocol.
- Consistency in defense of the hat. If the protocol is paying, it can require the delegates to vote every week in order to receive their compensation. Bigger hat = more secure protocol.
- MKR holders paying their own delegates is unlikely to happen because it is not in their best interests to do so. It is in MKR holders best interests to let someone else (i.e., the largest MKR holder) spend their time and resources governing the system. Given that it is obfuscated who the largest MKR holder is, everyone assumes it is not them, and no one pays the costs.

The only way to force cooperation is to have the protocol pay for delegates, such that the cost is divided between all MKR holders. Is this unfair for smaller MKR holders that actively vote? Yes, absolutely. But smaller MKR holders that actively vote cannot secure the hat or pass proposals without significant cooperation from other smaller MKR holders - and again, it is not in their best interests to do so given their relative vote-weight.

Vote outcomes are largely determined by how well voters are informed. As recognized delegates hold a great deal of voting weight, MKR holders are strongly motivated to encourage delegates to be as informed as possible, deliberate on questions of governance in depth, and engage in discussion with all stakeholders to gain the broadest possible perspective on the questions presented before them to decide. Compensation will help free delegates from some of their other responsibilities. For outstanding delegates, a secondary goal of compensation is to retain talent and prevent poaching of delegates by other businesses.

### Specific Goals

1. Delegate compensation should be positively correlated with MKR weight.
2. There should be a per-delegate maximum compensation because we do not expect a large difference in performance among outstanding delegates.
3. Compensation should be skewed toward delegates with smaller MKR weight to encourage recruitment of new delegates.
4. The compensation formula should discourage [zero-sum thinking](https://en.wikipedia.org/wiki/Zero-sum_thinking) among delegates. One delegate's compensation should be as independent as possible from another delegate's compensation.

## Relevant Information

- [Quadratic funding](https://vitalik.ca/general/2019/12/07/quadratic.html)

## Specification / Proposal Details

### MIP61c1: Definitions

- **Recognized Delegates:** Any delegate that has been labelled as a Recognised Delegate by a majority of Governance Facilitators according to a public and consistently applied criteria.

### MIP61c2: Compensation Formula and Process

#### A Solution

Goal 1 can be addressed with a linear relationship or many different curves. Goal 3 can be addressed by using an exponential with a factor between 0 and 1 (exclusive). A factor of 0.5 results in quadratic funding. The idea is to distribute compensation proportional to the square root of the MKR weight. To achieve goal 2, we cap the maximum per-delegate compensation.

| Parameter | Math Symbol | Initial Value |
| --------- | :-----: | ----: |
| Threshold for a large delegate | T | 10k MKR |
| Exponential factor | q | 0.5 |
| Maximum annual compensation per delegate | C | 144k DAI |

The formula is `C*min(1,MKR^q/T^q)`.

#### Action Plan

Rates of payment need recalculation only when the amount of delegated MKR changes. A rough approximation is obtained by recalculating only at regular periods (daily or weekly). Governance Facilitators shall look for changes at least daily and include the DAI transfers as part of an executive vote once per month.

#### Compensation Eligibility

Governance Facilitators track participation and communication metrics for each Recognized Delegate. In order to receive regular compensation, Recognized Delegates must maintain a minimum percentage on each of these two metrics, namely:

- Participation is required to be **at least 90%**.
- Communication is required to be **at least 90%**.

These requirements and metrics may be adjusted in the future depending on the number of Recognized Delegates, the resources available to the Governance Facilitators, and feedback from the delegates themselves.

### MIP61c3: Accommodation for Delegate Contract Migration

This component addresses the situation when a Recognized Delegate intends to migrate from one delegate contract to another. The associated entity must inform governance 7 days in advance of the migration effective date and which contracts are affected. The new delegate contract cannot already be involved in a migration (e.g., two delegates merging into one). During a 30 day interim period, the old and new delegate contracts are regarded, for the purpose of compensation, as referring to the same entity and compensation is calculated using stats from both the old and new contracts. For example, MKR weight will be obtained by the sum of the MKR weight of the old and new contracts. Participation and communication stats will register the most favorable stats considering both the old and new contracts.

### MIP61c4: Examples

Suppose the parameters are set to their initial values.

With 100 MKR delegated, the compensation is calculated as `C*min(1,100^q/10000^q)`. This is `C*10/100` = 14 400 DAI per year.

With 6772 MKR delegated, the compensation is calculated as `C*min(1,6772^q/10000^q)`. This is `C*82.29/100` = 118 497 DAI per year.

Compensation can be visualized by plotting the amount of MKR delegated against the compensation formula,

![](https://github.com/makerdao/mips/blob/master/MIP61/Rplot.png)

### MIP61c5: Modification of Parameters

The parameters that can be modified are:

- Threshold for a large delegate
- Exponential factor
- Maximum annual compensation per delegate

Recognized Delegates are potentially conflicted in consideration of these proposals. There may be a temptation to approve increases in compensation and vote against decreases. Hence, a Signal Request is required to assess broader community sentiment and spotlight any positions on the MIP61c5 proposal staked out by Recognized Delegates. [Sunshine is the best disinfectant](https://quoteinvestigator.com/2020/09/22/sunlight/). The Signal Request Poll must be posted at the start of the Frozen Period.

MIP61c5 subproposals have the following parameters:

- **Requirements**: 7-day Signal Request Thread, passing with 51%. If the Signal Request fails, then the proposal does not proceed to the Governance Cycle.
- **Default Feedback Period**: 1 month
- **Frozen Period**: 1 week
- **Governance Cycle**: Monthly