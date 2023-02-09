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
Data Insights is requesting a budget renewal with the intention to support the transition to Endgame. The budget includes two options, current budget and a reduced budget (10%).

## Specification

### Motivation
The main motivation of this budget proposal is to support the transition to Endgame. Continuing the current support to Core Units and engaging with Endgame initiatives.

#### 2022 learnings
During this period we've been able to increase our contributions to the community, focusing on collaborating with others to provide the highest value possible. 
While we started the year focused on foundational data work, allowing other teams to build on top of us, we realised that this model doesn't drive enough value; while 90% of the work is done, the last 10% is where the most amount of value to the community is unlocked. We call it the *Horton hears a who!* problem, where people need to see it to believe in it (and use it). With this in mind, we progressed into delivering end-to-end solutions, such as [Ranked Poll Simulation](https://ranked-polls.herokuapp.com/), [Token Explorer](https://token-transfer-explorer.herokuapp.com/), [Teleport Monitoring](https://teleport.makerdao.fyi/) web-apps.

We are happy to maintain our fiscal responsibility, focusing on maximising the ROI to the community and hope to continue doing so in the future. However, this has led us to run at maximum capacity for an extended period of time, we hope to alleviate this by redistributing the work.

#### Support Endgame transition
Endgame brings a lot of new and exciting opportunities while the transition has a lot of uncertainty we are committed to supporting the vision and helping it succeed.

##### Continued support & EA transition by demand
Our aim is to continue providing support to the community. As the Core Units transition into Ecosystem Actors, we will be entering into bilateral agreements with them for the products and services they require, in turn transitioning DICU towards an EA "by demand". This will gradually shift the operational funding of Data Insights from MIP40 towards client contracts.

Core Units that we regularly collaborate with are:
- Risk
- Growth
- PE
- GovAlpha

