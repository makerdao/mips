# MIP40c3-SP94: Strategic Finance MKR Rewards Plan (SF-001)

## Preamble

```
MIP40c3-SP#: 94
Author(s): @steakhouse (Steakhouse Financial)
Contributors:
Tags: core-unit, cu-sf-001, budget, mkr-budget, active
Status: Withdrawn
Date Applied: 2023-02-08
Date Ratified: TBD
Forum URL: https://forum.makerdao.com/t/mip40c3-sp93-modifying-strategic-finance-core-unit-budget-sf-001/19728
Ratification Poll URL:
Extra: This MIP has been withdrawn. See [this forum post](https://forum.makerdao.com/t/mip40c3-sp94-strategic-finance-mkr-rewards-plan-sf-001/19751/6).
```

## Sentence Summary
MIP40c3-SP94 adds the MKR Rewards Plan budget for the Strategic Finance Core Unit (SF-001) / Steakhouse Financial.

## Paragraph Summary
This proposal contains:

- Team MKR Rewards Plan
- Distribution Implementation

## Specification

### Motivation
The motivations for providing MKR Rewards to contributors are to:
1. Attract top talent
2. Provide a means to provide governance participation to deeply engaged contributors
3. Prevent premature departure of contributors prior to work product finalization

Amounts in the plan will be updated as soon as possible pending feedback from MKR tokenholders and delegates, or not at all if an alternative plan is implemented.


### Vesting Details
| Property |     Value |
|----------|----------|
|MKR/USD lock-in Price (New)|Trailing 6-month average|
|MKR/USD lock-in Price (OG)|MKR = $734.08 (8/8/22 - 2/8/23)|
|Vesting Period|3 years|
|Cliff Vest|    12 months|
|Vesting Schedule|After the cliff has expired, the monthly MKR amount vests every month
|Manual Repricing|yes, at a maximum discount of 30%|
|Auto-Renewal|yes|
|Early Distribution Clause| yes
|Estimated Max Total team MKR After 1 Year (7 FTE)|TBD|
|Estimated Max Total team MKR After 3 Years (7 FTE)|TBD|

**Early Distribution Clause:** As we expect to transition the activities to align with the End Game Plan, offboarding of the Core Unit will result in accrued MKR distributed to all participants who opt into the plan, audited by GovAlpha-001 and SES-001.

Manual repricing allows any contributor of SF-001 to calculate a new MKR/USD lock-in price using the trailing 6-month average. This ensures that contributors who join during a bull market aren’t penalized relative to new contributors who join later during a bear market. In order to prevent abuse, manual repricing will reset the 12-month cliff vest period.

On average, the team MKR vesting schedule yields TBD MKR per FTE per year, or TBD MKR in total per year.

### Payment Implementation
The Strategic Finance Core Unit (Steakhouse Financial) will leverage DssVest with a team level vesting schedule, similar to every CU with the exception of PE and GovAlpha, trackable through Makerburn.com. MKR will be allocated from the MKR treasury controlled by MakerDAO. Unallocated MKR will be returned to the DAO.

A DSSVest implementation will be created immediately after the approval of this MIP.
