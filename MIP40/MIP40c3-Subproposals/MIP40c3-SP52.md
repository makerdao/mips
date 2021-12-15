# MIP40c3-SP52: Development & UX Core Unit Budget - DUX-001

## Preamble

```
MIP40c3-SP#: 52
Author(s): @rafinskipg, @phil, @adamgoth
Contributors: @SES-Core-Unit
Tags: core-unit, cu-dux-001, budget, dai-budget
Status: RFC
Date Applied: 2021-12-08
Date Ratified: YYYY-MM-DD
Forum Post URL: https://forum.makerdao.com/t/mip40c3-sp52-development-ux-core-unit-budget-dux-001
``` 

## Sentence Summary

MIP40c3-SP52 modifies the DAI budget implementation for Core Unit DUX-001: Development and UX, replacing [MIP40c3-SP26](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP26.md).

## Paragraph Summary

MIP40c3-SP52 modifies the DAI budget implementation for Core Unit DUX-001: Development and UX. It contains:

- Quarterly Budget Cap: the hard limit voted on by Governance
- Breakdown of Permanent Team costs

## Changes compared to MIP40c3-SP26

* Automates payments from the Maker Protocol to the Auditor Wallet by putting a DssVest stream in place
* Reconfiguration of the Auditor Wallet to a nested multi-sig, modifying signers
* Configure Maker Protocol as Beneficiary on the Auditor Wallet
* Adjustments and additions to the Monthly Top-up Cycle
* Introduces DssBlow as a method of returning funds to the protocol
* Changes quarterly budget cap approval to annual budget cap approval by Governance
* Minor changes in the budget categories for better consistency with other Core Units

## Specification

### Motivation

Based on the nature of the work done by the Development and UX Core Unit (DUX), the budget reflects the needs of the team to ensure continuity of the work described in our [MIP39c2-SP18](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP18.md). This is summarized in, but not limited to:

- Improving Governance User experience
- Democratizing access to the voting process and facilitating information flow.
- Maintaining tools and systems for the governance UIs and frontend tools of the protocol.

### Core Unit ID

- DUX-001

### Budget Implementation

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP52/flow-structure.png)

#### Multi-sig Wallets

The following multi-sigs are involved: 

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multi-sig, composed of 1-out-of-2 role based multi-sigs as signers. The Auditor Wallet will have 2 roles defined for its signers: Auditors and Accountants. 

   The Accountant Role Multi-sig will have 2 signers---both SES permanent team contributors. The Auditor Role Multi-sig will also have 2 signers, also both SES permanent team contributors. SES will conduct the monthly auditing process as described in the Monthly Top-up Cycle, increasing transparency of the auditing process for the community.

   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multi-sig wallet, ensuring control over these funds and acting as a backup.

   This multi-sig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet.

2. **The Operational Wallet** -- One wallet for DUX operational expenses. This is a 3-out-of-6 multi-sig controlled by DUX. Signers include the facilitator, the team lead, and the other DUX team members.

#### Monthly Budget Statement

Within the first 5 days of each month, DUX will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended.

2. **Budget Forecast** - A forecast of the Dai amount required to maintain a 3-month operational runway for the team based on the latest available information.

3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.

4. **Transactions**
   * The required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish the 3-month runway as indicated in the Budget Forecast section.
   * Any excess DAI amount above the 3-month forecast in the Operational Wallet that will be returned to the Auditor Wallet

