# MIP96: The Ecosystem Auditor Framework

## Preamble

```
MIP#: 96
Title: The Ecosystem Auditor Framework
Author(s): @retro, @juan
Contributors: @ses-core-unit
Tags: process
Type: General
Status: Obsolete
Date Proposed: 2022-01-11
Date Ratified: 
Forum URL: https://forum.makerdao.com/t/mip96-the-ecosystem-auditor-framework/19389
Ratification Poll URL:
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## Sentence Summary
The Ecosystem Auditor Framework establishes a formal set of processes and roles/entities whose objective is to enable a mature life cycle for operational funds at MakerDAO. 

## Paragraph Summary
The Ecosystem Auditor Framework establishes a formal set of processes and roles/entities for transparent and consistent reporting on operational funds enabled by Maker Governance to its decentralized workforce. The framework defines specific roles, wallets, and processes which pair the use of operational funds to a mature reporting structure. 

This MIP further solidifies the informal, unratified term "Ecosystem Audited Budget" into a formal, well-defined concept with a matching set of formal processes.

This framework is developed and pioneered by the @SES-Core-Unit and is intended to be compatible with all operational teams at MakerDAO, including Core Units, MIP55 SPF recipients, Work Proposals and future Governance approved mechanisms of providing funds for operational expenses. 

## Component Summary

**MIP96c1: The Accountant Role**  
Defines the Accountant role, its associated responsibilities, and the qualifications that an individual must meet to be recognized as an Accountant. 

**MIP96c2: The Auditor Role**  
Defines the Auditor role, its associated responsibilities, and the qualifications that an individual must meet to be recognized as an Auditor.

**MIP96c3: The Operational Wallet Signer Role**  
Defines the Operational Signer role, its associated responsibilities, and the qualifications that an individual must meet to act as an Operational Wallet Signer. 

**MIP96c4: The Auditor Wallet**  
Defines the multi-sig requirements for a wallet to be recognized as an Auditor Wallet under this framework.

**MIP96c5: The Operational Wallet**  
Defines the multi-sig requirements for a wallet to be recognized as an Operational Wallet under this framework.

**MIP96c6: The Monthly Budget Statement**  
Defines the required standards for a Monthly Budget Statement to be recognized under this framework.

**MIP96c7: The Monthly Audit Report**  
Defines the required standards for a Monthly Audit Report to be recognized under this framework.

**MIP96c8: The Monthly Budget Cycle**  
Defines the processes and flow of funds under this framework.

**MIP96c9: Disputes and Arbitration**  
Defines the circumstances and processes for escalating disputes to Maker Governance for arbitration. 

## Motivation

The Ecosystem Auditor Framework provides decentralized workforce teams a well-defined, plug-and-play process for transparent and mature reporting of their operations. This process is the evolution of the @SES-Core-Unit Auditor Framework which informally implemented this best practice fairly consistently by Core Units. It has been observed that not all [auditor frameworks are created equal](https://forum.makerdao.com/t/interim-facilitator-assessment-for-ces-001/19196#not-all-auditors-are-created-equally-28). 

Ratifying this refined version of the Ecosystem Auditor Framework within the MIP Framework makes "Ecosystem Audited Budget" a univocal term that can be used as a consistent reference point.

Additionally, although this auditing process has historically only applied to Core Unit operations, there exist other current (e.g., SPFs, MIP14c2 requests) and potential future funding mechanisms that will benefit from the formal, consistent auditing that the Ecosystem Auditor Framework provides.  

With clarity as a priority in the context of MakerDAO's complex transition from its current form into an Endgame-ready organization, we will make use of the following terms thusly defined: 
* Operational Team = Core Unit, SPF recipient, or other recognized group receiving funds from MakerDAO for expenses. 
* Team Lead = Facilitator, SPF author/requester, or other recognized individual leading a funded Operational Team with responsibilities for reporting to the DAO. 

This MIP does not impact any currently approved budgets at MakerDAO. The utilization for current or future budgets is optional. This framework is being introduced as a further tool for the DAO to use as deemed fit.

## Specification

### MIP96c1: The Accountant Role

#### Role & Responsibilities

Should any of these responsibilities not be fulfilled, it should be viewed as a breach of the role: 
* Accountants in this framework are defined as the operational support agent for gathering and conducting the preliminary information to produce the Monthly Audit Report (defined in MIP96c7) that is needed to complete the Monthly Budget Cycle (defined in MIP96c8). 
* The Accountant is the receiver of information from a Team Lead. On the Monthly Budget Cycle cadence defined in MIP96c8, Accountants will review both the Team Lead's submitted information in addition to on-chain information, and produce the initial audit report that is used throughout the life cycle of this process. 
* The Accountant's signature is required to call available funds from the DssVest stream into the Auditor Wallet. 
* The Accountant is also a signer on the Auditor Wallet (defined in MIP96c3) for a team through a nested multi-sig configuration. 

#### Qualifications and Restrictions

* Two individuals must serve in the Accountant Role for any Operational team reporting under this framework. 
* Any Core Unit Contributor, Mandated Actor, or Delegate can fulfill the Accountant Role with no restrictions on their relationship with the Operational Team. 

#### Onboarding Process of the Accountant Role

1. On-chain, a Gnosis Safe multi-sig wallet must be created with the following configurations: 
    * Quorum: 1:2 
    * Signers: ETH addresses of the individual signers
       * The signer address cannot be multi-sigs in their own right. 

2. Once the multi-sig wallet is configured, the two individual signers of the Accountant Role must post publicly (1) their desire to serve as an accountant publicly in the MakerDAO forum, (2) the ETH address that they will sign from, (3) and the Accountant Role Multi-sig ETH address. This is to be completed as a comment in the forum topic where an Operational team declares their wallet will follow the Ecosystem Auditor Framework. 

### MIP96c2: The Auditor Role

#### Role & Responsibilities

Should any of these responsibilities not be fulfilled, it should be viewed as a breach of the role: 
* Auditors in this framework are defined as the final reviewers and arbitrators of Monthly Budget Statement & Audit reports and the overall life cycle for operational funds. 
* The Auditor will receive the initial Monthly Audit Report produced by the Accountant Role and review it for any discrepancies or disputes. 
* The Auditor interfaces with the Team Lead that submitted the report to solve discrepancies and improve the overall reporting quality of the report as time goes on. 
* The Auditor signature is required to call funds from the DssVest stream into the Auditor Wallet. 
* The Auditor will also be a signer on the Auditor Wallet (defined in MIP96c4) for a team through a nested multi-sig configuration. 
* The Auditor is also required to participate in any eventual Disputes or Arbitration (defined in MIP96c9). 

#### Onboarding Process of the Auditor Role

1. On-chain, a Gnosis safe multi-sig wallet must be created with the following configurations: 
    * Quorum: 1:2 
    * Signers: ETH addresses of the individual signers
        * The signer address cannot be multi-sigs in their own right. 

2. Once the multi-sig wallet is configured, the two individual signers of the Auditor Role must post publicly (1) their desire to serve as an Auditor publicly in the MakerDAO forum, (2) the ETH address that they will sign from, (3) and the Auditor Role Multi-sig ETH address. This is to be completed as a comment in the forum topic where an Operational Team declares their wallet will follow this MIP's framework. 

#### Qualifications and Restrictions

* Two individuals must serve in the Auditor Role for any Operational Team reporting under this framework. 
* Both individuals must never previously, nor actively, have worked in a compensated role with the Team Lead of an Operational Team. 
* At least one of the two Auditors must be a Mandated Actor.

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
    * Other supporting information as requested by the Auditor.

#### Qualifications and Restrictions

* The Team Lead (interpreted as a Core Unit Facilitator, SPF author, or another named individual as defined in a MakerDAO funding mechanism) must be a signer on the Operational Wallet. 
* All signers from the Operational Team are eligible as Operational Wallet Signers. 
* Signers outside the Operational Team are limited to recognized ecosystem contributors.

#### Implementation of the Operational Wallet Signer Role

1. On-chain, a Gnosis safe multi-sig wallet must be created with the following configurations: 
* Quorum: 2:3 (or another configuration requiring greater than or equal to 66% quorum)
* Signers: ETH addresses of the individual signers
    * The signer address cannot be multi-sigs in their own right. 

2. The signers of the Operational Wallet must post publicly their acceptance to the role in the MakerDAO forum, along with the ETH address they will use as signers. This is to be completed in the topic related to the funding request, or as a comment in the forum topic where an Operational Team declares their wallet will follow the Ecosystem Auditor Framework. 

### MIP96c4: The Auditor Wallet

#### Configuration

The Auditor Wallet is defined as a Gnosis Safe deployed on Ethereum with the following configuration: 
* A nested 2-out-of-2 multi-sig. 
* Quorum: 2:2 signers
* Signers: The Gnosis safe ETH address of the Accountant Role & the Auditor Role wallets.
* Beneficiary: Maker Protocol (MCD_PAUSE_PROXY, 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB) will be listed as a beneficiary on the Auditor Wallet.
    * Beneficiary withdrawal limit: One-time withdrawal limit of 1 billion Dai

This multi-sig configuration creates a nested multi-sig by having each signer of the Auditor Wallet configured as Gnosis safe. 1:2 signatures will be required by the Role Wallets, which requires both the Accountant Role and Auditor Role to sign off on transfer of funds to the Operational Wallet. 

The Maker Protocol (MCD_PAUSE_PROXY, 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1 billion DAI from the Auditor Multi-sig Wallet, ensuring Protocol control over these funds and to also serve as a back-up.

#### Use within the Framework

This multi-sig will hold funds received from all inbound funds from the protocol, and should only hold the Quarterly Budget Cap in DAI. All funds from the protocol pass through this wallet before any amount is sent to the Operational Wallet. The Auditor Wallet can only send funds to the defined Operational Wallet for an Operational Team. 

### MIP96c5: The Operational Wallet

#### Configuration

A Gnosis safe multi-sig wallet compliant with MIP96c3. 

#### Use Within the Framework

The Operational Wallet within this framework is the wallet in which expenses of an Operational Team are paid, and if applicable, income from the Operational Team's work outside of the Maker Protocol is received. All funds that are sent or received from this wallet require proof of expense defined as an invoice or receipt. All on-chain transactions from this wallet will be reported and accounted for in the Monthly Budget Statement, and reconciled by the Accountants and the Auditors in the Monthly Auditor Report. 

### MIP96c6: The Monthly Budget Statement

Within the first 15 days of each month, an Operational Team utilizing this framework must submit a Monthly Budget Statement to the signers of the Auditors Wallet for the previous Month's expenses and income using the MakerDAO Budget Tool (developed by @SES-Core-Unit) and publish this data to the [MakerDAO Expenses Dashboard](https://expenses.makerdao.network).

The MakerDAO Budget Tool & Expenses Dashboard will produce a report (with amounts reported in Dai & MKR respectively), which includes the following sections:

1. **Month's Actuals** - This section shows (1) the transfers completed for the reporting month, (2) the forecast that was made for the reporting month (from the previous Monthly Budget Statement), (3) the actuals accrued during the reporting month, (4) the difference between the forecast and the transfers completed, actuals, and (5) comments related to:

   * The reason(s) for the difference between the forecast and the actual expense.
   * The reason(s) behind the expense is over the approved budget cap.
   * The reason(s) for the difference between the actual expense total and the on-chain payment total.
   * The reason(s) for the income to the operational wallet. 

2. **Forecast** - This section shows (1) a per budget-item forecast of the Operational Team's expenses required to maintain a 3-month runway for the team, (2) the Monthly Budget Cap and the Quarterly Budget Cap from the approved budget MIP. 

3. **MKR Vesting** - This section shows the schedule of expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.

4. **Transaction Amounts** - This section shows the required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish a 3-month runway (using the Forecast)  _or_ the excess DAI amount above the 3-month forecast in the Operational Wallets that will be returned to the Auditor Wallet.

### MIP96c7: The Monthly Audit Report

The Monthly Audit Report is a document that supports a consistent process to reconcile an Operational team's expenses using invoices and receipts as proof of expense. The report's structure asks a series of questions for the Accountant and Auditor to verify across the sections of the Monthly Budget Statement defined in MIP96c6. 

The report is completed by the Accountant and Auditor answering the questions in the Monthly Audit Report and assigning a status that indicates: 
1. **Approved** - Approved based on the information submitted. 
2. **Approved with Comments** - Approved, but with notes for improvement for the Team Lead to implement on future Monthly Budget Statements. 
3. **Needs action before approval** - In its current state, the Monthly Budget Statement is not approved and transactions cannot occur until the Operational Team corrects the error sited. Once this correction is approved by the Auditor, transfers can continue without Governance action.
4. **Escalate** - Reserved for major discrepancies or consistent errors. Escalate is assigned to a Monthly Auditor Report question, MIP96c9 is followed to pursue a resolution. 

During the Monthly Budget Cycle (defined in MIP96c8), it is up to the discretion of the Auditor to dictate the status assigned to questions in the Monthly Auditor Report.

The report must follow the [Ecosystem Audit Report template](https://docs.google.com/spreadsheets/d/1xEdcC9YRBhmUhZjK8p6XODRdfblD15Z_NbtEWbyD6TU/edit?usp=sharing). 

### MIP96c8: The Monthly Budget Cycle

1. **Monthly Budget Statement Submission** – Within the first five days of the month, the Team Lead submits the Monthly Budget Statement meeting the requirements of MIP96c6 to the MakerDAO Expenses Dashboard.

2. **Top-up Request Submission** - The Accountant Role will create the necessary transaction request from the Auditor Wallet based on to top-up the Operational Wallet based on the Monthly Budget Statement:

    * DAI Top-up Transaction – One DAI transaction from the Auditor Wallet to the Operational Wallet which transfers funds that top-up the Operational Wallet's balance to the forecasted 3-month runway from section 2 of MIP96c6. This only applies if the Operational Wallets balance is below this 3-month forecast.

3. **Operational Wallet Return of Excess Funds** – The Operational Wallet Signer Role also creates a transaction for excess funds that should be returned to the Auditor Wallet. If the Operational Wallet holds a balance above the forecasted 3-Month runway, these funds must be returned to the Auditor Wallet.

4. **DssVest Pull** - The Accountant and Auditor Role will execute a transaction to pull available funds from the DssVest contract, replenishing the available funds in the Auditor Wallet. If the Operational Team has a budget with a manual implementation (meaning funds are sent to the Operational Team via a Spell), this step is skipped.

5. **Auditors’ Review** – The Accountant will complete the Monthly Audit Report as defined in MIP96c7. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings. Should there be disputes on the report, the Auditor and Team Lead will work to rectify the observed issues. 

    * The Monthly Audit Report will then be made publicly available to the Maker Community at the conclusion of the audit cycle. The report link will be available at the MakerDAO Expenses Dashboard. 

6. **Transaction Approvals** – Upon acceptance of the Monthly Audit Report, the Accountant Role and Auditor Role will sign the requested transactions, sending the top-up amounts to the Operational Wallet. 

7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap as defined in the approved budget MIP for the operational team. The Auditor Wallet, using the DssBlow contract described here, will return the excess DAI directly to the Surplus Buffer.

At the end of the cycle, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month. The Operational Wallet will also hold the forecasted 3-month expense forecast enabling the team to confidently perform operations for another month, and avoid delayed expense payments due to elongated audit cycles if they occur. 

### MIP96c9: Disputes and Arbitration

!!! WIP !!!
