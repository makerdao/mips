# MIP40c3-SP34: Add Data Insights Core Unit Budget

## Preamble
```
MIP40c3-SP#: 34
Author(s): Tomek Mierzwa (@tmierzwa)
Contributors: Arran Kitson (@Arran)
Tags: core-unit, cu-din-001, budget, dai-budget
Status: RFC
Date Applied: 2021-09-07
Date Ratified: 
```

## Sentence Summary

This subproposal adds the budget for Data Insights Core Unit.

## Specification

### Motivation

We are proposing this budget for the Data Insights Core Unit to be able to succeed in its mandate to provide a free and permissionless datasets with contextualized and enriched MCD Protocol data and continuously support and empower other members of the DAO and Community in the field of data analytics and data science.

### Core Unit ID

DIN-001

### Roadmap

The following diagram shows the proposed roadmap for Data Insights Core Unit for the next 9 months. This roadmap will be reviewed monthly and the backlog will be kept public.

![Roadmap](https://github.com/makerdao/mips/tree/master/MIP40/MIP40c3-Subproposals/supporting_materials/roadmap.png)

### Budget considerations

This budget secures:
- a dedicated team of:
  - CU Facilitator (25%)
  - Two Data Engineers (100%)
  - One Data Analyst (100%)
  - One Community Manager (100%)
  - One Front-End Designer (50%)
  - One Product Manager (10%)
  - Financial Controller (10%)
- source data:
  - fixed cost of source on-chain and off-chain data
  - it covers all data sourcing and preprocessing costs (blockchain nodes, external APIs subscriptions, decoding, integration, quality assurance, etc.)
- data storage and processing infrastructure (estimated and reviewed quarterly):
  - AWS infrastructure (including but not limited to: EC2, S3, ECS, SES)
  - Snowflake database subscription (including Reader Accounts)
- community empowerment costs:
  - taking part in conferences / events (monthly amount is aggregated and fully spent on relevant events and if not used then reallocated on community grants)
  - grants for community data analyst / data scientists (monthly amount is aggregated and fully spent on individual grants)
  - protocol data hackathons (monthly amount is aggregated and fully spent on logistics and prizes)

The distribution of budget across these components is shown below:

|Cost component|Amount|
|---|---|
|**Team costs**| **DAI 41,750.00**|
|- CU Facilitator (25%)| DAI 3,500.00|
|- Two Data Engineers (100%)| DAI 24,000.00|
|- One Front-End Designer (50%)|DAI 4,000.00|
|- One Community Manager (100%)|DAI 8,000.00|
|- One Product Manager (10%)|DAI 1,250.00|
|- One Financial Controller (10%)|DAI 1,000.00|
|**Data costs**|**DAI 25,000.00**|
|-Decoded source data costs|DAI 25,000.00|
|**Infrastructure costs**|**DAI 7,000.00**|
|- AWS infrastructure|DAI 2,000.00|
|- Snowflake subscription|DAI 5,000.00|
|**Community empowerment costs**|**DAI 9,000.00**|
|- Taking part in relevant conferences / events|DAI 2,000.00|
|- Grants for community data analyst / data scientists|DAI 5,000.00|
|- Protocol data hackathons|DAI 2,000.00|

The total budget asked for the **first 9 months** is **82,750.00 DAI** / month. \
After this period, the budget will be revised on the basis of actual backlog, documented maintenance costs and other needs.

### Interim budget

Since leaving the Foundation at the end of May 2021 our team has continued to maintain and update existing datasets (e.g. vaults history, governance actions history, liquidations history, pricing history), GUIs and APIs (e.g. MCDState.info, MCDGov.info) that are being used by other Core Units (e.g. Risk CU, GovAlpha CU). We have also updated EthTx to support Goerli at the request of Protocol Engineering.

We also respond to a lot of ad-hoc queries and answer data related requests from other CUs and community members. Currently one of our data engineers is almost fully utilized by these activities to support the DAO. This also generates substantial costs of maintaining the required AWS and Snowflake infrastructure.

Since June 2021 all of this has been provided to the DAO from our own budget in order to ensure that there was continuity for the Core Units that use our datasets between us leaving the Foundation and a proposal working its way through governance. We also understand that this proposal is likely to need at least two more months to be formally accepted by the governance during which time we will continue to maintain the datasets and infrastructure.

Current monthly costs of maintaining existing products at a minimal level of support during June to October 2021 compared to the full budget request is **DAI 19,500.00** / month and includes:

|Cost component|Amount|
|---|---|
|**Team costs**| **DAI 12,750.00**|
|- CU Facilitator (10%)| DAI 1,500.00|
|- One Data Engineer (80%)| DAI 10,000.00|
|- One Product Manager (10%)|DAI 1,250.00|
|**Data costs**|**DAI 5,000.00**|
|- Decoded source data costs|DAI 5,000.00|
|**Infrastructure costs**|**DAI 1,750.00**|
|- AWS infrastructure|DAI 1,000.00|
|- Snowflake subscription|DAI 750.00|

We have investigated alternative routes to cover these costs with a few of the Core Units and the conclusion after these discussions was that we should add the amount to our budget proposal.

Therefore we ask for an additional one-time payment of 5 months * DAI 19,500 = **DAI 97,500.00** to cover our costs for June-October 2021. It would be added to the first monthly payment if this CU and budget proposal is accepted by governance.

The regular monthly budget would then commence from 1 November 2021.