##### Support for Phoenix Labs & Spark Protocol
We are excited to announce that Tadeo will be joining Phoenix Labs to support the [launch of the Spark Protocol](https://forum.makerdao.com/t/announcing-phoenix-labs-and-spark-protocol/19731/4).
Phoenix Labs is focused on vertically integrating existing solutions with Maker. To that end, Tadeo will support this vision by taking the role of Developer Relations.

Moving forward Tadeo will split their time between Data Insights and Phoenix Labs.

As Facilitator, Tadeo has fulfilled various roles within DICU. In order for us to continue providing value, we will disintermediate Tadeo's role in the core unit by onboarding new members to fulfil the following roles:
- Product design
- Financial management
- Data analysis

This transition will allow Tadeo to contribute to the development of Spark Protocol while also improving the speed and quality of the work in DICU; allowing us to improve in our financial reporting as well as provide a more consistent and broad support for ad-hoc analysis requests.

Achieving this, Tadeo's involvement will pertain to the following roles:
- Governance representation
- Product management

Tadeo's compensation will come exclusively from the DICU budget until the Ecosystem Scope Framework is ready. 

##### Data related Frameworks & DLOs
While this in initial phase, we hope we can proactively contribute to defining the data related needs and concerns. We are excited to contribute to their creation and participate in the future marketplace, while also being aware of the potential conflicts of interest this may arise.

### Core Unit ID
DIN-001

### Budget Implementation

### Budget Breakdown
[WIP]

#### Scenarios
Scenario A - 1,080,001.00 DAI
- Same budget cap as 2022

Scenario B - 972,000.90 DAI
- 10% reduction vs 2022


#### Budget Details [WIP]

**Compensation and Benefits**

**Infrastructure Expense**
While we use a few services to run the data analytics service, such as servers, nodes, data source providers and hosted database provider; the latter is the main driver of costs given that the majority the majority of the computations are done there, meaning that any increase in usage in our services is reflected there which is affected by an increase in the usage or creation of new datasets is relfected there. The past year the computation has increased on average by 20% every month. We expect this to level off, although the way users from programatic interfaces normally operate is a big bump when they onboard and then a constant use of said service.

**Software Expense**
We use software solutions such as Google Workplace and Breadcrumbs.

**Admin Expense**

**Contingency & Continuation Buffer**
Similar to last period's budget, we include a minimal buffer in our calculations to cover unforseen or under-calculated expenses. The bulk of the variability stems from computation cost of serving our data products, what we see is that once usage increases, it rarely decreases so an additive behaviour occurs, this increases happen in the form of "bumps" so while we estimate month over month growth, the real cost can be lumpy.


### Budget Term
- Start Date: 2023-05-01
- End Date: 2024-04-30

### Roadmap and Objectives

Core Units that we collaborate with:
- Risk
    - Data provisioning
- Growth
    - Ad-hoc analyses & requests
    - Automated reporting
- PE
    - Teleport analytics dashboard
- GovAlpha
    - Delegate compensation metrics
    - Google Sheet extract for poll data
    - Governance Tracker
    - Data provisioning for Governance Dashboard 
    - Data provisioning for Protocol Parameters UI
    - Ranked Poll Simulation web-app
- SES
    - Data provisioning
        - This is a fairly new project to create a dataset for on-chain data related to the Expenses Dashboard

Other community members we collaborate with:
- Oasis
    - Data provisioning

- Delegates
    - Ad-hoc analyses & requests

- Researchers
    - Ad-hoc analyses & requests
        - Particularly Xule in his thesis regarding DAO governance

#### Data provisioning of free and public domain specific datasets
We'll continue to maintain, improve and optimise our databases and data pipelines to continue providing high quality, easy to use datasets covering a variety of domains such as vaults, liquidations, votes, delegates and L2s. Currently we provide this data through the following distribution channels:
- DB shares
- Data API

In the future, we want to expand in the following distribution channels:
- Public BI Tool
    - We've been researching and internally using an [open source business intelligence tool](https://superset.apache.org/) that allows users to create analyses and dashboards by dragging & dropping, we hope this will empower non-technical community members to create their own analyses.

- Analytics Platforms
    - We've been in contact and collaborating with analytics platforms such as Dune Analytics and Flipside Crypto throughout the period. The have done a great job improving the accessibility to Maker data but we believe we can do better at supporting them and accelerating the creation of the datasets that have the same level of detail as DICUs.

#### makerdao.fyi
While creating independent end to end data products, we realised that it made more sense to aggregate our work into a single web-application. We therefore have been working [makerdao.fyi](https://makerdao.fyi/en/teleport/overview) for the past few months, currently focusing on Teleport/L2s and Governance. We'll be migrating our existing web-apps into makerdao.fyi and continuing to expand our support in other domains.

#### Formalizing and improving support for ad-hoc analysis requests
We've continually provided support for requests coming from the community (Core Unit members, delegates, community members, and researchers). We see the incredible value coming from expert community members asking the right questions, we are looking forward to improving and ensuring continued support for this.


### Team Summary
At present, the Data Insights Core Unit is composed of:
- Facilitator
- Data Engineer
- Front-end Engineer

Our objective is to find contributors that can cover the replacement of the Facilitator's duties and reduce the workload on the current team:
- Product design
- Financial management
- Data analysis

### Contingency Planning
In case of unforeseen events that might lead to funding issues, we could decide to execute the following temporary measures:

- Reduce service of public goods (Data API, db shares)
- Reduce spending on off-sites
- Reduce compensations

Note that we do not expect the above measures to be necessary since we have a certain buffer in place.

### Unwinding and Defunding
Within one month of the ratification of the offboarding proposal, the Facilitator will submit a plan of approach to the governance forum, documenting the process for winding down the Core Unit. This plan will include line items of the necessary tasks to complete unwinding, a projected timeline, as well as a cost estimation for completion of the wind-down proposal. After the completion of the shutdown, any remaining budget will be returned to the DAO with the following exceptions:

Any outstanding payments that are owed to external parties and contributors but have not yet been paid.

The Core Unit and/or its management are involved in active litigation and need to retain a subset of the budget to resolve legal disputes.

After the completion of the aforementioned wind-down, any excess funds (excluding any severance defined in the offboarding proposal) in the Wallet will be returned to the Maker protocol using DssBlow. The ongoing MKR vesting cycle of contributors will be accelerated to the nearest 6-month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at the completion of the wind-down. The above clause overrides the 12-month cliff.

### Proposal Parameters
A ranked-choice voting, with the options as follows:

A: Approve Scenario A
B: Approve Scenario B
C: Reject budget
D: Abstain

In order for this Ratification Poll to conclude successfully and for the contained proposal(s) to move to Accepted status, each of the following conditions must be true:

A or B vote-weight must exceed C vote-weight when the poll closes.
Winning vote weight must exceed the Minimum Positive Participation value of 10,000 MKR when the poll closes.