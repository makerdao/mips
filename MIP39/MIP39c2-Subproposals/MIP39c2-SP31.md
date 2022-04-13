# MIP39c2-SP31: Update Data Insights Core Unit Mandate

## Preamble
```
MIP39c2-SP#: 31
Author(s): Tomek Mierzwa (@tmierzwa)
Contributors: Tadeo (@tadeo), Piotr (@piotr.klis)
Tags: core-unit, cu-din-001, mandate
Status: Formal Submission
Date Applied: 2022-03-09
Date Ratified:
Forum URL: https://forum.makerdao.com/t/mip39c2-sp31-update-data-insights-core-unit-mandate/13790
Ratification Poll URL: https://vote.makerdao.com/polling/QmXEvrBB
```

## Sentence Summary

This subproposal modifies the Data Insights Core Unit (“DIN”) mandate previously ratified with [MIP39c2-SP22](https://forum.makerdao.com/t/mip39c2-sp22-adding-data-insights-core-unit-din-001/10208). It's mostly about simplification of the previous document and stressing of our focus on L2 and cross-chain data as well as RWA datasets.

## Specification

### Motivation

Data is important. The more data we have at our disposal, the better position we’ll be in to make good decisions and take advantage of new opportunities. Good data will also give us the justification and evidence we need to back up these decisions.

Also, due to the ever-changing nature of the DeFi ecosystem, it is nearly impossible to perfect how the DAO is run. That being said, access to good data will ensure that we’re able to identify significant problems early on and take action to solve them. Related to the way data helps to identify short term problems, it also provides the tools necessary to develop more accurate long-term theories and make our approach more strategic.

Effective access to full history of MCD Protocol data is crucial for:

* protocol transparency (MKR holders, users, partners, regulators)
* protocol safety and sustainability (independent insights, scientific analysis)
* community empowerment and retention

Data must be provided in a way that does not require deep knowledge of:

* blockchain technologies
* protocol details and internal nomenclature

Data provisioning must be:

* permissionless - everyone should be able to access and verify the data
* sustained - access to data should be uninterrupted and guaranteed in the long term
* reliable - quality, completeness and timeliness of data should be assured
* understandable - data should be clearly defined and provided in a business context

Role of the Data Insights Core Unit:

* Dedicated team that provides a ‘public good’ data with fully open sourced data pipelines, APIs and analytical GUIs
* The people and infrastructure costs are covered by the Protocol and everybody’s free to access and use any data or application
* Solutions have been implemented to ensure continuous data delivery and fallback options in case of any major disruptions.
* Any bespoke, ad-hoc and specific (not shared publicly) data needs of other Core Units, external partners and community members are out of scope of Data Insights Core Unit mandate

### Core Unit ID

DIN-001

### Core Unit Name

Data Insights Core Unit

### Core Unit Mandate

#### Scope of responsibility

* Provisioning of historical, enriched and contextualized Protocol data through the Snowflake Marketplace and public APIs
* Supporting Core Units by providing custom datasets
* Development and maintenance of public front-ends and dashboards for the APIs
* Preparation and distribution of documentation for the data models, data pipelines, APIs and front-ends
* Community empowerment (constant communication, requirements sourcing, hackathons, grants)

#### Datasets

Currently provided Data Sets:

* Vaults actions history
* Vaults state in time
* Vaults ownership
* Governance actions history
* Liquidations history (2.0)
* Debt / surplus auctions history
* Protocol parameters history

New datasets will be mostly focused on the important areas that define the protocol future:

* DAI usage on L1 and L2s
* Cross-chain MCD analytics
* RWA data framework

Data provisioning rules

Main role of the Data Insights Core Unit is providing and authoring free protocol data for the consumption of Core Units.

* As a general rule - data provided by the Data Insights Core Unit is intended for analytical (not operational) purposes, which means that data is not available in real-time and a small lag (~10 min) behind the tip of the chain is normal and acceptable
* Preprocessed and quality controlled blockchain data is sourced from external providers:
  * one-time purchase and transfer of historical data
  * constant access to new data guaranteed by the contract
  * fallback options in the event of service interruptions
* Integrated data is stored in Snowflake datasets on dedicated AWS infrastructure
* Access to data is possible through the Snowflake Marketplace and public API endpoints with usage rate limitations
* Availability and quality of data is automatically monitored

#### Data frontends

Data Insights Core Unit provides and maintains some public and open source frontends:

* based solely on datasets described previously
* all code is open source and available through public GitHub repos
* deployment is based on dedicated infrastructure provided by the Core Unit
* constant maintenance / monitoring is provided by the Core Unit

#### Community empowerment

Data Insights Core Unit plays an important role in a collaboration with the community:

* Providing comprehensive data related documentation and training materials:
  * data models and descriptions for available datasets
  * data pipelines, incl. integration, enrichment, quality assurance algorithms
  * usage examples - SQL queries, Python notebooks, interactive presentations
* Constant communication with the community:
  * social media channels
  * active forum membership
  * active sourcing of new requirements
  * public backlog and agile ceremonies
* Grants for community analysts / scientists, hackathons, events:
  * promoting creative usage of provided data
  * engaging community members

#### Team structure

Dedicated Data Insights Core Unit team consists of (percentages are time commitments for these positions):

* CU Facilitator (25%)
* Two Data Engineers (2 x 100%)
* One Full Stack Engineer (100%)

We aim to constantly expand the team to meet the demands of the DAO and the community. Our preference is on full time CU memebers but we don’t want to shy away from engaging with one time collaborators or partnerships with existing teams.
