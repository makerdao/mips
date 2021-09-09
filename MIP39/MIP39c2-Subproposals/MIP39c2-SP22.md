# MIP39c2-SP22: Adding Data Insights Core Unit

## Preamble

```
MIP39c2-SP#: 22
Author(s): Tomek Mierzwa (@tmierzwa)
Contributors: Piotr Klis (@pklis), Arran Kitson (@Arran)
Tags: core-unit, cu-din-001, mandate
Status: RFC
Date Applied: 2021-09-07
Date Ratified: 
```

## Sentence Summary

This subproposal adds a Data Insights Core Unit provided as a service from Token Flow Insights with a total monthly budget of **82,750.00 DAI**. 
A detailed plan and budget breakdown will be the subject of another proposal and governance vote.

## Specification

### Motivation

Data is important. The more data we have at our disposal, the better position we’ll be in to make **good decisions** and take **advantage of new opportunities**. Good data will also give us the justification and evidence we need to back up these decisions. 

Also, due to the ever-changing nature of the DeFi ecosystem, it is nearly impossible to perfect how the DAO is run. That being said, access to good data will ensure that we’re able to **identify significant problems** early on and **take action** to solve them. Related to the way data helps to identify short term problems, it also provides the tools necessary to develop more accurate **long-term theories** and make our approach more **strategic**.

