# MIP40c3-SP26: Development & UX Core Unit Budget - DUX-001

## Preamble

```
MIP40c3-SP#: 26
Author(s): @rafinskipg, @phil, @adamgoth
Contributors: @wouter, @juanjuan
Tags: core-unit, cu-dux-001, budget, dai-budget
Status: Accepted
Date Proposed: 2021-08-11
Date Ratified: 2021-09-27
Ratification Poll URL: https://vote.makerdao.com/polling/QmSYLL9K?network=mainnet#poll-detail
Forum URL: https://forum.makerdao.com/t/mip40c3-sp26-development-ux-core-unit-budget-dux-001/9774
```

## Sentence Summary

MIP40c3-SP26 adds the DAI budget for Core Unit DUX-001: Development and UX.

## Paragraph Summary

MIP40c3-SP26 adds the budget for Core Unit DUX-001: Development and UX. It contains:
- Total Budget Cap: The hard limit voted on by Governance
- First-month forecast: The actual first month estimated expenses
- Breakdown of Permanent Team for the expected first payment (October)

## Specification

### Motivation

Based on the nature of the work done by the Development and UX Core Unit (DUX), the budget reflects the needs of the team to ensure continuity of the work described in our [MIP39c2](https://forum.makerdao.com/t/mip39c2-sp-adding-development-ux-core-unit-dux-001/9770). This is summarized in, but not limited to:
- Improving Governance User experience
- Democratizing access to the voting process and facilitating information flow.
- Maintaining tools and systems for the governance UIs and frontend tools of the protocol.

### Core Unit ID

DUX-001

### Budget Implementation

The DUX budget is designed with the following in mind:
- Paying for the operational costs to run the core unit
- Having a buffer for unexpected legal, technical, or financial problems

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:
- Funding an initial 3 month budget for DUX
- A continuous funding model based on [the SES top-up mechanism](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369)

### Team Summary for 2021

|   Team members    | Amount |  
|---------------|:-----:|
| Senior Software Engineers |   4  |      
| Designer / UX Specialist |  1  |      
| Product Manager |   1  |      
| **Team Total** |   **6**  |    

### Budget Cap Breakdown

### Dai Expenditure

We’re asking for a **Total Budget Cap** of **$483,575 DAI**, spanning a 3-month runway.

The budget cap differs from the actual expenses of the core unit. The cap refers to the maximum that the core unit can request for operating and it includes room for unforeseen circumstances.

#### Contributor Compensation:
|   Type    | Monthly Cost | Quarterly | 
|---------------|:-----:|:-------------:|
| **Grand Total** |   **$91,667**   |       **$275,000**       |  


#### Budget Breakdown:
|    Summary      | Monthly Cost | Quarterly | 
|---------------|:-----:|:-------------:|
| Contributor compensation |   $91,667   |       $275,000       |   
| Travel & Conferences |   $4,500  |      $13,500       |
| IT & Subscriptions |   $9,000  |      $27,000        |
| Gas Costs |   $1,000  |      $3,000       |
| Professional & Legal Services |  $12,000  |     $36,000     |
| Contractor Services (Audits, DevOps) |   $15,000  |     $45,000 |
| One time costs |  -  |   $21,000 (6 new members one time cost) |
| **Total** | **$133,167**  |   **$420,500** |
| + Contigency Buffer (15%) | **$153,142**  |  **$483,575** |

### Budget Details:

Providing additional detail with regards to the above line items:

**Contributor Compensation:** The initial team has 4 full-time senior software engineers, 1 full-time product manager, 1 full-time designer/UX specialist (for a total of 6 permanent members).

The total cost of an employee includes only compensations as a contractor. Contractors have to take care of their health insurance and other expenses.

**Travel and Conferences (\*):** The team may travel to present at industry events, attend conferences or participate in a team offsite.

**Hardware / Welcome Package:** An allocation of $3,500 per new team member. (New members only, one-time cost). This includes tools needed for testing features (hardware wallets, devices), and laptop/working setup.

**IT & Subscriptions (\*):** We anticipate a variety of costs related to software subscriptions, cloud services, analytics, and tooling. Our infrastructure costs are around $9,000 per month coming from the previous costs that the team's applications have incurred. We will work to lower these expenses to a reasonable amount by optimizing network usage. However, this cost can spike if we have spikes in traffic.

**Gas Costs (\*):** The gas cost assumes testing of voting features on mainnet. $1,000 per month is allocated for this purpose. This will allow for testing of all the features on mainnet with each release.

**Professional & Legal Services (\*):** Coverage for legal services, financial services, and payment processor fees.

**Contractor Services (\*):** The core unit may occasionally need to hire additional contractors, other core units, or professional services (DevOps, security auditing, quality assurance, etc).

**Contingency Buffer (\*):** Approximately 15% of the total cap costs added in case of additional urgent expenses, such:
- Increased cost on systems and tools due to high usage demand (Infura, Alchemy, etc)
- Spikes in gas prices
- Need to defend the CU legally/financially
- Error in budget planning

**(\*) = These are estimated values. The team will generate financial reports and return the excess capital at the end of the working year.**

Any changes to these amounts will be reported in the [transparency reports](https://github.com/makerdao-dux/transparency-reporting) and reviewed by our budget auditors.

---

_This reporting framework and the monthly top-up mechanism are adopted from the SES. Thank you to SES for their incubation program and guidance._

---

### Monthly Budget Statement

Within the first 5 days of each month, DUX will submit a **Monthly Budget Statement** to the signers of the Auditors Wallet with the following sections:

1. **Budget Forecast** - The amount of Dai that is required to maintain a 3-month runway for the team based on available information
2. **Previous Month Actuals** - The actual expenses (DAI and MKR) of the month that just ended
3. **MKR Vesting Overview** - a schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transaction Amounts**
   - The required DAI amount for the Operational Wallet to replenish the 3-month runway
   - Any excess DAI amount that will be returned to the Auditors Wallet

The Monthly Budget Statements will be added to the MakerDAO forum. The originals can be found in [this GitHub repository](https://github.com/makerdao-dux/transparency-reporting).

### Monthly Top-Up Cycle

### Seeding the Auditors Wallet

In preparation for the monthly top-up cycle, the Auditors Wallet first needs to be seeded with the total budget cap from the surplus buffer. This seeding transaction will be included in the executive vote on the initial DUX Core Unit MIPs.

### Monthly Cycle

1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, DUX submits the Monthly Budget Statement to the Auditors Wallet signers. This report is also available for the rest of the community to review.
2. **Transaction Requests Submission** – In parallel, DUX submits the necessary transaction requests for the Auditors Wallet signers to sign:
   - **DAI Top-up Transactions** – One DAI transaction for the Operational Wallet that has a balance below the 3-month runway forecast. The top-up transaction adds enough funds to the Operational Wallet to replenish this runway.
3. **Returning Excess Funds** – DUX creates and signs any transactions for excess funds that should be returned to governance:
   - **Excess DAI Transactions** – DAI transactions for the Operational Wallet if there is a balance above the 3-month runway forecast.
4. **Auditors’ Review** – The Auditors Wallet signers review the Monthly Budget Statement. They check that the transaction request amounts are the ones mentioned in the report and that they make sense. If there are any irregularities or other questions or comments, they discuss this with DUX and allow for resubmission if any corrections are required.
5. **Transaction Approvals** – Three of the Auditor's Wallet signers sign the submitted transactions, sending the DAI top-up amounts to the Operational Wallet. DUX can now use the funds for expenses.
6. **Auditors Wallet Top-Up** – In the next executive vote, DUX submits a PR to top-up the Auditors Wallet to the Total Budget Cap. The cycle can now start again from step 1.

---

### Transfers

**Seed Transfer**
- **What:** Initial transfer of the total budget cap for the 3-month runway.
- **When:** Automatically, upon executive vote approval (spell cast).
- **Amount:** **483,575 DAI**
- **Sender:** `Maker Protocol Surplus Buffer`
- **Recipient:** Auditors Wallet: `0x5A994D8428CCEbCC153863CCdA9D2Be6352f89ad`

**October 2021 Transfer**
- **What:** Operational wallets top-up for October 2021 expenditures.
- **When:** Manually, upon October 2021 Budget Statement review.
- **Amount:** Determined by the [October 2021 Budget Statement](https://github.com/makerdao-dux/transparency-reporting/blob/main/Monthy%20Budget%20Statements/2021-09.md)
- **Sender:** Auditors Wallet: `0x5A994D8428CCEbCC153863CCdA9D2Be6352f89ad`
- **Recipients:**
   - Permanent Team Wallet: `0x8Cd0ad5C55498Aacb72b6689E1da5A284C69c0C7`
