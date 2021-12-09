# MIP40c3-SP54: TechOps Core Unit MKR Budget

## Preamble 

```
MIP40c3-SP: #54
Author(s): @simonkp
Contributors: @lukaszb, @wouter
Tags: core-unit, cu-tocu-001, budget, mkr-budget
Status: RFC
Date Applied: 2021-12-08
Date Ratified: YYYY-MM-DD
```

## Sentence Summary

This subproposal defines the MKR compensation plan for the TechOps Core Unit (TOCU-001).

## Paragraph Summary

The TechOps Core Unit supports the Sustainable Ecosystem Scaling Core Unit (SES-001) MKR Budget structure [discussed here](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000). This is a 3-year vesting plan with 1-year cliff vest.

The members of this Core Unit will take the start of the Feedback Period of this MIP (December 8, 2021) as the start date for the vesting schedule.

## Key Parameters

|Property|Value|
|MKR/USD Lock-in Price (New)|Trailing 6 month average from December 8, 2021|
|MKR/USD Lock-in Price (OG)|2,852.87 USD|
|MKR Price Floor|-30% ($1,997)|
|Vesting Period|3 years|
|Cliff Vest|1 year|
|Vesting Schedule|After cliff has expired, biannual MKR vesting|
|Vesting Interval|6 months|
|Manual Repricing|yes|
|Auto-Renewal|yes|
|MKR Expenditure Cap (Annual)|686.05 MKR|
|MKR Expenditure Cap (Total 3-Year)|2,058.15 MKR|

The **MKR Expenditure Cap** included in the table above covers the total vesting schedule of 3 years for the projected **5.7 FTEs**, including raises and repricing.

## Current Estimated MKR Expenditure

The **Estimated MKR Expenditure** is our best guess of how much MKR will be used with the current team configuration with **4.2 FTEs**. This would result in the vesting schedule below:

|Vesting Date|MKR Amount|
|--|--|
|December 8, 2022|321.89|
|June 8, 2023|160.95|
|December 8, 2023|160.95|
|June 8, 2024|160.95|
|December 8, 2024|160.95|
|**Total**|**965.67**|

- On average, this would yield **76.64 MKR** per FTE per year.
- Any changes to these amounts will be reported in our [Monthly Budget Statements](https://github.com/makerdao-ses/transparency-reporting/) and reviewed by the budget auditors.

Reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure Cap:

- New hires
- A compensation raise for a member of the team
- Repricing (and resetting) the program, in the case of bear market
- Price floor: -30%. If any Contributor chose to reprice their program, they could do it at a maximum of -30% from the set MKR price.

### Payment Implementation

The budget implementation will follow standard best practices as recommended by the SES Core Unit and will involve a setup with an Auditor wallet and an Operational Wallet. The details will be added ASAP.