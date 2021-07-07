# MIP40c3-SP17: Sustainable Ecosystem Scaling Core Unit MKR Budget, SES-001

## Preamble

```
MIP40c3-SP#: 17
Author(s): @wouter, @juanjuan
Contributors:
tags: core-unit, cu-ses-001, budget, active
Status: Accepted
Date Applied: 2021-05-12
Date Ratified: 2021-06-28
```

## Sentence Summary

MIP40c3-SP17 adds the MKR Incentive Plan budget for Core Unit SES-001: Sustainable Ecosystem Scaling.

## Paragraph Summary

MIP40c3-SP17 adds the MKR Incentive Plan budget for Core Unit SES-001: Sustainable Ecosystem Scaling. It contains:
- Total MKR Expenditure Cap
- Estimated MKR Expenditure (based on the current team)
- Escrow Wallet mechanism

MKR incentives have been determined based on the [Program discussed here](https://forum.makerdao.com/t/pre-mip-discussion-an-alternative-mkr-compensation-plan/8000). This is a 3-year vesting plan with 1-year cliff vest.

## Total MKR Expenditure Cap

The total MKR Expenditure will not exceed ` 3,309.85 MKR`.

This covers the entire `3 years` plan for `10.90 FTEs`.

## Estimated MKR Expenditure

The Estimated MKR Expenditure is our best guess of how much MKR will be used with the current team configuration.

Reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure Cap:
- A raise for a member of the team
- New hires (2 are covered by the cap)
- Repricing (and resetting) the program, in the case of bear market

`Price floor: -30%`. If any Contributor chose to reprice their program, they could do it at a maximum of -30% from the set MKR price.

### Permanent Team Forecast

For the permanent team, assuming the team configuration remains the same as today, this would result in the vesting schedule below.

| Vesting Date     |       MKR Amount |
|------------------|-----------------:|
| 30 Nov 2021      |            0 MKR |
| 31 May 2022      |       556.00 MKR |
| 30 Nov 2022      |       278.00 MKR |
| 31 May 2023      |       278.00 MKR |
| 30 Nov 2023      |       278.00 MKR |
| 31 May 2024      |       278.00 MKR |
| **Total**        | **1,668.00 MKR** |

This covers the total vesting schedule of `3 years` for the current `8.90 FTEs`.

On average, this yields `61.82 MKR` per FTE per year.

Any changes to these amounts will be reported in the [Monthly Budget Statement](https://github.com/makerdao-ses/transparency-reporting/tree/main/Monthly%20Budget%20Statements) and reviewed by our budget auditors.

#### Parameters

| Property | Value |
| -------- | -------- |
| MKR/USD lock-in Price (New) | Trailing 6 month average |
| MKR/USD lock-in Price (OG)  | [MKR = $1,956 (11/12/20 - 05/12/21)](https://www.investing.com/crypto/maker/mkr-usd-historical-data)
| MKR Price Floor       | -30% ($1,369)                 |
| Vesting Period        | 3 years                  |
| Cliff Vest            | 12 months                |
| Vesting Schedule      | After cliff has expired, the Biannual MKR amount vests every 6 months |
| Manual Repricing      | yes                      |
| Auto-Renewal          | yes                      |

### Incubation Program

For the Incubation Teams, MKR incentives will be included in the respective budget MIPs as they are published. This may include a back pay amount for the incubation time, but the details are still being discussed.

### Grants Program

Grantees will not receive MKR as part of the Grants Program. Moving into the DAO as a full-time Contributor might include a back pay amount for the contribution time, but the details are still being discussed.

## Payment Implementation

* Payment of the MKR tokens will follow the same flow as described in the original SES budget MIP ([MIP40c3-SP10](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369#multi-sig-wallets)).

![MKR Payment Flow](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP17/mkr_payment_flow.png)

* As defined above and in [MIP40c3-SP10](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369#multi-sig-wallets), the [Monthly Budget Statement](https://github.com/makerdao-ses/transparency-reporting/tree/main/Monthly%20Budget%20Statements) will contain the MKR vesting schedule. This schedule specifies when in the future MKR is vesting, and how much.

* To keep the risk acceptable for Maker governance as well as for the team, the MKR is moved from the protocol to the contributors in stages:

  * Following the MKR vesting schedule, any MKR that is vesting in 6 months or less, will be included in the top-up transaction which is added to the executive vote. This will move the MKR from the protocol to the `SES Auditors Wallet`, which then acts as an escrow wallet.

  * Following the MKR vesting schedule, after review and approval by the auditors, any MKR that is vesting in 3 months or less, will be included in the monthly top-up transaction that moves funds from the `SES Auditors Wallet` to the `SES Permanent Team Operational Wallet`.

  * When the MKR has vested, it is paid out to the contributor, either directly or through an intermediate payment processor.

* Any excess MKR in the `SES Auditors Wallet` or the `SES Permanent Team Operational Wallet` will be returned to the protocol, following the monthly payment transactions.

This payment implementation makes no assumptions about the origin of the MKR. It can either be moved from the protocol's treasury, newly minted, or obtained from another source.

The MKR that's held by the `SES Auditors Wallet` and the `SES Permanent Team Operational Wallet` will not be used for voting, signaling, or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

Once [DssVest](https://forum.makerdao.com/t/mip-54-dssvest/8025) or another payment flow has been adopted by the community, SES may propose to update its payment flow to comply with the standardized flow. That is assuming that the standardized flow is compatible with the vesting schedule, and that the risk is deemed acceptable by the team.
