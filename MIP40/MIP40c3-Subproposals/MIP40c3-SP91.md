# MIP40c3-SP91: GovAlpha Core Unit MKR Budget Q2 2023

## Preamble

```
MIP40c3-SP#: 91
Author(s): @Patrick_J, @prose11
Contributors:
Tags: core-unit, cu-gov-001, budget, mkr-budget
Status: Formal Submission
Date Proposed: 2023-02-07
Date Ratified: yyyy-mm-dd
Forum URL: https://forum.makerdao.com/t/mip40c3-sp91-govalpha-core-unit-mkr-budget-q2-2023/19713
Ratification Poll URL:
```

## References

- [MIP40c3-SP60: Modify GovAlpha Core Unit MKR Budget](https://mips.makerdao.com/mips/details/MIP40c3SP60)
- [MIP40c3-SP80: Modify GovAlpha Core Unit MKR Budget - Q3 2022](https://mips.makerdao.com/mips/details/MIP40c3SP80#sentence-summary)

## Sentence Summary

This budget adds an MKR compensation plan for GovAlpha (GOV-001) covering the period from 2022-08-01 onwards.

## Paragraph Summary

This budget adds an MKR compensation plan for GovAlpha (GOV-001) covering the period from 2022-08-01 onwards. The budget period will cover two years (i.e., until 2024-08-01), or until the Endgame Plan launches and GovAlpha (along with other Core Units) is dissolved, or until GovAlpha is offboarded through other means. This budget differs from previous GovAlpha MKR budgets, which covered retrospective six-month periods. The rationale for this change is discussed below.

## Specification

### Motivation

MKR Vesting plays an important role in incentive alignment for Core Unit Members. By tying a meaningful element of compensation to the performance of the MKR Token, members of the Core Unit are further incentivized to be good stewards of the Protocol.

In this proposal, we are deviating from the previously used methodology to a similar method used by Core Units following the “SES-model.” This change has been made for several reasons:
- Previous feedback shows that Governance participants wish to refrain from re-negotiating MKR vesting on a six-monthly basis. A two-year plan reduces Governance overhead.
- Improved certainty for GovAlpha members during the transition to the Endgame state.
- The continued fall of the price of MKR would have increased the MKR/FTE if the previous methodology had been repeated - a poor outcome for the MKR holders.

In return for the increased stability that a more extended plan offers, GovAlpha is:
- **Voluntarily removing the repricing mechanism** used by other Core Units.
- **Offering a lock-in price of 1500 DAI/MKR**, which is significantly above the six-month rolling average price of MKR that is typically used for such plans
    - The mean daily closing price of MKR was $715.49 in the six months to 2023-02-01 per CoinGecko ([data](https://docs.google.com/spreadsheets/d/1K_ijibDZ751p6kBlcLj3t9Ch58xA26yT7_e5-4w55FE/))

This results in a reduction in the MKR/FTE from the [previously approved](https://mips.makerdao.com/mips/details/MIP40c3SP80#sentence-summary) 115.21 MKR/FTE/year to 76.18 MKR/FTE/year, a greater than 33% reduction.

We believe these changes mutually benefit GovAlpha and MKR holders.

### Core Unit ID

GOV-001

### Total MKR Cap

The Total Expenditure under this plan will be, at most, **736.852 MKR** over two years. This Total Cap is calculated by assuming the BasePlus DAI budget passes and the full additional 7,500 DAI per month are used to fund a new hire who starts receiving vesting after twelve months, as well as allowing a 10% buffer for non-Facilitators due to the variable nature of their part-time hours. Note that it is unlikely that this buffer will be needed, and expect the amounts required will be close to those estimated below.

If there is an increase in the amount of MKR required, notification of the change will be posted at least one month before the projected vesting dates listed below.

### Estimated MKR Expenditure

The following estimate assumes voters approve the Base DAI budget option proposed in our DAI budget proposal.

The principal reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure are new hires if the BasePlus DAI budget is approved (assuming they reach the cliff) or increases in compensation for current Core Unit members.

#### Parameters

| Property | Value |
|---|---|
| Voluntary MKR/USD lock-in Price | 1 MKR = $1500 |
| MKR Price Floor | 1 MKR = $1500 (No repricing) |
| Vesting Period | 2 years |
| Cliff vest | 12 months |
| Vesting schedule | 1st 12 months paid in November 2022, quarterly thereafter |
| Manual Repricing | No |
| Auto-renewal | No |

#### Estimated Schedule

Actual payment dates may deviate from those listed based on the Executive Vote cadence. Payments will be made in a two-week window around the stated dates wherever possible. If the Endgame launch goes ahead as expected in mid-2024, the schedule will no longer apply, as listed below. See the Unwinding section for further details.

| Vesting Date | Period Covered | Amount (MKR) |
|---|---|---|
| 2023-11-01 | 12 months (2022-08-01 to 2023-08-01) | 298.76 |
| 2024-02-01 | 3 months (2023-08-01 to 2023-11-01) | 92.915 |
| 2024-05-01 | 3 months (2023-11-01 to 2024-02-01) | 92.915 |
| 2024-08-01 | 3 months  (2024-02-01 to 2024-05-01) | 92.915|
| 2024-11-01 | 3 months (2024-05-01 to 2024-08-01) | 92.915 |

This results in an average estimated MKR vesting amount of `76.18 MKR/FTE/Year`

These values may reduce if contributors leave the Core Unit or work fewer hours than estimated. If a smaller than the vested amount is required, any balance will be returned to the PauseProxy within one month of receipt in the Multisig.

### Budget Implementation

#### Multisig Details

- 2-of-3 Multi-Sig - [0x01D26f8c5cC009868A4BF66E268c17B057fF7A73](https://gnosis-safe.io/app/eth:0x01D26f8c5cC009868A4BF66E268c17B057fF7A73/balances) (govalpha.eth)
- Keyholder A: @Patrick_J - [0x06ADa798f9323392cA30C755383Af879bd853168](https://etherscan.io/address/0x06ADa798f9323392cA30C755383Af879bd853168)
- Keyholder B: @prose11 - [0xf3ED2bdeBa77940E6759B806cd55CE20cAE369BE](https://etherscan.io/address/0xf3ED2bdeBa77940E6759B806cd55CE20cAE369BE)
- Keyholder C: @0xdeniz - [0x388e9e5a889C4cDF3f752C1AFcF88B75BDE673eE](https://etherscan.io/address/0x388e9e5a889C4cDF3f752C1AFcF88B75BDE673eE)
- 1 billion DAI, 1 billion USDC, 1,000 ETH spending limits are in place for the MakerDAO PauseProxy.
- It should be considered owned by MakerDAO and administered by GovAlpha. See details [here](https://forum.makerdao.com/t/update-to-the-govalpha-multisig/19565).

#### Current GovAlpha Member Composition

This framework will reward any core contributors to GovAlpha during the period covered by this proposal. This does not cover individuals who do work for the Core Unit on a contractor basis.

Contributors will have individual cliff dates of 12 months - note all current contributors have already met this date. Contributors retain the right to a pro-rated MKR vest even after leaving the Core Unit. This is to ensure a smooth transition. Only in the event of an ethical breach or failure to transition will a contributor lose their claim on their MKR vesting.

#### Payment Process

The first twelve months of the plan will be paid in a lump transfer from the Pause Proxy to the GovAlpha Multisig in an Executive Vote within a two-week window of 2023-11-01, as the Executive Vote schedule allows. This means it will be paid out approximately three months after the previous GovAlpha vesting streams covering February 2022 to August 2022 finish. From there, it will be transferred to the individual contributors as needed. Vested MKR for contributors will sit in the GovAlpha Multisig for a short period after the vesting transfer, while administrative checks are performed before disbursing. GovAlpha will not use this MKR for voting or any other purpose during this time.

Any MKR that is not required for vesting will be returned to the PauseProxy by one month after the initial transfer.

Subsequent transfers will occur quarterly until the sooner of:

- Two years of vesting distributions have been completed.
- The Endgame Launch.
- The Core Unit is offboarded.

### Core Unit Unwinding

Suppose this budget is approved, and GovAlpha is subsequently unwound through the Endgame launch or a formal offboarding proposal. In that case, the remaining Contributors and Facilitators will receive pro-rated MKR vesting up to the formal offboarding date. This includes any handover/unwinding period that may be required.

Because the vesting transfers are made three months in arrears (e.g., period ending August 2023 paid out in November 2023), payments may need to be brought forward to accommodate for time worked, as long as relevant vesting cliffs have been reached. This will be clearly communicated by the outgoing Facilitator(s), and any necessary transfers should be included in an Executive Vote at the earliest possible convenience.
