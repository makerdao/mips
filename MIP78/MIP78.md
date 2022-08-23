# MIP78: Recognized Delegate DAI Compensation

## Preamble

```
MIP#: 78
Title: Recognized Delegate DAI Compensation
Author(s): @Patrick_J, @psychonaut
Contributors: @prose11, @LongForWisdom, @Gala
Tags: delegates, mip-set, delegates-mip-set, process, delegate-compensation
Type: Process
Status: RFC
Date Proposed: 2022-07-29
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP77
Replaces: MIP61
Forum URL: https://forum.makerdao.com/t/mip78-recognized-delegate-dai-compensation/16906
Ratification Poll URL:
```
## Note

This MIP is intended to be voted on as a MIP Set along with:

* [MIP77: Delegates in the Maker Protocol](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905).
* [MIP79: Recognized Delegate MKR Compensation](https://forum.makerdao.com/t/mipzz-recognized-delegate-mkr-compensation/16907).

It is recommended that all three MIPs are read to understand the totality of the changes being proposed.

## Sentence Summary

MIP78 defines the Maker Protocol's process to award DAI compensation to Recognized Delegates.

## Paragraph Summary

MIP78 defines the Maker Protocol's process to award DAI compensation to Recognized Delegates. Governance Facilitators will compute and send the compensation to Recognized Delegates starting from the MIP ratification date, with quarterly payments. These payments will be made in dedicated Executive Votes.

## Component Summary

**MIP78c1: Definitions**
MIP78c1 defines key terms.

**MIP78c2: Compensation Formula and Initial Parameters**
MIP78c2 defines the formula for calculating Recognized Delegate DAI compensation.

**MIP78c3: Initial Parameters**
MIP78c3 defines the initial parameters that will be applied if this MIP is ratified.

**MIP78c4: Compensation Process and Distribution**
MIP78c4 describes the process for executing payments to Recognized Delegates.

**MIP78c5: Accommodation for Delegate Contract Migration**
MIP78c5 outlines how the process of Recognized Delegate DAI compensation will change during the contract migration period.

**MIP78c6: Modification of Parameters**
MIP78c6 is a process component describing changes to the DAI compensation parameters for Recognized Delegates.

## Motivation

**Why should we pay Recognized Delegates?**

The Maker Protocol compensates Recognized Delegates to incentivize their participation in the system. In return, the Maker Protocol receives a group of individuals incentivized to study proposals and cast votes while also communicating their voting decisions.

This serves a dual purpose for the Protocol:
1. It promotes the security of the Maker Protocol by incentivizing consistent support of the hat. If more MKR is securing the hat, the Maker Protocol is more secure.
2. It promotes a feedback loop when Recognized Delegates are incentivized to provide the reasoning for their votes. This not only encourages and stimulates discussion and debate, which can lead to more robust proposals as a result, but it also provides proposal-authors with actionable feedback, potentially allowing them to amend a failed proposal so that it takes on an acceptable form.

Vote outcomes are primarily determined by how well voters are informed. As Recognized Delegates hold a great deal of voting weight, MKR holders are strongly motivated to encourage Recognized Delegates to be as informed as possible and deliberate on Governance questions in depth. Recognized Delegates should be encouraged to discuss proposals with all stakeholders to gain the broadest possible perspective on the questions presented before them to decide. Compensation will help free Recognized Delegates from some of their other responsibilities. For outstanding Recognized Delegates, a secondary goal of compensation is to retain talent and prevent poaching by competing protocols or businesses.

**Why do metrics need to be taken into account for compensation?**

Recognized Delegate DAI compensation is based on the Recognized Delegate Metrics defined in [MIP77c5](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905#mipxxc5-recognized-delegate-metrics-25).

Participation in on-chain voting is one of the most crucial aspects of the Recognized Delegate role. Through this process, they can manifest the voting power that has been entrusted to them by MKR holders.

By communicating the reasoning behind their voting decisions, Recognized Delegates allow delegators and prospective delegators to observe their thought processes.

Assume Recognized Delegates were compensated purely based on the amount of MKR delegated. In this scenario, without any form of qualification for compensation, any MKR holder could deploy a delegate contract and farm DAI from the Maker Protocol for minimal effort.

Similarly, if only participation is measured, a Recognized Delegate could simply vote "Abstain" or "Option 1" on all polls and receive compensation. Requiring communication and reasoning behind voting decisions removes incentives for Recognized Delegates who want to farm DAI for minimal effort, as well as producing social pressure to display cogent reasoning behind votes.

**What goals form the basis of this compensation system?**

- Recognized Delegate DAI compensation should be positively correlated with MKR weight.
- The compensation formula should discourage zero-sum thinking among Recognized Delegates. One Recognized Delegate's compensation should be as independent as possible from another Recognized Delegate's compensation. This would not be achievable with a shared pool system.
- Compensation should be positively skewed toward Recognized Delegates with smaller MKR weight to encourage recruitment of new Recognized Delegates, allowing them to be bootstrapped into the system.
- There should be a cap on the maximum DAI compensation per delegate to prevent excessive compensation from being paid to Recognized Delegates. This threshold should be high enough to incentivize Recognized Delegates to actively seek out MKR holders to delegate to them, rather than relying on attracting a moderate amount of delegated MKR. The cap may also be important for MKR delegators who wish to delegate but do not want to increase the total Recognized Delegate compensation. If delegating always increases the total Recognized Delegate compensation, then potential delegators might hesitate to delegate.
- Recognized Delegates who can attract large amounts of delegated MKR should receive enough compensation that they have the option to hire an assistant(s). This will allow them to keep abreast of Governance Proposals in the Maker Protocol, which is critical given that they have the highest MKR voting weight.
- The system should allow for and appropriately compensate Recognized Delegates acting as part of a team or group, and not just be geared toward single individuals.
- There should be an overall cap on the amount of DAI that can be paid out to Recognized Delegates to protect the DAO and MKR holders from excessive expense.

**Why a new MIP, rather than amending MIP61?**

This MIP Set splits the content of MIP61 between two separate MIPs, includes marked changes to the amounts of compensation available for Recognized Delegates, and switches the metric period for calculating compensation from lifetime to a rolling three-month basis. It switches the payment cadence from monthly to quarterly and introduces a provision for paying Recognized Delegate DAI compensation in dedicated Executive Votes. These significant changes make a new MIP more appropriate than an amendment, and consequently, the passage of this MIP set will make MIP61 obsolete.

## Specification / Proposal Details

### MIP78c1: Definitions

* **Recognized Delegate:** Any delegate that meets the requirements defined in [MIP77c2](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905/1#mipxxc2-becoming-a-recognized-delegate-15).
* **Max Compensated MKR (MKR<sub>MAX</sub>):** The maximum amount of delegated MKR for which a Recognized Delegate will be compensated. MKR delegated above this amount will not increase DAI compensation.
* **Concentration (C\):** The concentration of compensation towards larger Recognized Delegates.
* **Max Compensation (DAI<sub>MAX</sub>):** The maximum amount of DAI compensation which a Recognized Delegate can receive for a given month.
* **Minimum Performance Threshold (PERF<sub>MIN</sub>):** The theshold of performance below which Recognized Delegates are not at all compensated.
* **Good Performance Threshold (PERF<sub>GOOD</sub>):** The theshold of performance below which Recognized Delegates are not fully compensated.
* **Minimum Performance Multiplier (PERF<sub>MULT</sub>):** The minimum multiplier that applies to Recognized Delegates when they drop below the good performance threshold.
* **Delegated MKR (MKR<sub>DEL</sub>):** The amount of MKR delegated to the Recognized Delegate.
* **Max Total Payout (TOTAL<sub>MAX</sub>):** The maximum amount of total DAI that will be paid out to Recognized Delegates by the Maker Protocol in a month.
* **Payout Reduction (DAI<sub>CUT</sub>):** The reduction to Recognized Delegate pay that is applied in a month if TOTAL<sub>MAX</sub> is exceeded.
* **Monthly DAI (DAI<sub>COMP</sub>):** The amount of monthly DAI compensation for a Recognized Delegate.

### MIP78c2: Compensation Formula

#### Calculations

To calculate how much MKR was delegated to a Recognized Delegate over a month, a daily snapshot of MKR delegated to each Recognized Delegate will be taken. Then, the Governance Facilitators will take the mean average for each Recognized Delegate over the month. MKR values above the Max Compensated MKR (MKR<sub>MAX</sub>) will not be included in this calculation.

The performance thresholds listed refer to the Recognized Delegate metrics defined in [MIP77c5](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905#mipxxc5-recognized-delegate-metrics-25). The metrics used for calculating Recognized Delegate compensation reference the most recent three-month period, and the lower of the two metrics over this period is used. So, if over the last three months a Recognized Delegate has a Participation metric of 80% and a Communication metric of 90%, 80% will be the value used.

A Performance Multiplier is applied to Recognized Delegate's DAI compensation. The following principles are used based on their lowest metric:

* For less than PERF<sub>MIN</sub>, the Performance Multiplier will be 0. No compensation will be forthcoming.
* For greater than or equal to PERF<sub>MIN</sub>, the Performance Modifier starts at PERF<sub>MULT</sub> and rises linearly to 100% for metrics of PERF<sub>GOOD</sub> and above.

This is demonstrated in the following graph:

![](https://github.com/makerdao/mips/blob/master/MIP78/mod_vs_low.png)

The following formula calculates a Recognized Delegate's entitlement to compensation.

$DAI_{COMP} = DAI_{MAX}*min(1, {(MKR_{DEL})^C \over (MKR_{MAX})^C}) * PerformanceMultiplier$

#### Maximum Total Payout

It the sum of DAI<sub>COMP</sub> for all Recognized Delegates exceeds the Max Total Payout (TOTAL<sub>MAX</sub>) parameter, then the Payout Reduction (DAI<sub>CUT</sub>) multiplier will be applied at a flat-rate across all Recognized Delegates.

The formula to calculate DAI<sub>CUT</sub> is as follows:

$DAI_{CUT} = 1-(\frac{\sum_{i=1}^{\infty}DAI_{COMP} - TOTAL_{MAX}}{\sum_{i=1}^{\infty}DAI_{COMP}})$

An individual Recognized Delegate's compensation will then be calculated as:

$DAI_{COMP} = DAI_{MAX}*min(1, {(MKR_{DEL})^C \over (MKR_{MAX})^C}) * Performance Multiplier * DAI_{CUT}$

If the monthly payments to Recognized Delegates are approaching or exceeding the Max Total Payout this should be considered by the Community as a trigger to re-assess the parameters for Recognized Delegate DAI compensation.

**Example**

* $TOTAL_{MAX} = 1,000,000$
* $\sum_{i=1}^{\infty} DAI_{COMP} = 1,100,000$
* $DAI_{CUT} = 1 - (100,000/1,100,000) = 0.91$

Therefore, all Recognized Delegates' compensation would be multiplied by 0.91 - a 9% reduction.

### MIP78c3: Initial Parameters

The following are the parameters that will be instituted if this MIP is ratified:

* **Max Compensated MKR (MKR<sub>MAX</sub>):** 30,000 MKR.
* **Concentration (C\):** 0.6
* **Max Compensation (DAI<sub>MAX</sub>):** 25,000 DAI.
* **Minimum Performance Threshold (PERF<sub>MIN</sub>):** 75%.
* **Good Performance Threshold (PERF<sub>GOOD</sub>):** 90%.
* **Minimum Performance Multiplier (PERF<sub>MULT</sub>):** 40%.
* **Max Total Payout (TOTAL<sub>MAX</sub>):** 250,000 DAI per month (3 million DAI annualized).

#### Effects Compared to MIP61

These parameter changes have the following effects compared to the parameters in MIP61:

* Max Compensation has been raised from 12,000 to 25,000 DAI. Annualized, this is an increase from 144,000 to 300,000 DAI.
* However, it has become harder to reach the maximum value, as Max Compensated MKR has increased to 30,000 MKR, compared to 10,000 MKR under MIP61.
* The skew to more minor Recognized Delegates remains but has been made smaller by changing the Concentration from 0.5 to 0.6.
* The inflection point where a Recognized Delegate earns more under MIP78 compared to MIP61 is 4,733 delegated MKR.

The changes can be seen in the following graph:
![](https://github.com/makerdao/mips/blob/master/MIP78/formula.png)

The following table demonstrates the changes in compensation amounts that a group of hypothetical Recognized Delegates would experience between the two MIPs. For simplicity, assume that all Recognized Delegates in this example have both metrics above 90%:

| Delegates | MKR Delegated | MIP61 Monthly Comp (DAI) | MIP78 Monthly Comp (DAI) | Change (DAI) | MIP61 DAI per MKR Delegated | MIP78 DAI per MKR Delegated |
|---|---|---|---|---|---|---|
| Delegate 1 | 30,000 | 12,000 | 25,000 | 13,000 | 0.40 | 0.83 |
| Delegate 2 | 25,000 | 12,000 | 22,409 | 10,409 | 0.48 | 0.90 |
| Delegate 3 | 20,000 | 12,000 | 19,601 | 7,601 | 0.60 | 0.98 |
| Delegate 4 | 15,000 | 12,000 | 16,494 | 4,494 | 0.80 | 1.10 |
| Delegate 5 | 10,000 | 12,000 | 12,932 | 932 | 1.20 | 1.29 |
| Delegate 6 | 5,000 | 8,485 | 8,532 | 47 | 1.70 | 1.71 |
| Delegate 7 | 3,000 | 6,573 | 6,280 | -293 | 2.19 | 2.09 |
| Delegate 8 | 1,000 | 3,795 | 3,248 | -547 | 3.80 | 3.25 |
| Delegate 9 | 750 | 3,286 | 2,733 | -553 | 4.38 | 3.64 |
| Delegate 10 | 500 | 2,683 | 2,143 | -540 | 5.37 | 4.29 |
| Delegate 11 | 250 | 1,897 | 1,414 | -483 | 7.59 | 5.66 |
| Delegate 12 | 100 | 1,200 | 816 | -384 | 12 | 8.16 |
| Delegate 13 | 10 | 379 | 205 | -174 | 37.9 | 20.50 |

### MIP78c4: Compensation Process and Distribution

The Governance Facilitators are responsible for calculating Recognized Delegate compensation every month. Once calculated, the Governance Facilitators will publish a summary of the compensation for the Recognized Delegates on the MakerDAO forum.

Compensation for Recognized Delegates will be distributed by Executive Vote. These Executive Votes will take place quarterly, in January, April, July, and October.

Executive Votes containing Recognized Delegate DAI compensation are not permitted to include any other changes to the Maker Protocol. This is to prevent a conflict of interest where Recognized Delegates are incentivized to support an Executive Vote they would otherwise have opposed. An exception is setting up MKR Vesting streams to Recognized Delegates as defined in [MIP79: Recognized Delegate MKR Compensation](https://forum.makerdao.com/t/mipzz-recognized-delegate-mkr-compensation/16907), which may be bundled with Recognized Delegate DAI compensation.

As with any other distribution of funds through the Executive Vote process, Recognized Delegates should confirm the amount of compensation being paid and the receiving address with the Governance Facilitators in the week leading up to the Executive Vote. If a Recognized Delegate cannot do this, that Recognized Delegate's compensation will not be included in the next Executive Vote and instead will be included in a future Executive Vote at a mutually agreeable time. These catch-up payments may be bundled with other proposals.

### MIP78c5: Accommodation for Delegate Contract Migration

When a Recognized Delegate intends to migrate from one delegate contract to another the following points should be considered:
* The associated entity should inform the Community the effective migration date no fewer than seven days before and which contracts are affected.
* The new delegate contract cannot already be involved in a migration (e.g., two delegates merging into one).
* During a 30-day interim period, the old and new delegate contracts are regarded for compensation as referring to the same entity.
* Compensation is calculated using stats from the old and new contracts. For example, MKR weight will be obtained by the sum of the MKR weight of the old and new contracts. Participation and communication stats will be calculated across both delegate contracts.

### MIP78c6: Modification of Compensation Parameters

The parameters that Maker Governance can modify are:

* **Max Compensated MKR (MKR<sub>MAX</sub>):** The maximum amount of delegated MKR for which a Recognized Delegate will be compensated. MKR delegated above this amount will not increase DAI compensation.
* **Concentration (C\):** The concentration of compensation towards larger Recognized Delegates.
* **Max Compensation (DAI<sub>MAX</sub>):** The maximum amount of DAI compensation which a Recognized Delegate can recieve for a given month.
* **Minimum Performance Threshold (PERF<sub>MIN</sub>):** The theshold of permformance below which Recognized Delegates are not at all compensated.
* **Good Performance Threshold (PERF<sub>GOOD</sub>):** The theshold of performance below which Recognized Delegates are not fully compensated.
* **Minimum Performance Multiplier (PERF<sub>MULT</sub>):** The minimum multiplier that applies to Recognized Delegates when they drop below the good performance threshold.
* **Max Total Payout (TOTAL<sub>MAX</sub>):** The maximum amount of total DAI that will be paid out to Recognized Delegates by the Maker Protocol in a month.
* **Payout Reduction (DAI<sub>CUT</sub>):** The reduction to Recognized Delegate pay that is applied in a month if TOTAL<sub>MAX</sub> is exceeded.

Recognized Delegates are potentially conflicted in consideration of these proposals. For example, there may be a temptation to approve increases in compensation and vote against decreases. Hence, a Signal Request is required to assess broader Community sentiment and spotlight any positions on the MIP78c6 subproposal staked out by Recognized Delegates. The Signal Request Poll must be posted at the start of the Frozen Period.

The Governance Facilitators will aim to perform a review of the above parameters on an annual basis. This will provide an objective assessment of these parameters and consider changes in the amounts of MKR delegated, the number of active Recognized Delegates, and USD inflation to ensure that Recognized Delegates remain fairly compensated whilst also providing good value for MKR holders.

MIP78c6 subproposals have the following parameters:

- **Requirements**: 7-day Signal Request Thread, passing with >50% of non-abstain votes. If the Signal Request fails, the proposal does not proceed to the Governance Cycle.
- **Default Feedback Period**: 4 weeks
- **Frozen Period**: 1 week
- **Governance Cycle**: Monthly
