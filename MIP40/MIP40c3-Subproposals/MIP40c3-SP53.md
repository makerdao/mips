# MIP40c3-SP53: TechOps Core Unit DAI Budget

## Preamble

```
MIP40c3-SP: #53
Author(s): @simonkp
Contributors: @georgen, @dumitru, @lukaszb, @wouter
Tags: core-unit, cu-tech-001, budget, dai-budget, active
Status: Accepted
Date Proposed: 2021-12-08
Date Ratified: 2022-01-24
Forum URL: https://forum.makerdao.com/t/mip40c3-sp53-techops-core-unit-dai-budget
Ratification Poll URL: https://vote.makerdao.com/polling/QmZEeWAC
```

## Sentence Summary

The TechOps Core Unit is requesting an annual budget cap of 2,566,200 DAI.

## Paragraph Summary

The TechOps Core Unit will handle system administration and technical support needs of Maker Protocol and its Core Units. TECH-001 will strive to improve communication and collaboration between the developers, end users, and other stakeholders by applying DevOps principles to software delivery and first-class technical support. TECH-001 will get things done safer and faster in an automated and repeatable way with help from some of the modern Infrastructure Administration tools, while continuously monitoring and improving the process throughout.

## Specification

### Core Unit Name

- TechOps

### Motivation

To continue supporting critical MakerDAO infrastructure, the TechOps Core Unit proposes the following budget cap to financially support in delivering on our mandate outlined in the MIP39c2-SP28 Adding TECH-001.

### Budget Implementation

![TOCU_Wallet_Setup](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP53/wallet-setup.jpeg)

The budget implementation will follow standard best practices as recommended by the SES Core Unit and will involve a setup with an Auditor wallet and an Operational Wallet which will be topped up on a monthly basis with a 3-month runway. The budget cap will be streamed from the protocol to the Auditor Wallet to reduce as much as possible the overhead for Maker governance.

The TECH-001 budget is designed with the following in mind:

- Paying for the operational costs to run the core unit
- Having a buffer for unexpected legal, technical, or financial problems
- Provide the protocol control over funds held in the Auditor Wallet and Operational Wallet
- Reduce governance overhead to a minimum.
- Provide full transparency and be kept in check by a group of trusted auditors.

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

- Streaming the annual budget for TECH-001 using *DssVest* for 1 year.
- A continuous funding model based on [the SES top-up mechanism](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369).

#### Multi-sig Wallets

The following multi-sigs are involved:

1. **The Auditor Wallet (`0x2dC0420A736D1F40893B9481D8968E4D7424bC0B`)** -- A nested, 2-out-of-2 Auditor multi-sig, composed of 1-out-of-2 role-based multi-sigs as signers. The Auditor Wallet will have 2 roles defined for its signers: Auditors and Accountants.
   The Accountant Role Multi-sig will have 2 signers---both SES permanent team contributors. The Auditor Role Multi-sig will also have 2 signers, also both SES permanent team contributors. SES will conduct the monthly auditing process as described in the Monthly Top-up Cycle, increasing transparency of the auditing process for the community.
   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multi-sig wallet, ensuring control over these funds and acting as a backup.
   This multi-sig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet.
2. **The Operational Wallet (`0x1a3DA79ee7dB30466cA752DE6a75DEf5e635b2f6`)** -- One wallet for TECH-001 operational expenses. This is a 2-out-of-2 multi-sig controlled by TECH-001. Signers include both facilitators of TECH-001.
   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will also be listed as a beneficiary on the Operational Wallet. This allows the protocol to withdraw up to 1B DAI from the Operational Multi-sig wallet, ensuring control over these funds and acting as a backup.

#### Monthly Budget Statement

Within the first 5 days of each month, TECH-001 will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended.
2. **Budget Forecast** - A forecast of the Dai amount required to maintain a 3-month operational runway for the team based on the latest available information.
3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transactions**
   * The required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish the 3-month runway as indicated in the Budget Forecast section.
   * Any excess DAI amount above the 3-month forecast in the Operational Wallet that will be returned to the Auditor Wallet
