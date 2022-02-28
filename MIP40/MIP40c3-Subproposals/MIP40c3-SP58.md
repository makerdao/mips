# MIP40c3-SP58: Modify Core Unit Budget Immunefi Security Core Unit Budget - IS-001

## Preamble

```
MIP40c3-SP#: 58
Author(s): @TravinImmunefi
Contributors: @psychonaut
Tags: core-unit, cu-is-001, budget, dai-budget, active
Status: Accepted
Date Applied: 2022-01-12
Date Ratified: 2022-02-28
Ratification Poll URL: https://vote.makerdao.com/polling/QmaBYzea
Forum URL: https://forum.makerdao.com/t/mip40c3-sp58-modify-core-unit-budget-immunefi-security-core-unit-budget-is-001/12598
```

## Sentence Summary

MIP40c3-SP58 modifies the DAI budget for Core Unit IS-001: Immunefi Security, replacing [MIP40c3-SP42](https://mips.makerdao.com/mips/details/MIP40c3SP42).

## Paragraph Summary

MIP40c3-SP58 modifies the [Dai budget for Core Unit IS-001: Immunefi Security](https://mips.makerdao.com/mips/details/MIP40c3SP42) to account for the provision of a mandate that was previously not reflected in the budget. This is expected and was mentioned in the [roadmap](https://mips.makerdao.com/mips/details/MIP39c2SP24). This budget contains:

* Addition of Operational Audits
* Increase in the Total Budget Cap
  * Increase in initial payout
  * Increase in funds to be streamed

## Changes (compared to MIP40c3-SP42)

- Total budget cap (including 15% contingency): $634,972.45 -> $979,972.45
- Immunefi Services - Operational Audits: $0 -> $300,000 ($345,000 incl. 15% contingency)

The total amount will be paid out quarterly. However, the first quarter will have 40% of the total amount, $138,000, due to frontloading and the remaining three quarters will have the remaining amount, $207,000, paid proportionally.

## Specification

### Motivation

Based on the nature of the work done by the Immunefi Security Core Unit, the budget reflects the needs of the team to ensure continuity of the work described in our [MIP39c2](https://mips.makerdao.com/mips/details/MIP39#MIP39c2). This is summarized in, but not limited to:

* Identification of critical infrastructure and people
* Initial triaging service for the upcoming bug bounty program
* Incidence response set up and facilitation
* Educational content creation around security
* General security advisory
* On-call security advisory
* Audits of the operations of identified core units supporting critical infrastructure

### Core Unit ID

IS-001

### Budget Implementation

The budget is designed with the following in mind:

* Operational costs to run the core unit and perform its tasks
* Operational costs of third parties contracted
* Legal expenses
* Having a buffer for unexpected legal, technical, or financial problems Therefore, a vote to ratify this MIP means MKR holders make a commitment to:
* Funding an initial 6 month budget for IS-001
* A continuous funding model based on the [SES top-up mechanism](https://mips.makerdao.com/mips/details/MIP40c3SP10)

![|624x164](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP58/Budget_implementation.png)

#### Team Summary

|Team members|Amount|
| --- | --- |
|Facilitator|1|
|Deputy Facilitator|1|
|Team Total|2|

#### External Team Summary

* [Immunefi](https://immunefi.com/)
* [ChainSecurity](https://chainsecurity.com/)
* [DeFi Safety](https://defisafety.com/)

#### Budget Cap Breakdown

##### Dai Expenditure

We will be asking for a Total Budget Cap spanning 12-months, the amount of which is currently $979 972.45

The budget cap will differ from the actual expenses of the core unit. The cap refers to the maximum that the core unit can request for operating and it includes room for unforeseen circumstances.

#### Wallets

IS Auditors Wallet (2:3)

* Controlled by the IS Auditors
* Address: 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4
* Signers:
  * SES Accounting (1:2, 0xA2A855Ac8D2a92e8A5a437690875261535c8320C)
  * SES Auditing (1:2, 0xB2da57e224949acDDe173a5b8A8160c023ea86e6)
  * Maker Protocol (MCD_PAUSE_PROXY, 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB)

IS Operational Wallet (2:3)

* Controlled by the IS Core Unit team
* Address: 0x124c759D1084E67B19a206ab85c4527Fab26c342
* Signers:
  * 0x2BC5fFc5De1a83a9e4cDDfA138bAEd516D70414b
  * 0xAcAf835934eE40E0d5ee3F941E283499F8Ad97eD
  * 0xFfC87601A80d3e4F0aF083a899e3fee203C23cF0

#### Transaction Amounts

The initial seed transaction covers the contingency buffers for the core unit:

* Three months of regular expenses: $122,187.50
* The yearly and one-time costs included in the budget: $2,530 + $70,725 = $73,255
* Total for three months of runway: $122,187.50 + $73,255 = $195,442.50

An additional transaction covers the added costs of performing the Operational Audits:

* Front-loading of Operational Audit work: $138,000.00

The streaming transaction covers ongoing activity for the core unit:

* Total remaining costs for 12 months: $122,187.50 x 3 = $366,562.50
* Operational Audits until 2022-12-01 = $207,000.00

#### Transactions

195,442.5 DAI will be transferred to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 on 2021-12-01

138,000 DAI will be transferred to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 on 2022-03-01

A total of 366,562.50 DAI will be streamed to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 starting 2021-12-01 and ending 2022-08-01

A total of 207 000 DAI will be streamed to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 starting 2022-03-01 and ending 2022-12-01

### Budget Breakdown

|Summary|Monthly Cost|Quarterly|
| --- | --- | --- |
|Facilitator|$2,083.33|$6,250|
|Deputy Facilitator|$10,000|$30,000|
|Immunefi|$10,000|$30,000|
|ChainSecurity|$10,000|$30,000|
|DeFi Safety|n/a|$10,000|
|Total|$32,083.33|$106,250|
|+ Contigency Buffer (15%)|$36,895.83|$122,187.50|

### Operational Audits

|Summary|Initial Cost|Quarterly|
| --- | --- | --- |
|Immunefi|$120,000|$60,000|
|+ Contigency Buffer (15%)|$138,000|$69,000|

#### Yearly Expenses

|Item|Cost|
| --- | --- |
|Company Setup (1st year)|$2,200|
|Total|$2,200|
|+ Contigency Buffer (15%)|$2,530|

#### One-time Expenses - Software and Infrastructure

|Item|Cost|
| --- | --- |
|Hardware and Software Expenses|$7,500|
|ChaosLabs|$54,000|
|Total|$61,500|
|+ Contigency Buffer (15%)|$70,725|

### Budget Details

Providing additional detail with regards to the above line items:

#### Facilitator

Though listed as an individual, the compensation will be provided directly to Immunefi, pending MIP41c4-SP25. All costs are only inclusive of all work done by the Facilitator. The quote provided assumes the maximum amount of hours, on a yearly basis, but has been evenly distributed per month.

#### Deputy Facilitator

The Deputy Facilitator will work a minimum of 24 hours per week, increasing the number of hours as necessary as well as having a planned increase to a full-time role as the Core Unit progresses. Like the Facilitator, all costs are only inclusive of all work done by the Deputy Facilitator. A more in-depth description of the Deputy Facilitator is found in the [Core Unit Mandate MIP](https://forum.makerdao.com/t/mip39c2-sp-adding-immunefi-security-core-unit-is-001/10810/2).

#### Immunefi - [https://immunefi.com](https://immunefi.com/)

In addition to the contributions of the Facilitator, Immunefi will also provide professional services including, but not limited to:

* Initial triaging of bug reports
* Content creation
* Postmortems
* General ecosystem security content
* Core unit focused security content
* Security advisory services
* Office hours support
* On-call security advisory
* Incidence response facilitation support

Operational Audit

The Operational Audits will be performed according to the [IS-001 Core Unit MIP](https://mips.makerdao.com/mips/details/MIP39c2SP24). In that MIP, it was promised that there would be another MIP to account for Operational Audits. The delay was due to our inability to estimate the amount of funds required for the execution of this service for the initial group of Core Units. Though we intended to submit this to enter RFC in December 2021 in the roadmap, this delay will not delay the commencement of the operational audit work. We have now onboarded a team member at Immunefi Services with the requisite experience, Tudor Costica, Head of Security Services. Before joining the Immunefi team, he was the Director of Information Security at Consensys and was also an Incident Response Manager in the EMEA region for Kaspersky.

#### ChainSecurity - [https://chainsecurity.com](https://chainsecurity.com/)

The company, which provides software audits for the MakerDAO smart contracts, will provide final triaging services for smart contract bug reports as well as provide technical assistance during incident response. However, it is not expected that this would be used maximally each month. Instead, the amount being requested is the expected maximum number of hours that could be used in the event of multiple critical bug reports and/or an incidence response occasion, also accounting for the additional charge of emergency hours response.

The current agreement between ChainSecurity and the Maker ecosystem will continue to be utilized. The only difference is that the funds would be from the Immunefi Security CU if hours are used for operations of the CU.

If no hours are used by ChainSecurity, or if there are leftover hours, that is carried into the succeeding month.

#### DeFi Safety - [https://defisafety.com](https://defisafety.com/)

The company, which provides security scoring for DeFi projects, as well as provides recommendations to projects to increase their security levels, will provide assistance with the identification of critical infrastructure and people and incident response preparedness. The quarterly quote provided is a fee for a set amount of hours for general work to be provided by DeFi Safety. It is two (2) sets of 50-hour blocks. The hours however, may extend beyond the quarter they are purchased if not consumed. However, it is expected that every quarter, this set amount of hours will be utilized and a new block of hours will need to be purchased.

The company’s contribution to the Operational Security Services will be covered under a separate budget proposal.

#### Software and Infrastructure Expenses

About $7,500 of these expenses will include, but will not be strictly limited to, the setup and maintenance of:

* Secure communications channels for sensitive discussions
* General communications tools for office hours, general updates, etc.
* Backups and/or primary hosting for identified critical infrastructure
* Internal organizational tools
* Team hardware (e.g secure laptop)

Some software may be charged to the Core Unit on a monthly basis, but this one-time budget request has accounted for potential monthly expenses. As the identification of critical infrastructure and other operations have not yet commenced, we are currently unable to accurately go over what this will cover. All spending, however, will be documented and reported accordingly within reason.

The remaining expense of $54,000 is allocated for the software and infrastructure provided by [ChaosLabs](https://chaoslabs.xyz/) to provide a better testing experience for the bug bounty hunters spending time on the planned MakerDAO bug bounty program. This is, however, a consumable amount based on the number of hackers that would be permitted to use the software and infrastructure, as well as the extent that they use it. The Immunefi Security CU will use its discretion to approve or reject bug bounty hunters from accessing the software, with the proper process to be further outlined in the future Bug Bounty Program Subproposal. However, participating in the bug bounty program will not necessitate the use of the software and infrastructure.

#### Company Setup

Fees include all legal and administrative expenses for the creation and maintenance of the Immunefi Security Core Unit entity as a limited liability company for one year.

### Monthly Budget Statement

Within the first 5 days of each month, IS will submit a Monthly Budget Statement to the signers of the Auditors Wallet with the following sections:

* Budget Forecast – The amount of Dai that is required to maintain a 3-month runway for the team based on available information
* Previous Month Actuals – The actual expenses (DAI and MKR) of the month that just ended
* MKR Vesting Overview – A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
* Transaction Amounts
  * The required DAI amount for the Operational Wallet to replenish the 3-month runway
  * Any DAI amount exceeding the 3-month runway that will be returned to the Auditors Wallet. The Monthly Budget Statements will be added to the MakerDAO forum. The originals can be found [here](https://github.com/makerdao-is/transparency-reporting).

#### Monthly Payment Flow

Once the Monthly Budget Statement has been delivered, the following payment flow will be executed:

* Budget Statement Review
  * SES Accounting will review the monthly budget and check that its expenses reflect the allocated budgets in the budget MIP.
  * SES Accounting may ask the IS team to clarify or correct the budget statement.
  * In case of disagreements, the payments will be paused, and SES Accounting will escalate to the Maker Community.
* Top-up transaction
  * The auditors will pull the available amount from the DssVest contract.
  * Once the Auditor Wallet signers are satisfied with the monthly budget statement, a top-up transaction from the Auditor Wallet to the IS Operational Wallet will be made.
  * The top-up amount will replenish the 3-month runway based on the forecast in the monthly budget statement.
* Return excess funds to protocol
* After the top-up transaction has been completed, the Auditor Wallet signers will return any funds to the protocol that exceed 2x the monthly budget cap.
