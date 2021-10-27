# MIP40c3-SP44: Adding Sidestream Auction Services Core Unit MKR Budget - SAS-001

## Preamble

```
MIP40c3-SP#: 44
Author(s): @danik
Contributors: @BracketJohn, @lukass, @builderman, @wouter, @juan, @Petru_Catana, @lollike, @Njoku_Emmanuel
Tags: core-unit, cu-sas-001, budget, mkr-budget
Status: RFC
Date Applied: <2021-10-06>
Date Ratified: <yyyy-mm-dd>  
Forum URL: https://forum.makerdao.com/t/mip40c3-sp44-adding-sidestream-auction-services-core-unit-mkr-budget-sas-001/10802/2
```

## Sentence Summary

MIP40c3-SP44 adds the MKR Incentive Plan budget for SAS-001: Sidestream Auction Services Core Unit.

## Paragraph Summary

MIP40c3-SP44 adds the MKR Incentive Plan budget for SAS-001: Sidestream Auction Services Core Unit. It contains:

* Total MKR Expenditure Cap
* Estimated MKR Expenditure (based on the current team)
* Escrow Wallet mechanism

The Sidestream Auction Services Core Unit supports the Sustainable Ecosystem Scaling Core Unit (SES-001) and Oracles Core Unit (ORA-001) proposal for MKR Vesting.

MKR incentives have been determined based on the [Program discussed here](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000). This is a 3-year vesting plan with 1-year cliff vest.

## Specification

### Commitment Date

The SAS Core Unit has been working under the incubation program of the SES since **21st June of 2021**. The members of this core unit will take that as the start date for the vesting schedule.

### Total MKR Expenditure Cap

The total MKR Expenditure will not exceed *731.3859 MKR*.

This covers the entire *3 years* plan for *3.5 FTEs*.

### Estimated MKR Expenditure

The Estimated MKR Expenditure is our best guess of how much MKR will be used with the current team configuration.

Reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure Cap:

* A raise for a member of the team
* New hires
* Repricing (and resetting) the program, in the case of bear market

*Price floor: -30%*. If any Contributor chose to reprice their program, they could do it at a maximum of -30% from the set MKR price.

#### Permanent Team Forecast

For the permanent team, assuming the team configuration remains the same as today, this would result in the vesting schedule below.

|Date|Amount|
| --- | --- |
|December 21, 2021|0|
|June 21, 2022|243.7953|
|December 21, 2022|121.89765|
|June 21, 2023|121.89765|
|December 21|121.89765|
|June 21, 2024|121.89765|
|Total|731.3859|

This covers the total vesting schedule of *3 years* for the current *3.5 FTEs*.

On average, this yields *69.6558 MKR* per FTE per year.

Any changes to these amounts will be reported and reviewed by our budget auditors.

#### Parameters

|Parameter|Value|
| --- | --- |
|MKR/USD lock-in Price|MKR = $2604.72|
|MKR Price Floor|-30%|
|Vesting Period|3 years|
|Cliff Vest|12 months|
|Vesting Schedule|After cliff has expired, biannual MKR amount|
|Vesting Interval|6 months|
|Manual Repricing|yes|
|Auto-Renewal|yes|

### Payment Implementation

This payment implementation is based on the [SES MKR budget proposal](https://forum.makerdao.com/t/mip40c3-sp17-sustainable-ecosystem-scaling-core-unit-mkr-budget-ses-001/8043)

![|624x141](upload://bE2jZZ2i4a8sM5uWRJPmcVHeFaM.png)

	* The [Monthly Budget Statement](https://github.com/makerdao-sas/transparency-reporting/tree/main/Monthly%20Budget%20Statements) contains the MKR vesting schedule. This schedule specifies when in the future MKR is vesting, and how much.
* To keep the risk acceptable for Maker governance as well as for the team, the MKR is moved from the protocol to the contributors in stages:
  * Following the MKR vesting schedule, any MKR that is vesting in 6 months or less, will be included in the top-up transaction which is added to the executive vote. This will move the MKR from the protocol to the *Auditors Wallet*, which then acts as an escrow wallet.
  * Following the MKR vesting schedule, after review and approval by the auditors, any MKR that is vesting in 3 months or less, will be included in the monthly top-up transaction that moves funds from the *Auditors Wallet* to the *CU’s Permanent Team Operational Wallet*.
  * When the MKR has vested, it is paid out to the contributor, either directly or through an intermediate payment processor.
* Any excess MKR in the *Auditors Wallet* or the *CU’s Permanent Team Operational Wallet* will be returned to the protocol, following the monthly payment transactions.

This payment implementation makes no assumptions about the origin of the MKR. It can either be moved from the protocol’s treasury, newly minted, or obtained from another source.

The MKR that’s held by the *Auditors Wallet* and the *CU’s Permanent Team Operational Wallet* will not be used for voting or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

The CU may consider alternative payment flows compliant with [DssVest](https://forum.makerdao.com/t/mip-54-dssvest/8025) if the standardized flow is compatible with the vesting schedule and that the risk is deemed acceptable by the team.
