# MIP40c3-SP87: Modify the Sustainable Ecosystem Scaling Core Unit Budget - SES-001

**ATTENTION:** _This is a placeholder pending a double-check of our budget calculations since we don't want to set the wrong expectations. We will be adding the numbers shortly._


## Preamble

```
MIP40c3-SP#: 87
Author(s): @juanjuan, @wouter, @retro
Contributors:
Tags: core-unit, cu-ses-001, budget, dai-budget
Status: RFC
Date Proposed: <2022-10-11>
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip40c3-sp87-modify-the-sustainable-ecosystem-scaling-core-unit-budget-ses-001/18339
Ratification Poll URL:
```

# Sentence Summary
MIP40c3-SP87 modifies the DAI budget for the SES-001 Core Unit, continuing and extending operations through 31-Jan-2024.

# Paragraph Summary
The current budget for SES-001 is expiring 31-Jan-2023. This MIP creates a new budget stream for the Core Unit to continue operations through 31-Jan-2024.

**Changes & modifications from the current [MIP40c3-SP55](https://forum.makerdao.com/t/mip40c3-sp55-modify-core-unit-budget-sustainable-ecosystem-scaling-ses-001/12097) budget MIP:**
* SES-001 Annual Budget Cap reduced ___ (Speedy Dashboard) or ___ (Standard Operations). 
    * 2024 Budget Breakdown
    * Removed Budget for the Grants Program
    * Updated Transaction
    * Updated Smart Contract Implementation 
* Addition of new sections to meet [MIP4c2-SP19](https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250) amendment:
    * Budget Category Breakdown
    * Roadmap and Objective
    * Summarising Value to MKR Holders
    * Contingency Planning - Scenarios 
    * Return Excess Funds
    * Unwinding and Defunding
    * Proposal Parameters

# Specification

## Motivation

Going by the critical nature of the work done by the Sustainable Ecosystem Scaling Core Unit, sufficient funds need to be provisioned to guarantee the success of the Maker ecosystem in the long run.

## Core Unit ID
SES-001

## Budget Implementation
>Modifications from the Original MIP40: [MIP40c3-SP55](https://forum.makerdao.com/t/mip40c3-sp55-modify-core-unit-budget-sustainable-ecosystem-scaling-ses-001/12097)
> * Updated budget transparency graphic & link. 
> * Minor grammatical and formatting updates.

The budget is split into two separate categories: `Permanent Team` and `Incubation Program`. 


TODO **<details><summary>SES Auditor Framework Details</summary>**

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
</details>

### Multi-sig Wallet Configurations
#### *SES-001 Auditor Wallet (2:2)*
* Controlled by the SES Auditors
* Address: `0x87AcDD9208f73bFc9207e1f6F0fDE906bcA95cc6`
* Signers
    * SES Accounting Role Wallet (1:2, `0xA2A855Ac8D2a92e8A5a437690875261535c8320C`)
    * GovAlpha Auditor Role Wallet (1:2, `0xDc85cE806d057f4E5425b1e211b78d5af2728Df3`)
* Beneficiary Role
    * Maker Protocol (MCD_PAUSE_PROXY, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`), with an allowance of 1B DAI withdrawal.

#### *SES-001 Operational Wallets*
* SES Permanent Team Wallet (2:4)
    * Address: `0xb5eB779cE300024EDB3dF9b6C007E312584f6F4f`
    * Signers: 
        * `0x40468fbDa0B772FD639C82A216480A1ef2EE44B3`
        * `0x4714C7EfE5D0213615FC6CBB8717B524eC433e9a`
        * `0xFCa6e196c2ad557E64D9397e283C2AFe57344b75`
        * `0xA2A855Ac8D2a92e8A5a437690875261535c8320C`
* Incubation Program Wallet (2:4)
    * Address: `0x7c09Ff9b59BAAebfd721cbDA3676826aA6d7BaE8`
    * Signers: 
        * `0x40468fbDa0B772FD639C82A216480A1ef2EE44B3`
        * `0x4714C7EfE5D0213615FC6CBB8717B524eC433e9a`
        * `0xFCa6e196c2ad557E64D9397e283C2AFe57344b75`
        * `0xA2A855Ac8D2a92e8A5a437690875261535c8320C`
* Grants Program Wallet (2:4)
    * Address: `0xf95eB8eC63D6059bA62b0A8A7F843c7D92f41de2`
    * Signers: 
        * `0x40468fbDa0B772FD639C82A216480A1ef2EE44B3`
        * `0x4714C7EfE5D0213615FC6CBB8717B524eC433e9a`
        * `0xFCa6e196c2ad557E64D9397e283C2AFe57344b75`
        * `0xA2A855Ac8D2a92e8A5a437690875261535c8320C`
        
## Budget Breakdown
This budget proposal represents a restructuring of SES-001 to respond to the evolving demands of MakerDAO related to the Core Unit's approved mandate. 

### Budget Details

##### Standard Option
|    **Group**    | **Monthly Total** | **3 Months** | **Reduction** |
|:----------------|------------------:|-------------:|--------------:|
| Permanent Team  |                   |              |           .  % |
| Incubation      |                   |              |           .  % |
| **Grand Total** |                  |            |        .  %  |


##### Speedy Dashboard Option
|    **Group**    | **Monthly Total** | **3 Months** | **Reduction** |
|:----------------|------------------:|-------------:|--------------:|
| Permanent Team  |                   |              |          .  % |
| Incubation      |                   |              |           .  % |
| Grants          |                   |              |           .  % |
| **Grand Total** |                 |            |        .  %  |


#### Permanent Team Breakdown
| **Expense**                        | **Standard**      | **Speedy Dashboard** |
|:-----------------------------------|------------------:|---------------------:|
| Admin Expense Total                |  |  | 
| Compensation & Benefits Total      |  |  | 
| Gas Expense Total                  |  |  | 
| Professional Services Total        |  |  | 
| Software Development Expense Total |  |  | 
| Software Expense Total             |  |  | 
| Travel & Entertainment Total       |  |  | 
| Buffer                             |  |  | 
| **Total**                          |  |  | 


**Compensation**: Contributors are paid for their work in DAI, USD or Euros once a month. This encompasses full time and part time Permanent Team contributors.

**Software Development**: Expenses for front-end developers developing the Dashboard. 

**Software Expense**: Expenses related to business & productitivty software for the core unit. 

**Travel Costs**: This applies to transportation, lodging, meals, professional venues such as conference rooms, team activities, and conference passes.

**Gas Fees**: Covers monthly payments to the payment process & direct payments for contributors. 

**Professional Services**: Cost for the Core Unit's payment processor, AccountAble. 

**Admin Expenses**: Exchange fees and other transaction fees related to payments. 

**Buffer**: Reserve funds for the Core Unit to use in the event of unforecasted expenses. 

#### Incubation
**Compensation**: Incubees are compensated for their work in DAI or fiat.

**Software Expenses**: Expenses related to business & productitivty software for the incubating teams. 

**Professional Services**: Expense category for outsourced development, recruiter fees, legal consultations, and other professional services related to projects by the incubation teams. 


#### FTE - Forecast
...

#### Budget Term
Budget commences on 01-Feb-2023 and ends on 31-Jan-2024.

### Increasing Value to Maker Token holders
* Auditor Framework & Operations 
* Research 
* Incubation Program
* Community Calls
* Project-based Budgeting 
* Expense Dashboard

### Roadmap and Objectives
We've fulfilled the vast majority of initial roadmap items and discovered new ones along the way.  We are still collecting and prioritizing longer term roadmap items also based on the overall direction of the DAO. Here's a glimpse of what is on the roadmap right now.

#### Decentralized Operations Dashboard

Already released in its more limited variant, [the Expenses Dashboard](https://expenses.makerdao.network), we plan to further evolve this platform until it covers the full range of Decentralized Operations, including decentralized workforce, capital, and work. This is in line with the Endgame Plan's _Unified DAO Operational Toolkit_.

Future milestone ideas:

- Porting and extending the [existing](https://forum.makerdao.com/t/expenses-dashboard-monthly-update-september-2022/18210) [functionality](https://forum.makerdao.com/t/makerdao-expenses-dashboard-is-live/17591) to their MetaDAO equivalents: Core Units become Administration + Contributor Teams, etc.
- Roadmaps with long-term vision and KPIs, as well as short-term, concrete project deliverables.
- [Project-Based Budgeting](https://forum.makerdao.com/t/project-based-budgeting/17121) for teams: extend the current budget reporting with project estimates, actual spends, and timelines.
- Project-Based Budgeting for governors: prioritize the list of projects and determine which ones make the budget limit cut.
- Decentralized successor to the SES Incubation and Grants programs, enabled by self-onboarding and skill development through Maker Academy.
- People management, evaluation, and comp-related features based on Maker Academy skill trees.
- Pseudonymous user profiles with reputation-based blockchain identity: separating signal from noise in the community by filtering based on token ownership and expertise.
- Maker Core administrative mechanics such as DVCs, scope maps, committees/tribunals, etc.
- Where it saves money, replacing manual governance processes with automated equivalents, for example the Dai Foundation's intangible asset register, or legal operations functionality.

_Note that we're following an agile development process, which means that all roadmap items and their priorities are subject to change based on evolving insights and changing circumstances. The provided list gives an idea of which modules to expect and does not entail a commitment to deliver these particular items within the one-year timeline._

#### Operational Support for the DAO

- Operational support for change management between MakerDAO today and its future Endgame form(s)
- Continued community calls support
- Continued advisory to Core Units
- Continued auditing services for Core Unit finances 

#### Legal Research

- Continued development of the self-insurance fund
- Legal risk analysis for MetaDAOs and Maker Core
- Maintaining external expert relationships for specialized advise

### Contingency Planning

In a super bear scenario, the SES Core Unit could temporarily or permanently abandon broader objectives such as:

- The speed development of the Expenses Dashboard
- Maker Academy
- Offsites + Conferences
- Research

The Core Unit could then use its remaining resources to focus on the pressing needs of the DAO. It could operate in this state for a considerable amount of time. Retention and team morale may become an issue.

### Unwinding and Defunding
Within one month of the ratification of the offboarding proposal, the Facilitator will submit a proposal to the community documenting the plan for wind-down of SES-001. This plan will include line items of the necessary tasks to complete unwinding, a projected timeline, as well as a cost estimate for completion of the wind-down proposal. After the completion of the shutdown, any remaining budget will be returned to the DAO with the following exceptions:
* Any outstanding payments that are owed to external parties and contributors but have not yet been paid.
* If SES-001 and/or its contributors are involved in active litigation and need to retain a subset of the budget to resolve legal disputes.

[SES-001 contributor MKR vesting](https://forum.makerdao.com/t/mip40c3-sp31-modify-core-unit-budget-sustainable-ecosystem-scaling-ses-001/9805) will be accelerated to the nearest 6-month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at completion of the wind-down. The above clause overrides the 12-month cliff.

### Return of Excess Funds
As defined in the Budget Implementation section above, excess funds above the 3 month forecast will be returned on a monthly basis, meeting the requirements of [MIP4c2-SP14](https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250).

### Proposal Parameters
This MIP40c3 subproposal provides the following options, fully described above, for ranked-choice voting:
- A: Abstain
- B: Approve Speedy Dashboard budget 
- C: Approve Standard Operations budget
- D: Reject budget

### Transactions
SES's Auditor & Operational Wallets will hold more than the designed minimums in both the Auditor Wallet (2 months) and the Operational Wallet (3 months) to start the budget period. Any amount over the designed minimums will be returned to the DAO via DssBlow. Funds in the Grants Wallet will also be returned to the DAO since the budget and operations of SES Grants will stop.  
     
### Smart Contract Implementation
This budget implementation uses the DssVest. One of the two following budget streams is approved based on the rank-choice voting outcome of this MIP's ratification polling.

* **Speedy Dashboard Budget Stream**
    A total of _____ DAI will be streamed to `0x87AcDD9208f73bFc9207e1f6F0fDE906bcA95cc6` starting 2023-2-01 and ending 2024-1-31.
  
* **Standard Operations Budget Stream**
    A total of _____ DAI will be streamed to `0x87AcDD9208f73bFc9207e1f6F0fDE906bcA95cc6` starting 2023-2-01 and ending 2024-1-31.

## Related Documents
* [MIP39c2-SP10: Adding the Sustainable Ecosystem Scaling Core Unit](https://forum.makerdao.com/t/mip39c2-sp10-adding-sustainable-ecosystem-scaling-core-unit/7368 ): 
* [MIP40c2-SP17: Sustainable Ecosystem Scaling Core Unit MKR Budget ](https://forum.makerdao.com/t/mip40c3-sp17-sustainable-ecosystem-scaling-core-unit-mkr-budget-ses-001/8043) 
* [MIP41c2-SP10: Facilitator On-boarding for the Sustainable Ecosystem Scaling Core Unit](https://forum.makerdao.com/t/mip41c4-sp10-facilitator-onboarding-sustainable-ecosystem-scaling-core-unit/7370)
