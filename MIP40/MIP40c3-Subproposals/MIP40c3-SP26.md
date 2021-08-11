 
# MIP40c3-SP26: Development & UX Core Unit MKR Budget - DUX-001

## Preamble

```
MIP40c3-SP#: 26
Author(s): @rafinskipg, @adam, @bainpm
Contributors: @wouter, @juanjuan
Status: RFC
Date Applied: 2021-08-11
Date Ratified: YYYY-MM-DD
```

## Sentence Summary

MIP40c3-SP26 adds the MKR Incentive Plan budget for Core Unit DUX-001: Development and UX.

## Paragraph Summary

MIP40c3-SP26 adds the MKR Incentive Plan budget for Core Unit DUX-001: Development and UX. It contains:
- Total MKR Expenditure Cap
- Estimated MKR Expenditure (based on the current team)
- Escrow Wallet mechanism

The DUX Core Unit supports the Sustainable Ecosystem Scaling Core Unit (SES-001) and Oracles Oracles Core Unit (ORA-001) proposal for MKR Vesting.

MKR incentives have been determined based on the [Program discussed here](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000). This is a 3-year vesting plan with 1-year cliff vest.

The DUX core unit has been working under the incubation program of the SES since June of 2021. The members of this core unit will take that as the start date for the vesting schedule.

## Total MKR Expenditure Cap

The total MKR Expenditure will not exceed `1982.87 MKR`.

This covers the entire `3 years` plan for `6 FTEs`.

## Estimated MKR Expenditure

The Estimated MKR Expenditure is our best guess of how much MKR will be used with the current team configuration.

Reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure Cap:
- A raise for a member of the team
- New hires
- Repricing (and resetting) the program, in the case of bear market

`Price floor: -30%`. If any Contributor chose to reprice their program, they could do it at a maximum of -30% from the set MKR price.

### Permanent Team Forecast

For the permanent team, assuming the team configuration remains the same as today, this would result in the vesting schedule below.

|    Vesting Date      | MKR Amount |
|---------------|:-----:|
| December 31, 2021 |   0 MKR   |
| June 1, 2022 |   366.35 MKR  |
| December 31, 2022 |   183.18 MKR  |
| June 1, 2023 |   183.18 MKR  |
| December 31 |  183.18 MKR  |
| June 1, 2024 |   183.18 MKR  |
| **Total** | **1099.05 MKR**  |

This covers the total vesting schedule of `3 years` for the current `6 FTEs`.

On average, this yields `61.05 MKR` per FTE per year.

Any changes to these amounts will be reported and reviewed by our budget auditors.

### Parameters

|    Parameter      | Value |
|---------------|:-----:|
| MKR/USD lock-in Price (New) |   Trailing 6 month average   |
| MKR/USD lock-in Price (OG) |   MKR = $2,303.81 (12/3/20 - 06/1/21)  |
| MKR Price Floor |   -30% ($1.613)  |
| Vesting Period |   3 years  |
| Cliff Vest |  12 months  |
| Vesting Schedule |   After cliff has expired, biannual MKR amount  |
| Vesting Interval | 6 months  |
| Manual Repricing | yes |
| Auto-Renewal | yes  |


## Payment Implementation

This payment implementation is based on the [SES MKR budget proposal](https://forum.makerdao.com/t/mip40c3-sp17-sustainable-ecosystem-scaling-core-unit-mkr-budget-ses-001/8043)

- Payment of the MKR tokens will follow the same flow as described in the original DUX [budget MIP](https://forum.makerdao.com/t/mip40c3-sp-1-development-ux-core-unit-budget-dux-001/9774)

![payment_flow|690x234](upload://mmFRBMzcWozYN1988QeVZzb8i7M.png)
- As [defined above](https://forum.makerdao.com/t/mip40c3-sp-1-development-ux-core-unit-budget-dux-001/9774) and in the [Monthly Budget Statement](https://github.com/makerdao-dux/transparency-reporting/blob/main/Monthy%20Budget%20Statements/2021-09.md) will contain the MKR vesting schedule. This schedule specifies when in the future MKR is vesting, and how much.
- To keep the risk acceptable for Maker governance as well as for the team, the MKR is moved from the protocol to the contributors in stages:
  - Following the MKR vesting schedule, any MKR that is vesting in 6 months or less, will be included in the top-up transaction which is added to the executive vote. This will move the MKR from the protocol to the `DUX Auditors Wallet`, which then acts as an escrow wallet.
  - Following the MKR vesting schedule, after review and approval by the auditors, any MKR that is vesting in 3 months or less, will be included in the monthly top-up transaction that moves funds from the `DUX Auditors Wallet` to the `DUX Permanent Team Operational Wallet`.
  - When the MKR has vested, it is paid out to the contributor, either directly or through an intermediate payment processor.
- Any excess MKR in the `DUX Auditors Wallet` or the `DUX Permanent Team Operational Wallet` will be returned to the protocol, following the monthly payment transactions.

This payment implementation makes no assumptions about the origin of the MKR. It can either be moved from the protocol’s treasury, newly minted, or obtained from another source.

The MKR that’s held by the `DUX Auditors Wallet` and the `DUX Permanent Team Operational Wallet` will not be used for voting, signaling, or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

DUX may consider alternative payment flows compliant with [DssVest](https://forum.makerdao.com/t/mip-54-dssvest/8025) if the standardized flow is compatible with the vesting schedule and that the risk is deemed acceptable by the team.