The Monthly Budget Statements can be found in [this GitHub repository](https://github.com/makerdao-dux/transparency-reporting).

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, DUX submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.
2. **Transaction Requests Submission** -- In parallel, DUX submits the necessary transaction requests for the Auditor Wallet signers to sign:
   * DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast 3-month runway. Only applies if the Operational Wallet balance is below this forecast.
3. **Returning Excess Funds** – DUX creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   * Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet.

4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the DUX DssVest contract, replenishing the available funds in the Auditor Wallet.
5. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by DUX to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings. 

   A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the DUX’s transparency reporting repository on Github.

6. **Transaction Approvals** – Upon acceptance of the Monthy Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet.

7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer. 

   As such, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Final Transaction According to MIP40c3-SP26

No additional governance transactions are needed to enable the transition from [MIP40c3-SP26](https://forum.makerdao.com/t/mip40c3-sp26-development-ux-core-unit-budget-dux-001/9774) to the new MIP40c3-SP52, other than putting the DssVest stream in place that is defined further down. 

The last top-up transaction from the protocol to the Auditor Wallet according to [MIP40c3-SP26](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP26.md) is expected to happen throughout the month of January, after acceptance of the December budget statement by the auditors.

#### Auditor Wallet Reconfiguration

To enable this payment flow, a modification in the configuration of the existing DUX Auditor Wallet will be required. These changes will occur within the first month of the executive vote passing.

* Add Accountant Role Wallet (`0xA2A855Ac8D2a92e8A5a437690875261535c8320C`) as a signer
* Add Auditor Role Wallet (`0xB2da57e224949acDDe173a5b8A8160c023ea86e6`) as a signer
* Add `MCD_PAUSE_PROXY` as a beneficiary, with an allowance of 1B DAI withdrawal.
* Remove existing 3 signers of wallet and reconfigure required confirmations from 2-out-of-3 to 2-out-of-2.

#### Transactions

* **DssVest Stream**

  A total of 1,934,300 DAI will be streamed to 0x5A994D8428CCEbCC153863CCdA9D2Be6352f89ad starting 2022-2-1 and ending 2023-1-31.

    _(1,934,300 DAI is calculated as Quarterly Budget Cap x 4 = 483,575 DAI x 4)._

## Budget Breakdown

The DUX budget is designed with the following in mind:

- Paying for the operational costs to run the core unit
- Having a buffer for unexpected legal, technical, or financial problems

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

- Funding an initial 3 month budget for DUX
- A continuous funding model based on [the SES top-up mechanism](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP10.md)

### Team Summary for 2021

|Team members|Amount|
|--|:--:|
|Senior Software Engineers|4|
|Designer / UX Specialist|1|
|Product Manager|1|
|**Team Total**|**6**|

### Dai Expenditure

We’re asking for a **Quarterly Budget Cap** of **$483,575 DAI**.

The budget cap differs from the actual expenses of the core unit. The cap refers to the maximum that the core unit can request for operating and it includes room for unforeseen circumstances.

#### Contributor Compensation

|Type|Monthly Cost|Quarterly| 
|--|:--:|:--:|
|**Grand Total**|**$91,667**|**$275,000**|


#### Budget Breakdown

|Summary|Monthly Cost|Quarterly| 
|--|:--:|:--:|
|Contributor Compensation|$91,667|$275,000|
|Travel & Events|$4,500|$13,500|
|IT, Infrastructure & Subscriptions|$9,000|$27,000|
|Gas Fees|$1,000|$3,000|
|Legal Services|$5,500|$16,500|
|Payment Fees|$6,500|$19,500|
|Contractor Services (Audits, DevOps)|$15,000|$45,000|
|One time costs|-|$21,000 (6 new members one time cost)|
|**Total**|**$133,167**|**$420,500**|
|Contigency Buffer (15%)|$19,975|$63,075|
|**Grand Total**|**$153,142**|**$483,575**|

### Budget Details

Providing additional detail with regards to the above line items:

**Contributor Compensation:** The initial team has 4 full-time senior software engineers, 1 full-time product manager, 1 full-time designer/UX specialist (for a total of 6 permanent members).

The total cost of an employee includes only compensations as a contractor. Contractors have to take care of their health insurance and other expenses.

**Travel and Events (\*):** The team may travel to present at industry events, attend conferences or participate in a team offsite.

**Hardware / Welcome Package:** An allocation of $3,500 per new team member. (New members only, one-time cost). This includes tools needed for testing features (hardware wallets, devices), and laptop/working setup.

**IT, Infrastructure & Subscriptions (\*):** We anticipate a variety of costs related to software subscriptions, cloud services, analytics, and tooling. Our infrastructure costs are around $9,000 per month coming from the previous costs that the team's applications have incurred. We will work to lower these expenses to a reasonable amount by optimizing network usage. However, this cost can spike if we have spikes in traffic.

**Gas Fees (\*):** The gas cost assumes testing of voting features on mainnet. $1,000 per month is allocated for this purpose. This will allow for testing of all the features on mainnet with each release.

**Legal Services (\*):** Coverage for legal services in order to help with drafting Terms and Conditions, etc.

**Payment Fees (\*):** Payment processor fees and financial services.

**Contractor Services (\*):** The Core Unit may occasionally need to hire additional contractors, other core units, or professional services (DevOps, security auditing, quality assurance, etc).

**Contingency Buffer (\*):** Approximately 15% of the total cap costs added in case of additional urgent expenses, such as:

- Increased cost on systems and tools due to high-usage demand (Infura, Alchemy, etc)
- Spikes in gas prices
- Need to defend the CU legally/financially
- Error in budget planning

**(\*) = These are estimated values. The team will generate financial reports and return the excess capital according to the budget implementation.**