# MIP40c3-SP85: Modifying Sidestream Auction Services Core Unit Budget - SAS-001

## Preamble

```
MIP40c3-SP#: 85
Author(s): @danik
Contributors: @retro
Tags: core-unit, cu-sas-001, budget, dai-budget
Status: RFC
Date Proposed: <2022-10-06>
Date Ratified: <yyyy-mm-dd>
Ratification Poll URL: 
Forum URL: https://forum.makerdao.com/t/mip40c3-sp85-modifying-sidestream-auction-services-core-unit-budget-sas-001/18253
```

# Sentence Summary
MIP40c3-SP85 modifies the DAI budget for the SAS-001 Core Unit , continuing and extending operations through 1-Dec-2023.

# Paragraph Summary

The original budget for SAS-001 is expiring 30-Nov-2022. This MIP creates a new budget stream for the Core Unit to continue operations through 30-Nov-2023.

**Changes & modifications from the original [MIP40c3-SP43](https://forum.makerdao.com/t/mip40c3-sp43-adding-sidestream-auction-services-core-unit-budget-sas-001/10799/1) budget MIP:**
* SAS-001 Annual Budget Cap reduced from 1,130,392.56 DAI to 1,040,100.00 DAI (New Base) or 946,950.00 DAI (New Bear). 
    * 2023 Budget Breakdown
    * Updated Transaction
    * Updated Smart Contract Implementation 
* Addition of new sections to meet [MIP4c2-SP19](https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250) amendment:
    * Roadmap and Objective
    * Summarising Value to MKR Holders
    * Contingency Planning - Scenarios 
    * Return Excess Funds
    * Unwinding and Defunding
    * Proposal Parameters
* Minor grammatical and formatting updates to the Budget Implementation

# Specification

## Motivation
Based on the nature of the work done by the Sidestream Auction Services Core Unit (SAS), the budget reflects the needs of the team to ensure continuity of the work described in our MIP39. This is summarized in, but not limited to:

1. Provide intuitive UIs and well-maintained APIs for interaction with the auction mechanism (to increase accessibility and adoption)
2. Help ensure that there is always sufficient auction participation, even in extreme circumstances such as
   * Protocol upgrades (e.g. new collateral types)
   * Inefficient market conditions

## Core Unit ID
SAS-001

## Budget Implementation
>Modifications from the Original MIP40: [MIP40c3-SP43](https://forum.makerdao.com/t/mip40c3-sp43-adding-sidestream-auction-services-core-unit-budget-sas-001/10799/1)
> * Included budget transparency graphic & link. 
> * Minor grammatical and formatting updates.

![](upload://y4GUOpTK9UP0j4ODam18ryDyzt2.png)

**<details><summary>SES Auditor Framework Details</summary>**
The budget implementation will follow standard best practices as recommended by the SES Core Unit. Setup of this framework uses an Auditor wallet and an Operational Wallet, which will be topped up on a monthly basis with a 3-month runway. The budget cap will be streamed from the protocol to the Auditor Wallet to reduce the overhead for Maker governance. 

### Multi-sig Wallets
The following multi-sigs are involved: 

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multi-sig, composed of 1-out-of-2 role based multi-sigs as signers. The Auditor Wallet will have 2 roles defined for its signers: Auditors and Accountants. 

   The Accountant Role Multi-sig will have 2 signers---both SES permanent team contributors. The Auditor Role Multi-sig will also have 2 signers, also both SES permanent team contributors. SES will conduct the monthly auditing process as described in the Monthly Top-up Cycle below, increasing transparency of the auditing process for the community.

   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multi-sig wallet, ensuring control over these funds and acting as a backup.

   This multi-sig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet.

2. **The Operational Wallet** -- This is a 2-out-of-3 multi-sig controlled by SAS-001. 

### Monthly Budget Statement
Within the first 5 days of each month, SAS-001 will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended.
2. **Budget Forecast** - A forecast of the Dai amount required to maintain a 3-month operational runway for the team based on the latest available information.
3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transactions**
   * The required DAI amount from the Auditor Wallet sent to the Operational Wallet to replenish the 3-month runway as indicated in the Budget Forecast section.
   * Any excess DAI amount above the 3-month forecast in the Operational Wallet that will be returned to the Auditor Wallet.

The Monthly Budget Statements can be found in [this GitHub repository](https://github.com/makerdao-sas/transparency-reporting).

### Monthly Top-up Cycle
1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, SAS-001 submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.
2. **Transaction Requests Submission** -- In parallel, SAS-001 submits the necessary transaction requests for the Auditor Wallet signers to sign:
   * DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast 3-month runway. Only applies if the Operational Wallet balance is below this forecast.
3. **Returning Excess Funds** – SAS-001 creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   * Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet.
4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the SAS-001 DssVest contract, replenishing the available funds in the Auditor Wallet.
5. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by SAS-001 to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings. 
    * A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the SAS-001’s transparency reporting repository on GitHub.
6. **Transaction Approvals** – Upon acceptance of the Monthly Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet.
7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer. 
    * The Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.
</details>

### Multi-sig Wallet Configurations
#### *SAS-001 Auditor Wallet (2:2)*
* Controlled by the SAS Auditors
* Address: `0xb1f950a51516a697E103aaa69E152d839182f6Fe`
* Signers
    * SES Accounting (1:2, `0xA2A855Ac8D2a92e8A5a437690875261535c8320C`)
    * SES Auditing (1:2, `0xB2da57e224949acDDe173a5b8A8160c023ea86e6`)
* Beneficiary Role
    * Maker Protocol (MCD_PAUSE_PROXY, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`), with an allowance of 1B DAI withdrawal.

#### *SAS-001 Operational Wallet (2:3)*
* Controlled by the SAS Core Unit team
* Address: `0x465AA62a82E220B331f5ECcA697c20E89554B298`
* Signers
    * `0x274736890166046f00f424fEB64b2E468841ebfE`
    * `0x4f3B7fb6204C614B28F0e1f50Dc1C99175631678`
    * `0xD95802afC02B49e5C1a6016D44d08fe37EAfEc9d`
## Budget Breakdown
This budget proposal is optimized for reducing our existing budget based on actual needs, without impairing execution of our mandate.

### Budget Details
This section describes the Expense Categories that comprise the budget and how their monthly amount was determined. We have slightly updated the budget categories compared to last year’s budget MIP to stay in accordance with MIP40 budget category updates. 

**Compensation and Benefits:** This category covers the monthly salaries of the 3.5 FTE in the team on a contractor basis. We’ve stayed in the same team for the past 16 months and intend to continue our work in a similar manner. Even though the knowledge and market value of the team members might have increased since last year, we agreed in the team to not increase the individual salaries due to bear market conditions. For this category, we offer the MKR holders two options: Staying in the same team (New Bear option) or extending the team (New Base option) by 0.5 FTE to strengthen the smart contract development capabilities of the core unit. 

**Travel and Entertainment:** Stays the same as last year to be able to finance a few offsites and conferences.

**Software Development Expense:** Stays the same as last year (formerly called Engineering contractors). We’ve made good experience with outsourcing simpler development tasks to trusted contractors so that our Senior Core Team can focus on harder topics.

**Software Expense:** Stays the same as last year and includes SaaS and Infrastructure costs. 

**Gas Expense:** 50% decrease to last year based on past experience.

**Admin Expense:** New category, pooling together Office Space and Other Contractor Services from last year. We were able to reduce these expenses by 76% mainly due to removing payment processor fees a few months ago.

**Professional Services:** Stays the same as last year, mainly accounting work and legal consultations.
 
**Contingency Buffer:** Similar to other Core Units, we significantly reduce the buffer. After operating for a year with the current budget, we have a better understanding of which costs and risks can occur.

Any changes to these amounts will be reported in the transparency report and reviewed by our budget auditors.



|Summary|Existing Budget (1y) |New Budget (1y)| Monthly Equivalent|
| --- | --- | --- | --- |
|Compensation and Benefits|$652,050.00|NewBase: $745,200.00 NewBear: $652,050.00 |NewBase: $62,100.00 NewBear: $54,337.50|
|Travel & Entertainment|$30,000.00|$30,000.00|$2,500.00|
|Software Development Expenses (formerly Engineering contractors)|$120,000.00|$120,000.00|$10,000.00|
|Software Expense|$18,000.00|$18,000.00|$1,500.00|
|Admin Expense (formerly Office and Other Contractor)|$78,900.00|$18,900.00|$1,575.00|
|Professional Services|$60,000.00|$60,000.00|$5,000.00|
|Gas Expense|$24,000.00|$12,000.00|$1,000.00|
||||
Sum without Buffer|$982,950.00|NewBase: $1,004,100.00 NewBear: $910,950.00|NewBase: $83,675.00 NewBear: $75,912.50|
Contingency Buffer|$147,442.50|$36,000.00|$3,000.00|
Sum with Contingency Buffer|$1,130,392.50|NewBase: $1,040,100.00 NewBear: $946,950.00|NewBase: $86,675.00 NewBear: $78,912.50|

Total annual budget:
* Existing: $1,130,392.50
* NewBase: $1,040,100,00 **(~92% of existing)**
* NewBear: $946,950.00 **(~84% of existing)**

#### FTE - Forecast
|Team members|Headcount|FTE (Full-Time Equivalent)|
| --- | --- | --- |
|Facilitator|1|0.5|
|Designer & Product Manager|1|1|
|Full-stack Engineer|NewBase: 4 NewBear: 3|NewBase: 2.5 NewBear: 2|
|Total|NewBase: 6 NewBear: 5|NewBase: 4 NewBear: 3.5|

#### Budget Term
Budget commences on 01-DEC-2022 and ends on 30-NOV-2023.

### Increasing Value to Maker Token holders
Liquidations and auctions are important security mechanisms to keep the Maker Protocol free of debt. A healthy auction ecosystem helps to operate the protocol sustainably and therefore increases trust. Besides, a healthy auction ecosystem helps with better outcomes for vault owners in cases of liquidations, which can increase user satisfaction. These factors are the motivation for keeping a dedicated Auction Services Team.

In the past 16 months we’ve shown that we constantly and independently execute on our roadmap and keep shipping in bi-weekly sprints. Some of the delivered value includes:  

* An added layer of security via a highly accessible Unified Auctions UI that increases auction participation and is always up-to-date with the latest state of the protocol (e.g. support of new collaterals; in the future auction settlement on L2)
* A fallback solution via a keeper implementation that prevents auctions in which there is no participation and functions as a means to test contracts during the collateral onboarding process
* Decentralization of protocol interaction by providing the products (i.e. UI, keeper) in a way so that everyone can spin them up and run on their own

While we’ve executed on most initial roadmap items, our mandate requires continued work and further work items to maximize the value for Maker Token holders. See the Roadmap section below.

Lastly, we want to point out that we see ourselves as a small, efficient and loyal software development team. We stayed in the same team composition for the past 16 months and gained a lot of specific, technical knowledge about the protocol. While our mandate might evolve, we believe that the engineering value we can deliver to the Maker protocol will keep compounding over time.

### Roadmap and Objectives
We've fulfilled the vast majority of initial roadmap items and discovered new ones along the way.  We are still collecting and prioritizing longer term roadmap items also based on the overall direction of the DAO. Here's a glimpse of what is on the roadmap right now.

#### 1. Maintain and extend existing products based on protocol development
* Operating, maintaining and improving the existing product suite (UI, Keeper, Twitter Bot).
* Collateral onboarding (latest rETH).
* Simulations to test liquidation-relevant smart contracts like the exchange callees even before the onboarding spell is deployed to mainnet. But also allow simulating mass liquidation events to ensure the robustness of the overall auction infrastructure.
* At some point next year, the developed products will be extended to support auctions and liquidations on L2s. We believe the importance of accessible auctions will grow in a more fragmented, multichain world.
 
#### 2. Improve Collateral Auction Outcomes
As a reminder, the better the price of an auction, the better for vault owners. There are at least two known features that should further improve the outcomes: 
* Enable the pooling of liquidity from multiple sources for flash loan execution of auctions via a dedicated 1inch based exchange callee contract. This contract will be developed by us to save bandwidth of PE. Alongside we want to introduce support for multiple callee contracts to always have a fallback solution for execution in place (e.g. if 1inch service fails, Uniswap V3 callee can still be used).
* Partial execution of large auctions via flash loans. We’ve seen in the past that large auctions are harder to settle, so this feature will help with improving outcomes and democratize partial participation in larger auctions.

#### 3. Censorship-resistant vault management UI
* In the past months, we've extended the Unified Auctions UI with the feature to liquidate underwater vaults. Therefore, the products cover already an earlier step in the "lifecycle of an auction". 
* The next step in this vertical integration is vault management. In light of the current regulatory pressure, we believe it is valuable to access all core maker functionalities through permissionless/decentralized interfaces. As a reminder, everyone with basic programming knowledge can spin up an instance of the Unified Auctions UI. So it seems obvious to include vault management into this resilient UI. From a technical perspective, there are a lot of synergies too. On top of that, we are exploring IPFS hosting. 


### Contingency Planning - Scenarios
In case of unforeseen events that might lead to funding issues, we could decide to execute on the following temporary measures:
* Scale down our SaaS subscriptions.
* Halt majority of contracting work.
* Reduce spendings on office and events.


### Unwinding and Defunding
Within one month of the ratification of the offboarding proposal, the Facilitator will submit a proposal to the community documenting the plan for wind-down of SAS-001. This plan will include line items of the necessary tasks to complete unwinding, a projected timeline, as well as a cost estimate for completion of the wind-down proposal. After the completion of the shutdown, any remaining budget will be returned to the DAO with the following exceptions:
* Any outstanding payments that are owed to external parties and contributors but have not yet been paid.
* If SAS-001 and/or its management are involved in active litigation and need to retain a subset of the budget to resolve legal disputes.

[SAS-001 contributor MKR vesting](https://forum.makerdao.com/t/mip40c3-sp44-adding-sidestream-auction-services-core-unit-mkr-budget-sas-001/10802) will be accelerated to the nearest 6-month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at completion of the wind-down. The above clause overrides the 12-month cliff.

### Return of Excess Funds
As defined in the Budget Implementation section above, SAS-001 follows the SES Auditor Framework. Excess funds above the 3 month forecast will be returned on a monthly basis, meeting the requirements of [MIP4c2-SP14](https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250).

### Proposal Parameters
This MIP40c3 subproposal provides the following options, fully described above, for ranked-choice voting:
- A: Abstain
- B: Approve New Base budget 
- C: Approve New Bear budget
- D: Reject budget

### Transactions
One of the two following transactions is approved based on the rank-choice voting outcome of this MIP's ratification polling. 

* **New Base Initial Seed Transfer**
     433,375 DAI will be transferred to `0xb1f950a51516a697E103aaa69E152d839182f6Fe` address on Date 2022-12-02.
     
* **New Bear Initial Seed Transfer**
     394,562.50 DAI will be transferred to `0xb1f950a51516a697E103aaa69E152d839182f6Fe` address on Date 2022-12-02. 
     
This seeds the Operational Wallet to 3x the Month Budget Cap. This also initially funds the Auditor Wallet to 2x the Monthly Budget Cap. The top-up transfer funds the Operational Wallet. This also then positions DssVest to begin streaming funds up to the Quarterly Budget Cap each month in the Auditor Wallet. 
     
### Smart Contract Implementation
This budget implementation uses the DssVest. One of the two following budget streams is approved based on the rank-choice voting outcome of this MIP's ratification polling.

* **New Base Budget Stream**
    A total of 1,040,100 DAI will be streamed to `0xb1f950a51516a697E103aaa69E152d839182f6Fe` starting 2022-12-01 and ending 2023-11-30.
  
* **New Bear Budget Stream**
    A total of 946,950 DAI will be streamed to `0xb1f950a51516a697E103aaa69E152d839182f6Fe` starting 2022-12-01 and ending 2023-11-30.

### Related Documents
* [MIP39c2-SP25: Adding Sidestream Auction Services Core Unit - SAS-001](https://forum.makerdao.com/t/mip39c2-sp-adding-sidestream-auction-services-core-unit-sas-001/10796)
* [MIP40c3-SP44: Adding Sidestream Auction Services Core Unit MKR Budget - SAS-001](https://forum.makerdao.com/t/mip40c3-sp-adding-sidestream-auction-services-core-unit-mkr-budget-sas-001/10802)
* [MIP41c4-SP26: Sidestream Auction Services Facilitator Onboarding - SAS-001](https://forum.makerdao.com/t/mip41c4-sp-sidestream-auction-services-facilitator-onboarding-sas-001/10797)