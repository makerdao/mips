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
Forum URL: https://forum.makerdao.com/t/mip40c3-sp54-techops-core-unit-mkr-budget
```

## Sentence Summary

This subproposal defines the MKR compensation plan for the TechOps Core Unit (TOCU-001).

## Paragraph Summary

The TechOps Core Unit supports the Sustainable Ecosystem Scaling Core Unit (SES-001) MKR Budget structure [discussed here](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000). This is a 3-year vesting plan with 1-year cliff vest.

The members of this Core Unit will take the start of the Feedback Period of this MIP (December 8, 2021) as the start date for the vesting schedule.

## Key Parameters

|Property|Value|
|--|--|
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

The **Estimated MKR Expenditure** is our best guess of how much MKR will be used with the current team configuration with **3.4 FTEs**. This would result in the vesting schedule below:

||Vesting Date|MKR Amount|
|--|--|
|December 8, 2022|257.31|
|June 8, 2023|128.65 |
|December 8, 2023|128.65 |
|June 8, 2024|128.65 |
|December 8, 2024|128.65 |
|**Total**|**771.92**|

- On average, this would yield **75.68 MKR** per FTE per year.
- Any changes to these amounts will be reported in our [Monthly Budget Statements](https://github.com/makerdao-ses/transparency-reporting/) and reviewed by the budget auditors.

Reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure Cap:

- New hires
- A compensation raise for a member of the team
- Repricing (and resetting) the program, in the case of bear market
- Price floor: -30%. If any Contributor chose to reprice their program, they could do it at a maximum of -30% from the set MKR price.

### Payment Implementation
		
![Wallet setup](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-54/wallet-setup.png)

- As defined in [MIP40c3-SP53](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP53.md) and in the [Monthly Budget Statement](https://github.com/MakerOps/tocu-transparency-reporting) will contain the MKR vesting schedule. This schedule specifies when in the future MKR is vesting, and how much.
- To keep the risk acceptable for Maker governance as well as for the team, the MKR is moved from the protocol to the contributors in stages:
  - Following the MKR vesting schedule, any MKR that is vesting in 6 months or less, will be included in the top-up transaction which is added to the executive vote. This will move the MKR from the protocol to the `TOCU Auditors Wallet`, which then acts as an escrow wallet.
  - Following the MKR vesting schedule, after review and approval by the auditors, any MKR that is vesting in 3 months or less, will be included in the monthly top-up transaction that moves funds from the `TOCU Auditors Wallet` to the `TOCU Operational Wallet`.
  - When the MKR has vested, it is paid out to the contributor, either directly or through an intermediate payment processor.
- Any excess MKR in the `TOCU Auditors Wallet` or the `TOCU Operational Wallet` will be returned to the protocol, following the monthly payment transactions.

This payment implementation makes no assumptions about the origin of the MKR. It can either be moved from the protocol’s treasury, newly minted, or obtained from another source.

The MKR that’s held by the `TOCU Auditors Wallet` and the `TOCU Operational Wallet` will not be used for voting, signaling, or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

TOCU may consider alternative payment flows compliant with [DssVest](https://forum.makerdao.com/t/mip-54-dssvest/8025) if the standardized flow is compatible with the vesting schedule and that the risk is deemed acceptable by the team.