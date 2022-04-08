# MIP40C3-SP25: Risk Core Unit MKR Compensation (RISK-001)

## Preamble

```
MIP40c3-SP#: 25
Author(s): Primož Kordež
Contributors:  
Tags: core-unit, cu-risk-001, budget, mkr-budget, active
Status: Accepted
Date Proposed: 2021-08-11
Date Ratified: 2021-09-27
Ratification Poll URL: https://vote.makerdao.com/polling/QmUAXKm4?network=mainnet
Forum URL: https://forum.makerdao.com/t/mip40c3-sp25-risk-core-unit-mkr-compensation-risk-001/9788
```
## Sentence Summary

MIP40c3-SP25 adds the MKR Incentive Plan budget for Core Unit RISK-001: RISK.

## Paragraph Summary

This proposal contains:

* Retroactive MKR Compensation
* Team MKR Compensation Plan
* Payment Implementation

Our proposal is based on "Alternative MKR Compensation Guidelines" by @Aes but it also uses elements from “An (Alternative) MKR Compensation Plan” made by SES Core Unit. This proposal differs from other proposals, since it assumes one time retroactive MKR compensation payment for 2 Core Unit members, explained further.

## Retroactive MKR Compensation

Myself as Risk Core Unit Governance Facilitator and Marko Štemberger as Risk Core Unit Member have been working full-time for the DAO since April 2019, which covers the 2 year period before Risk Core Unit was established. Large majority of Maker’s risk-related work in this period was done by us. However our compensation was done through the grants programme and we missed out on all the MKR bonus compensation that the vast majority of Maker Foundation employees enjoyed.

As to why we weren’t employed by the Foundation to enjoy these extra benefits, the answer lies in us believing that Maker will eventually and much sooner become restructured to a fully decentralized DAO, losing all the ties with the Foundation. Also the Foundation hasn’t shown any indication or offered us employment, which made sense from both sides in order to pursue the path of total decentralization.

We don’t know any other members such as the two of us that have been passionately and independently executing high quality full-time work for Maker in a period of 2 years prior to Core Unit formation. The only other candidate to our knowledge who fulfils this criteria is @LongForWisdom.

Therefore, we propose a one time MKR compensation of 300 MKR, which on average translates to 75 MKR per person per year of independent work prior to Core Unit establishment. This amount is in line to what "Alternative MKR Compensation Guidelines" proposed to be an average yearly MKR compensation amount for Risk Core Unit members. The payment would be done without any vesting or cliff if this proposal potentially passes.

We bundled retroactive MKR compensation with the team MKR compensation plan, but we are prepared to adjust it during the RFC phase if the community feedback is overwhelmingly unsupportive.

## Permanent Team MKR Compensation Plan

We used "Alternative MKR Compensation Guidelines" by @Aes, currently as a MIP in RFC phase and elements of SES “An (Alternative) MKR Compensation Plan” to calculate MKR compensation rewards and distribution schedule for Risk Core Unit members.

The Risk Core Unit is proposing to apply a linear interpolation model to utilize salary to calculate the amount of MKR each individual will vest. This model has been proposed by the [SES Core Unit](https://drive.google.com/file/d/128sgsmMU8eXgRXpHZcA1gywUrv_FbGSg/view) with minor modifications. These modifications include a higher floor for intermediate and junior contributors as well as a shorter vesting period proposed in "Alternative MKR Compensation Guidelines". On average, payments per contributor are also in line with the "Alternative MKR Compensation Guidelines" proposed MKR averages based on the Risk Core Unit tier.

### Vesting Details

|Property|Value|
| --- | --- |
|MKR/USD lock-in Price (New)|Trailing 6 month average|
|MKR/USD lock-in Price (OG)|[MKR = $1,137 (09/22/20 - 03/22/21)](https://www.investing.com/crypto/maker/mkr-usd-historical-data)|
|Quarterly MKR Amount|Initial Annual Incentive Value (USD) / MKR/USD lock-in Price|
|Vesting Period|3 years|
|Cliff Vest|12 months|
|Vesting Schedule|After the cliff has expired, the Quarterly MKR amount vests every 3 months and is distributed on July/Oct/Jan/Apr 1st, depending on each individual full-time onboarding (CU was established on 22nd March 2021).|
|Manual Repricing|yes|
|Auto-Renewal|yes|
|Estimated Max Total team MKR After 1 Year (9 FTE)*|700|
|Estimated Max Total team MKR After 3 Years (9 FTE)*|2,100|

**Note that this estimation is based on all 9 FTEs joining the Risk Core Unit on day 1. There are currently only 7 FTEs working for the Risk Core Unit which reduces the actual amount of MKR expended for Risk Core Unit vesting (estimated currently at 580 MKR per year).*

Manual repricing allows any contributor of the Risk Core Unit to calculate a new MKR/USD lock-in price using the trailing 6 month average. This ensures that contributors who join during a bull market aren't penalized relative to new contributors who join later during a bear market. In order to prevent abuse, manual repricing will reset the 12 month cliff vest period.

## MKR Vesting Schedule

||MKR Total|
| --- | --- |
|October 2021*|300|
|April 2022|700|
|July 2022|175|
|October 2022|175|
|January 2023|175|
|April 2023|175|
|July 2023|175|
|October 2023|175|
|January 2024|175|
|April 2024|175|

**Retroactive MKR Compensation for 2 Risk Core Unit members.*

This covers the total vesting schedule of `3 years` for the planned `9 FTEs`.

On average and excluding retroactive MKR payment, the team MKR vesting schedule yields `77.78 MKR` per FTE per year, or 700 MKR in total per year.

## Payment Implementation

MKR compensation is based on Manual Budget Implementations, the Simple one and same as used for regular budget, or any other method achieving the same result at the discretion of the Governance Facilitators. Risk Core Unit may consider alternative payment flows compliant with [DssVest](https://forum.makerdao.com/t/mip-54-dssvest/8025) if the standardized flow is compatible with the vesting schedule. MKR payment is allocated from the 84,000.1 MKR treasury controlled by MakerDAO.

* Payment: based on predetermined MKR compensation schedule
* Asset type: MKR
* Address: 0x5d67d5B1fC7EF4bfF31967bE2D2d7b9323c1521c 
