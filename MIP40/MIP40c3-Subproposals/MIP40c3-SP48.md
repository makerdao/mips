# MIP40c3-SP48: Strategic Finance MKR Compensation (SF-001)

## Preamble

```
MIP40c3-SP#: 48
Author(s): Mark Phillips (@Aes)
Contributors:
Tags: core-unit, cu-sf-001, budget, mkr-budget, active
Status: Accepted
Date Proposed: 2021-12-07
Date Ratified: 2022-01-24
Forum URL: https://forum.makerdao.com/t/mip40c3-sp48-strategic-finance-unit-mkr-compensation-sf-001/12060
Ratification Poll URL: https://vote.makerdao.com/polling/QmZn66qt
Extra: Manual repricing has been triggered via [this forum post](https://forum.makerdao.com/t/mip40c3-sp48-strategic-finance-unit-mkr-compensation-sf-001/12060/11).
```

## Sentence Summary

MIP40c3-SP48 adds the MKR Incentive Plan budget for Core Unit SF-001: Strategic Finance.

## Paragraph Summary

This proposal contains:

- Team MKR Compensation Plan
- Payment Implementation

Our proposal is based on [“Alternative MKR Compensation Guidelines”](https://forum.makerdao.com/t/alternative-mkr-compensation-guidelines/9049) by @Aes, but it also uses elements from [“An (Alternative) MKR Compensation Plan”](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000) made by the SES Core Unit.

## Permanent Team MKR Compensation Plan

We used [“Alternative MKR Compensation Guidelines”](https://forum.makerdao.com/t/alternative-mkr-compensation-guidelines/9049) (currently a MIP in RFC phase) by myself, @Aes, and elements of SES [“An (Alternative) MKR Compensation Plan”](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000) to calculate MKR compensation rewards and distribution schedule for FS-001 members. Core Units contributors that have MKR compensation already approved through the [Real-World Finance Core Unit (RWF-001) MKR compensation budget](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP38.md) maintain the same MKR allocation and retroactive vesting dates, detailed below.


## Vesting Details

| Property | 	Value |
|----------|----------|
|MKR/USD lock-in Price (New)|Trailing 2-month average|
|MKR/USD lock-in Price (OG)|MKR = $2,605 (10/1/21 - 12/1/21)|
|Vesting Period|3 years|
|Cliff Vest|	12 months|
|Vesting Schedule|After the cliff has expired, the quarterly MKR amount vests every 3 months and is distributed on July/Oct/Jan/Apr 1st, depending on each individual full-time onboarding|
|Manual Repricing|yes|
|Auto-Renewal|yes|
|Estimated Max Total team MKR After 1 Year (4 FTE)|320|
|Estimated Max Total team MKR After 3 Years (4 FTE)|960|

\* _Note that this estimation is based on all 4 FTEs joining the Strategic Finance Core Unit on day 1. There are currently only 2 FTEs working for the Financial Strategy Core Unit which reduces the actual amount of MKR expended for SF-001 vesting (estimated currently at 160 MKR per year). If the MKR price increases significantly from current levels, the amount of MKR tokens allocated to new contributors will decrease._

Manual repricing allows any contributor of SF-001 to calculate a new MKR/USD lock-in price using the trailing 2-month average. This ensures that contributors who join during a bull market aren’t penalized relative to new contributors who join later during a bear market. In order to prevent abuse, manual repricing will reset the 12-month cliff vest period.

### Current Team MKR Vesting Schedule

|Date|MKR Total|
|--|--|
|April 2022|	80|
|July 2022|20|
|September 2022|80|
|October 2022|20|
|December 2022|20|
|January 2023|20|
|March 2023|20|
|April 2023|20|
|June 2023|20|
|July 2023|20|
|September 2023|20|
|October 2023|20|
|December 2023|20|
|January 2024|20|
|March 2024|20|
|April 2024|20|
|June 2024|20|
|September 2024|20|

### Two New Hires Forecasted Vesting Schedule

|Date|MKR Total|
|--|--|
|March 2023|160|
|June 2023|40|
|September 2023|40|
|December 2023|40|
|March 2024|40|
|June 2024|40|
|September 2024|40|
|December 2024|40|
|March 2025|40|

This covers the total vesting schedule of 3 years for the planned 4 FTEs.

On average, the team MKR vesting schedule yields 80 MKR per FTE per year, or 320 MKR in total per year.

## Payment Implementation

The Strategic Finance Core Unit will leverage DssVest with individual contributor vesting schedules. MKR payment for DSSVest #1 & #2 will be for the time the SF-001 contributors were in RWF-001. New hire MKR will be allocated from the 84,000.1 MKR treasury controlled by MakerDAO. Vesting schedule will be posted monthly for transparency. Unallocated MKR will be returned to the DAO.

Two DSSVest implementation will be created immediately after the approval of this MIP:

**DSSVest #1**

- Contributor: @Aes
- Wallet: 0xBC7fd5AA2016C3e2C8F0dBf4e919485C6BBb59e2
- Total MKR over the vesting plan: 80*3
- Duration: 3 years
- Start date: 2021-09-01
- Cliff date: 2022-09-01

**DSSVest #2:**

- Contributor: @SebVentures
- Wallet: 0xcc81578d163a04ea8d2eae6904d0c8e61a84e1bb
- Total MKR over the vesting plan: 80*3
- Duration: 3 years
- Start date: 2021-04-01
- Cliff date: 2022-04-01

**Payment:** based on predetermined MKR compensation schedule
**Asset type:** MKR
**Address:** 0x387Cde8598E1CBb297FDc5bAEbA5E5c5c2735344