As described in the recent post Need for [Data Insights Core Unit](https://forum.makerdao.com/t/need-for-data-insights-core-unit/8450) we believe that Maker DAO strongly needs a dedicated unit providing constant access to good quality data and analytics.

Effective access to full history of MCD Protocol data is crucial for:
- protocol **transparency** (MKR holders, users, partners, regulators)
- protocol **safety** and **sustainability** (independent insights, scientific analysis) 
- community **empowerment** and **retention**

Data must be provided in a way that does not require deep knowledge of:
- blockchain technologies
- protocol details and internal nomenclature

Data provisioning must be:
- **permissionless** - everyone should be able to access and verify the data
- **sustained** - access to data should be uninterrupted and guaranteed in the long term
- **reliable** - quality, completeness and timeliness of data should be assured
- **understandable** - data should be clearly defined and provided in a business context

There are many possible approaches to this, with two extremes:
- Every Core Unit and every partner / community member independently sources data and ensures its consistency and good quality by itself
- One dedicated Core Unit centralizes required data pipelines and provides information and insights required by all users

We believe in a hybrid solution where:
- There is a **dedicated Data Insights Core Unit** that provides a ‘public good’ data with fully open sourced data pipelines, APIs and analytical GUIs 
- The people and infrastructure **costs are covered by the Protocol** and everybody's **free to access and use** any data or application
- Solutions have been implemented to ensure continuous **data delivery** and fallback options in case of any major disruptions.
- Any ad-hoc and specific (not shared publicly) data needs of other Core Units, external partners and community members are **out of scope** of Data Insights Core Unit mandate

This proposal is created by [Token Flow Insights](https://tokenflow.live) - a venture created by former members of Maker Foundation’s Data Services, Oasis and Product Teams. We believe that Data Insights Core Unit provided ‘as a service’ by our company has many advantages for the Maker DAO:
- Token Flow is the provider of preprocessed and contextualized blockchain data
- Token Flow has many unique capabilities like transactions’ decoding and classification, state diffs and state reads history, full scope of reverted actions, etc.
- Token Flow has a great team with a proven deep knowledge of the MCD Protocol and long experience with Maker DAO and community
- Token Flow constantly maintains and develops for free many open datasets that are being used by existing Core Units (e.g. [Vault activity metrics](https://forum.makerdao.com/t/maker-vault-activity-metrics/9568),  [Vaults liquidation protection analysis](https://forum.makerdao.com/t/maker-vault-liquidation-protection-analysis/10026)) and is involved in data related discussions and projects (e.g. [Polling results algorithm](https://forum.makerdao.com/t/polling-results/10177)).

On the other hand we realize that this kind of structure requires a well-defined Service Level Agreement, strong separation of resources between Core Unit and other commercial activities,  and also constant monitoring of the implementation of contractual provisions. We propose specific solutions later in the document.

### Core Unit ID

DIN-001

### Core Unit Name

Data Insights Core Unit

### Core Unit Mandate

#### Scope of responsibility

- Provisioning of historical, enriched and contextualized Protocol data through public APIs
- Development and maintenance of public front-ends, dashboards and analytical solutions
- Preparation and distribution of data related documentation and training materials
- Community empowerment (communication, requirements sourcing, hackathons, grants)

#### Scope of data

- Smart contracts history - events, calls, state diffs, reverted actions, gas spent
- Vaults history - creation methods, state in time, users, LTV, profiling
- Users history - activity, LTV, retention, profiling
- Governance action history - executives, polls, delegations
- Liquidations history (1.0 + 2.0) - auctions, keepers
- Flops / Flaps history - auctions, keepers
- Fees / interests in time
- Oracles usage history

#### Datasets

Main role of the Data Insights Core Unit is providing and authoring a free protocol data:
- As a general rule - data provided by the Data Insights Core Unit is intended for analytical (not operational) purposes, which means that data is not available in real-time and a small lag (~10 min) behind the tip of the chain is normal and acceptable
- Preprocessed and quality controlled blockchain data is sourced from external providers:
  - cooperation based on Service Level Agreement
  - one-time purchase and transfer of historical data
  - constant access to new data guaranteed by the contract
  - fallback options in the event of service interruptions
- Integrated data is stored in Snowflake datasets on dedicated AWS infrastructure
- Access to data is possible through public API endpoints with usage rate limitations
- Availability and quality of data is automatically monitored

#### Data preprocessing and contextualization

But what does it really mean to provide contextualized and preprocessed data?\
Let’s look at a simple example of Maker vaults history.

1. By simply reading the blockchain transactions and events (easily accessible from any of existing data providers) you can list all **historical actions** (e.g. opening a vault, locking collateral or generating DAI). But it does not tell you much about the vault itself.
2. So the next logical step is to iterate through all historical events and calculate a vault **state in time** (by adding up all collateral deposits and withdrawals up to some point in time you get the collateral balance for this exact moment). 
3. This is still only a part of a full context, because you might be also interested in what was the collateral price (from exchanges or oracles) and overall **state of the market** at this exact point in time. This requires integration with additional data sources.
4. So now you have the real vault history but there is much more data that you might be interested in. For example **how this vault was created**. Was it opened by the user via Oasis GUI or by InstaDapp, DefiSaver, BProtocol or any other DeFi service? This is a bit more advanced analytics that requires deep understanding of other protocols’ semantics and cannot be done just by looking at events history.
5. So now you know what’s the state of a vault in time and in market context and you understand the vault origin but how do you classify this vault? What is its **age**, what’s its **profitability** and **Lifetime Value** (that’s simple), what is its **usage pattern** (a bit more complicated), what potentially will happen to this vault in a close or distant future? This opens the doors for many classification, profiling and forecasting models which can be used to enrich the data even more, depending on the community requests. 

Every consecutive step in this pipeline requires increasing data engineering and data analytics skills and deep knowledge of MCD Protocol. It also consumes lots of resources (time and money) to repeat it over and over again. 

With the datasets that are the subject of this proposal we will provide all this data for free in a form that can be just taken and used by any data analyst or data scientist with risk management experience or product management experience but not necessarily with a deep understanding of blockchain specifics and protocol internals.

#### Data frontends

Data Insights Core Unit will also provide and maintain public and open source frontends:
- based solely on datasets described previously
- all code is open source and available through public GitHub repos
- deployment is based on dedicated infrastructure provided by the Core Unit
- constant maintenance / monitoring is provided by the Core Unit

This includes the existing frontends: 
- MCDState
- MCDGov

… and new frontends:
- MCDLiq
- Protocol Dashboard
- others, requested by the community in the future

#### Community empowerment

Data Insights Core Unit plays an important role in a collaboration with the community:
- Providing comprehensive data related documentation and training materials:
  - data models and descriptions for available datasets
  - data pipelines, incl. integration, enrichment, quality assurance algorithms
  - usage examples - SQL queries, Python notebooks, interactive presentations 
- Constant communication with the community:
  - social media channels
  - active forum membership
  - active sourcing of new requirements
  - public backlog and agile ceremonies
- Grants for community analysts / scientists, hackathons, events:
  - promoting creative usage of provided data
  - engaging community members

#### Team structure

Dedicated Data Insights Core Unit team is provided by Token Flow Insights (percentages are time commitments for these positions):
- CU Facilitator (25%)
- Two Data Engineers (100%)
- One Data Analyst (100%)
- One Community Manager (100%)
- One Front-End Designer (50%)
- One Product Manager (10%)
- Financial Controller (10%)

#### Relations to Token Flow Insights
Data Insights Core Unit is provided as a service by Token Flow with the following assumptions:
- Token Flow provides a dedicated Core Unit team and handles all HR-related tasks, like recruitment, remuneration, competence development, vacation, etc.
- Token Flow develops and manages the technical infrastructure dedicated to Core Unit
- Cooperation between MakerDAO and Token Flow is based on a Service Level Agreement that defines responsibilities, goals and performance measures
- Token Flow assures a clear separation of resources between the Core Unit and its other commercial offerings
- Free and public access to data (with possible rate limiting) is assured in the contract
- Open-sourcing of all products specifically build for the DAO is assured in the contract (Apache License, Version 2.0) 
- IP transfer to DAI Foundation for all new products specifically build for the DAO is assured in the contract
- Fallback options are implemented in case of service violation / termination
- All non-shared services, dedicated to other Core Units can be contracted commercially and are out of scope of the Core Unit mandate
