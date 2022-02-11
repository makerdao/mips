# MIP40c3-SP50: Modify Core Unit Budget - Maker Talent (MT-001)

## Preamble

```
MIP40c3-SP#: 50
Author(s): @manomad_
Contributors: @synesthesia
Tags: core-unit, cu-mt-001, budget, dai-budget
Status: Formal Submission
Date Applied: 2021-12-08
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip40c3-sp50-modify-core-unit-budget-maker-talent-mt-001
```

## Sentence Summary

MIP40c3-SP50: adds the DAI budget for the Core Unit MT-001: Maker Talent.

## Paragraph Summary

MIP40c3-SP50 adds the DAI budget for the Core Unit MT-001: Maker Talent.
The Maker Talent CU will act as a center of expertise, empowering CUs to autonomously attract and retain core contributors in the most efficient manner.

The Maker Talent CU costing model is designed with the following goals in mind:

- The Maker Talent CU is to cover the infrastructure-related (sourcing channels, recruitment marketing, infrastructure) and operational-related costs (Compensation TalentCU contributors, daily operations). 2023 onwards the CUs may be charged a service fee to support the Maker TalentCU’s infrastructure and operational costs.
- The Maker Talent CU is to maintain a reasonable buffer for unexpected expenses
Whereas the Maker Talent CU is covering all fixed costs, the CUs themselves will cover the variable costs (e.g., referral rewards, agency fees, event-related costs, assessment costs) if they choose to make use of any of these options.

## Specification

### Motivation

Going by the critical nature of the work done by the Maker Talent Core Unit, sufficient funds need to be provisioned in order to guarantee the success of the Maker ecosystem in the long run.

### Core Unit ID

- MT-001

### Budget Implementation

! [MT-001 Payment Flow Structure](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP50/PaymentFlow.jpg)

The budget implementation will follow standard best practices as recommended by the SES Core Unit and will involve a setup with an Auditor wallet and an Operational Wallet which will be topped up on a monthly basis with a 3-month runway. The budget cap will be streamed from the protocol to the Auditor Wallet to reduce as much as possible the overhead for Maker governance.

The MT-001 budget is designed with the following in mind:

- Paying for the operational costs to run the Core Unit
- Providing the protocol control over funds held in the Auditor Wallet.
- Reducing governance overhead to a minimum
- Providing full transparency and being kept in check by a group of trusted auditors

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

- Streaming the annual budget for MT-001 using *DssVest* for 1 year
- A continuous-funding model based on [the SES top-up mechanism](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369).

#### Multisig Wallets

The following multisigs are involved:

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multisig, composed of 1-out-of-2 role-based multisigs as signers. The Auditor Wallet will have 2 roles defined for its signers: Auditors and Accountants.

   The Accountant Role Multi-sig will have 2 signers---both SES permanent team contributors. The Auditor Role multisig will also have 2 signers, also both SES permanent team contributors. SES will conduct the monthly auditing process as described in the Monthly Top-up Cycle, increasing transparency of the auditing process for the community.

   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor multisig wallet, ensuring control over these funds and acting as a backup.

   This multisig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet.

2. **The Operational Wallet** -- One wallet for MT-001 operational expenses. This is a 1-out-of-1 multisig controlled by MT-001. Signers include the facilitator and an additional signer will be added as the Core Unit grows.

#### Monthly Budget Statement

Within the first 5 days of each month, MT-001 will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended.
2. **Budget Forecast** - A forecast of the Dai amount required to maintain a 3-month operational runway for the team based on the latest available information.
3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transactions**
   * The required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish the 3-month runway as indicated in the Budget Forecast section.
   * Any excess DAI amount above the 3-month forecast in the Operational Wallet that will be returned to the Auditor Wallet

The Monthly Budget Statements can be found in the GitHub repository (To be updated).

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, MT submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.

2. **Transaction Requests Submission** -- In parallel, MT submits the necessary transaction requests for the Auditor Wallet signers to sign:
   - DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast 3-month runway. Only applies if the Operational Wallet balance is below this forecast.
