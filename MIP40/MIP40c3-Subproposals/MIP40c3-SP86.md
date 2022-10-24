# MIP40c3-SP86: Modify TechOps Core Unit DAI Budget (TECH-001)

## Preamble

```
MIP40c3-SP: #86
Author(s): @simonkp, @dumitru
Contributors: @lukaszb, @Artautas
Tags: core-unit, tech-001, core-unit-budget
Status: RFC
Date Applied: 2022-10-10
Date Ratified: <yyyy-mm-dd>
Budget Start Date: 2023-02-01
Budget End Date: 2024-01-31
Forum URL:
Ratification Poll URL: https://forum.makerdao.com/t/mip40c3-sp86-modify-techops-core-unit-dai-budget/18290
```

## Sentence Summary

MIP40c3-SP86 renews the TechOps Core Unit (TECH-001) annual budget from February 1st 2023 through to January 31st 2024.

## Paragraph Summary

The TechOps Core Unit handles system administration and technical support needs of Maker Protocol and its Core Units. TECH-001 strives to improve communication and collaboration between the developers, end users, and other MakerDAO stakeholders by applying DevOps principles to software delivery and first-class technical support. For the past year TECH-001 has been delivering infrastructure and support in an automated, safe, fast and repeatable way with the help from some of the modern Infrastructure Administration tools, while continuously monitoring and improving our process throughout.

## Specification

### Motivation

