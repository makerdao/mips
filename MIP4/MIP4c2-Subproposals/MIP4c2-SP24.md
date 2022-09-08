# MIP4c2-SP24: Amend Measurement Period For Delegate Participation Metrics

## Preamble

```
MIP4c2-SP#: 24
MIP to be amended: MIP61
Author(s): GFX Labs (@gfxlabs)
Contributors: @PaperImperium
Tags: mip-amendment
Status: Formal Submission
Date of Amendment Submission: 2022-07-29
Date of ratification: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip4c2-spxx-amend-measurement-period-for-delegate-participation-metrics/16904
```

## Specification

### Motivation

Delegate participation metrics are currently calculated on a lifetime basis. This can result in it being impractical for delegates with poor initial metrics to be rehabilitated into active members of governance, but still holding large amounts of MKR delegation. Additionally, due to the the long measurement period of current delegate metrics, delegates with a long history of participation can unfairly benefit from the current system by continuing to receive compensation without current participation.

This proposed amendment is to shorten the feedback loop for delegate participation, which is a key variable of their compensation calculation. It may result in more volatility in delegate earnings based on their recent participation, which is considered a feature.

## Amended Components

[MIP61c2](https://mips.makerdao.com/mips/details/MIP61#MIP61c2)

## Changes

> "Governance Facilitators track participation and communication metrics for each Recognized Delegate. For the purpose of calculating the Performance Modifier, we look at the minimum of the two metrics. For example, if a Recognised Delegate has 85% participation and 80% communication then the Performance Modifier is based on min(85%, 80%) = 80%. A few parameters are used to determine the effect of the Performance Modifier.
>
> For Participation, a score of 100% would mean that a Delegate has voted in all possible polls since they started their role as a Recognized Delegate. GovAlpha tracks Participation in Governance Polls and Executive Votes separately and also tracks a combined overall participation rating.
>
> For Communication, GovAlpha tracks how Recognized Delegates have communicated their voting decisions. Recognized Delegates are rewarded with a higher score for providing reasoning for their voting decisions. For example, a score of 100% would mean a Recognized Delegate communicated all of their voting decisions AND gave reasons for reaching these decisions. On the other hand, a score of 50% would indicate a Recognized Delegate communicated their decisions but did not provide any reasoning for these decisions. Recognized Delegate are expected to communicate their vote within seven days of a Governance Poll concluding. For Executive Votes, a more lenient approach is taken as there may be valid reasons to delay voting on an Executive Vote, so it is expected that reasoning is communicated within two weeks of an Executive Vote being executed on-chain. Their scores for each vote are combined to give an overall communication rating."

is altered to read (amendments in bold for clarity):

> "Governance Facilitators track participation and communication metrics for each Recognized Delegate **over a 120-day rolling window**. For the purpose of calculating the Performance Modifier, we look at the minimum of the two metrics. For example, if a Recognised Delegate has 85% participation and 80% communication then the Performance Modifier is based on min(85%, 80%) = 80%. A few parameters are used to determine the effect of the Performance Modifier.
>
> For Participation, a score of 100% would mean that a Delegate has voted in all possible polls **over the shorter of 1) the previous 120 days, or 2) since becoming a Recognized Delegate**. GovAlpha tracks Participation in Governance Polls and Executive Votes separately and also tracks a combined overall participation rating.
>
> For Communication, GovAlpha tracks how Recognized Delegates have communicated their voting decisions. Recognized Delegates are rewarded with a higher score for providing reasoning for their voting decisions. For example, a score of 100% would mean a Recognized Delegate communicated all of their voting decisions AND gave reasons for reaching these decisions **over the shorter of 1) the previous 120 days, or 2) since becoming a Recognized Delegate**. On the other hand, a score of 50% would indicate a Recognized Delegate communicated their decisions but did not provide any reasoning for these decisions. Recognized Delegate are expected to communicate their vote within seven days of a Governance Poll concluding. For Executive Votes, a more lenient approach is taken as there may be valid reasons to delay voting on an Executive Vote, so it is expected that reasoning is communicated within two weeks of an Executive Vote being executed on-chain. Their scores for each vote are combined to give an overall communication rating."

## Amendment Pull Request

[MIP61 amendment](https://github.com/makerdao/mips/pull/614)

## Relevant Information

- [MIP61](https://mips.makerdao.com/mips/details/MIP61)
- [Signal Request: Reset Delegation Metrics for Hasu](https://forum.makerdao.com/t/signal-request-reset-delegation-metrics-for-hasu/16533)