3. **Returning Excess Funds** – MT-001 creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   - Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet.
4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the MT-001 DssVest contract, replenishing the available funds in the Auditor Wallet.
6. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by MT-001 to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings.

   A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the MT-001’s transparency reporting repository on Github.

6. **Transaction Approvals** – Upon acceptance of the Monthy Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet.

7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer.

   As such, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Auditor Wallet Configuration

To enable this payment flow, the following configuration of the MT Auditor Wallet will be required.

- Accountant Role Wallet (`0xA2A855Ac8D2a92e8A5a437690875261535c8320C`) as a signer
- Auditor Role Wallet (`0xB2da57e224949acDDe173a5b8A8160c023ea86e6`) as a signer
- Add `MCD_PAUSE_PROXY` as a beneficiary, with an allowance of 1B DAI withdrawal.
- Configure required confirmations as 2-out-of-2.

#### Transactions

- **Initial Seed Transfer**
     311,179.55 DAI will be transfered to `0x5a63814F7dD015c3C2EF038AEE19b0079dC62f30` address on 2022-03-01.

     This seeds the Operational Wallet to 3x the Month Budget Cap. This also initially funds the Auditor Wallet to 2x the Monthly Budget Cap. The initial transfer funds the Operational Wallet, enabling the Core Unit to begin operations. This also then positions DssVest to begin streaming funds up to the Quarterly Budget Cap each month in the Auditor Wallet.

- **DssVest Stream**

A total of 746,830.93 DAI will be streamed to `0x5a63814F7dD015c3C2EF038AEE19b0079dC62f30` starting 2022-03-01 and ending 2023-02-28.

### Budget Breakdown

The budget is composed of the following categories, as stated below (in DAI):

|Budgeted Item|3 Months|Annual|
------------ |-------------| -------------
|Sourcing Channels|17,318.75|69,275.00|
|Recruitment Marketing|11,400.00|45,600.00|
|Consultancy|14,000.00|56,000.00|
|Infrastructure|27,001.00|108,004.00|
|Contributors Compensation|86,878.80|347,515.20|
|Operations|5,756.00|23,024.00|
|**Subtotal Without Buffer**|**162,354.55**|**649,418.20**|
|Buffer 15%|24,353.18|97,412.73|
|**GRAND TOTAL**|**186,707.73**|**746,830.93**|

#### Sourcing Channels

We will be further building out all necessary sourcing channels to create awareness about MakerDAO contributor opportunities with both active and passive candidates across a variety of channels. Sourcing Channel ROI will be closely monitored and continuously optimized.

Given events are in the first place recruitment marketing initiatives instead of sourcing channels with good ROI, we have changed our approach towards events and moved any related expenses to the recruitment marketing category.

#### Recruitment Marketing

Our recruitment marketing initiatives will be focused on defining and promoting the MakerDAO contributor brand.

Given that the Maker Talent CU is not an event-organizing unit but a center of expertise empowering CUs to autonomously attract and retain core contributors in the most efficient manner, the Maker Talent CU will be supporting the CUs with a branded recruitment marketing toolkit to be used for on-site events. The CUs can request the attendance of any Maker Talent CU contributor if needed as long as the respective contributor has the bandwidth and as long as the CU takes up all travel and other related costs.

#### Consultancy

In order to build all components of the contributor experience journey, we may from time to time require external expertise for specialized initiatives (e.g., GDPR, Job evaluation & Compensation system).

#### Infrastructure

In order to digitize and to provide an outstanding UX for the contributors we will be upscaling and deploying new tools, including but not limited to upscaling our Applicant Tracking System, creating digital onboarding workflows, deploying a gamified contributor referral system, and underpinning everything with a contributor experience management platform.

#### DAI Compensation

Overview of the compensation for the Maker Talent CU contributors which will have 3 FTEs (1 Facilitator, 1 recruiter, 1 operational support) and 2 ad hoc contributors for recruitment/other support.

#### Operations

This refers to all items needed to smoothly run the daily operations of the Maker Talent CU.
