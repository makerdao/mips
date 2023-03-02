# MIP40c3-SP96: Modify Data Insights Core Unit Budget (DIN-001)

## Preamble
```
MIP40c3-SP#: 96
Author(s): Tadeo (@tadeo) 
Tags: cu-budget, cu-din-001
Status: RFC
Date Applied: 2023-02-08
Date Ratified: 
Budget Start Date: 2023-05-01 
Budget End Date: 2024-04-31 
Forum URL: https://forum.makerdao.com/t/mip40c3-sp96-modify-data-insights-core-unit-budget-din-001/19748
Ratification Poll URL:
```

## Sentence Summary
Data Insights is requesting a budget renewal with the intention to support the transition to Endgame.

## Paragraph Summary
Data Insights is requesting a budget renewal with the intention to support the transition to Endgame. The budget includes two options, a request for the same budget level as the previous period, and a reduced budget of 10%.

## Specification

### Motivation
The main motivation of this budget proposal is to support the transition to Endgame. We will achieve this by:
- Ensuring continued support to Core Units and the community
- Engaging with Endgame initiatives
- Transitioning the funding source


During the 2022-2023 period, we've increased our contributions to the community, focusing on collaborating with others to provide the highest value possible. 
While we started the year focused on foundational data work, allowing other teams to build on top of us, we realised that this model doesn't drive enough value; while 90% of the work is done, the last 10% is where the most amount of value to the community is unlocked. We call it the *Horton hears a who!* problem, where people need to see it to believe in it (and use it). With this in mind, we progressed into delivering end-to-end solutions, such as [Ranked Poll Simulation](https://ranked-polls.herokuapp.com/), [Token Explorer](https://token-transfer-explorer.herokuapp.com/), [Teleport Monitoring](https://teleport.makerdao.fyi/) web-apps.

We are happy to maintain our fiscal responsibility, focusing on maximizing the ROI to the community, and hope to continue doing so in the future. However, this has led us to run at maximum capacity for an extended period; we hope to alleviate this by redistributing the work.

### Core Unit ID
DIN-001

### Budget Implementation

### Budget Breakdown
```
| Cost component       | Split  |
|----------------------|--------|
| Team costs           | 50.00% |
| Infrastructure costs | 30.00% |
| Operational costs    |  9.00% |
| Data costs           |  7.00% |
| Contingency          |  4.00% |
```


#### Scenarios
Scenario A - 1,080,001.00 DAI
- Same budget cap as 2022

Scenario B - 972,000.90 DAI
- 10% reduction vs 2022

#### Budget Details 

**Compensation and Benefits**
Contributors are paid for their work in fiat and/or DAI. While we usually focus on full-time commitments, we have variations of commitment to adapt to the needs of the DAO and the workforce. We also plan to have at least one off-site to bring the team together, which we have seen in the past helps maintain a high level of engagement within the team and with other DAO participants.

**Infrastructure Expense**
While we use several services to run the data analytics service, such as servers, nodes, data source providers, and hosted database providers, the latter is the main driver of costs, given that most computations are done there.
An increase in usage or maintenance of new datasets is reflected there. 

The computation has increased on average by 20% month over month the past year. The actual increase is difficult to predict as we operate a free & public API. We've seen users onboarding and having no churn, meaning that, month over month, the spending is equal or increased.

We have estimated an 11% month-over-month growth for the upcoming period, and we are in discussions with our database provider to buy computation in bulk at a discount.

**Software Expense**
We use software solutions to help us work, such as Google Workplace and Breadcrumbs. The expense for these services is usually based on seats, which makes it a rather predictable one.

**Admin Expense**
We use a payment processor to issue fiat for compensation and infrastructure expenses. A flat fee structure allows us to keep control and easily predict this cost.

**Contingency & Continuation Buffer**
Similar to last period's budget, we include a minimal buffer in our calculations to cover unforeseen or under-calculated expenses. 
Most of the variability stems from the computation cost of serving our data products. We see that once usage increases, it rarely decreases, so an additive behaviour occurs. These increases happen in the form of "bumps", so while we estimate month-over-month growth, the real cost can be lumpy.


### Budget Term
- Start Date: 2023-05-01
- End Date: 2024-04-30

### Roadmap and Objectives

Core Units that we currently collaborate with:
- Risk
    - Data provisioning
