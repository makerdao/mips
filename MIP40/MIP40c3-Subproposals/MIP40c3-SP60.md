# MIP40c3-SP60: Modify GovAlpha Core Unit MKR Budget 

## Preamble

```
MIP40c3-SP#: 60
Author(s): @prose11, @LongForWisdom, @Patrick_J
Contributors: @blimpa, @gala
Tags: core-unit, cu-gov-001, budget, mkr-budget
Status: Accepted
Date Applied: 2022-02-09
Date Ratified: 2022-03-28
Ratification Poll URL: https://vote.makerdao.com/polling/QmefuvKL?network=mainnet#poll-detail
Forum URL: https://forum.makerdao.com/t/mip40c3-sp60-modify-govalpha-core-unit-mkr-budget/13145
```

## Sentence Summary

This budget proposes MKR compensation for GovAlpha (GOV-001) with a vesting component. 

## Paragraph Summary

This budget consists of two key parts, retroactive compensation for @LongForWisdom and an MKR Compensation framework for GovAlpha. Overall, this proposal would commit 227.64 MKR to GovAlpha contributors, covering MKR compensation for the Core Unit from its inception. This is approximately 67.06 MKR/FTE/Year. Subsequent requests will take place every 6 months, featuring the same 12-month cliff. Contributors **do not** forfeit their vesting upon leaving GovAlpha, providing that their departure is a smooth transition and there have been no serious ethical breaches. 

## Specification

### Motivation

MKR Vesting plays an important role in incentive alignment for Core Unit Members. By tying a meaningful element of compensation to the performance of the MKR Token, members of the Core Unit are further incentivized to be good stewards of the Protocol.

Many possible frameworks for MKR Compensation have been put forward in the DAO, providing solid principles for MKR compensation that are incorporated throughout this proposal. However, GovAlpha found other proposals not fitting the structure of our Core Unit. We believe this framework might offer an enticing alternative for current and future Core Units who seek incentive alignment using MKR vesting. 

GovAlpha believes that this proposal fulfills incentive alignment while remaining fiscally responsible to the Maker Protocol. Specifically, we see these advantages with our proposed implementation:

- More clarity on the amount of MKR being allocated (proposals are retroactive, based on already paid labor). 
- Flexibility, as the parameters can be updated 2 times a year.
- A larger percentage of compensation in MKR, giving more alignment with protocol performance.
- Easier system for facilitators to administrate. 
- Continues after contributors leave, keeping alignment even if a contributor is leaving the Core Unit/MakerDAO.
- Easier system for applying towards hourly employees, the majority of GovALpha's workforce.  

Additionally, this proposal contains a component for retroactively compensating @LongForWisdom. @LongForWisdom is the most veteran member of the GovAlpha Core Unit. His work predates the Core Unit Operating Model, having served as Governance Facilitator during the Domain Team era. 

He has received no MKR as compensation for his work during this Domain Team Era, and we believe this compensation to be in line with other retroactive compensation proposals (see [Risk Core Unit's MKR Compensation](https://mips.makerdao.com/mips/details/MIP40c3SP25)).

We believe this package ensures a higher degree of incentive alignment than approaches currently used in the DAO. 

### Core Unit ID

GOV-001 (GovAlpha)

### List of Budget Implementations

This MKR Budget Proposal consists of two parts. The first part is retroactive MKR compensation for @LongForWisdom. The second proposes MKR compensation for current core unit members, with a proposed framework for the Core Unit to use in future MKR budget proposals.

Current Core Unit MKR Compensation proposals will be resubmitted every 6 months as detailed below. 

#### Retroactive MKR Compensation for LongForWisdom

This component proposes 60 MKR be sent from the Pause Proxy to @LongForWisdom at address **0xC818Ae5f27B76b4902468C6B02Fd7a089F12c07b** if this proposal passes. This would take place on the subsequent executive following the approval of this subproposal, subject to the schedule of the Protocol Engineering Core Unit.

#### Current GovAlpha Member MKR Composition 

As this is the first proposal for MKR compensation for the GovAlpha Core Unit, the following implementation will be applied from April 2021 onward (the birth of GovAlpha). Subsequent proposals will follow the same math but will be limited to the figures from the previous 6 months.

*Eligibility*

Anyone currently working for GovAlpha, who has not given notice at the time of this proposal, is eligible for MKR Compensation. 

Future proposals will follow the same logic, ensuring that anyone working for the GovAlpha during our 6-month proposal cadence will be rewarded by this framework.

*Formula*

For all members of GovAlpha (Facilitators included), MKR Compensation will be derived based on the salary earned within the Core Unit during the retroactive eligibility period. This proposal would compensate our team members in MKR in the amount of 200% of the DAI earned during the eligibility period. This figure will be divided by the moving average of MKR over the eligibility period to derive the MKR token amount for each contributor. 

*Sources*

Eligibility Period - Will be from April 1st, 2021 until February 8th, 2022 for this proposal, dating back to the inception of the Core Unit. Future eligibility periods will be 6 months in length, using the first Monday of the month before their formal submission as an end date of eligibility, starting on the previous proposal's end date. 

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

Eligibility Period: April 1, 2021 - February 7, 2022
MKR Moving Average ([spreadsheet](https://docs.google.com/spreadsheets/d/1-n5PifDjbzlgi250OIg0Rt440hOlLZ1LTc_IkRf0LbY/edit?usp=sharing)) - $2,930.77 DAI
Salary inputs:
@LongForWisdom - 108,000 DAI
@prose11 - 77,283 DAI
Contributors - 60,377.27 DAI

#### MKR Payments

@LongForWisdom Retroactive MKR Payment:
60 MKR sent from the Pause Proxy to **0xC818Ae5f27B76b4902468C6B02Fd7a089F12c07b**

@LongForWisdom Facilitator Stream:
73.70 MKR streamed from the Pause Proxy to **0xC818Ae5f27B76b4902468C6B02Fd7a089F12c07b** Starting 2022/02/08, Ending 2023/02/08, cliff 2023/02/08

@prose11 Facilitator Stream:
52.74 MKR streamed from the Pause Proxy to **0xbfDD0E744723192f7880493b66501253C34e1241** Starting 2022/02/08, Ending 2023/02/08, cliff 2023/02/08

Core Unit Stream:
41.20 MKR streamed from the Pause Proxy to **0x01D26f8c5cC009868A4BF66E268c17B057fF7A73**, Starting 2022/02/08, Ending 2023/02/08, cliff 2023/02/08

#### Budget Impact

* 60 MKR committed to @LongForWisdom for pre-Core Unit Facilitation
* 167.64 MKR committed to GovAlpha for MKR compensation for ~85% annual compensation (Core Unit origin until present).
* This proposal accounts for 2.5 FTE based on hours worked, or ~67.06 MKR/FTE/Year. Future proposals will likely have a higher FTE as the GovAlpha team has been expanding and this proposal takes into account the starting days of the Core Unit.
* Overall, committing 227.64 MKR from the Pause Proxy, covering previous time working. Note that this will Repeat roughly every 6 months (but likely in a smaller amount.)