To continue supporting critical MakerDAO infrastructure, the TechOps Core Unit proposes the following budget cap to financially support in delivering on our mandate outlined in the [MIP39c2-SP28 Adding TECH-001](https://forum.makerdao.com/t/mip39c2-sp29-adding-techops-core-unit-tech-001/12070).

After successfully operating for one year with the DAO we were able to lower our current budget, and instead add two potential new hires to be able to bring even more value to the DAO.

In the previous 2022 budget cycle, TechOps Core Unit’s focus was on **infrastructure optimisation**. **The Core Unit’s efforts resulted in reducing the infrastructure costs by $503,000** from initially budgeted $943,000 to $440,000 (annualized current cost).

In the next year TechOps Core Unit will focus on **improving infrastructure decentralization** (including Support of the Endgame Plan, pending the Vote decision) and **increased time zone coverage** (more in the Roadmap section). These improvements require two new hires (more in the People Cost section).

Regardless of the plan to hire two new engineers, **the overall budget for 2023 will be lower than the budget for 2022** thanks to the savings described above.

### Core Unit ID

TECH-001

### Budget Implementation

![TOCU_Wallet_Setup](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP86/implementation.png)

We have been following the above budget implementation since the beginning of our Core Unit which has been working quite well to keep our finances transparent. It follows the standard best practices as recommended by the SES Core Unit and will involve a setup with an Auditor wallet and an Operational Wallet which will be topped up on a monthly basis with a 3-month runway. The budget cap will be streamed from the protocol to the Auditor Wallet to reduce the overhead for Maker governance as much as possible.

The TECH-001 budget is designed with the following in mind:

- Paying for the operational costs to run the Core Unit.
- Having a buffer for unexpected legal, technical, or financial problems.
- Provide the protocol control over funds held in the Auditor Wallet and Operational Wallet.
- Reduce governance overhead to a minimum.
- Provide full transparency and be kept in check by a group of trusted auditors.

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

- Streaming the annual budget for TECH-001 using *DssVest* for 1 year.
- A continuous funding model based on [the SES top-up mechanism](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369).

#### Multisig Wallets

The following multisigs are involved:

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multisig, composed of 1-out-of-2 role-based multisigs as signers. The Auditor Wallet will have two roles defined for its signers: Auditors and Accountants.

The Accountant Role Multi-sig will have 2 signers---both SES permanent team contributors. The Auditor Role Multi-sig will also have 2 signers, also both SES permanent team contributors. SES will conduct the monthly auditing process as described in the Monthly Top-up Cycle, increasing transparency of the auditing process for the community.

The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multisig wallet, ensuring control over these funds and acting as a backup.

This multisig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet.

2. **The Operational Wallet** -- One wallet for TECH-001 operational expenses. This is a 2-out-of-2 multi-sig controlled by TECH-001. Signers include both facilitators of TECH-001.

The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will also be listed as a beneficiary on the Operational Wallet. This allows the protocol to withdraw up to 1B DAI from the Operational Multisig wallet, ensuring control over these funds and acting as a backup.

#### Monthly Budget Statement

Within the first five days of each month, TECH-001 will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended.
2. **Budget Forecast** - A forecast of the Dai amount required to maintain a 3-month operational runway for the team based on the latest available information.
3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transactions**
   * The required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish the 3-month runway as indicated in the Budget Forecast section.
   * Any excess DAI amount above the 3-month forecast in the Operational Wallet that will be returned to the Auditor Wallet

The Monthly Budget Statements from the previous year of operations can be found in [this GitHub repository](https://github.com/MakerOps/tocu-transparency-reporting).

We are also successfully onboarded to the [SES Transparency Dashboard](https://expenses.makerdao.network/core-unit/TECH?searchText=tech) and constantly looking to improve our processes to make our financial reporting more transparent.

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first five days of the month, TECH-001 submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.
2. **Transaction Requests Submission** -- In parallel, TECH-001 submits the necessary transaction requests for the Auditor Wallet signers to sign:
    * DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast 3-month runway. Only applies if the Operational Wallet balance is below this forecast.
3. **Returning Excess Funds** – TECH-001 creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
    * Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet.
4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the TECH-001 DssVest contract, replenishing the available funds in the Auditor Wallet.
6. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by TECH-001 to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist and verify the Accountant’s findings.

A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the TECH-001’s transparency reporting repository on Github.

7. **Transaction Approvals** – Upon acceptance of the Monthly Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet.
8. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer.

As such, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Auditor Wallet Configuration

The following configuration of the TECH-001 Auditor Wallet is implemented:

* Accountant Role Wallet (`0xA2A855Ac8D2a92e8A5a437690875261535c8320C`) as a signer

* Auditor Role Wallet (`0xB2da57e224949acDDe173a5b8A8160c023ea86e6`) as a signer

* `MCD_PAUSE_PROXY` as a beneficiary, with an allowance of 1B DAI withdrawal

* Configure required confirmations as 2-out-of-2

#### Transactions

* **Initial Seed Transfer**

749,685 DAI will be transferred to Auditor multisig wallet (`0x2dC0420A736D1F40893B9481D8968E4D7424bC0B`) on 2023-2-1.

This seeds the Operational Wallet to 3x the Monthly Budget Cap. This also initially funds the Auditor Wallet to 2x the Monthly Budget Cap. The initial transfer funds the Operational Wallet, enabling the Core Unit to begin operations. This also then positions DssVest to begin streaming funds up to the Quarterly Budget Cap each month in the Auditor Wallet.

* **DssVest Stream**

A total of 2,398,988 DAI will be streamed to `0x2dC0420A736D1F40893B9481D8968E4D7424bC0B` starting 2023-2-1 and ending 2024-1-31.

_(2,398,988 DAI is calculated as Quarterly Budget Cap x 4 = 599,747 DAI x 4)._

### Budget Breakdown

The yearly budget cap request for the TechOps Core Unit is 2,398,988 DAI. This equates to a monthly budget cap of 199,916 DAI to support the team’s mandate.

This budget cap secures a team of 7.9 full-time employees (FTE), critical infrastructure and tools, as well as covers all other operational costs listed in the table below.

At the end of the calendar year, all unused funds will be returned to the Maker Protocol. Should the TechOps Core Unit shut down, all unused funds will be returned to the DAO immediately (read more in “Unwinding and Defunding” section).

|Category|Existing|New (1 year)|New (Quarterly)|New (Monthly)|
| --- | --- | --- | --- | --- |
|Compensation and Benefits|$1,090,000|$1,588,750|$397,188|$132,396|
|Cloud Infrastructure|$684,000|$400,000|$100,000|$33,333|
|Tools|$54,000|$40,000|$10,000|$3,333|
|Gas|$0|$30,000|$7,500|$2,500|
|Audits|$20,000|$15,000|$3,750|$1,250|
|Recruiting|$60,000|$60,000|$15,000|$5,000|
|Accounting|$30,000|$40,000|$10,000|$3,333|
|Legal|$50,000|$12,000|$3,000|$1,000|
|Travel|$63,000|$77,000|$19,250|$6,417|
|Conferences and Education|$18,000|$22,000|$5,500|$1,833|
|R&D|$24,000|$0|$0|$0|
|Hardware|$20,000|$0|$0|$0|
|Integrations|$50,000|$0|$0|$0|
|VulcanizeDB|$205,000|$0|$0|$0|
|Contingency|$108,150|$114,238|$28,559|$9,520|
|**TOTAL**|**$2,476,150**|**$2,398,988**|**$599,747**|**$199,916**|

### Budget Details

#### People Cost

The total people cost includes Compensation and Other people costs such as benefits, including healthcare and any taxes and fees relating to compensating people for their work. As a contingency, this has been scaled up by 5% to help with any unknown costs involved in dealing with multiple jurisdictions worldwide.

The essential factor of TechOps services is 24/7/365 support. This requires proper coverage across all time zones. The Core Unit team already has a total time zone coverage with Engineers in the Americas (two Engineers), Europe (three) and APAC (two). We plan to hire another two Engineers in the near future to improve time zone coverage, namely in the Americas (+1) and APAC (+1). **The target Core Unit’s time zone coverage with Engineers: in the Americas (three Engineers), Europe (three) and APAC (three).**

Another important factor of TechOps services is **cost effectiveness**. Combining these two factors together (the 24/7/365 support and cost effectiveness), the team also provides services to other Core Units and commercial entities (subject of separate arrangements), and settle the accounts based on FTE (full-time equivalent) allocation.

#### Infrastructure & Tools

The second biggest cost after people is the Cloud Infrastructure we host and provision.

After operating successfully for one year we are able to **significantly lower the cap that was requested previously** by $503,000 from initially budgeted $943,000 to $440,000 (annualized current cost).

> _Note:_ TECH-001 has to make the final call on whether there are enough resources and budget to host any new infrastructure. Critical Maker infrastructure is our number one priority and the budget has been made to reflect that.

##### VulcanizeDB

This is a database project that caches Ethereum blockchain data for easy and fast querying. The project was initiated in the Maker Foundation and now legacy infrastructure that some of the Maker components depend on, such as:

- Emergency Shutdown Vaults listing.
- Liquidations monitoring.
- Services such as api.makerdao.com and mkranalytics.com.
- Forum badges.

We are currently considering a number of options to replace this service due to minimal development and additional infrastructure cost.

The new budget has absorbed this cost into the Cloud Infrastructure category due to the TechOps team undertaking the maintenance without outsourcing. This resulted in entirely eliminating the cost of $205,000 initially budgeted for the VulcanizeDB maintenance and development.

#### TechOps R&D/POC

This item relates to both Infrastructure costs and Training costs involved in R&D and Proof of Concept (POC) development and we are highlighting it here separately for transparency. We’ve found we can significantly lower this budget cap due to engineers ability to automate the provisioning and destruction of these development environments. Therefore, we are able to test faster without the need to have this development infrastructure constantly on and costing money.

#### Third-party Integrations

We work with a number of projects such as Forta (developed by OpenZeppelin) to help integrate Maker Protocol into their tools to further support the protocol's daily operational tasks, such as running Keepers. Such integrations require support from those projects which will be invoiced to and covered by TECH-001. All the solutions will be open source and made available to the MakerDAO community.

This hasn’t been a focus area for us, so we are able to remove this line item.

#### Audits

Much like in the Smart Contract Development world, audits are an indispensable resource in the Infrastructure Engineering field also. Due to the increasing number of moving components, complexity increases, making it crucial to have as many professional eyes looking over the systems as possible, ensuring there aren’t any weak areas that can be exploited. Of course, our team does this constantly, but additionally we’ll be looking to seek advice from a professional third party.

#### Accounting

Outsourcing the accounting work related to TECH-001, including operational support and annual reporting.

#### Recruiting Fees

We are planning to grow the team by two Engineers in 2023. Recruiting fees are known to be rather high in the industry due to the high demand for quality talent. TECH-001 will keep the bar high for only the best new team members; therefore, recruiters are going to be critical in finding that talent.

#### Legal consultancy

Covering legal opinion consultation, including contract drafting, writing up Terms & Conditions, and questions related to liabilities and insurance.

We are able to significantly lower this cost in the new year after successfully establishing our operations.

#### Travel

A substantial travel budget in order to fund attending conferences and team offsites which are critical for remote teams to build interpersonal relationships and vital for collaboration and retention.

#### Conferences and Education

In our fast-moving industry, it becomes absolutely paramount to keep up to date with new technologies and various implementations done by others. Conferences are a fantastic way to meet like-minded engineers in the space, and also an opportunity to present our own work to an audience. Education can either be face to face or an online course in a subject that an engineer finds relevant to MakerDAO infrastructure.

#### Hardware

Initially, our assumption based on previous experience was that we may need to conduct various tests locally that can't be deployed to our Cloud infrastructure. Local testing hasn’t been needed, therefore we are able to remove this line item.

#### Contingency

The contingency represents 5% of the total budget cap and is there to act as a safety buffer against any unknown or unexpected costs.

### Budget Term

This renewed budget for TECH-001 will begin on February 1st 2023 and end 12 months after (as per the MIP40c3 standard) on January 31st 2024.

### Increasing Value to Maker Tokenholders

Most of the value we deliver to the protocol is outlined in our [Adding TechOps Core Unit MIP](https://forum.makerdao.com/t/mip39c2-sp29-adding-techops-core-unit-tech-001/12070#products-and-services-22). Additionally and taking the recent developments and prioritization by governance into the account:

#### Support Maker Protocol and cooperate with the other Core Units around expansion to L2

* Additional critical infrastructure complexity

* DUX [Gasless voting](https://forum.makerdao.com/t/mip40c3-sp82-modify-development-ux-core-unit-budget-dux-001/17611#roadmap-and-objectives-18) support.
* Oracle CU [expansion to L2s](https://forum.makerdao.com/t/mip40c3-sp75-modify-oracles-core-unit-budget-ora-001/16397#roadmap-and-objectives-16) deployment and monitoring.
* StarkNet Core Unit L2 expansion support.
* Protocol Engineering Core Unit L2 (Optimism and Arbitrum) expansion support
* GovAlpha Core Unit ongoing Governance monitoring.
* General technical support to other CUs.

#### Increased Effort into Infrastructure Decentralization

* In a continuing effort to remove all the single points of failure this is a large but important chunk of work that would require thorough investigation, implementation and additional team members

#### Ongoing Protocol Security and Monitoring

* As the protocol grows, security becomes more and more important --- which is why we’re working with the community to always follow security best practices
* Enhanced monitoring and automation of new and existing services utilizing the latest tools.
* Yearly external party infrastructure security audits and mitigation of any findings.

### Roadmap and Objectives

* Further Decentralization of infrastructure.
  * Research & Implementation.
  * Multi cloud approaches.
  * Increased Kubernetes usage and further implementation.
* VulcanizeDB alternatives.
  * We’ve started on research and implementation of The Graph Protocol.
* Optimizing and automating the delivery of support to MakerDAO by using chat bots, showing work in progress etc.
  * We’ve significantly improved our support request receival and tracking.
  * Would like to further improve the Discord bot usability and work in progress transparency.
* Chaos Engineering implementation for testing the redundancy of components.
* Improving internal and external knowledge sharing and community engagement.

The nature of our Services makes it difficult to put a roadmap in stone as the work we do is very dependent on the work of other Core Units; however, the above should give the reader an idea of the areas for our focus.

### Team Summary

The current team is composed of nine contributors at 5.7 FTE total. We are hoping to add two more engineers at 0.8 FTE and relocate 0.6 FTE from the existing team towards the DAO. With these changes the total team will be 11 contributors at 7.9 FTE total.

The structure below presents a prospective team structure built around the mission of providing technical support services to MakerDAO Ecosystem.

|Role|People|FTE|
|--|--|--|
|Facilitator/DevOps Engineer|2|1.6|
|DevOps Engineer|7|5.6|
|Project Manager|1|0.5|
|Operations Consultant|1|0.2|
|**Total**|**11**|**7.9**|

### Contingency Planning

TechOps Core Unit could guarantee minimally viable business continuity if the approved Budget Proposal was operating during a Bear/Superbear context: 10%/20% lower.

The following measures can come into effect:

* No new hires in the new year - consequences and risks: no improvements to infrastructure decentralization and time zone coverage (superbear)
* One new hire - consequences: no improvements to infrastructure decentralization (bear)
* Aggressive Cloud Infrastructure costs optimizations
* Halting of the existing non-critical Cloud Infrastructure to save costs
* Less off-sites and conferences

### Unwinding and Defunding

In the case of the ratified proposal for the offboarding of the TechOps Core Unit, a process of handover, unwinding and closing down activities will follow.

It will need to include the following activities:

1. **Finishing current initiatives**

All activities that have already started at the point where the Core Unit proposal is rejected, have to be finished. That includes:

* Informing other Core Units on the planned TechOps Core Unit closure activities.
* Finishing all open activities, project and collaboration initiatives that were started with other Core Units.
* Making sure all the tasks in open, blocked, code review or testing statuses are completed.
* Merge all opened Pull Requests.
* See if open branches require to be merged/discontinued.

2. **Transferring ownership of tools and services used by the Community that is currently run by TechOps Core Unit**

There is a set of tools and services (currently 36) that are used by both the Community and the TechOps Core Unit team to do the work that would need to be transferred to another core unit or an entity or a person. All these tools need to continue running with no interruptions. Transfer would consist of changing tools ownership, updating company details, updating billing details, as well as performing small training of how and where each tool is used.

3. **Transfer of infrastructure and the code for setting it up and running**

There is a big part of infrastructure (servers, cloud providers, services) that is currently maintained by TechOps Core Unit. As a part of unwinding the Core Unit, it will be necessary to transfer the ownership to another Core Unit or an entity or a person. Transfer would require giving access (forking) the code that is used for

4. **Transferring of all the monitoring and alerting setup**

Monitoring, tools used for monitoring and alerting, keepers, etc. have to be transferred to another Core Unit, entity or person. Since monitoring and alerting is a critical part of keeping the Maker Ecosystem secure, extensive training has to be performed.

5. **Returning of any unused funds**

Once all the activities have been performed, unused funds will be returned from TechOps operational wallet back to the protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`).

Taking into account the complexity of monitoring and infrastructure and necessity of handover, it is expected that the unwinding process for TechOps Core Unit might take up to six months.

TechOps Core Unit contributor MKR vesting will be accelerated to the nearest 6-month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at completion of the wind-down. The above clause overrides the 12-month cliff.

### Proposal Parameters

This MIP40c3 subproposal provides the following budget options:

- A: Approve decreased budget
- B: Reject budget
- C: Abstain