- Growth
    - Ad-hoc analyses & requests
    - Automated reporting
- PE
    - Analytics front end
- GovAlpha
    - Data provisioning
    - Ad-hoc analyses & requests
    - Automated reporting
    - Analytics front end
- SES
    - Data provisioning
        - This is a fairly new project to create a dataset for CU on-chain transfers
    - Ad-hoc analyses & requests

- EVENTS
    - Voter extract for Governance Voting Incentive Campaign

Other stakeholders in the community we collaborate with:
- Oasis
    - Data provisioning
- Delegates
    - Ad-hoc analyses & requests
- Community members & Researchers
    - Ad-hoc analyses & requests

#### Support Endgame transition
Endgame brings a lot of new and exciting opportunities. While the transition has a lot of uncertainty, we are committed to supporting the vision and helping it succeed.

##### Continued support & EA transition by demand
Our aim is to continue providing support to the community. As the Core Units transition into Ecosystem Actors, we will be entering into bilateral agreements with them for the products and services they require, in turn transitioning DICU towards an EA "by demand". 
This will gradually shift the operational funding of Data Insights from MIP40 toward client contracts.


##### Support for Phoenix Labs & Spark Protocol
If [Spark Protocol](https://forum.makerdao.com/t/announcing-phoenix-labs-and-spark-protocol/19731/4) is approved by Maker governance, Tadeo will support this project by taking the role of Developer Relations.

As Facilitator, Tadeo has fulfilled various roles within DICU. For us to continue providing the same level of service, we will disintermediate Tadeo's role in the core unit to cover some of the following roles:
- Governance representation
- Financial management
- Product management
- Product design
- Data analysis

##### Data-Related Frameworks & DLOs
While in this initial phase, we hope to proactively contribute to defining the data-related needs and concerns. We are excited to contribute to their creation and participate in the future marketplace while also being aware of the potential conflicts of interest this may arise.

#### Data provisioning of free and public domain-specific datasets
We'll continue to maintain, improve and optimise our databases and data pipelines to continue providing high-quality, easy-to-use datasets covering a variety of domains such as vaults, liquidations, votes, delegates, and L2s. Currently, we provide this data through the following distribution channels:
- DB shares (direct and through [Snowflake Marketplace](https://app.snowflake.com/marketplace/listings/MakerDAO%20Data%20Insights?search=data%20insights))
- [Data API](https://data-api.makerdao.network/redoc)
- Analytics front-ends: We'll be folding all front-ends into a single platform to allow for higher-quality delivery of them. We call it [MakerDAO for your information](https://makerdao.fyi/en/teleport/overview).
    - [Vaults Tracker](https://tracker-vaults.makerdao.network/)
    - [Governance Tracker](https://tracker-gov.makerdao.network/) ([POC](https://makerdao.fyi/governance/voters))
    - [Teleport analytics](https://makerdao.fyi/en/teleport/overview) ([POC](https://teleport.makerdao.fyi/))
    - [MKR Delegation to support Delegate compensation](https://lookerstudio.google.com/reporting/13f4386d-1847-4447-9bd9-10d624261130/page/zKqeC)
    - [Ranked Poll Simulation](https://ranked-polls.herokuapp.com/)
    - [Token Explorer](https://token-transfer-explorer.herokuapp.com/)

- Public Business Intelligence Tool
    - We've been researching and internally using an [open-source business intelligence tool](https://superset.apache.org/) that allows users to create analyses and dashboards by dragging & dropping. We hope this will empower non-technical community members to create their analyses.

- Analytics Platforms
    - We've been in contact and collaborating with analytics platforms such as Dune Analytics and Flipside Crypto throughout the period. They have done a great job improving the accessibility to Maker data, but we believe we can do better at supporting them and accelerating the creation of datasets that have the same level of detail as DICU's. Part of this initiative will be to find a standard data model that allows us to share our work easily with external analytics platforms.

#### Formalizing and improving support for ad-hoc analysis requests
We've continually provided support for requests coming from the community (Core Unit members, delegates, community members, and researchers). We see an incredible value to the community in being able to give data-driven insights to questions from expert community members. We are looking forward to improving and formalizing this service.


A list of the requests & analysis in the past period:
- Vaults
    - [DAI Fee Performance Report](https://docs.google.com/spreadsheets/d/185Xsy_nx3bAr9OalUwvniuBNoFXQQarSC8b-my1ZYF8/edit)
    - [Historical Vault extract](https://docs.google.com/spreadsheets/d/19HGVn2SdlzwaI4T1bhesIXyXCeWgVKAeFuNApcr7xow/edit)
    - [Vault Origins](https://docs.google.com/spreadsheets/d/19e9xcuAQE8XAywkhUvIY1xuJimgkqBvXkbdaP10J_bI/edit#gid=865074906)
    - [Protocol Parameter changes extract](https://docs.google.com/spreadsheets/d/1yaf11fCU-E0R6fKPU9_M8rUdvowI04-uhLLegYSbeRY/edit#gid=52908146)
- Tokens
    - [DAI holders over time](https://docs.google.com/spreadsheets/d/1e18VG2p1HoM-jBY0kaVim4mor43ZR8SkKAY8rMZlE74/edit#gid=1601082033)
- Governance
    - [MKR Holders with no IOU tokens](https://docs.google.com/spreadsheets/d/1hVaLYXTKH9rtXr-Bz6UGW67ixRwsnJWl6C-hVh-B6fI/edit)
    - [Governing Executive timing](https://docs.google.com/spreadsheets/d/1xA0oY3dsDejXwSJ__VfSTaYG6xgKOoBB7M4d3Rbb8p4/edit)
    - [Governance polls & voters](https://docs.google.com/spreadsheets/d/1ulgpbJZFn0Qovb_riUBT5U0vDVXPSEf_kw6JcOULHME/edit)
    - [Delegate compensation transfers](https://docs.google.com/spreadsheets/d/1RvQJ-Mo26WPaNin4vr1ye7rQepGU8qRprh-5uzaWt_4/edit)
    - [Governance Q2 Comparison](https://docs.google.com/spreadsheets/d/1jv101oIgzDT7TVVPEjd64bOzvais8GCBdhPQdaRRruI/edit#gid=175247339) & [Devcon VI Talk](https://archive.devcon.org/archive/watch/6/2022-statistics-on-makerdao-voter-delegation/)
    - [Ranked Poll Behaviour Analysis](https://docs.google.com/spreadsheets/d/1yTlG4qVB6SHh6Jhf6vokwrQvRiOV9KWE_4yUDziupEI/edit)
    - [ESM Threshold Analysis](https://docs.google.com/spreadsheets/d/19bZ7SuP3BXy6aXyxJ5BfpbyOyWmv88NEaWut69Qd7TM/edit#gid=323920973)

### Team Summary
At present, the Data Insights Core Unit is composed of:
- Facilitator
- Data Engineer
- Front-end Engineer

We'll be looking to increase our expertise in product design (UI & UX) and data analysis & modelling.

### Contingency Planning
In case of unforeseen events that might lead to funding issues, we could decide to execute on the following temporary measures:

- Reduce service & availability of public goods (Data API, db shares)
- Reduce spending on off-sites
- Reduce compensations

Note that we do not expect the above measures to be necessary since we have a certain buffer in place.

### Unwinding and Defunding
Within one month of the ratification of the offboarding proposal, the Facilitator will submit a plan of approach to the governance forum, documenting the process for winding down the Core Unit. This plan will include line items of the necessary tasks to complete unwinding, a projected timeline, and a cost estimation for the completion of the wind-down proposal. After the completion of the shutdown, any remaining budget will be returned to the DAO with the following exceptions:

Any outstanding payments owed to external parties and contributors that have not yet been paid.

The Core Unit and/or its management are involved in active litigation and need to retain a subset of the budget to resolve legal disputes.

After completing the aforementioned wind-down, any excess funds (excluding any severance defined in the offboarding proposal) in the Wallet will be returned to the Maker protocol using DssBlow. The ongoing MKR vesting cycle of contributors will be accelerated to the nearest six-month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at completion of the wind-down. The above clause overrides the 12-month cliff.

### Proposal Parameters
A ranked-choice voting, with the options as follows:

A: Approve one-year budget of 1,080,001.00 DAI
B: Approve one-year budget of 972,000.90 DAI
C: Reject budget
D: Abstain

For this Ratification Poll to conclude successfully and the contained proposal(s) move to Accepted status, each of the following conditions must be true:

A or B vote-weight must exceed C vote-weight when the poll closes.
Winning vote weight must exceed the Minimum Positive Participation value of 10,000 MKR when the poll closes.
