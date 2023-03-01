# MIP40c3-SP95: Modifying Sidestream Auction Services Core Unit Budget (SAS-001)

## Preamble

```
MIP40c3-SP#: 95
Author(s): @danik
Contributors: 
Tags: core-unit, cu-sas-001, budget, dai-budget
Status: RFC
Date Applied: 2023-02-08
Date Ratified:
Budget Start Date: 2023-04-01
Budget End Date: 2024-03-31
Forum URL: https://forum.makerdao.com/t/mip40c3-sp95-modifying-sidestream-auction-services-core-unit-budget-sas-001/19737
Ratification Poll URL: 
```

## Sentence Summary

MIP40c3-SP95 modifies the DAI budget for the SAS-001 Core Unit, continuing operations from 2023-04-01 until 2024-03-31.

## Paragraph Summary

The original budget for SAS-001 expired on 30-Nov-2022. Afterward, SAS was allowed to operate on leftover funds to bridge the funding gap.

This proposal creates a new budget stream for the Core Unit to continue operations from 2023-04-01 onwards.

The structure of the budget maximizes accountability in light of the current uncertainty on precise Endgame requirements.

As SAS transitions towards becoming a Full-Stack Development Ecosystem Actor for the Endgame, this budget will cover:

* Pre-Project Endgame Work (current examples include: Contributing to Governance Security Scope creation, Evaluation of a NoCode Tool for Spell creation, various contributions to increase developer accessibility)
* Maintenance of Existing Software (Auctions UI and APIs, …)

As we want to operate as transparently as possible, every time SAS finds an opportunity with a clearly defined project with a fixed budget, we'll use the project budget instead of the CU budget.

A current example: For at least the next two months, we'll be working on the Ecosystem API (Switchboard) Project. The respective monthly project budget will cover 60-80 % of the monthly CU budget. This means that 60-80 % of the SAS CU budget during these months will be refunded to the DAO.

Overtime, as more Endgame projects become clearer, there will be various project budgets available. Therefore, the CU budget will be used less.

This subproposal creates a new budget stream for the Core Unit to continue operations from 2023-04-01 to 2024-03-31.

