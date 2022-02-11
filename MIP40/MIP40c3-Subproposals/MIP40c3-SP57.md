# MIP40c3-SP57: Modify Core Unit Budget - Collateral Engineering Services (CES-001)

## Preamble

```
MIP40c3-SP#: 57
Author(s): @monkey.irish
Contributors: @lollike
Tags: core-unit, ces-001, budget, dai-budget
Status: Formal Submission
Date Applied: 2022-01-12
Date Ratified: <yyyy-mm-dd>
```

## Sentence Summary

MIP40c3-SP57 is a new MIP providing for the continuation of the Dai budget implementation for Core Unit CES-001: Collateral Engineering Services.

## Paragraph Summary

The MIP40c3-SP57 Dai budget implementation for Core Unit CES-001: Collateral Engineering Services contains:

1. The CES-001 budget for Q2 2022 through Q1 2023. This is a continuation of the Q4 2021 through Q1 2022 budget in [MIP40c3-SP30](https://mips.makerdao.com/mips/details/MIP40c3SP30).
2. Automates Dai payments from the Maker Protocol surplus buffer to the Auditor Wallet by establishing a DssVest stream for funding.
3. Unless specified in MIP40c3-SP57, all prior terms and conditions ratified in the prior Dai budget implementation, [MIP40c3-SP30](https://mips.makerdao.com/mips/details/MIP40c3SP30), are considered active and are not modified or revoked by this proposal.

## Specification

### Motivation

To support the ongoing needs and innovation of Maker protocol collateral, funding is requested to:

1. Support the ongoing onboarding needs of on-chain (crypto-native) collateral.
2. Architect and implement off-chain (real-world assets) collateral solutions to aggressively onboard and scale Dai in 2022.
3. Enable a portion of prospective collateral to be onboarded using individuals, partners, and/or intermediaries.
4. Maintain and operationalize all collateral within the Maker Protocol.
5. Support the entire collateral lifecycle with Product Management best practices.

### Core Unit ID

CES-001

### Budget Implementation

The CES budget is designed to pay for the operational costs to run and sustain the CES Core Unit. Therefore, a vote to ratify MIP40c3-SP57 means MKR holders make a commitment to a continuous funding model that operates on an annual basis starting April 1, 2022.

![CES Payment Flow Structure](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP57/PaymentFlow.jpg)

#### Multisig Wallets

The following wallets are involved:

- **Auditor Wallet** -- A 3-out-of-4 multi-sig, controlled by trusted MakerDAO members. This multi-sig will hold funds in Dai and receive the DssVest stream. All funds pass through this wallet before any are sent to the CES Operational Wallet.

    The Maker Protocol (MCD_PAUSE_PROXY, 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB) is listed as a beneficiary on the Auditor Wallet. This allows the Maker protocol to withdraw up to 1B Dai from the Auditor Wallet, ensuring control over these funds and acting as a back-up.

- **CES Operations Wallet** -- A 2-out-of-3 multi-sig, controlled by CES. This multi-sig will be used for Core Unit expenses.

#### Core Unit Monthly Budgeting Cycle

Within the first 10 days of each month, CES will publish a public Monthly Budget Statement with the following sections:

- For each month, an accounting of funds spent in the prior month
- An updated budget forecast for the next three months
- A detailed overview of CES MKR vesting
- Requests for funding transfer(s) from DssVest to the Auditor Wallet
- Requests for funding transfer(s) from the Auditor to the CES Operations Wallet
- A list of transfer(s) from the CES Operations to the Auditor Wallet
- A list of transfer(s) from the Auditor Wallet to the surplus buffer

The Monthly Budget Statements can be found within this [git repository on Github](https://github.com/monkeyirish/ces-core-unit/tree/master/reporting/budget-monthly).

#### Funding Cycle

1. **Funding Requests** - Requests for funding the CES Operations Wallet will be listed in the Monthly Budget Statement. The request will be based upon the 3-month budget forecast and Dai on hand in the CES Operations Wallet. The goal is to keep approximately 3-months of runway in the CES Operations Wallet.
2. **Funding Transaction** - CES submits the necessary transaction requests for the Auditor Wallet signers to sign.
3. **Transaction Verification** - The Auditor Wallet signers will verify the Monthly Budget Statement and Funding Transaction(s).
4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the CES DssVest contract, replenishing the available funds in the Auditor Wallet.
5. **Transaction Execution** - The Auditor Wallet signers sign the transaction and then it is executed.
6. **Return of Excess Funds** - CES has the ability to return Operations Wallet surplus Dai to the Auditor's Wallet or surplus buffer.

#### Projected CES Dai Balance

On April 1, 2022, the following are the projected CES Dai balances based upon the current budget projections:

| Projected Budget Summary (Dai)      |                 |
|                                 --- |            ---: |
| Auditor Wallet (opening balance)    | 575,958         |
| Operations Wallet (opening balance) | 647,594         |
| Q4 2021 CES Budget                  | -275,917        |
| ETH (cost, time of purchase)        | -12,484         |
| Q1 2022 CES Budget (projected)      | -499,195        |
| **Projected Balance**               | **435,956**     |
| | |
| CES 3-month runway, Apr 1 2022      | 695,140         |
| | |
| **Shortfall**                       | **-259,184**    |

In Oct 2021, CES funded the Operations Wallet with an initial transfer of 647,594 Dai from the Auditor Wallet. This has been sufficient to fund the CES operations in Q4 2021. CES will transfer 575,958 Dai from the Auditor to Operations Wallet in Feb or March 2022 to maintain a 3-month runway.

Based upon the projected analysis above, CES will need additional funding transferred to the Auditor Wallet to establish the 3-month runway for the Q2 2022-Q1 2023 budget. This amount will be **259,184** Dai.

#### Transfers/Transactions

- **3-Month Budget Runway Top Up Transfer**
    - **What:** Provide the 3-month budget runway shortfall for the CES Q2 2022 - Q1 2023 budget.
    - **When:** Automatically, upon spell execution.
    - **Amount:** `259,184 Dai`
    - **Sender:** `Maker Protocol Surplus Buffer`
    - **Recipient:** Auditor Wallet `0x25307aB59Cd5d8b4E2C01218262Ddf6a89Ff86da`

- **DssVest Stream**
    - **What:** Create a DssVest stream for the CES Q2 2022 - Q1 2023 budget.
    - **When:** Automatically, upon spell execution, starting on April 1, 2022 and ending March 31, 2023.
    - **Amount:** `2,780,562 Dai`
    - **Sender:** - `Maker Protocol Surplus Buffer`
    - **Recipient:** Auditor Wallet `0x25307aB59Cd5d8b4E2C01218262Ddf6a89Ff86da`

- **April 2022 Budget Transfer**
    - **What:** Operations Wallet top up.
    - **When:** Manually, upon executive vote approval.
    - **Amount:** `259,184 Dai`
    - **Sender:** Auditors Wallet: `0x25307aB59Cd5d8b4E2C01218262Ddf6a89Ff86da`
    - **Recipients:** Operational Wallet: `0xD740882B8616B50d0B317fDFf17Ec3f4f853F44f`

### Budget Breakdown

#### Total Budget Cap for Q2 2022 - Q1 2023

The Total Budget Cap is **2,780,562**, spanning a 12-month Cycle of Q2 2022-Q1 2023.

#### Budget Detail

| Summary                       | Q2 2022        | Q3 2022        | Q4 2022        | Q1 2023        | 12 Months      |
| --------------------------        | -------------: | -------------: | -------------: | -------------: | -------------: |
| Compensation                      |	     477,500 |        477,500 |        477,500 |        477,500 |  **1,910,000** |
| Benefits, Taxes, Retention, Other |	      51,481 |         59,858 |         76,611 |         76,611 |    **264,562** |
| Travel                            |	      24,000 |         24,000 |         24,000 |         24,000 |     **96,000** |
| Hardware                          |	      30,000 |          3,333 |          3,333 |          3,333 |     **40,000** |
| IT & Subscriptions                |	       9,000 |          9,000 |          9,000 |          9,000 |     **36,000** |
| Gas Costs                         |	      16,000 |         16,000 |         16,000 |         16,000 |     **64,000** |
| Professional Services             |	      20,000 |         20,000 |         20,000 |         20,000 |     **80,000** |
| Audits                            |	      37,500 |         37,500 |         37,500 |         37,500 |    **150,000** |
| Contingency Buffer                |	      35,000 |         35,000 |         35,000 |         35,000 |    **140,000** |
| **Total**                         |    **700,481** |    **682,191** |    **698,945** |    **698,945** |  **2,780,562** |


Notes on the budget detail:

- **Compensation** - The team consists of ten full- and part-time Core Unit contributors. Individual positions are detailed in the next section.
- **Benefits, Taxes, Retention, Other** - The overhead cost of a contributor such as benefits (including healthcare), currency fluctuations/conversions, reserves, taxes, salary adjustments, or other costs outside of normal compensation. Based upon data for CES in the last quarter, approximately 13% is the actual calculation for this category of expenses.
- **Travel** - The team may travel to present at industry events or participate in a team offsite. The budgeted amount is $1000 per person per month. The goal would be to meet twice a year around an ETH event and Devcon. Consideration is given a geographic distribution of 8-10 people and the higher than normal costs for travel and expenses.
- **Hardware** - Costs for laptops and a local node setup, up to $3,500 per laptop or node hardware.
- **IT & Subscriptions** - Ongoing costs relating to software subscriptions, cloud services, and contract service providers.
- **Gas Costs** - Deploying a new standard collateral type today will cost about 1 ETH. If we onboard 20 collateral types, 20 ETH = 64,000 USD. These costs could scale up substantially.
- **Professional Services** - Coverage for managing general operational overhead and services, contractors, legal costs, legal officer/company insurance, as well as monthly and annual financial reporting.
- **External Code Audits** - This depends on how many new complex modules are built this year and would cover the audit of two large, complex modules. We also plan to utilize Sandboxing to minimize the complexity.
- **Contingency Buffer** - Approximately 5-6% of budgeted costs to be held in reserves for any contingencies that might arise.
- **Budget Changes vs. [MIP40c3-SP30](https://mips.makerdao.com/mips/details/MIP40c3SP30)**
    - This budget implementation represents an increase of **405,093** Dai on an annualized basis.
    - Headcount has increased from 7 to 10 contributors.
    - The `Compensation` line item has increased by 628,750 Dai.
    - The `Benefits, Taxes, Retention, Other` line items have decreased from 30% to approximately 13%.
    - The `Gas Costs` and `Audits` line item has increased due to the anticipated scaling of onboarding real world collateral and the complexity of some of those solutions.
    - The `Contingency Buffer` line item has decreased from 15% to approximately 5%.
    - Overall operational costs were lower than expected and those funds are being shifted to support additional headcount.

#### Team Structure
The team consists of eight full- and two part-time Core Unit contributors. As of the publishing of this MIP, three headcounts are open: Lead Engineer, Engagement Manager, and one Advisor.

#### Team Summary for Q2 2022 - Q1 2023

| **Team Members**	                  |      |
|                                 --- | ---: |
| _Full Time_                         |      |
| Core Unit Facilitator/Team Lead     |	    1|
| Technical Product Owner             |	    1|
| Solutions Architect                 |     1|
| Engagement Manager                  |	    1|
| Lead Engineer                       |     1|
| Software Engineer                   |     3|
| _Part Time_                         |      |
| Advisors                            |     2|
| **Team Total**                      |    10|

In Q4 2021, CES made significant progress in our recruiting efforts and hiring the team. There is still a little more work to do. Due to upcoming needs of the Maker protocol, especially with real-world assets, three positions were added to the headcount:
- **Solutions Architect** - In Nov 2021, CES was very fortunate to have Nikolaj Lollike transfer from the SES to CES Core Unit. Nikolaj has an extensive background at the Maker Foundation and DAO and has been instrumental in bootstrapping CES.
- **Lead Engineer** - (TBH) To lead the design, architecture, and implementation of the engineering solutions for real-world assets and our parallelization initiative (sandbox), a Lead Engineer is being hired to fill this role.
- **Engagement Manager** - (TBH) To support the anticipated flow of real-world assets deals and the need for technical onboarding and maintenance, an enagement/program/project manager is being hired to fill this role.
