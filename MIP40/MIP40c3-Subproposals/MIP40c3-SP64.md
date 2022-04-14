# MIP40c3-SP64: Add Data Insights Core Unit Budget

## Preamble

```
MIP40c3-SP#: 64
Author(s): Tomek Mierzwa (@tmierzwa), Tadeo (@tadeo), Piotr (@piotr.kils)
Contributors:
Tags: core-unit, cu-din-001, budget
Status: Formal Submission
Date Proposed: 2022-03-09
Date Ratified:
Forum URL: https://forum.makerdao.com/t/mip40c3-sp64-add-data-insights-core-unit-budget/13791
Ratification Poll URL: https://vote.makerdao.com/polling/Qme3VaY4
```

## Sentence Summary

This subproposal adds the budget for Data Insights Core Unit. It's a regular **monthly** budget of **90,250.00 DAI** from **May 2022 until April 2023**, included.

## Paragraph Summary
MIP40c3-SP64 adds the budget for Data Insights Core Unit (DIN-001) to account for the [new mandate](https://forum.makerdao.com/t/mip39c2-sp31-update-data-insights-core-unit-mandate/13790) that expands on the initial mission to maintain the existing data assets and build new datasets to cover L2s, RWAs, and puts a special focus on the community.

The main changes are the following:
- 59,500 DAI --> 90,250.00 DAI per month (+52%)
- 6 month budget --> 12 month budget
- Team headcount increase
- Expansion Pool
- MKR vesting program
- Travel budget

## Specification

### Motivation

We are proposing this budget for the Data Insights Core Unit to be able to continue our mission to provide free and permissionless datasets with contextualized and enriched MCD Protocol data and to continuously support and empower other members of the DAO and Community in the field of data analytics and data science.

The previous mandate was defined as a kind of Proof of Concept to validate the need of a data focused Core Unit. It was mostly limited to supporting other Core Units by maintaining and updating the existing assets.

The new mandate expands on the initial mission to build completely new datasets to cover L2s, RWAs, and puts a special focus on the community.

This budget represents a 52% increase (59,500.00 DAI to 90,250.00 DAI per month) from the [previous budget](https://forum.makerdao.com/t/mip40c3-sp34-add-data-insights-core-unit-budget-din-001/10210). The Data Insights Core Unit currently consists of three full-time members and one part-time facilitator. We have just hired one full-time member and we are planning to increase our workforce by an additional 1-2 contributors in the near future.

### Core Unit ID

DIN-001

### Current status
Having completed four out of the six months of the initial proposal, we believe we have demonstrated the value of this Core Unit to the protocol, to other Core Units ,as well as to the wider community.

In the following post you can find an in-depth overview of the work done and the associated financials: [link here](https://forum.makerdao.com/t/dicu-2021-2022-financial-year-in-review/13961).

We would like to highlight the following aspects:
- We constantly develop and maintain analytical datasets and GUIs covering many aspects of the protocol's history (vaults, users, voting, liquidations, debt/surplus auctions, system parameters, etc.)
- We regularly engage with other Core Units, providing them with various services: from Data API (for analysis and as backends for their applications) to reports, analyses and visualisations:
    - Risk CU
    - GovAlpha CU
    - Growth CU
    - Strategic Finance CU

- We continuously engage with partners (such as Oazo/oasis.app) and [community members](https://forum.makerdao.com/t/source-for-getting-collateral-and-dept-balance/12512).

- We have been fiscally responsible by:
    - Creating our own contingency buffer by reducing the team salaries in order to maintain operations if the current proposal is delayed or to gracefully wind down the Core Unit in case of rejection/offboarding.
    - Optimizing costs, making it possible to return excess of funds to the protocol (currently estimated at 12% of total initial budget).
    - Not incorporating a dedicated company and therefore being able to return the excess funds of 10,000 DAI originally allocated as the Incorporation Budget.

### Roadmap

The roadmap proposed below is a natural continuation to our [current roadmap](https://data.makerdao.network/roadmap).
We want to highlight the importance that L2s and RWAs will have in our future.

![roadmap](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP64/roadmap.png)


We plan to adhere to the upcoming SES Ecosystem Performance initiative, making our work more accessible to delegates and the community. In addition, we are looking into new [tools](https://frill.co/) that would allow the community to engage and provide direct feedback.

### Budget Breakdown

The budget has been designed re-using mechanisms implemented by other Core Units to enable greater transparency and standardisation throughout the DAO. We deeply appreciate their work, in particular that of SES.

### Dai Expenditure
We are asking for a **Annual Budget Cap of 1,083,000.00 DAI**. The cap refers to the maximum that the Core Unit can request for operating and it includes room for unforeseen circumstances.

The distribution of budget across these components is shown below:

|Cost component|Amount|
| --- | --- |
|**Team costs**|**DAI 39,500.00**|
|- Current Team|DAI 39,500.00|
|**Data costs**|**DAI 17,500.00**|
|- Decoded source data costs|DAI 17,500.00|
|**Infrastructure costs**|**DAI 3,100.00**|
|- AWS infrastructure|DAI 1,000.00|
|- Snowflake subscription|DAI 2,000.00|
| - Other subscriptions | DAI 100.00 |
|**Operational costs**|**DAI 5,150.00**|
|- Finance, admin |DAI 3,500.00|
|- Travel |DAI 1,650.00|
|**Expansion Pool**|**DAI 25,000.00**|


The total monthly budget asked for is **DAI 90,250.00** for the 12 months period from **May 2022 until April 2023**, included.

### Expansion Pool
We want to be fully transparent but also very flexible to meet the future demands of the protocol. With that in mind, we want to request a dedicated pool of funds that will be used for a variety of purposes, all of them with the goal of increasing the value delivered to the protocol.

These uses include hiring new team members, funding grants to community members, engaging in partnerships and using new tools and services.

Our thinking in requesting such a pool of funds is that we want to avoid misappropriating allocated funds while acknowledging that our current plans can change in the future in the the best interest of the protocol.

To exemplify the above: the previous budget allocated funds for a part-time front-end developer. We ultimately realised it was not the best use of our resources given that we could maximise our impact by collaborating and empowering other Core Units building front-ends. We recently hired a new team member that has a wide range of skills but can be mostly categorised as back-end. This could be considered a misappropriation of funds so we hope our intentions are not misconstrued by the community.

Another example of this is the use of additional services. While we currently host all of our data pipelines ourselves, we are considering using a managed service that would reduce our workload, allowing us to shift our focus from maintaining datasets to building new ones.

#### Contingency
The Expansion Pool also includes the contingency buffer of ~3% of the total budget to cover infrastructure related unexpected expenses, but could potentially help us in case of miscalculations in other budget items such as Operational Costs.

We are discussing a potential implementation of a new tooling to make data more accessible, particularly [Redash](https://redash.io/). This will allow more users to make use of our datasets, given that we pay per use, if the tool is successful in attracting more users than expected, this will ultimately increase the cost of both hosting and database costs.

We will publish our financials on a quarterly basis, attributing the ultimate use of those funds to the appropriate budget item.


### MKR Vesting

We propose a MKR Vesting program in line with the one set out by [the SES Core Unit](https://forum.makerdao.com/t/mip40c3-sp17-sustainable-ecosystem-scaling-core-unit-mkr-budget-ses-001/8043).


#### Estimated MKR Expenditure
The Estimated MKR Expenditure is our best guess of how much MKR will be used with the current team configuration.

Reasons why the Actual MKR Expenditure could rise closer to the MKR Expenditure Cap:

- A raise for a member of the team
- New hires (two are covered by the cap)
- Repricing (and resetting) the program, in the case of bear market

#### MKR Amount Forecast
For the permanent team, assuming the team configuration remains the same as today, this would result in the vesting schedule below.

| Vesting Date | MKR Amount |
| -------- | -------- |
| 31 May 2023 | 110.16 MKR |
| 30 Nov 2023 | 55.08 MKR |
| 31 May 2024 | 55.08 MKR |
| 30 Nov 2024 | 55.08 MKR |
| 31 May 2025 | 55.08 MKR |
| **Total** | **330.48 MKR** |

This covers the total vesting schedule of **3 years for the current 3.25 FTEs**.

Any changes to these amounts and its disbursement will be reported in the quarterly financials.


#### Vesting Parameters

| Property | Value |
| -------- | -------- |
| MKR/USD lock-in Method | Trailing 6 month average |
| MKR/USD lock-in Price | USD 2,428.74|
| MKR Price Floor |	-30% |
| Vesting Period | 3 years |
| Cliff Vest | 12 months |
| Vesting Schedule | After cliff has expired, the MKR amount vests every 6 months |
| Manual Repricing | yes |
| Auto-Renewal | yes |

#### Total MKR Expenditure Cap
The total MKR Expenditure will not exceed **925.50 MKR**.

This covers the maximum of a **3 year plan for 5.25 FTEs**.

### Budget implementation

#### Core Unit wallet

This budget implementation is a “Simple Budget Implementation” under [MIP40c4](https://mips.makerdao.com/mips/details/MIP40#simple-budget-implementations).

* Core Unit wallet address: [0x7327Aed0Ddf75391098e8753512D8aEc8D740a1F](https://etherscan.io/address/0x7327Aed0Ddf75391098e8753512D8aEc8D740a1F)
* Keyholders:
   * @tmierzwa - [0x5Fc4d6cF7777FF7A89268562959680dF6e6DD83D](https://etherscan.io/address/0x5Fc4d6cF7777FF7A89268562959680dF6e6DD83D)
   * @piotr.klis - [0xc6Ffa10CeFE1dA15f6Bc66428B1e73758D284394](https://etherscan.io/address/0xc6Ffa10CeFE1dA15f6Bc66428B1e73758D284394)
   * @tadeo - [0x89E14956C6fBB814B281B0A1598E11297713c6d0](https://etherscan.io/address/0x89E14956C6fBB814B281B0A1598E11297713c6d0)

We are currently investigating the best way to implement additional wallet security measures like external multisig owners or an Auditor multisig.

####  Transfers

* unused Incorporation Budget (**10,000.00 DAI**) and other unused funds from existing monthly budget (**est. 45,000.00 DAI**) will be returned to the protocol not later than on 2022-05-10
* the total of **1,083,000.00 DAI** will be streamed to 0x7327Aed0Ddf75391098e8753512D8aEc8D740a1F starting 2022-05-01 and ending 2023-04-30 at a rate of **90,250.00 DAI** per month
