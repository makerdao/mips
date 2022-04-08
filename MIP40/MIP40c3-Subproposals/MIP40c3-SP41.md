# MIP40c3-SP41: Immunefi Security Core Unit MKR Budget - IS-001

## Preamble

```
MIP40c3-SP#: 41
Author(s): @psychonaut
Contributors: @travinimmunefi
Tags: core-unit, cu-is-001, budget, mkr-budget, active
Status: Accepted
Date Proposed: 2021-10-06
Date Ratified: 2021-11-22
Resubmission: First formally submitted for October's Governance Cycle
Ratification Poll URL: https://vote.makerdao.com/polling/QmSbiSTX?network=mainnet#poll-detail
Forum URL: https://forum.makerdao.com/t/mip40c3-sp41-immunefi-security-core-unit-mkr-budget-is-001/10814/2
```

## Sentence Summary

MIP40c3-SP41 adds the MKR Incentive Plan budget for Core Unit IS-001: Immunefi Security

## Paragraph Summary

MIP40c3-SP41 adds the MKR Incentive Plan budget for Core Unit IS-001: Immunefi Security. It contains:

- Total MKR Expenditure Cap
- Estimated MKR Expenditure (based on the current team)
- Escrow Wallet mechanism

The IS Core Unit follows the Sustainable Ecosystem Scaling Core Unit (SES-001) proposal for MKR Vesting.

MKR incentives have been determined based on the [Program discussed here](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000). This is a 3-year vesting plan with 1-year cliff vest.

The IS core unit has been working under the incubation program of the SES since October 2021. The members of this core unit will take that as the start date for the vesting schedule.

## Total MKR Expenditure Cap

The total MKR Expenditure will not exceed `65.77 MKR`.

This covers the entire `3 years` plan for `1.2 FTEs`.

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
| May, 2022 |   0 MKR  |
| Dec, 2022 |   13.31 MKR  |
| May, 2023 |   6.65 MKR  |
| Dec, 2023 |  6.65 MKR  |
| May, 2024 |   6.65 MKR  |
| Dec, 2024 |   6.65 MKR  |
| **Total** | **39.93 MKR**  |

This covers the total vesting schedule of `3 years` for the current `1.2 FTEs`.

On average, this yields `11.09 MKR` per FTE per year.

Any changes to these amounts will be reported and reviewed by our budget auditors.

### Parameters

|    Parameter      | Value |
|---------------|:-----:|
| MKR/USD lock-in Price (New) |   Trailing 6 month average   |
| MKR/USD lock-in Price (OG) |   MKR = $3784.77 (4/APR/21 - 01/OCT/21)  |
| MKR Price Floor |   -30% ($2649)  |
| Vesting Period |   3 years  |
| Cliff Vest |  12 months  |
| Vesting Schedule |   After cliff has expired, biannual MKR amount  |
| Vesting Interval | 6 months  |
| Manual Repricing | yes |
| Auto-Renewal | yes  |

## Payment Implementation

This payment implementation is based on the [SES MKR budget proposal](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP17.md)

- Payment of the MKR tokens will follow the same flow as described in DUX [budget MIP](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP1.md)
- As defined above and in the Monthly Budget Statement will contain the MKR vesting schedule. This schedule specifies when in the future MKR is vesting, and how much.
- To keep the risk acceptable for Maker governance as well as for the team, the MKR is moved from the protocol to the contributors in stages:
  - Following the MKR vesting schedule, any MKR that is vesting in 6 months or less, will be included in the top-up transaction which is added to the executive vote. This will move the MKR from the protocol to the `IS Auditors Wallet`, which then acts as an escrow wallet.
  - Following the MKR vesting schedule, after review and approval by the auditors, any MKR that is vesting in 3 months or less, will be included in the monthly top-up transaction that moves funds from the `IS Auditors Wallet` to the `IS Permanent Team Operational Wallet`.
  - When the MKR has vested, it is paid out to the contributor, either directly or through an intermediate payment processor.
- Any excess MKR in the `IS Auditors Wallet` or the `IS Permanent Team Operational Wallet` will be returned to the protocol, following the monthly payment transactions.

This payment implementation makes no assumptions about the origin of the MKR. It can either be moved from the protocol’s treasury, newly minted, or obtained from another source.

The MKR that’s held by the `IS Auditors Wallet` and the `IS Permanent Team Operational Wallet` will not be used for voting, signaling, or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

IS-001 may consider alternative payment flows compliant with [DssVest](https://github.com/makerdao/mips/blob/master/MIP54/MIP54.md) if the standardized flow is compatible with the vesting schedule and that the risk is deemed acceptable by the team.
