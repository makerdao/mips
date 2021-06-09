# MIP40c3-SP14: Modify Collateral Onboarding Core Unit Budget

## Preamble

```
MIP40c3-SP#: 14
Author(s): @monkey.irish
Contributors:
Tags: collateral-onboard, core-unit, budget, mip-set, cob-001
Status: Request for Comments (RFC)
Date Applied: 2021-05-12
Date Ratified: <yyyy-mm-dd>
```

## Sentence Summary

MIP40c3-SP14 adds the budget for Core Unit COB-001: Collateral Onboarding.

## Specification

### Motivation

Going by the critical nature of the work done by the Collateral Onboarding Core Unit (COB), sufficient funds need to be provisioned in order to guarantee the success of the Maker ecosystem Dai supply in the long run.

Much of this budget template comes from the Protocol Engineering Core Unit and Sustainable Ecosystem Scaling Core Unit. Thanks for breaking ground and doing the heavy lifting!

### Core Unit ID

Collateral Onboarding Core Unit

### Budget Implementation

The Collateral Onboarding Team Budget covers salaries and operational costs for all team members of the Collateral Onboarding Core Unit. This is a standard budget based on the breakdown of actual costs. It will evolve over time in a relatively slow and predictable way.

The following considerations have been taken into account when building the budget to ensure a competitive package that allows the DAO to retain and attract talent by providing:

* A competitive salary in-line with industry standards
* Healthcare to compete with traditional company offerings
* Travel budgets to promote team visibility and speaking at industry events
* A sign-on bonus to attract new employees

There is also recognition to support the team by removing blockers and covering overhead costs involved in daily work, including:

* Hardware for smart contract deployment and independent testing
* Overhead support for team filing, accounting, legal and reporting
* A buffer to accommodate unforeseen costs

Compiling the above considerations along with market/competitor research has helped define the following budget.

### List of Budget Breakdowns

The Collateral Onboarding Core Unit Budget secures a team of 8 full-time and Product and Engineering individuals, including a team facilitator. It also includes coverage for all operational costs and overheads as presented below;

**Total Budget Cap**

We're asking for a Total Budget Cap of **$616,626**, spanning a 3-month runway. The annual budget is projected at **$2,466,500**.

|                 |Monthly Total|        3 Months|
|-----------------|------------:|---------------:|
| **Expenses**    | **$205,542**|    **$616,626**|

**Budget Detail**

|**Summary**                |              |
| ------------------------- | ------------ |
|Salaries                   |	   $1,915,000|
|Healthcare                 |	     $114,000|
|Travel                     |	      $90,000|
|Hardware                   |	      $22,500|
|IT & Subscriptions         |	      $50,000|
|Referral & Sign-on Expense |	      $50,000|
|Audits                     |	           $0|
|Bug Bounty                 |	           $0|
|Gas Costs                  |	      $25,000|
|SC Verification & QA       |	           $0|
|Professional Services      |	      $75,000|
|Contingency Buffer         |	     $125,000|
|**Total**                  |**$2,466,500**|

Illustrating these details as a percentage of the total budget request for overall comparison:

