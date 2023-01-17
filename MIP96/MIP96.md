# MIP96: The Ecosystem Auditor Framework

## Preamble

```
MIP#: 96
Title: The Ecosystem Auditor Framework
Author(s): @retro, @juan
Contributors: @ses-core-unit
Tags: process
Type: General
Status: RFC
Date Proposed: 2022-01-11
Date Ratified: 
Forum URL: https://forum.makerdao.com/t/mip96-the-ecosystem-auditor-framework/19389
Ratification Poll URL:
```

## Sentence Summary
The Ecosystem Auditor Framework is a systematic and recognized process that enables a mature lifecycle for operational funds at MakerDAO. 

## Paragraph Summary
The Ecosystem Auditor Framework is a formal process for transparent and consistent reporting on operational funds enabled by Maker Governance to its decentralized workforce. The framework defines specific roles, wallets, and processes which pair the use of operational funds to a mature reporting structure. The goal of this MIP is to also further refine the term "Ecosystem Audited Budget" at MakerDAO by labeling this term as a formal, well-defined process to avoid the misuse of the term. This framework is developed and pioneered by the @SES-Core-Unit and is intended to be compatible with all operational teams at MakerDAO, including Core Units, MIP55 SPF recipients, Work Proposals and future Governance approved mechanisms of providing funds for operational expenses. 

## Component 

**MIP96c1: The Accountant Role**  
Defines the role, responsibilities, and qualifications for an individual to be recognized as an Accountant. 

**MIP96c2: The Auditor Role**  
Defines the role, responsibilities, and qualifications for an individual to be recognized as an Auditor.

**MIP96c3: The Operational Wallet Signer Role**  
Defines the role, responsibilities, and qualifications for an individual to act as a signer on an Operational Wallet. 

**MIP96c4: The Auditor Wallet**  
Defines the necessary multi-sig standards for a wallet to be considered a recognized Auditor Wallet in this framework.

**MIP96c5: The Operational Wallet**  
Defines the necessary multi-sig standards for a wallet to be considered a recognized Operational Wallet in this framework.

**MIP96c6: The Monthly Budget Statement**  
Defines the required standards for a Monthly Budget Statement to be recognized under this framework.

**MIP96c7: The Monthly Audit Report**  
Defines the required standards for a Monthly Audit Report to be recognized under this framework.

**MIP96c8: The Monthly Top-up Cycle**  
Defines the processes and flow of funds under this framework.

**MIP96c9: Disputes and Arbitration**  
Defines the circumstances and processes for escalating disputes to Maker Governance for arbitration. 

## Motivation