The Monthly Budget Statements can be found in [this GitHub repository](https://github.com/MakerOps/tocu-transparency-reporting).

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, TECH-001 submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.
2. **Transaction Requests Submission** -- In parallel, TECH-001 submits the necessary transaction requests for the Auditor Wallet signers to sign:
   * DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast 3-month runway. Only applies if the Operational Wallet balance is below this forecast.
3. **Returning Excess Funds** – TECH-001 creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   * Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet.
4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the TECH-001 DssVest contract, replenishing the available funds in the Auditor Wallet.
6. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by TECH-001 to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist and verify the Accountant’s findings.
   A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the TECH-001’s transparency reporting repository on Github.
6. **Transaction Approvals** – Upon acceptance of the Monthy Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet.
7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer.
   As such, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Auditor Wallet Configuration

To enable this payment flow, the following configuration of the TECH-001 Auditor Wallet will be required.

* SES Accountant Role Wallet (`0xA2A855Ac8D2a92e8A5a437690875261535c8320C`) as a signer
* SES Auditor Role Wallet (`0xB2da57e224949acDDe173a5b8A8160c023ea86e6`) as a signer
* Add `MCD_PAUSE_PROXY` as a beneficiary, with an allowance of 1B DAI withdrawal.
* Configure required confirmations as 2-out-of-2.

#### Operational Wallet Configuration

To enable this payment flow, the following configuration of the TECH-001 Operational Wallet will be required.

* Facilitator 1 (0xA60C77efe539166F1C4a6cE2512F3cBF451fFbc5) as a signer
* Facilitator 2 (0xcebd4Fa8c2c6014F2F7924De3Ae617BdD42ca25B) as a signer
* Add MCD_PAUSE_PROXY as a beneficiary, with an allowance of 1B DAI withdrawal.
* Configure required confirmations as 2-out-of-2.

#### Transactions

* **Initial Seed Transfer**
     1,069,250 DAI will be transfered to `0x2dC0420A736D1F40893B9481D8968E4D7424bC0B` (the Auditor Wallet) on 2022-2-1.

     This seeds the Operational Wallet to 3x the Month Budget Cap. This also initially funds the Auditor Wallet to 2x the Monthly Budget Cap. The initial transfer funds the Operational Wallet, enabling the Core unit to begin operations. This also then positions DssVest to begin streaming funds up to the Quarterly Budget Cap each month in the Auditor Wallet.
* **DssVest Stream**
  A total of 2,566,200 DAI will be streamed to `0x2dC0420A736D1F40893B9481D8968E4D7424bC0B` (the Auditor Wallet) starting 2022-2-1 and ending 2023-1-31.
    _(2,566,200 DAI is calculated as Quarterly Budget Cap x 4 = 641,550 DAI x 4)._

### Budget Breakdown

The yearly budget cap request for the TechOps Core Unit is 2,566,200 DAI. This equates to a monthly budget cap of 207,200 DAI to support the team mandate.

This budget cap secures a team of 5.7 full-time employees (FTE), critical infrastructure and tools, as well as covers all other operational costs listed in the table below.

At the end of the calendar year, all unused funds will be returned to the Maker Protocol. Should the TechOps Core Unit shut down, all unused funds will be returned to the DAO immediately.

![Budget table](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP53/budget-table.png)

#### Annual budget components

![Budget components](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP53/budget-components.png)

#### Monthly & Quarterly Budget Cap

![Monthly_Quarterly](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP53/monthly-quarterly.jpeg)

### Budget Details

#### People Cost

The total people cost includes Compensation and Other people costs such as benefits, including healthcare and any taxes and fees relating to compensating people for their work. As a contingency, this has been scaled up by 5% to help with any unknown costs involved in dealing with multiple jurisdictions worldwide.

The essential factor of TechOps services is 24/7/365 support. This requires proper coverage across all time zones. The Core Unit team already has a total time zone coverage with Engineers in the Americas (1 Engineer), Europe (3) and APAC (1). We plan to hire another 2 Engineers in the near future to improve time zone coverage, namely in the Americas (+1) and APAC (+1).

Another important factor of TechOps services is cost effectiveness. Combining these two factors together (the 24/7/365 support and cost effectiveness), the team will also provide services for other Core Units and commercial entities (subject of separate arrangements), and settle the accounts based on FTE (Full Time Equivalent) allocation.

The structure below presents a prospective team structure built around the mission of providing technical support services to MakerDAO Ecosystem.

|Role|People|FTE|
|--|--|--|
|Facilitator/DevOps Engineer|2|1.6|
|DevOps Engineer|5|3.4|
|Project Manager|1|0.5|
|Operations Consultant|1|0.2|
|**Total**|**9**|**5.7**|

#### Infrastructure & Tools

The second biggest cost after people is the Cloud Infrastructure we host and provision.

> _Note:_ TECH-001 has to make the final call on whether there are enough resources and budget to host any new infrastructure. Critical Maker infrastructure is our number one priority and the budget has been made to reflect that.

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

We work with a number of projects such as Forta (developed by OpenZeppelin) to help integrate Maker Protocol into their tools to further support the protocol's daily operational tasks, such as running Keepers. Such integrations require support from those projects which will be invoiced to and covered by TECH-001. All the solutions will be open source and made available to the MakerDAO community.

#### Audits

Much like in the Smart Contract Development world, audits are an indispensable resource in the Infrastructure Engineering field also. Due to the increasing number of moving components, complexity increases, making it crucial to have as many professional eyes looking over the systems as possible, ensuring there aren’t any weak areas that can be exploited. Of course, our team does this constantly, but additionally we’ll be looking to seek advice from a professional third party.

#### Accounting

Outsourcing the accounting work related to TECH-001, including operational support and annual reporting.

#### Recruiting Fees

We are planning to grow the team by 2 Engineers and 1 Project Manager in 2022. Recruiting fees are known to be rather high in the industry due to the high demand for quality talent. TECH-001 will keep the bar high for only the best new team members; therefore, recruiters are going to be critical in finding that talent.

#### Legal consultancy

Covering legal opinion consultation, including contract drafting, writing up Terms & Conditions, and questions related to liabilities and insurance.

#### Travel

A substantial travel budget in order to fund attending conferences and team offsites which are critical for remote teams to build interpersonal relationships and vital for collaboration and retention.

#### Conferences and Education

In our fast-moving industry, it becomes absolutely paramount to keep up to date with new technologies and various implementations done by others. Conferences are a fantastic way to meet like-minded engineers in the space, and also an opportunity to present our own work to an audience. Education can either be face to face or an online course in a subject that an engineer finds relevant to MakerDAO infrastructure.

#### Hardware

The TechOps Core Unit engineers may need to conduct various tests locally that can't be deployed to our Cloud infrastructure. This can include but is not limited to Ethereum nodes that require specific hardware components or application building and testing hardware.

#### Contingency

The contingency represents 25% of the total budget cap and is there to act as a safety buffer against any unknown or unexpected costs.
