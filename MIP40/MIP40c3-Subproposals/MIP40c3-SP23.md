# MIP40c3-SP23: Modify Core Unit Budget (MKR) - Growth (GRO-001)

## Preamble

```
MIP40c3-SP#: 23
Author(s): @Nadia
Contributors:
tags: core-unit, gro-001, budget, mkr-budget
Status: Formal Submission
Date Applied: 2021-07-07
Date Ratified: N/A
```

## Sentence Summary

MIP40c3-SP23 adds the MKR Incentive Plan budget for Core Unit GRO-001: GROWTH.

## Paragraph Summary

This proposal contains:

* Total MKR Expenditure Cap
* The evaluation process to define the total team MKR per year.
* Estimated MKR Expenditure
* Payment Implementation

Our proposal took elements from the others presented before, and we added an achievement metric that modifies the total team MKR per year. This is a 3-year vesting plan with a 1-year cliff vest.


## Total MKR Expenditure Cap

The total MKR Expenditure will not exceed 2409.55 MKR, covering the entire three-year plan for 9.7 FTEs achieving the proposed objective.


## Evaluating Process and Total Team MKR Definition

We think the MKR bonus has to help us retain talent, set shared goals to coordinate efforts between the DAO and be tied to the situation of the protocol. That's why we decided to use the model proposed by SES to calculate the amount of MKR, but the distribution will be split in two. Depending on salary, each contributor would receive a `Maximum MKR total (MMT). The first half bonus is a fixed number representing 60% of the MMT (MMT*60%), and the second half bonus is a variable number that will depend on the total Dai Supply (ObjectiveDS).

ObjectiveDS (Dai supply) corresponds to the projected total amount of DAI by the end of the year (December 31). We will ask Risk CU for their input to calculate a moderated Dai growth scenario to set this objective. This objective will be set during the first quarter of the year.

This means, all contributors, after the cliff has expired, `for H1 will receive MMT*60%` that will be distributed during the first week of July. `For H2, will receive (MMT*40%)*achievementObjectiveDS`, which will be distributed during the first week of January of the following year, this is capped at MMT. This distribution will happen for three years, starting on July 1st of 2022.

**Example**

During the first three months of 2022, we will set objectiveDS, and define a base scenario for total Dai by December 31, 2022. Let’s assume that objectiveDS is set to 7B Dai. 

Contributor X, with an MMT of 60 MKR will receive 36 MKR on the first week of July 2022 (H1-2022) and:

`MMT = 60 MKR`
`H1-2022 = MMT*60% = 36 MKR`

* If total Dai by December 31, 2022 is 7B or more, Contributor will receive 24 MKR on the first week of January 2023 (H2-2022).

`H2-2022 = (MMT*40%)*achievementObjectiveDS% = 24 MKR`

* If total Dai by December 31, 2022 is 5B, Contributor will receive 17.14 MKR on the first week of January 2023 (H2-2022).

`H2-2022 = (MMT*40%)*achievementObjectiveDS% = 17.14 MKR`



## Estimated MKR Expenditure

The Estimated MKR Expenditure is our best guess of how much MKR will be used with the current team configuration.

Reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure Cap:

* New hires (the cap covers 2  FTEs)
* A raise for a member of the team
* Repricing (and resetting) the program, in the case of a bear market

### Current Team Forecast

For the permanent team, assuming the team configuration remains the same as today, this would result in the vesting schedule below.


| Half     | Vesting Date     | Max MKR total (if 100% objectiveDS)     |
|---|---|---|
| H2 2021     |  January 1 2022      |  0      |
| H1 2022     |  July 1 2022      |  396      |
| H2 2022     |  January 1 2023      |  264      |
| H1 2023     |  July 1 2023      |  396      |
| H2 2023     |  January 1 2024      |  264      |
| H1 2024     |  July 1 2024      |  396      |
| H2 2024     |  December 31 2024      |  264      |
|      |  **Total MKR**      |  **1980**      |


This covers the total vesting schedule of 3 years for the current 7.7 FTEs.

## Payment Implementation

* To keep the risk acceptable for Maker governance as well as for the team, the MKR is moved from the protocol to the contributors in stages:

* Following the MKR vesting schedule, any MKR vesting in 6 months or less will be included in the top-up transaction added to the executive vote. This will move the MKR from the protocol to the `GROWTH Auditors Wallet`, which then acts as an escrow wallet.

* Following the MKR vesting schedule, after review and approval by the auditors, any MKR that is vesting in 1 month or less, will be included in the monthly top-up transaction that moves funds from the `GROWTH Auditors Wallet` to the `GROWTH Multi-sig`.

* When the MKR has vested, it is paid out to the contributor.

* After vesting, any excess MKR in the `GROWTH Auditors Wallet` or the `GROWTH Multi-sig` will be returned to the protocol, following the monthly payment transactions.