**Other Changes & modifications from the original [MIP40c3-SP43](https://forum.makerdao.com/t/mip40c3-sp43-adding-sidestream-auction-services-core-unit-budget-sas-001/10799/1) budget subproposal:**
* SAS-001 Annual Budget Cap reduced from 1,130,392.56 DAI to 850,950.00 DAI.
    * Updated Budget Breakdown.
    * Updated Transaction.
    * Updated Smart Contract Implementation.
* Addition of new sections to meet the [MIP4c2-SP19](https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250) amendment:
    * Contingency Planning - Scenarios .
    * Return Excess Funds.
    * Unwinding and Defunding.
* Minor grammatical and formatting updates to the Budget Implementation.

## Specification

### Motivation

Many things have changed for SAS with the Pregame. We broadly expanded our CU work scope to maximize our effectiveness for the DAO. Auctions and Liquidations have become a smaller fraction of our daily work in the past months. Instead, we focus on contributing to various Endgame-related streams such as Governance Security and Maker Smart Contract Development Accessibility.

Over the next year, SAS wants to become a trusted Ecosystem Actor that operates on project-based budgets.

Therefore, the structure of this budget proposal maximizes accountability in light of the current uncertainty on precise Endgame requirements.

Whenever SAS finds a clearly defined project with a set budget, we'll use the project budget instead of the CU budget. We expect more clearly defined and budgeted Endgame software development projects later this year. SAS will pick them up and, therefore naturally transition towards a project-based funded Ecosystem Actor.

Parallel to this budget, we are updating our mandate to reflect the expanded work scope of the team. 

### Description of the current pipeline of work items

The Pregame is evolving fast. Most of the below-mentioned work items emerged during the past two months, and we expect a similar rate of change moving forward. Therefore, we cannot give a longer-term outlook of which work items will emerge and how they will be prioritized. So, here's an overview of the status quo and a few outlooks, where appropriate.

#### Current Endgame Pre-Project Streams

##### Building up Maker Smart Contract Capabilities and increasing its Accessibility

So far, Smart Contract development at Maker has been exclusive to a small group of developers. This shall change for the Endgame so that there can be an open competition of various Ecosystem Actors on providing Maker-specific Smart Contract Development. For this stream, SAS shipped its first two Smart Contracts and started documenting learnings and best practices in a developer diary. We plan to keep developing more smart contracts (where appropriate) and document existing and new learnings.

##### Contributing to Governance Security Scope

We are bringing in an outside perspective of a future service provider. We strive to make the Scope accessible to other developer ecosystem actors so that Governance Security work (e.g., spell creation) has a good DX and can be picked up by new teams in the future.

##### Conceptualizing a NoCode Tool/Toolkit for Spell Creation and Checking

Emerging from the Governance Security Scope, there is a demand for a better solution for the creation of the most common Governance Security operations (e.g., simple DAI Transfers, but also 25+ other operations). SAS leads the initiative around conceptualizing and validating alternative solutions. Once all blockers are resolved, this can become a specified project with a project-based budget.

#### Maintenance of Existing Products

We run and maintain all auction-related software. The maintenance work involves patches, infrastructure checks, reactions to protocol changes (e.g., changes to vault engine), and monitoring of external services (e.g., 1inch API changes). This takes on average three days of work per month (combined PM, Dev, Infra), which is <5% of our total work. Occasionally, new development work is necessary. When a collateral type is [onboarded](https://github.com/sidestream-tech/unified-auctions-ui/tree/main/core#collateral-onboarding) (last one GNO) or offboarded, but also for one-time efforts like desktop app packaging and at some point in the future Layer 2 support.

#### Project-based Budget Streams

##### Ecosystem API (Switchboard) Boilerplate

This project is about making organizational MakerDAO data (Actors, budgets, reports, etc.) accessible via APIs.

This is the first project budget that SAS acquired. It is a project initiated by SES where SAS takes over the boilerplate development within a clearly defined scope. We kicked off the collaboration in the 3rd week of February and expect to start full-speed development at the beginning of March. We expect the current scope to take around two months of development work. Afterward, the project may transition into SES internal development. During the two months of full-speed development, we expect the project to cover 60 to 80% of the total CU budget.

### Core Unit ID

SAS-001

### Budget Implementation

>Modifications from the Original MIP40: [MIP40c3-SP43](https://forum.makerdao.com/t/mip40c3-sp43-adding-sidestream-auction-services-core-unit-budget-sas-001/10799/1)
> * Reflect Endgame participation
> * Included budget transparency graphic & link. 
> * Minor grammatical and formatting updates.

![SASFlow](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP95/SASFlow.png)

**SES Auditor Framework Details**

The budget implementation will follow standard best practices as recommended by the SES Core Unit. The setup of this framework uses an Auditor wallet and an Operational Wallet, which will be topped up every month with a three-month runway. The budget cap will be streamed from the protocol to the Auditor Wallet to reduce the overhead for Maker governance. 

#### Multisig Wallets

The following multisigs are involved: 

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multi-sig, composed of 1-out-of-2 role based multi-sigs as signers. The Auditor Wallet will have two roles defined for its signers: Auditors and Accountants. 

   The Accountant Role Multi-sig will have two signers---both SES permanent team contributors. The Auditor Role Multisig will also have two signers, also both SES permanent team contributors. SES will conduct the monthly auditing process as described in the Monthly Top-up Cycle below, increasing transparency of the auditing process for the community.

   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multisig wallet, ensuring control over these funds and acting as a backup.

   This multisig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet.

2. **The Operational Wallet** -- This is a 2-out-of-3 multisig controlled by SAS-001. 

#### Monthly Budget Statement

Within the first five days of each month, SAS-001 will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended.
2. **Budget Forecast** - A forecast of the Dai amount required to maintain a three-month operational runway for the team based on the latest available information.
3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transactions**
   * The required DAI amount from the Auditor Wallet sent to the Operational Wallet to replenish the three-month runway as indicated in the Budget Forecast section.
   * Any excess DAI amount above the three-month forecast in the Operational Wallet that will be returned to the Auditor Wallet.

The Monthly Budget Statements can be found in [this GitHub repository](https://github.com/makerdao-sas/transparency-reporting).

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first five days of the month, SAS-001 submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.
2. **Transaction Requests Submission** -- In parallel, SAS-001 submits the necessary transaction requests for the Auditor Wallet signers to sign:
   * DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast three-month runway. This only applies if the Operational Wallet balance is below this forecast.
3. **Returning Excess Funds** – SAS-001 creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   * Excess DAI Transactions – DAI transactions for Operational Wallets with a balance above the Three-Month Budget Forecast will be returned to the Auditor Wallet.
4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the SAS-001 DssVest contract, replenishing the available funds in the Auditor Wallet.
5. **Auditors' Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by SAS-001 to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant's report generated from the checklist, and verify the Accountant's findings. 
    * A summary of each audit cycle's report will be made available to the Maker Community at the conclusion of the audit cycle on the SAS-001's transparency reporting repository on GitHub.
6. **Transaction Approvals** – Upon acceptance of the Monthly Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet.
7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer. 
    * The Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Multisig Wallet Configurations

##### SAS-001 Auditor Wallet (2:2)

* Controlled by the SAS Auditors.
* Address: `0xb1f950a51516a697E103aaa69E152d839182f6Fe`
* Signers
    * SES Accounting (1:2, `0xA2A855Ac8D2a92e8A5a437690875261535c8320C`)
    * SES Auditing (1:2, `0xB2da57e224949acDDe173a5b8A8160c023ea86e6`)
* Beneficiary Role
    * Maker Protocol (MCD_PAUSE_PROXY, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`), with an allowance of 1B DAI withdrawal.

##### SAS-001 Operational Wallet (2:3)

* Controlled by the SAS Core Unit team.
* Address: `0x465AA62a82E220B331f5ECcA697c20E89554B298`
* Signers
    * `0x274736890166046f00f424fEB64b2E468841ebfE`
    * `0x4f3B7fb6204C614B28F0e1f50Dc1C99175631678`
    * `0xD95802afC02B49e5C1a6016D44d08fe37EAfEc9d`

#### Transactions

* **Initial Seed Transfer**

212,737.5 DAI will be transferred to `0xb1f950a51516a697E103aaa69E152d839182f6Fe` address on Date 2023-04-01.

This seeds the Auditor Wallet to 3x the Month Budget Cap. This also then positions DssVest to begin streaming funds up to the Quarterly Budget Cap each month in the Auditor Wallet. 
     
#### Smart Contract Implementation

This budget implementation uses the DssVest. One of the two following budget streams is approved based on the rank-choice voting outcome of this subproposal's Ratification Poll.

* **New Budget Stream**
    A total of 850,950 DAI will be streamed to `0xb1f950a51516a697E103aaa69E152d839182f6Fe` starting 2023-04-01 and ending 2024-03-31.
  

### Budget Breakdown

This budget proposal is optimized for reducing our existing budget based on actual needs without impairing the execution of our mandate.

#### Budget Details

This section describes the Expense Categories that comprise the budget and how their monthly amount was determined. We have slightly updated the budget categories compared to last year's budget MIP to stay in accordance with MIP40 budget category updates. 

**Compensation and Benefits:** This category covers the monthly salaries of the 3.5 FTE in the team on a contractor basis. We've stayed in the same team for the past 20 months and intend to continue our work in a similar manner. There is no change in the compensation.

**Travel and Entertainment:** To act more like an EA we decided to cut this category to zero (contributors cover more expenses from their compensation).

**Software Development Expense:** Stays the same as last year (formerly called Engineering contractors). We've made good experience with outsourcing simpler development tasks to trusted contractors so that our Senior Core Team can focus on harder topics.

**Software Expense:** Increases by 33% as we expect to run Infrastructure for more products. This category includes all SaaS and Infrastructure costs. 

**Gas Expense:** 75% decrease to last year based on past experience.

**Admin Expense:** New category, pooling together Office Space and Other Contractor Services from last year. We were able to reduce these expenses by 76% mainly due to removing payment processor fees a few months ago.

**Professional Services:** To act more like an EA we decreased this position by 50% (Contributors cover more expenses from their compensation).
 
**Contingency Buffer:** Similar to other Core Units, we significantly reduce the buffer. After operating for a year with the current budget, we have a better understanding of which costs and risks can occur.

Any changes to these amounts will be reported in the transparency report and reviewed by our budget auditors.

|Summary|Existing Budget (1y) |New Budget (1y)| Monthly Equivalent|
| --- | --- | --- | --- |
|Compensation and Benefits|$652,050.00|$652,050.00 |$54,337.50|
|Travel & Entertainment|$30,000.00|$0|$0|
|Software Development Expenses (formerly Engineering contractors)|$120,000.00|$120,000.00|$10,000.00|
|Software Expense|$18,000.00|$24,000.00|$2,000.00|
|Admin Expense (formerly Office and Other Contractor)|$78,900.00|$18,900.00|$1,575.00|
|Professional Services|$60,000.00|$30,000.00|$2,500.00|
|Gas Expense|$24,000.00|$6,000.00|$500.00|
||||
Sum without Buffer|$982,950.00|$850,950.00|$70,912.50|
Contingency Buffer|$147,442.50|$0|$0|
Sum with Contingency Buffer|$1,130,392.50| $850,950.00|$70,912.50|

Total annual budget:

* Existing: $1,130,392.50
* New Budget: $850,950.00 **(~75% of existing)**

### FTE - Forecast

|Team members|Headcount|FTE (Full-Time Equivalent)|
| --- | --- | --- |
|Facilitator|1|0.5|
|Designer & Product Manager|1|1|
|Full-stack Engineer|3|2|
|Total|5|3.5|

### Budget Term

The budget commences on 2023-04-01 and ends on 2024-03-31.

### Increasing Value to Maker Token holders

Liquidations and auctions are important security mechanisms to keep the Maker Protocol free of debt. A healthy auction ecosystem helps operate the protocol sustainably, increasing trust. Besides, a healthy auction ecosystem helps with better outcomes for vault owners in cases of liquidations, which can increase user satisfaction. These factors are the motivation for keeping a dedicated Auction Services Team.

In the past 19 months, we've shown that we constantly and independently execute our roadmap and keep shipping in bi-weekly sprints. Some of the delivered value includes:

* An added layer of security via a highly accessible Unified Auctions UI that increases auction participation and is always up-to-date with the latest state of the protocol (e.g., support of new collaterals; in the future auction settlement on L2).
* A fallback solution via a keeper implementation that prevents auctions in which there is no participation and functions as a means to test contracts during the collateral onboarding process.
* Decentralization of protocol interaction by providing the products (i.e., UI, keeper) in a way so that everyone can spin them up and run on their own.

While we've executed most initial roadmap items, our mandate requires continued work and further work items to maximize the value for Maker Token holders. See the Roadmap section below.

Lastly, we want to point out that we see ourselves as a small, efficient, and loyal software development team. We stayed in the same team composition for the past 16 months and gained a lot of specific, technical knowledge about the protocol. While our mandate might evolve, we believe that the engineering value we can deliver to the Maker protocol will keep compounding over time. 


### Contingency Planning - Scenarios

In case of unforeseen events that might lead to funding issues, we could decide to execute the following temporary measures:
* Scale down our SaaS subscriptions.
* Halt majority of contracting work.
* Decrease headcount.

### Unwinding and Defunding

Within one month of the ratification of the offboarding proposal, the Facilitator will submit a proposal to the community documenting the plan for the wind-down of SAS-001. This plan will include line items of the necessary tasks to complete unwinding, a projected timeline, as well as a cost estimate for completion of the wind-down proposal. After the completion of the shutdown, any remaining budget will be returned to the DAO with the following exceptions:
* Any outstanding payments that are owed to external parties and contributors but have not yet been paid.
* If SAS-001 and/or its management are involved in active litigation and need to retain a subset of the budget to resolve legal disputes.

[SAS-001 contributor MKR vesting](https://forum.makerdao.com/t/mip40c3-sp44-adding-sidestream-auction-services-core-unit-mkr-budget-sas-001/10802) will be accelerated to the nearest six-month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at completion of the wind-down. The above clause overrides the 12-month cliff.

### Return of Excess Funds

As defined in the Budget Implementation section above, SAS-001 follows the SES Auditor Framework. Excess funds above the three-month forecast will be returned every month, meeting the requirements of [MIP4c2-SP14](https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250).


### Related Documents
* [MIP39c2-SP25: Adding Sidestream Auction Services Core Unit - SAS-001](https://forum.makerdao.com/t/mip39c2-sp-adding-sidestream-auction-services-core-unit-sas-001/10796)
* [MIP40c3-SP44: Adding Sidestream Auction Services Core Unit MKR Budget - SAS-001](https://forum.makerdao.com/t/mip40c3-sp-adding-sidestream-auction-services-core-unit-mkr-budget-sas-001/10802)
* [MIP41c4-SP26: Sidestream Auction Services Facilitator Onboarding - SAS-001](https://forum.makerdao.com/t/mip41c4-sp-sidestream-auction-services-facilitator-onboarding-sas-001/10797)