![](upload://5rTYpxdwhXQu1PaNyAzYWQY9qNy.png)

### Budget Details:

Providing additional detail with regards to the above line items;

**Salaries:** The proposed team has 3 full-time smart contract engineers, 1 full-time product manager, 1 full-time project/ops manager, and and 1 proposed Team Facilitator (for a total of 6 permanent members). The team will have up to 2 temporary smart contract engineers for a total of 8 members. This opportunity to scale will enable us to better meet the demands of the community.

**Healthcare:** In order to align with traditional company offerings, this proposal includes a healthcare supplement averaging $1188 p/month for full-time employees, based on residency to account for local cost variations.

**Travel:** The team may travel to present at industry events or participate in a team offsite.

**Hardware:** In order to ensure we are able to run multiple ETH nodes to support testing and contract deployment, a supplement for a Dev machine (e.g. Intel Quad Core i7-8565U, 40GB RAM, 512GB NVMe) and test node (e.g. Intel NUC; i5-7300U 2.6 - 3.5 GHz Dual Core, 32GB RAM, 2TB NVMe M.2.) will ensure the team has the hardware in place to achieve this.

**IT & Subscriptions:** We anticipate a variety of costs relating to software subscriptions, cloud services, and contract service providers.

**Referral & Sign-on Expenses:** Provided at the discretion of the Facilitator to attract top talent to the team.

**Audits:** Initially, this work will be coordinated with the Protocol Engineering Core Unit. Budget modifications will be submitted when appropriate.

**Bug Bounty:** Initially, this work will be coordinated with the Protocol Engineering Core Unit. Budget modifications will be submitted when appropriate.

**Gas Costs:** Initially, this work will be coordinated with the Protocol Engineering Core Unit. A nominal amount has been allocated for administration. Budget modifications will be submitted when appropriate.

**SC Verification & QA:** Initially, this work will be coordinated with the Protocol Engineering Core Unit. Budget modifications will be submitted when appropriate.

**Professional Services:** Coverage for managing general operational overhead and services, legal costs including entity creation, legal officer/company insurance, as well as monthly and annual financial reporting.

**Contingency Buffer:** Approximately 5% of budgeted costs to be sidelined in the event that we underestimated this budget cycle.

### MKR Vesting and Incentive Structure

The Collateral Onboarding Core Unit supports the Sustainable Ecosystem Scaling Core Unit (SES-001) proposal for MKR Vesting.

A budget proposal amendment will be submitted that proposes a detailed MKR incentive model.

While this leaves the details undefined for now, the expectation of the team is threefold:
1. That the MKR incentive structure is reasonably defined by the time the team starts working for the Collateral Onboarding Core Unit.
2. That the vesting schedule starts no later than this starting date.
3. That the commitment and therefore risk that the team is taking will be reflected in this structure, for example by taking the MKR price into account at the moment of the formal submission of this MIP40c3-SP13.

### Budget Implementation

#### Goals

The budget implementation is based on a _monthly reporting and top-up cycle_ that is described in the sections below. Our goals with this implementation are the following:

* Continuously fund the Collateral Onboarding Core Unit. Ensuring that COB has enough money available for business continuity and minimal job security.
* Provide full transparency and be kept in check by a group of governance-appointed auditors.
* Fully separate cashflows on the Core Unit and budget category level for transparency.
* Reduce governance overhead to a minimum.

![Wallet Top Up Mechanism](upload://tThOs1goyFOAzdgCxPTIJKN17Lq.jpeg)

#### Total Budget Cap

The Total Budget Cap, specified in the Budget Breakdown, will be transferred to the Auditors Wallet, who will keep the funds and transfer them as needed. This amount aims to maintain a 3-month runway for the Core Unit.

The Auditors Wallet balance will never exceed the upper limit voted by Governance. If this limit needs to be raised, or we're no longer expecting to ever need it, an additional subproposal MIP will be submitted to adjust it.

#### Wallets

The following wallets are involved:

1. **The Auditors Wallet** -- A 2-out-of-3 multi-sig, controlled by trusted Maker DAO members that are not a direct team member of Collateral Onboarding Core Unit. This multi-sig will hold the Total Budget Cap in DAI. All funds pass through this wallet before any are sent to the operational wallets. One of the signers is the Facilitator of the Collateral Onboarding Core Unit.

    The signers of the Auditors Wallet are still being confirmed and will be added to the [MIP40c3-SP13 forum thread](). No funds will be sent to this wallet before the signers' addresses have been set in the wallet.

2. **The Operational Wallet** -- Facilitator of the Collateral Onboarding Core Unit will control this wallet and be used for monthly Core Unit expenses.

#### Monthly Budget Statement

Within the first 5 days of each month, COB will submit a `Monthly Budget Statement` to the signers of the Auditors Wallet with the following sections:

1. **The Budget Forecast**, based on the latest available information, of the budget (in DAI) that is required to maintain a 3 month runway for the team.
2. **The Last Month Actuals**, i.e. the actual expenses (DAI and MKR) of the month that just ended.
3. **The MKR Vesting Overview** -- this is a schedule that has the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **The Transaction Amounts**
    * The required DAI amount for each Operational Wallet to replenish the 3 month runway
    * Any excess DAI amount that will be returned to the Auditors Wallet

The Monthly Budget Statements will be added to the MakerDAO forum. The originals can be found in this [git repository on Github]().

#### Monthly Top-up Cycle

**Seeding the Auditors Wallet**

As preparation for the Monthly Top-up Cycle, the Auditors Wallet first needs to be seeded with the Total Budget Cap from the surplus buffer. This seeding transaction will be included in the executive vote on the initial COB Core Unit MIPs.

**Monthly Cycle**

1. **Monthly Budget Statement Submission** -- Within the first 5 days of the month, COB submits the Monthly Budget Statement to the Auditors Wallet signers. This report is also available for the rest of the community to review.

2. **Transaction Requests Submission** -- In parallel, COB submits the necessary transaction requests for the Auditor Wallet signers to sign:

    * **DAI Top-up Transactions** -- One DAI transaction for the Operational Wallet that has a balance below the 3-month runway forecast. The top-up transaction adds enough funds to the Operational Wallet to replenish this runway.

3. **Returning Excess Funds** -- COB creates and signs any transactions for excess funds that should be returned to governance:

    * **Excess DAI Transactions** -- DAI transactions for the Operational Wallet that have a balance above the 3-month runway forecast.

4. **Auditors' Review** -- The Auditors Wallet signers review the Monthly Budget Statement. They check that the transaction request amounts are the ones mentioned in the report and that they make sense. If there are any irregularities or other questions or comments, they discuss this with COB and allow for resubmission if any corrections are required.

5. **Transaction Approvals** -- Two of the Auditors Wallet signers sign the submitted transactions, sending the DAI top-up amount to the Operational Wallet. COB can now use the funds for expenses.

6. **Auditors Wallet Top-up** -- In the next executive vote, COB submits a PR to top up the Auditors Wallet to the Total Budget Cap. The cycle can now start again from step 1.

---

### Transfers

**Seed Transfer**

* **What:** Initial transfer of the Total Budget Cap for the 3-month runway.
* **When:** Automatically, upon executive vote approval (spell cast).
* **Amount:** `616,626 DAI`
* **Sender:** `Maker Protocol Surplus Buffer`
* **Recipient:** Auditors Wallet:  `TBD`

**July 2021 Transfer**

* **What:** Operational Wallet top-up for July 2021 expenditures.
* **When:** Manually, upon July 2021 Budget Statement review.
* **Amount:** Determined by the [July 2021 Budget Statement]()
* **Sender:** Auditors Wallet:  `TBD`
* **Recipients:** Operational Wallet: `TBD`

## Related Documents

[MIP39c2-SP12 Collateral Onboarding Core Unit MIP](https://forum.makerdao.com/t/mip39c2-sp12-adding-collateral-onboarding-core-unit/8037)

[MIP41c4-SP14: Facilitator Onboarding, Collateral Onboarding Core Unit](https://forum.makerdao.com/t/mip41c4-sp14-facilitator-onboarding-collateral-onboarding-core-unit/8039)
