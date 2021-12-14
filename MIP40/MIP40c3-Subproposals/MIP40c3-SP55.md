# MIP40c3-SP55: Modify Core Unit Budget - Sustainable Ecosystem Scaling (SES-001)

## Preamble

```
MIP40c3-SP#: 55
Author(s): @wouter, @juanjuan
Contributors: @Retro
Tags: core-unit, cu-ses-001, budget, dai-budget, 
Status: RFC
Date Applied: 2021-12-08
Date Ratified: yyyy-mm-dd
```

## Sentence Summary

MIP40c3-SP55 modifies the Dai budget implementation for Core Unit SES-001: Sustainable Ecosystem Scaling, replacing [MIP40c3-SP31](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP31.md).

## Paragraph Summary

MIP40c3-SP55 modifies the Dai budget implementation for Core Unit SES-001: Sustainable Ecosystem Scaling. It contains:

- Changes against the previous version
- The Quarterly Budget Cap: the hard limit voted by Governance
- Breakdown of budgets:
    - Permanent Team
    - Incubation Program
    - Grants Program

## Changes (compared to MIP40c3-SP31)

- Automates payments from the Maker Protocol to the Auditor Wallet by putting a DssVest stream in place.
- Reconfiguration of the Auditor Wallet to a nested multi-sig, modifying signers.
- Configure Maker Protocol as Beneficiary on the Auditor Wallet.
- Adjustments and additions to the Monthly Top-up Cycle.
- Introduces DssBlow as a method of returning funds to the protocol.
- Changes quarterly budget cap approval to annual budget cap approval by Governance.
- Minor changes in the budget categories for better consistency with other Core Units.
- Removed the MKR Compensation Expectation as it is now covered by a separate MIP: [MIP40c3-SP17.](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP17.md)

## Specification

### Motivation

Going by the critical nature of the work done by the Sustainable Ecosystem Scaling Core Unit, sufficient funds need to be provisioned to guarantee the success of the Maker ecosystem in the long run.

### Core Unit ID

SES-01

### Budget Implementation

The budget is split into three separate categories: `Permanent Team`, `Grants Program`, and `Incubation Program`. 

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/budget-map.png)

#### Multi-sig Wallets

The following multi-sigs are involved:

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multi-sig, composed of 1-out-of-2 role based multi-sigs as signers. The Auditor Wallet will have 2 roles defined for its signers: Auditors and Accountants. 

   The Accountant Role Multi-sig will have 2 signers, both SES permanent team contributors. The Auditor Role Multi-sig will also have 2 signers, both **TBD**. Both roles will conduct the monthly auditing process as described in the Monthly Top-up Cycle, increasing transparency of the auditing process for the community.

   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multi-sig wallet, ensuring control over these funds and acting as a back-up.

   This multi-sig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallets.


2. **The Operational Wallets** -- One wallet for each budget category. These are 2-out-of-3 multi-sigs controlled by SES. Signers include the facilitator, the team lead, and one other SES member from the permanent team, responsible for the associated budget category.

	- The `Permanent Team Wallet`
	- The `Grants Program Wallet`
	- The `Incubation Program Wallet`

#### Monthly Budget Statement

Within the first 5 days of each month, SES will submit a `Monthly Budget Statement` to the signers of the Auditors Wallet with the following sections:

1. **Previous Month's Actuals**, i.e., the actual expenses (DAI and MKR) of the month that just ended.
2. **Budget Forecast**, based on the latest available information, of the budget (in DAI) required to maintain a 3-month runway for the team.
3. **MKR Vesting Overview** -- this schedule has the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transaction Amounts**
    - The required DAI amount sent from the Auditor Wallet to the Operational Wallets to replenish the 3-month runway as indicated in the Budget Forecast section.
    - Any excess DAI amount above the 3-month forecast in the Operational Wallets that will be returned to the Auditor Wallet.

