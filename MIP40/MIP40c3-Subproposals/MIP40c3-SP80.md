# MIP40c3-SP80: Modify GovAlpha Core Unit MKR Budget - Q3 2022

## Preamble

```
MIP40c3-SP#: 80
Author(s): @prose11, @Patrick_J
Contributors: 
Tags: core-unit, cu-gov-001, budget, mkr-budget
Status: RFC
Date Proposed: 2022-08-10
Date Ratified: 
Ratification Poll URL: 
Forum URL: https://forum.makerdao.com/t/mip40c3-spx-modify-govalpha-core-unit-mkr-budget-q3-2022/17164
```

## Sentence Summary

This budget proposes a MKR compensation for GovAlpha (GOV-001) with a vesting component (Q3 2022). 

## Paragraph Summary

This proposal seeks the ranked choice vote on the following vesting allocations to GovAlpha contributors, covering MKR compensation for the Core Unit for the past 6 months. Subsequent requests will take place every 6 months, featuring the same 12-month cliff. Contributors **do not** forfeit their vesting upon leaving GovAlpha, provided that their departure is a smooth transition and there have been no serious ethical breaches. The table below represents the MKR amounts expressed in a lump sum and per Full-Time Equivalent worker per year: 

| Option          | MKR Total | ~MKR/FTE/YEAR |
|-----------------|-----------|---------------|
| 200% Multiplier | 330.27    | 153.61        |
| 150% Multiplier | 247.70    | 115.21        |
| 100% Multiplier | 165.14    | 76.81         |

## Specification

### Motivation

MKR Vesting plays an important role in incentive alignment for Core Unit Members. By tying a meaningful element of compensation to the performance of the MKR Token, members of the Core Unit are further incentivized to be good stewards of the Protocol. 

GovAlpha continues to believe that our MKR compensation setup is ideally suited for our Core Unit and the DAO.  Specifically, we see these advantages with our proposed implementation:

- More clarity on the amount of MKR being allocated (proposals are retroactive, based on already paid labor). 
- Flexibility, as the parameters can be updated twice a year.
- A larger percentage of compensation in MKR, giving more alignment with protocol performance.
- Easier system for facilitators to administrate. 
- Continues after contributors leave, keeping alignment even if a contributor is leaving the Core Unit/MakerDAO.
- Easier system for applying towards hourly employees, the majority of GovAlpha's workforce.  

### Core Unit ID

GOV-001 (GovAlpha)

### Budget Implementations

#### Current GovAlpha Member MKR Composition 

We are continuing with our program as defined in February and passed by the MKR holders in March of this year. The following definitions were used to determine our requested MKR amount:

*Eligibility*

Anyone currently working for GovAlpha, who has not given notice at the time of this proposal, is eligible for MKR Compensation. 

Future proposals will follow the same logic, ensuring that anyone working for the GovAlpha during our 6-month proposal cadence will be rewarded by this framework.

*Formula*

For all members of GovAlpha (Facilitators included), MKR Compensation will be derived based on the salary earned within the Core Unit during the retroactive eligibility period. This proposal would compensate our team members in MKR in the amount of either 100%, 150%, or 200% of the DAI earned during the eligibility period, as voted on by the MKR holders. This figure will be divided by the moving average of MKR over the eligibility period to derive the MKR token amount for each contributor. 

*Sources*

Eligibility Period - This will be from February 8th, 2022 until August 1st, 2022 for this proposal. Please note this reflects a slight change from our last proposal, as SF-001 recommended that all vesting dates utilize the first of the month to make reporting and tracking more consistent.

Salary - This will be derived from all contributor and Facilitator invoices paid by GovAlpha during the eligibility period. 

MKR Moving Average - Is derived from the "Close" price on CoinGecko (latest data point per day, UTC), taking the average closing price for that eligibility period. 

*Lockup*

Eligible MKR compensation will have a cliff of 12 months, meaning GovAlpha contributors will receive their MKR one year after the end of the eligibility period. 

*MKR Transfer*

For full transparency, GovAlpha Facilitators will have their MKR Compensation streamed through DssVest. The rest of the MKR budget will be streamed to the GovAlpha Multisig, **0x01D26f8c5cC009868A4BF66E268c17B057fF7A73**, where it will be subsequently transferred to contributors.

Note that a primary difference in our incentive model is that contributors **retain the right to their MKR vesting even after leaving the Core Unit**. This is to ensure a smooth transition. Only in the event of an ethical breach or failure to transition will a contributor lose their claim on their MKR vesting.

*Disclaimer*

Vested MKR for contributors will sit in the GovAlpha Multisig for a short period after the vesting cliff while administrative checks are performed before disbursing. GovAlpha will not use this MKR for voting or any other purpose during this time.

### List of Budget Breakdowns

#### Dependencies

Eligibility Period: February 8, 2022 - August 1, 2022
MKR Moving Average ([spreadsheet](https://docs.google.com/spreadsheets/d/1sNOF18F7KotMSJNQ2oaGg6KcKzkTDaJgUgW9-_FDsQA/edit?usp=sharing)) - $1,487.66
Salary inputs:
@prose11 - 62,000 DAI
@Patrick_J - 32,413.75 DAI
Contributors - 151,248.52 DAI

*Note: The contributor figure is a bit deceiving due to @LongForWisdom stepping down from his facilitator role ~2 months before this proposal while staying on as a contributor.*

#### MKR Payments

*Note these are presented in the CU preferred 200% setup, @MIP-Editors will be contacted with the revised number to edit based on the vote of MKR holders*.

@prose11 Facilitator Stream:
83.35 MKR streamed from the Pause Proxy to **0xbfDD0E744723192f7880493b66501253C34e1241** Starting 2022/08/01, Ending 2023/08/01, cliff 2023/08/01

@Patrick_J Facilitator Stream:
43.58 MKR streamed from the Pause Proxy to **0x9E9Baa2633F9B1a17F3808FD21739cb1C47Ea989** Starting 2022/08/01, Ending 2023/08/01, cliff 2023/08/01

Core Unit Stream:
203.34 MKR streamed from the Pause Proxy to **0x01D26f8c5cC009868A4BF66E268c17B057fF7A73**, Starting 2022/08/01, Ending 2023/08/01, cliff 2023/08/01

#### Budget Impact

* Between 165.14 and 330.27 MKR will be committed to GovAlpha for MKR compensation, if an option is approved by MKR voters, for ~50% annual compensation (Feb. 8th - Aug 1st, 2022).
* This proposal accounts for 4.3 FTE based on hours worked, or between ~76.81 and ~153.61 MKR/FTE/Year. Future proposals will likely have a slightly higher FTE as the GovAlpha team has been expanding and FTE is based on total hours worked over the eligibility period.
* Note that we will repeat submissions roughly every 6 months. Our last proposal predicted a smaller package in terms of MKR this time around (we were approved for 227.64 MKR last time), but unfortunately, the 6-month moving average of MKR is less than half of what it was in February. Future proposals will likely be subject to similar volatility on the MKR price input.

#### Ratification Vote

This MIP will draw from the [MIP40 Amendments](https://forum.makerdao.com/t/amended-mip40-important-information-for-core-units/15450) ratified structure for DAI budget requests. The vote for this proposal shall be Ranked Choice (IRV) format, featuring the following options:

- Option 1 (CU Preferred): 200% Multiplier Applied - 330.27 Total MKR
- Option 2: 150% Multiplier Applied - 115.21 Total MKR
- Option 3: 100% Multiplier Applied - 76.81 Total MKR
- Option 4: Reject MKR Vesting