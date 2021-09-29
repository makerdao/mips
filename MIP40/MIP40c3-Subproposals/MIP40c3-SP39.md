# MIP40c3-SP39: Modify Core Unit Budget, RWF-001

## Preamble

```
MIP40c3-SP#: 39
Author(s): Sébastien Derivaux (@SebVentures)
Contributors:
Tags: core-unit, cu-rwf-001, budget, dai-budget
Status: RFC
Date Applied: 2021-09-29
Date Ratified: n/a
````

## Sentence Summary

MIP40c3-SP39 extends the budget for the Real-World Finance Core Unit defined in [MIP40c3-SP12](https://forum.makerdao.com/t/mip40c3-sp12-modify-core-unit-budget-rwf-001/7985) in 2022.

## Paragraph Summary

With [MIP40c3-SP12](https://forum.makerdao.com/t/mip40c3-sp12-modify-core-unit-budget-rwf-001/7985) the Real-World Finance team was able to expand the team, sustain legal costs related to RWA, onboard more RWA and develop FP&A. This new budget extends the previous one in 2022.

## Specification

## Motivation

* Continue the Real-World Finance Core Unit efforts. Our current budget is [MIP40c3-SP12](https://forum.makerdao.com/t/mip40c3-sp12-modify-core-unit-budget-rwf-001/7985) which ends in December.
* The RWF CU mandate is "to bring real-world finance concepts to MakerDAO" following MakerDAO needs. Currently, the priority is put on RWA. 2022 should see the transition from the experimentation/learning phase to the production/scaling phase.

## Core Unit Name

* Real-World Finance

## List of Budget Implementations

* This budget implementation uses the DssVest. This can be changed if needed to any method achieving similar objectives.
* This budget will be in place from January 2022 to December 2022 included
* Dai per month: 155,000
* The destination wallet is: 0x9e1585d9CA64243CE43D42f7dD7333190F66Ca09 [RWF Core Unit Multisig](https://forum.makerdao.com/t/mip40c1-adding-rwf-core-unit-multisig/7476)

## List of Budget Breakdowns

|Type|Monthly Total|
| --- | --- |
|Contributors (up to 7 FTEs)|$105,000|
|Legal consultations|$20,000|
|Real-world structures|$10,000|
|Data-infrastructure|$10,000|
|Buffer|$10,000|
|**Monthly budget**|**$155,000**|

### Contributors

While the team expanded (~4.5 FTE) we are not yet at the target (7 FTE). The target is to onboard mainly full-time contributors as the knowledge needed is quite large. All contributors are/will be business and are/will be invoicing MakerDAO (and paid by the RWF CU Multisig). They bear accounting costs, healthcare, and all other expenses. Roles are mainly senior positions. The following is only an indication of the target over the duration of the budget. It should be expected that new CUs will emerge from the RWF CU on RWA and finance topics. This will make the FTE of RWF fluctuate.

**Facilitator**: Ability to manage and take over the work of any member of the team.

**RWA Analyst (x3)**: Dealing with Asset Originators/Manager from the negotiation phase, due diligence phase, up to the monitoring phase. This is kind of a key account manager as well. Competencies in structured finance, risk assessment, modeling, spreadsheets, and legal knowledge. 

**Financial/Data Analyst**: Ability to understand and maintain the MakerDAO [financials](https://forum.makerdao.com/t/financial-report-2021-08/10288/2) and [budgets](https://forum.makerdao.com/t/makerdao-budget-simulator-as-of-7-21-21-revenue-cash-flow-forecast/9469). Ability to use SQL and on-chain data.

**Accountant/Finance Analyst**: Ability to understand and maintain the MakerDAO financials and budgets. Following expenses of the DAO and coordinating with other Core Units to work on the forecast.

**Data Engineer/Data Analyst**: Ability to bridge the gap between the blockchain and a structured data warehouse to study on-chain, and off-chain, information. Knowledge from `fold` to Snowflake. One task will be to maintain and expand the [Dune Analytics MakerDAO Dashboard](https://dune.xyz/SebVentures/maker---accounting_1), leverage services from [Data Insight CU](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP22.md) and structure all the off-chain data we get from RWA.

**ALM Analyst (?)**: Asset/Liability Management will likely become a hot topic in 2022 and some expertise might be needed. We already published an analysis on [the importance of liquidity](https://medium.com/@sebastien.derivaux/stablecoin-design-liquidity-8b0c60f585f1).

The grants are used for community contributors/experts. MakerDAO being community-driven, we intend to continue to leverage and involve our amazing community.

### Legal consultations

We have onboarded law firms (Ogier, Shearman & Sterling, Lathan & Watkins) to help us audit the RWA structures and guide us through legal solutions/issues. So far costs are below budget but this isn't expected to continue.

### Real-world structures

Following the trust model for RWA, we are working on legal entities for MakerDAO RWA. We are financing the newly created RWA Foundation (until it gets financed by underlying investments or other parts of MakerDAO). This is a yearly cost of ~50k DAI.

It is also planned to incorporate an RWF CU legal structure (most likely similar to the RWA Foundation). Waiting on the work of @layerzero on that front.

### Data-infrastructure

The data infrastructure effort was put on hold as RWAs are taking much of the bandwidth and a DIN CU might get onboarded. Nevertheless, the situation will soon become a priority to scale and will have to be fixed next year.

### Buffer

Extra safety in case we forgot something unexpected and for stuff like gas, SaaS subscriptions, travel, team offsite, ...

## MKR compensation

For reference, MKR compensation was proposed [here](https://forum.makerdao.com/t/mip40c3-sp38-real-world-finance-core-unit-mkr-compensation-rwf-001/10447)