The Monthly Budget Statements can be found in this [git repository on Github](https://github.com/makerdao-ses/transparency-reporting/tree/main/Monthly%20Budget%20Statements).

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, SES submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.
2. **Transaction Requests Submission** -- In parallel, SES submits the necessary transaction requests for the Auditor Wallet signers to sign:
   - DAI Top-up Transaction – One DAI transaction for the Operational Wallets that adds enough funds to the Operational Wallets to replenish the forecast 3-month runway. Only applies if the Operational Wallets balance is below this forecast.
3. **Returning Excess Funds** – SES creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   - Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet.
4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the SES DssVest contract, replenishing the available funds in the Auditor Wallet.
5. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by SES to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings. 

   A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the SES’s transparency reporting repository on Github.

6. **Transaction Approvals** – Upon acceptance of the Monthly Budget Statement audit, an Accountant Role signer, and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallets.
7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer. 

   As such, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Final Transaction According to MIP40c3-SP26

No additional governance transactions are needed to enable the transition from [MIP40c3-SP31](https://forum.makerdao.com/t/mip40c3-sp31-modify-core-unit-budget-sustainable-ecosystem-scaling-ses-001/9805) to the new MIP40c3-SP55, other than putting the DssVest stream in place that is defined further down. 

The last top-up transaction from the protocol to the Auditor Wallet according to [MIP40c3-SP31](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP31.md) is expected to happen throughout the month of January, after acceptance of the December budget statement by the auditors.

#### Auditor Wallet Reconfiguration

To enable this payment flow, a modification in the configuration of the existing SES Auditor Wallet will be required. These changes will occur within the first month of the executive vote passing.

- Add Accountant Role Wallet (`0xA2A855Ac8D2a92e8A5a437690875261535c8320C`) as a signer
- Add Auditor Role Wallet (`TBD`) as a signer
- Add `MCD_PAUSE_PROXY` as a beneficiary, with an allowance of 1B DAI withdrawal.
- Remove existing 3 signers of wallet and reconfigure required confirmations from 2-out-of-3 to 2-out-of-2.

#### Transactions

- **DssVest Stream**

   A total of 5,844,444 DAI will be streamed to 0x87AcDD9208f73bFc9207e1f6F0fDE906bcA95cc6 starting 2022-2-1 and ending 2023-1-31.
   
   *(5,844,444 DAI is calculated as  Quarterly Budget Cap x 4 = 1,461,111  x 4).*

### Budget Breakdown

The proposed budget comprises three parts:

1. **Permanent Team Budget** -- The Permanent Team Budget covers Dai compensation and operational costs for the permanent team members of the Sustainable Ecosystem Scaling Core Unit. This is a standard budget based on the breakdown of actual costs. It will evolve in a relatively slow and predictable way.

2. **Incubator Program Budget** -- The Incubator Program Budget is not based on a breakdown of actual costs but rather acts as a spending limit for a financial buffer used for funding incubation projects at the discretion of the SES Facilitator and multi-sig co-signers.

   A big part of the Incubator Program's value lies in this ability to allocate budgets without waiting for governance approval quickly. This is to avoid a situation where promising teams have to wait in great uncertainty, typically 3 months or longer, before potentially receiving the first DAO payment for their Core Unit. This is seen as a requirement that is an unreasonable barrier to entry for new teams joining the ecosystem.

![3 months no support](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/incubation-program.png)

3. **Grants Program Budget** -- The Grants Program Budget is a similar budget based on prior experience with the Governance Communications' grants program that has now been sunset.

#### Dai Expenditure

**Quarterly Budget Cap**

We're asking for a Quarterly Budget Cap of **$1,461,111**, spanning a 3-month runway.

| Group           |Monthly Total| 3 Months       |
|-----------------|------------:|---------------:|
| Permanent Team  |    $177,037 |       $531,111 |
| Incubation      |    $250,000 |       $750,000 |
| Grants          |     $60,000 |       $180,000 |
| **Grand Total** |**$487,037** | **$1,461,111** |

**Permanent Team**

| Type                         | Monthly Total |
|------------------------------|--------------:|
| Dai Compensation  (11.5 FTEs) |      $146,918 |
| Travel Costs                 |        $3,333 |
| Buffer                       |        $8,333 |
| Software Development         |        $4,168 |
| Software                     |        $1,785 |
| Payment Fees (gas & payment processor)                          |       $12,500 |
| **Grand Total**              |   **$177,037**|

See our [Team Spreadsheet](https://docs.google.com/spreadsheets/d/1dXsKefLTIbhvB5M3lMXNthOlLrKC1Yhjvpcu9u05ees/edit?usp=sharing) for more details about the included FTEs.

**Incubation Program**

The limit for the Incubation Program was estimated based on some team configuration scenarios that we want to support, as outlined in the table below. The requested limit is the maximum amount needed for any of these scenarios.

|               | Teams | Avg Team Size | People Total | Avg Dai Compensation | Annual Cost | Monthly Cost |
|---------------|:-----:|:-------------:|:------------:|-----------:|------------:|-------------:|
| Sr. Engineers |   4   |       4       |        16    |   $160,000 |  $2,560,000 |     $213,333 |
| Non-technical |   6   |       4       |        24    |   $125,000 |  $3,000,000 |     $250,000 |
| Mix           |   4   |       5       |        20    |   $137,500 |  $2,750,000 |     $229,167 |

*Estimations of different incubation costs at industry standards.*

**Grants Program**

The details for the Grants Program are still being worked out. To avoid updating the budget MIP soon, a budget is included that will be sufficient to get the program up and running. Once the program is active, more detailed estimates will be included in the Monthly Budget Statement.

## Related Documents

* [MIP39c2-SP10: Adding the Sustainable Ecosystem Scaling Core Unit](https://forum.makerdao.com/t/mip39c2-sp10-adding-sustainable-ecosystem-scaling-core-unit/7368 ): 
* [MIP40c2-SP17: Sustainable Ecosystem Scaling Core Unit MKR Budget ](https://forum.makerdao.com/t/mip40c3-sp17-sustainable-ecosystem-scaling-core-unit-mkr-budget-ses-001/8043) 
* [MIP41c2-SP10: Facilitator On-boarding for the Sustainable Ecosystem Scaling Core Unit](https://forum.makerdao.com/t/mip41c4-sp10-facilitator-onboarding-sustainable-ecosystem-scaling-core-unit/7370)