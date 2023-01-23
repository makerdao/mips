# MIP61: Recognized Delegate Compensation

## Preamble

```
MIP#: 61
Title: Recognized Delegate Compensation
Author(s): Joshua Pritikin (@jpritikin)
Contributors: @g_dip, @LongForWisdom, @Patrick_J, @ultraschuppi
Tags:
Type: process
Status: Accepted
Date Proposed: 2021-10-01
Date Ratified: 2022-03-28
Dependencies:
Replaces: <List of MIP it is replacing>
Ratification Poll URL: https://vote.makerdao.com/polling/QmTvzCjL?network=mainnet
Forum URL: https://forum.makerdao.com/t/mip61-recognized-delegate-compensation/10640
Extra: This MIP has been amended. See [MIP4c2-SP24](https://mips.makerdao.com/mips/details/MIP4c2SP24). The original version can be found [here](https://github.com/makerdao/mips/blob/5861a85a57075f99be0e8a3890189f4e138b42bd/MIP61/MIP61.md).
```

## References

- [Delegation and MakerDAO](https://forum.makerdao.com/t/delegation-and-makerdao/9429)
- [Whether to compensate delegates](https://forum.makerdao.com/t/delegate-compensation-informal-poll/10042)
- [Compensating recognized delegates, parameters](https://forum.makerdao.com/t/informal-poll-compensating-recognized-delegates-parameters/10196).
- [Introduction of the Performance Modifier](https://forum.makerdao.com/t/signal-request-should-we-introduce-a-performance-modifier-to-the-delegate-compensation-trial/11850)
- [Introduction of the Abstain Modifier](https://forum.makerdao.com/t/mip4c2-spxx-amend-mip61-to-tighten-up-recognized-delegate-participation-metrics/18696)

## Sentence Summary

This proposal describes how Recognized Delegates will be compensated.

## Paragraph Summary

Governance Facilitators will compute and send the compensation to Recognized Delegates starting from the MIP adoption date with payments sent monthly.

## Component Summary

**MIP61c1: Definitions**
MIP61c1 defines key terms.

**MIP61c2: Compensation Formula and Process**
MIP61c2 specifies how to calculate the compensation and convey it to Recognized Delegates.

**MIP61c3: Payment Process**
MIP61c3 specifies the process for the payment of compensation to Recognized Delegates

**MIP61c4: Accommodation for Delegate Contract Migration**
MIP61c4 specifies how Recognized Delegates can continue to receive predictable payments during a contract migration.

**MIP61c5: Examples**
MIP61c5 provides examples of the calculation for a few different situations.

**MIP61c6: Modification of Parameters**
MIP61c6 is a process component that allows authors to appeal to Maker Governance to change compensation parameters.

## Motivation

> If I don’t delegate my MKR, why should I contribute to the expenses of those that do? I am receiving no benefit from this, and in fact may be harmed by a delegate who votes against my wishes.

- Active engagement of delegates with the community and each other. This is unlikely if MKR holders hire their own delegates. Robust discussion and engagement should lead to better decision-making for the protocol.
- Consistency in defense of the hat. If the protocol compensates Recognized Delegates, they are incentivized to vote regularly in order to receive their compensation. If more MKR is securing the hat, the Maker Protocol is more secure.
- MKR holders paying their own delegates is unlikely to happen because it is not in their best interests to do so. It is in MKR holders best interests to let someone else (i.e. the largest MKR holder) spend their time and resources governing the system. Given that it is obfuscated who the largest MKR holder is, everyone assumes it is not them, and no one pays the costs.

The only way to force cooperation is to have the Maker Protocol pay for Recognized Delegates, such that the cost is divided between all MKR holders. Is this unfair for smaller MKR holders that actively vote? Yes, absolutely. But smaller MKR holders that actively vote cannot secure the hat or pass proposals without significant cooperation from other smaller MKR holders - and again, it is not in their best interests to do so given their relative vote-weight, especially in a high-gas environment, as the cost of voting for polls can become obstructive.

Vote outcomes are largely determined by how well voters are informed. As Recognized Delegates hold a great deal of voting weight, MKR holders are strongly motivated to encourage delegates to be as informed as possible, deliberate on questions of Governance in depth, and engage in discussion with all stakeholders to gain the broadest possible perspective on the questions presented before them to decide. Compensation will help free Recognized Delegates from some of their other responsibilities. For outstanding Recognized Delegates, a secondary goal of compensation is to retain talent and prevent poaching other businesses or protocols.

### Specific Goals

1. Recognized Delegate compensation should be positively correlated with MKR weight.
2. There should be a per-delegate maximum compensation because we do not expect a large difference in performance among outstanding Recognized Delegates.
3. Compensation should be positively skewed toward Recognized Delegates with smaller MKR weight to encourage recruitment of new Recognized Delegates.
4. The compensation formula should discourage [zero-sum thinking](https://en.wikipedia.org/wiki/Zero-sum_thinking) among Recognized Delegates. One Recognized Delegate's compensation should be as independent as possible from another Recognized Delegate's compensation.

### Performance Modifier Motivation

The intention behind the Performance Modifier is that these parameters be considered over the duration of time that a Recognized Delegate is active. The advantage of such an approach is that it allows Recognized Delegates that have been performing at high levels flexibility in terms of unexpected ability to vote, for example, in the event of illness, or planned inactivity, such as a vacation period. If a Recognized Delegate's parameters were calculated on a rolling-basis, for example over three months, taking a week off would have an outsized effect on compensation, particularly if it was a week with a large number of Governance Polls. If it is difficult or uneconomical for Recognized Delegates to take time off when required, there is potential this could lead to burnout and this is consequently undesirable.

### Abstain Modifier Motivation

The intention behind the Abstain Modifier is to avoid the problem of getting compensated even if a delegate is constantly just abstaining on polls. To a certain extent, Recognized Delegates should be expected to take a position on governance questions. However, it is recognized that in certain situations, Recognized Delegates may have good reasons to abstain from a specific vote.

## Relevant Information

- [Quadratic funding](https://vitalik.ca/general/2019/12/07/quadratic.html)

## Specification / Proposal Details

### MIP61c1: Definitions

- **Recognized Delegates:** Any delegate that has been labelled as a Recognized Delegate by a majority of Governance Facilitators according to a public and consistently applied criteria.

### MIP61c2: Compensation Formula and Process

#### A Solution

Goal 1 can be addressed with a linear relationship or many different curves. Goal 3 can be addressed by using an exponential with a factor between 0 and 1 (exclusive). A factor of 0.5 results in quadratic funding. The idea is to distribute compensation proportional to the square root of the MKR weight. To achieve goal 2, we cap the maximum per-delegate compensation.

| Parameter | Math Symbol | Initial Value |
| --------- | :-----: | ----: |
| Threshold for a large delegate | T | 10k MKR |
| Exponential factor | q | 0.5 |
| Maximum annual compensation per delegate | C | 144k DAI |

The formula is `C*min(1,MKR^q/T^q)`.

In practice, the Governance Facilitators will calculate compensation for Recognized Delegates on a monthly basis, as such the formula becomes `(C*min(1,MKR^q/T^q))/12`.

* If a Recognized Delegate has greater than or equal to `T` MKR delegated to them, they will receive the maximum amount of compensation, `C`.
* If a Recognized Delegate has less than `T` MKR delegated them, they will receive an amount of compensation derived by the above formulae.

#### Performance Modifier

"Governance Facilitators track participation and communication metrics for each Recognized Delegate over a 120-day rolling window. For the purpose of calculating the Performance Modifier, we look at the minimum of the two metrics. For example, if a Recognized Delegate has 85% participation and 80% communication then the Performance Modifier is based on `min(85%, 80%) = 80%`. A few parameters are used to determine the effect of the Performance Modifier.

For Participation, a score of 100% would mean that a Delegate has voted in all possible polls over the shorter of 1) the previous 120 days, or 2) since becoming a Recognized Delegate. GovAlpha tracks Participation in Governance Polls and Executive Votes separately and also tracks a combined overall participation rating.

For Communication, GovAlpha tracks how Recognized Delegates have communicated their voting decisions. Recognized Delegates are rewarded with a higher score for providing reasoning for their voting decisions. For example, a score of 100% would mean a Recognized Delegate communicated all of their voting decisions AND gave reasons for reaching these decisions over the shorter of 1) the previous 120 days, or 2) since becoming a Recognized Delegate. On the other hand, a score of 50% would indicate a Recognized Delegate communicated their decisions but did not provide any reasoning for these decisions. Recognized Delegate are expected to communicate their vote within seven days of a Governance Poll concluding. For Executive Votes, a more lenient approach is taken as there may be valid reasons to delay voting on an Executive Vote, so it is expected that reasoning is communicated within two weeks of an Executive Vote being executed on-chain. Their scores for each vote are combined to give an overall communication rating.

| Parameter | Math Symbol | Initial Value |
| --------- | :-----: | ----: |
| Threshold for adequate performance | L | 75% |
| Threshold for good performance | H | 90% |
| Beginning compensation scalar | B | 40% |

- For less than `L`, the Recognized Delegate will receive no compensation.
- For `L` or above, the Performance Modifier starts at `B` and rises linearly to 100% for metrics of `H` and above.

This is demonstrated in the below graph:

![](https://github.com/makerdao/mips/blob/master/MIP61/modVsLowest.png)

These requirements and metrics may be adjusted in the future depending on the number of Recognized Delegates, the resources available to the Governance Facilitators, and feedback from the Recognized Delegates themselves.

#### Abstain Modifier

At the beginning of every month, the Governance Facilitators will check how many polls in the previous month have been voted with a non-abstaining choice. If the ratio of non-abstaining choices to total polls is >= 60%, the Recognized Delegate will have met the Abstain Modifier criteria and be eligible for compensation for that month. If the ratio is below 60%, the delegate will not be eligible for compensation for that month.

### MIP61c3: Payment Process

* The Governance Facilitators shall maintain a note of how much MKR was delegated to each Recognized Delegate each day.
* Compensation will be calculated on a monthly basis using the mean average of MKR delegated to each Recognized Delegate over the course of the month, using the formulae detailed in MIP61c2.
* Once calculated, a summary of the compensation for the Recognized Delegates will be published to the MakerDAO forum.
* Compensation for Recognized Delegates will be distributed by Executive Vote, the Governance Facilitators will aim to include these payments in the first Executive Vote of each calendar month.
* Recognized Delegates should confirm both the amount of compensation being paid, and the receiving address with the Governance Facilitators in the week leading up to the Executive Vote
* If a Recognized Delegate is not able to do this, that Recognized Delegate's compensation will not be included in the next Executive Vote and instead will be included in a future Executive Vote at a mutually agreeable time.

### MIP61c4: Accommodation for Delegate Contract Migration

This component addresses the situation when a Recognized Delegate intends to migrate from one delegate contract to another. The associated entity must inform governance 7 days in advance of the migration effective date and which contracts are affected. The new delegate contract cannot already be involved in a migration (e.g., two delegates merging into one). During a 30 day interim period, the old and new delegate contracts are regarded, for the purpose of compensation, as referring to the same entity and compensation is calculated using stats from both the old and new contracts. For example, MKR weight will be obtained by the sum of the MKR weight of the old and new contracts. Participation and communication stats will be calculated across both delegate contracts.

### MIP61c5: Examples

Suppose the parameters are set to their initial values. The effect of the Performance Modifier is `B+(1-B)(clamp(min(participation, communication),L,H)-L)/(H-L)`

With 100 MKR delegated, 95% Participation, and 95% Communication, the compensation is calculated as `C*min(1,100^q/10000^q)`. The Performance Modifier is 100% because `min(95%,95%) >= 90%`. This is `100% C*10/100` = 14 400 DAI per year.

With 6772 MKR delegated, 85% Participation, and 95% Communication, The Performance Modifier is `40%+(1-40%)(clamp(min(85%,95%),75%,90%)-75%)/(90%-75%)` simplifing to `40%+60%(85%-75%)/15%`. The compensation is calculated as `C*min(1,6772^q/10000^q)`. This is `80% C*82.29/100` = 94 797.6 DAI per year.

Compensation can be visualized by plotting the amount of MKR delegated against the compensation formula,

![](https://github.com/makerdao/mips/blob/master/MIP61/Rplot.png)

### MIP61c6: Modification of Parameters

The parameters that can be modified are:

- Threshold for a large delegate
- Exponential factor
- Maximum annual compensation per delegate
- Threshold for poor performance
- Threshold for adequate performance
- Beginning compensation scalar

Recognized Delegates are potentially conflicted in consideration of these proposals. There may be a temptation to approve increases in compensation and vote against decreases. Hence, a Signal Request is required to assess broader community sentiment and spotlight any positions on the MIP61c5 proposal staked out by Recognized Delegates. The Signal Request Poll must be posted at the start of the Frozen Period.

The Governance Facilitators will aim to perform a review of the above parameters on an annual basis. This will provide an objective review of these parameters and take into account changes in the amounts of MKR delegated, the number of active Recognized Delegates, as well as USD inflation to ensure that Recognized Delegates remain fairly compensated, whilst also ensuring good value for MKR holders. It is expected that this will occur in April to bring it in line with the annual GovAlpha CU budget submission.

MIP61c5 subproposals have the following parameters:

- **Requirements**: 7-day Signal Request Thread, passing with 51%. If the Signal Request fails, then the proposal does not proceed to the Governance Cycle.
- **Default Feedback Period**: 4 weeks
- **Frozen Period**: 1 week
- **Governance Cycle**: Monthly
