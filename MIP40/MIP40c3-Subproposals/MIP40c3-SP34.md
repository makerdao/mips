# MIP40c3-SP34: Add Data Insights Core Unit Budget

## Preamble

```
MIP40c3-SP#: 34
Author(s): Tomek Mierzwa (@tmierzwa)
Contributors:
Tags: core-unit, cu-din-001, budget, active
Status: Accepted
Date Proposed: 2021-09-07
Date Ratified: 2021-10-25
Ratification Poll URL: https://vote.makerdao.com/polling/QmR7fMc6?network=mainnet
Forum URL: https://forum.makerdao.com/t/mip40c3-sp34-add-data-insights-core-unit-budget-din-001/10210
```

## Sentence Summary

This subproposal adds the budget for Data Insights Core Unit. It's a regular monthly budget of 59,050.00 DAI from November 2021 plus a one-off amount of 97,500.00 DAI for provision of data support between June and October 2021, and a one-off initial amount of 10,000 DAI for incorporation and legal costs of an independent entity to house the Core Unit (more information provided below).

## Specification

### Motivation

We are proposing this budget for the Data Insights Core Unit to be able to succeed in its mandate to provide a free and permissionless datasets with contextualized and enriched MCD Protocol data and continuously support and empower other members of the DAO and Community in the field of data analytics and data science.

### Core Unit ID

DIN-001

### Roadmap

The following diagram shows the proposed roadmap for Data Insights Core Unit for the next 6 months. This roadmap will be reviewed monthly and the backlog will be kept public.

![Roadmap](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP34/roadmap.png)

### Budget considerations

This budget secures:

* a dedicated team of:
  * CU Facilitator and Product Manager (25%)
  * Two Data Engineers (2 x 100%)
  * One Front-End Designer and Developer (50%)
* source data:
  * fixed cost of source on-chain and off-chain data purchased from Token Flow Insights SA
  * it covers all data sourcing and preprocessing costs (blockchain nodes, external APIs subscriptions, decoding, integration, quality assurance, etc.)
* data storage and processing infrastructure (estimated and reviewed quarterly):
  * AWS infrastructure (including but not limited to: EC2, S3, ECS, SES)
  * Snowflake database subscription (including Reader Accounts)
* operational costs
  * finance, accounting, legal and admin costs required to operate the CU

The distribution of budget across these components is shown below:

|Cost component|Amount|
| --- | --- |
|**Team costs**|**DAI 31,500.00**|
|- CU Facilitator & Product Manager (25%)|DAI 3,500.00|
|- Two Data Engineers (2 x 100%)|DAI 24,000.00|
|- One Front-End Designer & Developer (50%)|DAI 4,000.00|
|**Data costs**|**DAI 17,500.00**|
|- Decoded source data costs|DAI 17,500.00|
|**Infrastructure costs**|**DAI 5,000.00**|
|- AWS infrastructure|DAI 2,000.00|
|- Snowflake subscription|DAI 3,000.00|
|**Other costs (outsourced)**|**DAI 5,500.00**|
|- Finance, accounting|DAI 3,500.00|
|- Legal, admin|DAI 2,000.00|

The total budget asked for the first 6 months from 1 November 2021 is **DAI 59,500.00 per month**.
The activities and scope of the Core Unit will be revisited during Q1 2022 to see whether it should be expanded again to meet wider Core Unit (and other stakeholder) needs.

### Interim budget

Since leaving the Foundation at the end of May 2021 the Token Flow Insights team has continued to maintain and update existing datasets (e.g. vaults history, governance actions history, liquidations history, pricing history), GUIs and APIs (e.g. MCDState.info, MCDGov.info) that are being used by other Core Units (e.g. Risk CU, GovAlpha CU). We have also updated EthTx to support Goerli at the request of Protocol Engineering.

Token Flow has also responded to a lot of ad-hoc queries and answers data-related requests from other CUs and community members. Currently one of our data engineers is almost fully utilized by these activities to support the DAO. This also generates substantial costs of maintaining the required AWS and Snowflake infrastructure.

Since June 2021 all of this has been provided to the DAO from our own budget in order to ensure that there was continuity for the Core Units that use our datasets between us leaving the Foundation and this Data Insights Core Unit proposal working its way through governance. We also understand that this proposal is likely to need at least two more months to be formally accepted by governance during which time Token Flow Insights will continue to maintain the datasets and infrastructure until the new DI Core Unit can take over much of the maintenance.

Monthly costs of maintaining existing products at a minimal level of support during June to October 2021 is DAI 19,500.00 / month and includes:

|Cost component|Amount|
| --- | --- |
|**Team costs**|**DAI 12,750.00**|
|- CU Facilitator (10%)|DAI 1,500.00|
|- One Data Engineer (80%)|DAI 10,000.00|
|- One Product Manager (10%)|DAI 1,250.00|
|**Data costs**|**DAI 5,000.00**|
|- Decoded source data costs|DAI 5,000.00|
|**Infrastructure costs**|**DAI 1,750.00**|
|- AWS infrastructure|DAI 1,000.00|
|- Snowflake subscription|DAI 750.00|

We have investigated alternative routes to cover these costs with a few of the Core Units and the conclusion after these discussions was that we should add the amount to the budget proposal.

Therefore we ask for an additional one-time payment of **5 months * DAI 19,500.00 = DAI 97,500.00** to cover Token Flow Insights costs for June-October 2021. It would be added to the first monthly payment if this CU and budget proposal is accepted by governance. This payment would then be made by the new DI LLC entity to Token Flow Insights for the historic services prior to the formation of the distinct entity for the Core Unit.

The regular monthly budget would then commence from 1 November 2021.

### Incorporation budget

In addition, a one-off incorporation / set-up budget for establishing DI Co of **DAI 10,000** is requested in the first disbursement. This budget covers legal fees, incorporation fees. etc.

### Budget implementation    

This budget implementation is a “Simple Budget Implementation” under [MIP40c4](https://mips.makerdao.com/mips/details/MIP40#simple-budget-implementations).

* Core Unit wallet address: [0x7327Aed0Ddf75391098e8753512D8aEc8D740a1F](https://etherscan.io/address/0x7327Aed0Ddf75391098e8753512D8aEc8D740a1F)
* Keyholder: @tmierzwa - [0x5Fc4d6cF7777FF7A89268562959680dF6e6DD83D](https://etherscan.io/address/0x5Fc4d6cF7777FF7A89268562959680dF6e6DD83D)
* The keys to the Core Unit wallet address above will be owned by “DI Co” (it will be contributed to the company on incorporation by the Facilitator and listed as an asset of DI Co).

The first disbursement requested is **DAI 464,500** which includes what follows.

#### One-off Setup / Incorporation Budget / One-off Interim Budget for Data and Services Provided from June to October 2020

* **107,500 DAI** will be transferred to 0x7327Aed0Ddf75391098e8753512D8aEc8D740a1F on November 10, 2020

##### Breakdown

* **107,500 DAI** =
	* **10,000 DAI**  one-off setup / incorporation budget for DI Co +
	* **97,500 DAI** - one-off interim budget for data and services provided from June to October 2020


#### Monthly Transfers

  * **357,000 DAI** will be streamed to 0x7327Aed0Ddf75391098e8753512D8aEc8D740a1F starting 2021-11-01 and ending 2022-04-30 at a rate of 59,500 DAI per month

### Other Considerations

* For any budget request beyond April 2022, new MIP40c3 subproposals will be submitted
