# MIP40c3-SP72: Lending Oversight Core Unit MKR Budget (LOVE-001)

## Preamble

```
MIP40c3-SP#: 72
Author(s): @luca_pro
Contributors: @wouter, @Juan, @Retro
Tags: core-unit, cu-love-001, budget, mkr-budget
Status: Formal Submission
Date Proposed: 2022-05-11
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip40c3-sp72-lending-oversight-core-unit-mkr-budget/15104
```

## Sentence Summary

This subproposal defines the MKR compensation plan for the Lending Oversight Core Unit (LOVE-001).

## Paragraph Summary

The Lending Oversight Core Unit supports the Sustainable Ecosystem Scaling Core Unit (SES-001) MKR Budget structure [discussed here](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000). This is a 3-year vesting plan with 1-year cliff vest. Overall, this proposal would commit a maximum of 1,292.28 MKR to LOVE-001 contributors, covering MKR compensation for the Core Unit from its inception. This is approximately 63.47 MKR/ FTE/ year. Contributors **do not** forfeit their vesting upon leaving LOVE, providing that their departure is a smooth transition and there have been no serious ethical breaches.

The LOVE Core Unit Facilitator has been working under the incubation program of SES since January 1 of 2022. The Facilitator of this Core Unit will take that as the start date for their vesting schedule. One Core Unit contributor is expected to be hired during the formal submission, and voting phase of this MIP. They will use the start of the Feedback Period of this MIP (May 8, 2022) as the start date for their vesting schedule.

## Parameters

|Property|Value|
|--|--|
|MKR/USD Lock-in Price (1-Jan-22)<br>MKR/USD Lock-in Price (8-May-22)|$2,832<br>$2,192|
|MKR Price Floor (1-Jan-22)<br>MKR Price Floor (8-May-2022)|-30%($1,982)<br>-30% ($1,534)|
|Vesting Period|3 years|
|Cliff Vest|1 year|
|Vesting Schedule|After cliff has expired, biannual MKR vesting|
|Vesting Interval|6 months|
|Manual Repricing|yes|
|Auto-Renewal|yes|
|MKR Expenditure Cap (Annual)|430.76 MKR|
|MKR Expenditure Cap (Total 3-Year)|1,292.28 MKR|

The **MKR Expenditure Cap** included in the table above covers the total vesting schedule of 3 years for the projected **4.0 FTEs**, including raises and repricing.

## Current Estimated MKR Expenditure

The **Estimated MKR Expenditure** is our best guess of how much MKR will be used with the current team configuration with **2.0 FTEs** - with the highest seniority. This would result in the vesting schedule below:

|Vesting Date|MKR Amount|
|--|--|
|H1 2023|221.95|
|H2 2023|110.97|
|H1 2024|110.97|
|H2 2024|110.97|
|H1 2025|110.97|
|**Total**|**665.84**|

- On average, this would yield **110.97 MKR** per FTE per year; this level is skewed by the elevated seniority of the current members - with the CU at full-capacity, average MKRs per head would amount to 63.47
- Any changes to these amounts will be reported in our [Monthly Budget Statements](https://github.com/MakerDAO-LOVE-001/transparency-reporting) and reviewed by the budget auditors.

Reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure Cap:

- New hires
- A compensation raise for a member of the team
- Repricing (and resetting) the program, in the case of bear market
- Price floor: -30%. If any Contributor chose to reprice their program, they could do it at a maximum of -30% from the set MKR price.

## Budget Implementation

This payment implementation is based on the [SES MKR budget proposal](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP17.md).

- Payment of the MKR tokens will follow the same flow as described in the original [LOVE MIP40c3-SP71 DAI budget]https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP71.md).

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP72/diagram.png)

- As defined above and in [MIP40c3-SP71](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP71.md), the Monthly Budget Statement will contain the MKR vesting schedule. This schedule specifies when in the future MKR is vesting, and how much.
- To keep the risk acceptable for Maker governance as well as for the team, the MKR is moved from the protocol to the contributors in stages:
  - Following the MKR vesting schedule, any MKR that is vesting in 6 months or less, will be included in the top-up transaction which is added to the executive vote. This will move the MKR from the protocol to the `LOVE-001 Auditors Wallet`, which then acts as an escrow wallet.
  - Following the MKR vesting schedule, after review and approval by the auditors, any MKR that is vesting in 3 months or less, will be included in the monthly top-up transaction that moves funds from the `LOVE-001 Auditors Wallet` to the `LOVE-001 Operational Wallet`.
  - When the MKR has vested, it is paid out to the contributor, either directly or through an intermediate payment processor.
- Any excess MKR in the `LOVE-001 Auditors Wallet` or the `LOVE-001 Operational Wallet` will be returned to the protocol, following the monthly payment transactions.

This payment implementation makes no assumptions about the origin of the MKR. It can either be moved from the protocol’s treasury, newly minted, or obtained from another source.

The MKR that’s held by the `LOVE-001 Auditors Wallet` and the `LOVE-001 Operational Wallet` will not be used for voting, signaling, or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

LOVE-001 may consider alternative payment flows compliant with [DssVest](https://github.com/makerdao/mips/blob/master/MIP54/MIP54.md) if the standardized flow is compatible with the vesting schedule and that the risk is deemed acceptable by the team.
