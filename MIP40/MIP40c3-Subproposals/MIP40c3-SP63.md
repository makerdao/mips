# MIP40c3-SP63: Events Core Unit MKR Budget (EVENTS-001)

## Preamble
```
MIP40c3-SP#: 63
Author(s): @Pon Jerry
Contributors: @hexonaut
Tags: core-unit, cu-events-001, budget, mkr-budget
Status:RFC
Date Applied: 2022-03-06
Date Ratified: 
```

## Sentence Summary

This sub-proposal defines the MKR compensation plan for the Events Core Unit (EVENTS-001).

## Paragraph Summary

The Events Unit MKR budget is derived from the Sustainable Ecosystem Scaling Core Unit (SES-001) MKR Budget structure discussed [here](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000). This is a 3-year vesting plan with a 1-year cliff vest.

The members of this Core Unit will take the start of the Feedback Period of this MIP (March 6, 2022) as the start date for the vesting schedule.

## Key Parameters


| Property | Value |
| -------- | -------- |
| MKR/USD Lock-in Price (New)    | Trailing 6-month average from March 6, 2022 |
|MKR/USD Lock-in Price |2,442 USD|
|MKR Price Floor|-30% ($1,709)|
|Vesting Period|3 years|
|Cliff Vest|1 year|
|Vesting Schedule|After cliff has expired, biannual MKR vesting|
|Vesting Interval|6 months|
|Manual Repricing|yes|
|Auto-Renewal|yes|
|MKR Expenditure Cap (Annual)|112.3 MKR|
|MKR Expenditure Cap (Total 3-Year)|336.9 MKR|




The MKR Expenditure Cap included in the table above covers the total vesting schedule of 3 years for the projected 2 FTEs.
### Current Estimated MKR Expenditure
The Estimated MKR Expenditure has been calculated using the formula given in the SES-001 MKR Incentive Plan Proposal, calculations are based on 2 FTEs and the compensation stated in the CU DAI budget. This would result in the vesting schedule below:



| Vesting Date | MKR Amount |
| -------- | -------- | 
| March 5, 2023     | 40.6    | 
|Sept 5, 2023| 20.3|
|March 5, 2024|20.3|
|Sept 5, 2024|20.3|
|March 5, 2025|20.3|
|**Total**|**121.8**|


Any changes to these amounts will be reported in our Monthly Budget Statements and reviewed by the budget auditors.
## Payment Implementation
As defined in MIP40c3-SPXX, the Monthly Budget Statement will contain the MKR vesting schedule. This schedule specifies when in the future MKR is vesting, and how much.

To keep the risk acceptable for Maker governance as well as for the team, the MKR is moved from the protocol to the contributors in stages:

Following the MKR vesting schedule, any MKR that is vesting in 6 months or less, will be included in the top-up transaction which is added to the executive vote. This will move the MKR from the protocol to the EVENTS-001 Operational Wallet.
* Core Unit multisig wallet address: "0x3D274fbAc29C92D2F624483495C0113B44dBE7d2"

When the MKR has vested, it is paid out to the contributor, either directly or through an intermediate payment processor.

Any excess MKR in the EVENTS-001 Operational Wallet will be returned to the protocol, following the monthly payment transactions.

This payment implementation makes no assumptions about the origin of the MKR. It can either be moved from the protocol’s treasury, newly minted, or obtained from another source.

The MKR that’s held by the EVENTS-001 Operational Wallet will not be used for voting, signalling, or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

EVENTS-001 may consider alternative payment flows compliant with DssVest if the standardized flow is compatible with the vesting schedule and the risk is deemed acceptable by the team.