The Ecosystem Auditor Framework provides leaders of decentralized workforce teams a well-defined pathway to enabling transparent and mature reporting for their operations with a plug-and-play process. This process is the evolution of the @SES-Core-Unit Auditor Framework which informally implemented this best practice fairly consistently by Core Units, however, it has been observed that not all [auditor frameworks are created equal](https://forum.makerdao.com/t/interim-facilitator-assessment-for-ces-001/19196#not-all-auditors-are-created-equally-28). The motivation to define @SES-Core-Unit's Auditor Framework as a recognized MIP process is to reserve the label of an "Ecosystem Audited Budget" as a consistent reference point for Governance to understand the underlying operational maturity applied when requesting and reporting on operational expenses. Additionally, this process has historically only applied to Core Unit operations, but as we see the evolution of SPFs and potential future funding mechanisms, this MIP enables access and utilization of the Ecosystem Auditor Framework to those funding mechanisms as well. 

For the sake of clarity for the DAO to implement this MIP during the transition of MakerDAO into an Endgame ready organization, the following terms can be applied below: 
* Operational Team = Core Unit, SPF recipient, or other recognized group receiving funds from MakerDAO for expenses. 
* Team Lead = Facilitator, SPF author/requester, or other recognized individual leading a funded Operational team with responsibilities for reporting to the DAO. 

This MIP does not impact any currently approved budgets at MakerDAO and utilization for current or future budgets is optional. It is being introduced as an available tool for the DAO to use as desired.

## Specification

### MIP96c1: The Accountant Role

#### Role & Responsibilities

Should any of these responsibilities not be fulfilled, it should be viewed as a breach of role. 
* The Accountant Role in this framework is defined as the operational support resource for gathering and conducting the preliminary information to produce the Monthly Audit Report (defined in MIP96c7) that is needed to complete the Monthly Audit Cycle (defined in MIP96c8). 
* The Accountant Role is the receiver of information from a Team Lead. On a defined cadence, Accountants will review both the Team Lead's submitted information in addition to on-chain information, and produce the initial audit report that is used throughout the lifecycle of this process. 
* The Accountant Role signature is required to call available funds from the DssVest stream into the Auditor Wallet. 
* The Accountant Role is also a signer on the Auditor Wallet (defined in MIP96c3) for a team through a nested multi-sig configuration. 

#### Qualifications and Restrictions

* This framework requires two individuals to serve in the Accountant Role for any Operational team reporting under this framework. 
* Any Core Unit Contributor, Mandated Actor, or Delegate can fulfill the Accountant Role with no restrictions on their relationship with the Operational Team. 

#### Onboarding process of the Accountant Role

1. On-chain, a Gnosis Safe multi-sig wallet must be created with the following configurations: 
    * Quorum: 1:2 
    * Signers: ETH addresses of the individual signers
       * The signer address cannot be multi-sigs in their own right. 

2. Once the multi-sig wallet is configured, the two individual signers of the Account Role must post publicly (1) their desire to serve as an accountant publicly in the MakerDAO forum, (2) the ETH address that they will sign from, (3) and the Account Role Multi-sig ETH address. This is to be completed as a comment in the forum topic where an Operational team declares their wallet will follow this MIP's framework. 

### MIP96c2: The Auditor Role

#### Role & Responsibilities

Should any of these responsibilities not be fulfilled, it should be viewed as a breach of role. 
* The Auditor Role in this framework is defined as the final reviewers and arbitrators of Monthly Budget Statement & Audit reports and the overall lifecycle for operational funds. 
* The Auditor Role will receive the initial Monthly Audit Report produced by the Accountant Role and review it for any discrepancies or disputes. 
* The Auditor Role interfaces with the Team Lead that submitted the report to solve discrepancies, and improve the overall reporting quality of the report as time goes on. 
* The Auditor Role signature is required to call funds from the DssVest stream into the Auditor Wallet. 
* The Auditor Role will also be a signer on the Auditor Wallet (defined in MIP96c3) for a team through a nested multi-sig configuration. 
* The Auditor is also required to participate in Disputes or Arbitration that arises (defined in MIP96c8). 

#### Onboarding process of the Auditor Role

1. On-chain, a Gnosis safe multi-sig wallet must be created with the following configurations: 
    * Quorum: 1:2 
    * Signers: ETH addresses of the individual signers
        * The signer address cannot be multi-sigs in their own right. 

2. Once the multi-sig wallet is configured, the two individual signers of the Auditor Role must post publicly (1) their desire to serve as an Auditor publicly in the MakerDAO forum, (2) the ETH address that they will sign from, (3) and the Auditor Role Multi-sig ETH address. This is to be completed as a comment in the forum topic where an Operational Team declares their wallet will follow this MIP's framework. 

#### Qualifications and Restrictions

* This framework requires two people to serve in the Auditor Role for any team reporting under this framework. 
* Both individuals must not have any relationship to the Operational Team they are auditing. This should be interpreted as any previous contributions to the Operational Team.
* One individual serving in the Auditor Role must be a Mandated Actor.

#### On-chain Implementation of the Auditor Role

1. On-chain, a Gnosis Safe multi-sig wallet must be created with the following configurations: 
    * Quorum: 1:2 
    * Signers: ETH addresses of the individual signers
        * The signer address cannot be multi-sigs in their own right.
 
2. The signers of the Audit Role must post publicly their desire to serve as an accountant publicly in the MakerDAO forum, along with the ETH address they'll use as a signer. This is to be completed as a comment in the forum topic where a team declares their wallet will follow this MIP's framework. 

### MIP96c3: The Operational Wallet Signers

#### Role & Responsibilities

Should any of these responsibilities not be fulfilled, it should be viewed as a breach of role. 
* The Operational Wallet Signer Role in this framework is defined as the role responsible for providing the necessary supporting documents for the Audit Cycle. Resources in scope must include but are not limited to: 
    * The Monthly Budget Statement (defined in MIP96c6)
    * Proof of expense (invoices or receipts)
    * Details on the MKR Compensation Plan, if applicable. 
    * Other supporting information as requested by the Auditor role and Accountant role related to expenses. 

#### Qualifications and Restrictions

* The Team Lead (interpreted as a Core Unit Facilitator, SPF author, or another named individual as defined in a MakerDAO funding mechanism) must be a signer on the Operational Wallet. 
* All signers from the Operational Team are eligible as Operational Wallet Signers. 
* Signers outside of the Operational Team are permitted.

#### Implementation of the Operational Wallet Signer Role

1. On-chain, a Gnosis safe multi-sig wallet must be created with the following configurations: 
* Quorum: 2:3 (or another configuration requiring greater than or equal to 66% quorum required)
* Signers: ETH addresses of the individual signers
    * The signer address cannot be multi-sigs in their own right. 

2. The signers of the Operational Wallet must post publicly their acceptance to the role in the MakerDAO forum, along with the ETH address they'll use as a signer. This is to be completed in the topic related to the funding request, or as a comment in the forum topic where an Operational Team declares their wallet will follow this MIP's framework. 

### MIP96c4: The Auditor Wallet

#### Configuration

The Auditor Wallet is defined as a Gnosis Safe deployed on Ethereum with the following Configurations: 
* A nested, 2-out-of-2 multi-sig. 
* Quorum: 2:2 signers
* Signers: The Gnosis safe ETH address of the Accountant Role & the Auditor Role wallets.
* Beneficiary: Maker Protocol (MCD_PAUSE_PROXY, 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB) will be listed as a beneficiary on the Auditor Wallet.
    * Beneficiary withdrawal limit: One-time withdrawal limit of 1 billion Dai

This multi-sig configuration creates a nested Multi-sig by having each signer of the Auditor Wallet configured as Gnosis safe. 1:2 signatures will be required by the Role Wallets, which requires both the Accountant Role and Auditor Role to sign off on transfer of funds to the Operational Wallet. 

The Maker Protocol (MCD_PAUSE_PROXY, 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multi-sig wallet, ensuring Protocol control over these funds and to also serve as a back-up.

#### Use within the Framework

This multi-sig will hold funds received from all inbound funds from the protocol, and should only hold the Quarterly Budget Cap in DAI. All funds from the protocol pass through this wallet before any amount is sent to the Operational Wallet. The Auditor Wallet can only send funds to the defined Operational Wallet for an Operational Team. 

### MIP96c5: The Operational Wallet

#### Configuration

A Gnosis safe multi-sig wallet compliant with MIP96c3. 

#### Use Within the Framework

The Operational Wallet within this framework is the wallet in which expenses of an Operational Team are paid, and if applicable, income from the Operational Team's work outside of the Maker Protocol is received. All funds that are sent or received from this wallet require proof of expense defined as an invoice or receipt. All on-chain transactions from this wallet will be reported and accounted for in the Monthly Budget Statement, and reconciled by the Accountant Role and the Auditor Role in the Monthly Auditor Report. 

### MIP96c6: The Monthly Budget Statement

Within the first 15 days of each month, an Operational Team utilizing this framework must submit a Monthly Budget Statement to the signers of the Auditors Wallet for the previous Month's expenses and income. 

The report must include the following sections:
1. **Previous Month's Actuals** - the actual expenses (of DAI and MKR) of the month that just ended. This must be reported as a chart that includes Budget Category level-reporting of expense communicated which shows the forecast that was made for that reporting month, actuals accrued during the month, the difference between the forecast and the actuals, payments completed, income received, and comments on whether there is a difference between the forecast and actuals. Income reporting includes Auditor Wallet Transfers, in addition to any income to the Operational Wallet. 
2. **Expense Budget Forecast** - a three month forecast of the Operational Team's expenses, reported in chart form, which shows the budget (in DAI) per budget category required to maintain a 3-month runway for the team.
3. **MKR Vesting Overview** - the schedule of expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transaction Amounts**
    * The required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish a 3-month runway as indicated in the Budget Forecast section. 
    * Any excess DAI amount above the 3-month forecast in the Operational Wallets that will be returned to the Auditor Wallet.

A template for the Monthly Budget Statement is provided here: https://hackmd.io/@0xRetro/SJjnTYsco

### MIP96c7: The Monthly Audit Report

The Monthly Audit Report is a document that supports a consistent process to reconcile an Operational team's expenses using invoices and receipts as proof of expense. The report's structure asks a series of questions for the Accountant and Auditor to verify across the sections of the Monthly Budget Statement defined in MIP96c6. 

The report is completed by the Accountant and Auditor answering the questions in the Monthly Audit Report, and assigning a value of 1 through 4 to the answer. The values indicate: 
1. **Approved** - Approved based on the information submitted. 
2. **Approved with Comments** - Approved, but with notes for improvement for the Team Lead to implement on future Monthly Budget Statements. 
3. **Needs action before approval** - In its current state, the Monthly Budget Statement is not approved and transactions cannot occur until the Operational Team corrects the error sited. Once this correction is approved by the Accountant and Auditor roles, transfers can continue without Governance action.
4. **Escalate** - Reserved for major discrepancies or consistent errors. When a value of 4 - Escalate is assigned to a Monthly Auditor Report question, MIP96c9 is followed to pursue a resolution. 

During the Monthly Budget Cycle (defined in MIP96c8), it is up to the discretion of the Accountant and Auditor roles to dictate the values assigned to questions in the Monthly Auditor Report.

The report must include the following sections & Questions: 

**0.0 Structure of Monthly Budget Statement and Consistency with Approved Funding MIP** 
0.1  Are the sections in the transparency report in the right order: Actuals, Forecast, MKR vesting and Transfers?  
0.2 Does the actual section include breakdowns per wallet with Budget Category, Forecast, Actuals, Difference and Payments?  
0.3 Does the budget forecast cover three months with summary and budget category breakdown?  
0.4 Does the budget forecast summary and breakdown contain the quarterly budget caps for comparison?  
0.5 Does the budget forecast summary contain the global/total budget cap?  
0.6 Are the budget forecast categories in the transparency report the same as in the approved Funding MIP?  
0.7 Is the operational wallet multi-sig wallet setup the same as described in the approved funding MIP?  
0.8 Is the operational wallet controlled by more than one signer?  
0.9 Is the auditor wallet Multi-sig wallet setup the same as described in the approved funding MIP?  
0.10 Has the auditor wallet received funds from the protocol?  
0.11 Has the auditor wallet sufficient funds to top up the operational wallet?  
0.12 Has the operational wallet received a top-up after the audit of the last transparency report?  

**1.0 Review of Last Month's Actuals**
1.1	Is the actuals budget category breakdown the same as in the approved budget MIP?  
1.2	Is the transparency report actual´s forecast the same as the forecast last published for the same month?  
1.3	Are the differences between forecast and actuals explained in the transparency report?  
1.4	Are the actual expenses within the monthly budget cap?  
1.5	Are the actual expenses within the Global/total approved budget cap?  
1.6	Has the Compensation & Benefits any significant deviations between forecast and actuals?  
1.7	Has the Travel & Entertainment any significant deviations between forecast and actuals?  
1.8	Has the Software Expense any significant deviations between forecast and actuals?  
1.9	Has the Gas Expense any significant deviations between forecast and actuals?  
1.10 Has the Admin Expense any significant deviations between forecast and actuals?  
1.11 Has the one-time expense any significant deviations between forecast and actuals?  
1.12 Has the Professional Services any significant deviations between forecast and actuals?  
1.13 Has the presented the correct calculation of amounts for the actuals, forecast and difference?  
1.14 Has any budget category that seems inconsistent and needs further investigation?  

**2.0 Review of Budget Forecast**
2.1	Does the transparency report display the MIP's caps for both total and budget categories?  
2.2	Are the monthly and quarterly budget caps (both totals and per category) the same as in the approved funding MIP?  
2.3	Are the quarterly forecasts within the bounds of the approved funding MIP's budget caps?  
2.4	Are the monthly forecast totals within the approved funding MIP's monthly budget cap?  
2.5	Has the Operational Team presented the correct calculation of amounts for the budget forecast?  

**3.0 Review of MKR Vesting**
3.1	Has the indicated the number of FTE in the transparency report´s MKR vesting overview?  
3.2	Has the MKR vesting overview the same FTE comparing it to the approved MIP?  
3.4	Are the MKR vesting dates the same as in the approved MIP?  
3.5	Is the MKR total budget cap in the transparency report the same as in the approved MIP?  
3.6	Has the MKR amounts changed comparing it to the last published transparency report?  
3.7	Has the MKR change(s) been explained in the transparency report?  
3.8	Other observations  

**4.0 Review of Transfers**
4.1	Does the Operational Wallet balance match the transparency report current balance in the calculation made for the new transfer?  
4.2	Are the payments from the operational wallet the same as in the actuals payments?  
4.3	Are the MKR actuals in the MKR table correct?  
4.4	Is the Auditor Wallet current balance in MKR correct?  
4.5	Other observations  

### MIP96c8: The Monthly Budget Cycle

1. **Monthly Budget Statement Submission** – Within the first five days of the month, the Team Lead submits the Monthly Budget Statement meeting the requirements of MIP96c6 to the Accountant Role. The report is submitted publicly through either a GitHub repository created for the reports or to the [SES Expense Dashboard](https://expenses.makerdao.network/). 
2. **Top-up Request Submission** - The Accountant Role will create the necessary transaction request from the Auditor Wallet based on to top-up the Operational Wallet based on the Monthly Budget Statement:
    * DAI Top-up Transaction – One DAI transaction from the Auditor Wallet to the Operational Wallet which transfers funds that top-up the Operational Wallet's balance to the forecasted 3-month runway from section 2 of MIP96c6. This only applies if the Operational Wallets balance is below this 3-month forecast.
3. **Operational Wallet Return of Excess Funds** – The Operational Wallet Signer Role also creates a transaction for excess funds that should be returned to the Auditor Wallet. If the Operational Wallet holds a balance above the forecasted 3-Month runway, these funds must be returned to the Auditor Wallet.
4. **DssVest Pull** - The Accountant and Auditor Role will execute a transaction to pull available funds from the DssVest contract, replenishing the available funds in the Auditor Wallet. If the Operational Team has a budget with a manual implementation (meaning funds are sent to the Operational Team via a Spell), this step is skipped.
5. **Auditors’ Review** – The Accountant will complete the Monthly Audit Report as defined in MIP96c7. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings. Should there be disputes on the report, the Auditor and Team Lead will work to rectify the observed issues. 
    * The Monthly Audit Report will then be made publicly available to the Maker Community at the conclusion of the audit cycle. The report link must be updated in the GitHub repository publication, at the top of the report where defined in the template. 
6. **Transaction Approvals** – Upon acceptance of the Monthly Audit Report, the Accountant Role and Auditor Role will sign the requested transactions, sending the top-up amounts to the Operational Wallet. 
7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap as defined in the approved budget MIP for the operational team. The Auditor Wallet, using the DssBlow contract described here, will return the excess DAI directly to the Surplus Buffer.

At the end of the cycle, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month. The Operational Wallet will also hold the forecasted 3-month expense forecast enabling the team to confidently perform operations for another month, and avoid delayed expense payments due to elongated audit cycles if they occur. 

### MIP96c9: Disputes and Arbitration

!!! WIP !!!
