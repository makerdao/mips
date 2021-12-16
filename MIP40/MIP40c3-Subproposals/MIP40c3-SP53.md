# MIP40c3-SP53: TechOps Core Unit DAI Budget

## Preamble

```
MIP40c3-SP: #53
Author(s): @simonkp
Contributors: @georgen, @dumitru, @lukaszb, @wouter
Tags: core-unit, cu-tocu-001, budget, dai-budget
Status: RFC
Date Applied: 2021-12-08
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip40c3-sp53-techops-core-unit-dai-budget
```

## Sentence Summary

The TechOps Core Unit is requesting an annual budget cap of 2,566,200 DAI.

## Paragraph Summary

The TechOps Core Unit will handle system administration and technical support needs of Maker Protocol and its Core Units. TOCU-001 will strive to improve communication and collaboration between the developers, end users, and other stakeholders by applying DevOps principles to software delivery and first-class technical support. TOCU-001 will get things done safer and faster in an automated and repeatable way with the help from some of the modern Infrastructure Administration tools, while continuously monitoring and improving the process throughout.

## Specification

### Core Unit Name

- TechOps

### Motivation

To continue supporting critical MakerDAO infrastructure, the TechOps Core Unit proposes the following budget cap to financially support in delivering on our mandate outlined in the MIP39c2-SP28 Adding TOCU.

### Budget Implementation

![TOCU_Wallet_Setup|690x379](upload://psxXZF2tHZPCZRjgbKWeYSbiqw9.jpeg)

The budget implementation will follow standard best practices as recommended by the SES Core Unit and will involve a setup with an Auditor wallet and an Operational Wallet which will be topped up on a monthly basis with a 3-month runway. The budget cap will be streamed from the protocol to the Auditor Wallet to reduce as much as possible the overhead for Maker governance. 

*Details will be added ASAP.*

The TOCU-001 budget is designed with the following in mind:

- Paying for the operational costs to run the core unit
- Having a buffer for unexpected legal, technical, or financial problems
- Provide the protocol control over funds held in the Auditor Wallet and Operational Wallet
- Reduce governance overhead to a minimum.
- Provide full transparency and be kept in check by a group of trusted auditors.

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

- Streaming the annual budget for TOCU using *DssVest* for 1 year.
- A continuous funding model based on [the SES top-up mechanism](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369).

### Budget Breakdown

The yearly budget cap request for the TechOps Core Unit is 2,566,200 DAI. This equates to a monthly budget cap of 213,850 DAI to support the team mandate.

This budget cap secures a team of 5.7 full-time employees (FTE), critical infrastructure and tools, as well as covers all other operational costs listed in the table below.

At the end of the calendar year, all unused funds will be returned to the Maker Protocol. Should the TechOps Core Unit shut down, all unused funds will be returned to the DAO immediately.

![Budget table|470x500](upload://uS2LUsEzaYGNQdwqKFompihDZYU.png)

#### Annual budget components

![Budget components|690x396](upload://zOyjqtRO5WUio5eHJqwXyoZI3wH.png)

#### Monthly & Quarterly Budget Cap

![Monthly_Quarterly|633x500](upload://tlwPFpsrv9AkbHjf6IhUJZTsob.jpeg)

### Budget Details

#### People Cost

The total people cost includes Compensation and Other people costs such as benefits, including healthcare and any taxes and fees relating to compensating people for their work. As a contingency this has been scaled by up by 5% to help with any unknown costs involved in dealing with multiple jurisdictions worldwide.

The essential factor of TechOps services is 24/7/365 support. This requires proper coverage across all time zones. The Core Unit team already has a total time zone coverage with Engineers in the Americas (1 Engineer), Europe (3) and APAC (1). We plan to hire another 2 Engineers in the near future to improve time zone coverage, namely in the Americas (+1) and APAC (+1).

Another important factor of TechOps services is cost effectiveness. Combining these two factors together (the 24/7/365 support and cost effectiveness), the team will also provide services for other Core Units and commercial entities (subject of separate arrangements), and settle the accounts based on FTE (Full Time Equivalent) allocation.

The structure below presents a prospective team structure built around the mission of providing technical support services to MakerDAO Ecosystem.

|Role|People|FTE|
|--|--|--|
|Facilitator/DevOps Engineer|2|1.6|
|Engineering Team Lead|1|0.8|
|DevOps Engineer|4|2.6|
|Project Manager|1|0.5|
|Operations Consultant|1|0.2|
|**Total**|**9**|**5.7**|

#### Infrastructure & Tools

The second biggest cost after people is the Cloud Infrastructure we host and provision.

> _Note:_ TOCU has to make the final call on whether there are enough resources and budget to host any new infrastructure. Critical Maker infrastructure is our number one priority and the budget has been made to reflect that.

##### VulcanizeDB

This is a database project that caches Ethereum blockchain data for easy and fast querying. The project was initiated in the Maker Foundation and now legacy infrastructure that some of the Maker components depend on, such as:

- Emergency Shutdown Vaults listing
- Liquidations monitoring
- Services such as api.makerdao.com and mkranalytics.com
- Forum badges

We are currently considering a number of options to replace this service due to minimal development and high infrastructure cost.

#### TechOps R&D/POC

This item relates to both Infrastructure costs and Training costs involved in R&D and Proof of Concept (POC) development and we are highlighting it here separately for transparency. As systems evolve and new solutions come to surface, our engineers constantly implement these in development environments, assess their usability and function and potentially implement this solution in the production environments to further improve our infrastructure. This item would cover the costs associated with hosting those development environments.

#### Third-party integrations

We work with a number of projects such as Forta (developed by OpenZeppelin) to help integrate Maker Protocol into their tools to further support the protocol's daily operational tasks such as running Keepers. Such integrations require support from those projects which will be invoiced to and covered by TOCU. All the solutions will be open source and made available to the MakerDAO community.

#### Audits

Much like in the Smart Contract Development world, audits are an indispensable resource in the Infrastructure Engineering field also. Due to the increasing number of moving components, complexity increases, making it crucial to have as many professional eyes looking over the systems as possible, ensuring there aren’t any weak areas that can be exploited. Of course our team does this constantly, but additionally we’ll be looking to seek advice from a professional third party.

#### Accounting

Outsourcing the accounting work related to TOCU-001, including operational support and annual reporting.

#### Recruiting Fees

We are planning to grow the team by 2 Engineers and 1 Project Manager in 2022. Recruiting fees are known to be rather high in the industry due to high demand for quality talent. TOCU will keep the bar high for only the best new team members therefore recruiters are going to be critical in finding that talent.

#### Legal consultancy

Covering legal opinion consultation including contract drafting, writing up Terms & Conditions, and questions related to liabilities and insurance.

#### Travel

A substantial travel budget, in order to fund attending conferences and team offsites which are critical for remote teams to build interpersonal relationships and vital for collaboration and retention.

#### Conferences and Education

In our fast moving industry, it becomes absolutely paramount to keep up to date with new technologies and various implementations done by others. Conferences are a fantastic way to meet like-minded engineers in the space, and also an opportunity to present our own work to an audience. Education can either be face to face or an online course in a subject that an engineer finds relevant to MakerDAO infrastructure.

#### Hardware

The TechOps Core Unit engineers may need to conduct various tests locally that can't be deployed to our Cloud infrastructure. This can include but not limited to Ethereum nodes that require specific hardware components or application building and testing hardware.

#### Contingency

The contingency represents the 25% of the total budget cap and is there to act as a safety buffer against any unknown or unexpected costs.