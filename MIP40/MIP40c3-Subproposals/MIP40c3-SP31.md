# MIP40c3-SP31: Modify Core Unit Budget - Sustainable Ecosystem Scaling (SES-001)

## Preamble

```
MIP40c3-SP#: 31
Author(s): @wouter, @juanjuan
Contributors:
Tags: core-unit, cu-ses-001, budget, dai-budget, active
Status: Accepted
Date Proposed: 2021-08-11
Date Ratified: 2021-09-27
Ratification Poll URL: https://vote.makerdao.com/polling/QmSkTmAx?network=mainnet#poll-detail
Forum URL: https://forum.makerdao.com/t/mip40c3-sp31-modify-core-unit-budget-sustainable-ecosystem-scaling-ses-001/9805
```

## Sentence Summary

MIP40c3-SP31 modifies the Dai budget for Core Unit SES-001: Sustainable Ecosystem Scaling, replacing MIP40c3-SP10.

## Paragraph Summary

MIP40c3-SP31 modifies the Dai budget for Core Unit SES-001: Sustainable Ecosystem Scaling. It contains:
- Changes against the previous version
- Increase in the Total Budget Cap: the hard limit voted by Governance
- Breakdown of budget increase
    - Permanent Team
    - Incubation Program
    - Grants Program
- The MKR Compensation Expectation


### Changes (compared to MIP40c3-SP10) 

Total budget cap: $1,153,480 -> $1,461,111

#### Permanent Team: $154,493 -> $177,037

- Reviewed Dai compensation for some contributors
- Some contributors increased their FTE commitment
- Travel budget added
- Cost estimation improved: overhead -> payment costs

#### Incubation Program: $200,000 -> $250,000

While we are limited by our capacity to help and assist teams successfully, we are helping more teams than anticipated. The budget increase includes compensation and software costs.

#### Grants Program: $30,000 -> $60,000

As we advance in conversations with potential grantees, we discover prices to get things done in promising areas.

#### Transfers

A slight modification in the text to make the ongoing process clearer.

## Specification

### Motivation

Going by the critical nature of the work done by the Sustainable Ecosystem Scaling Core Unit, sufficient funds need to be provisioned to guarantee the success of the Maker ecosystem in the long run.

The proposed budget comprises three parts:

#### Permanent Team Budget
The Permanent Team Budget covers Dai compensation and operational costs for the permanent team members of the Sustainable Ecosystem Scaling Core Unit. This is a standard budget based on the breakdown of actual costs. It will evolve in a relatively slow and predictable way.

#### Incubator Program Budget

The Incubator Program Budget is not based on a breakdown of actual costs but rather acts as a spending limit for a financial buffer used for funding incubation projects at the discretion of the SES Facilitator and multisig co-signers.

![3 months no support](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP31/three-months.png)

A big part of the Incubator Program's value lies in this ability to allocate budgets without waiting for governance approval quickly. This is to avoid a situation where promising teams have to wait in great uncertainty, typically 3 months or longer, before potentially receiving the first DAO payment for their Core Unit. This is seen as a requirement that is an unreasonable barrier to entry for new teams joining the ecosystem.

#### Grants Program Budget

The Grants Program Budget is a similar budget based on prior experience with the Governance Communications' grants program that has now been sunset.

### Core Unit ID

SES-01

### Budget Breakdown

#### Dai Expenditure

**Total Budget Cap**

We're asking for a Total Budget Cap of **$1,461,111**, spanning a 3-month runway.

| Group           |Monthly Total| 3 Months       |
|-----------------|------------:|---------------:|
| Permanent Team  |    $177,037 |       $531,111 |
| Incubation      |    $250,000 |       $750,000 |
| Grants          |     $60,000 |       $180,000 |
| **Grand Total** |**$487,037** | **$1,461,111** |

**Permanent Team**

| Type                         | Monthly Total |
|------------------------------|--------------:|
| Dai Compensation  (9.5 FTEs) |      $127,210 |
| New hires' Compensation (2 FTEs)|    $19,708 |
| Travel Costs                 |        $3,333 |
| Buffer                       |        $8,333 |
| Software Development         |        $4,167 |
| Software                     |        $1,785 |
| Payment Fees (gas & payment processor)                          |       $12,500 |
| **Grand Total**              |   **$177,037**|

See our [Team Spreadsheet](https://docs.google.com/spreadsheets/d/1dXsKefLTIbhvB5M3lMXNthOlLrKC1Yhjvpcu9u05ees/edit?usp=sharing) for more details about the included FTEs.

**Incubation Program**

The limit for the Incubation Program was estimated based on some team configuration scenarios that we want to support, as outlined in the table below. The requested limit is the (rounded) maximum amount needed for any of these scenarios.

|               | Teams | Avg Team Size | People Total | Avg Dai Compensation | Annual Cost | Monthly Cost |
|---------------|:-----:|:-------------:|:------------:|-----------:|------------:|-------------:|
| Sr. Engineers |   3   |       4       |        12    |   $155,000 |  $1,860,000 |     $155,000 |
| Non-technical |   5   |       4       |        20    |   $120,000 |  $2,400,000 |     $200,000 |
| Mix           |   3   |       6       |        18    |   $137,500 |  $2,475,000 |     $206,250 |

*Estimations of different incubation costs at industry standards.*

**Grants Program**

The details for the Grants Program are still being worked out. To avoid updating the budget MIP soon, a budget is included that will be sufficient to get the program up and running. Once the program is active, more detailed estimates will be included in the Monthly Budget Statement.

#### MKR Expenditure

**Permanent Team**

For the Permanent Team, a budget proposal amendment will be submitted for the Permanent Team that proposes a detailed MKR incentive model.

While this leaves the details undefined for now, the expectation of the team is threefold:
1. That the MKR incentive structure is reasonably defined by the time the team starts working for the SES Core Unit.
2. That the vesting schedule starts no later than this starting date.
3. That the commitment and, therefore risk that the team is taking will be reflected in this structure, for example, by taking the MKR price into account at the moment of the formal submission of this MIP40c3-SP10.

**Incubation Program**

For the Incubation Teams, MKR incentives will be included in the respective budget MIPs as they are published. This may include a back pay amount for the incubation time, but these details, too, are still being discussed.

### Budget Implementation

#### Goals

The budget implementation is based on a _monthly reporting and top-up cycle_ described in the sections below. Our goals with this implementation are the following:

* Continuously fund the SES core unit. Ensuring that SES has enough money available for business continuity and minimal job security.
* Provide full transparency and be kept in check by a group of governance-appointed auditors.
* Fully separate cashflows on the Core Unit and budget category level for transparency.
* Reduce governance overhead to a minimum.

![Wallet Top-Up Mechanism](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP31/wallet-top-up-mechanism.jpeg)

#### Total Budget Cap

The Total Budget Cap, specified in the Budget Breakdown, will be transferred to the Auditors Wallet, who will keep the funds and transfer them as needed. This amount aims to maintain a 3-month runway for the Core Unit.

The Auditors Wallet balance will never exceed the upper limit voted by Governance. If this limit needs to be raised, or we're no longer expecting ever to need it, an additional subproposal MIP will be submitted to adjust it.

#### Multi-sig Wallets

The budget is split into three separate categories: `Permanent Team`, `Grants Program`, and `Incubation Program`. The following multi-sigs are involved:

1. **The Auditors Wallet** -- A 3-out-of-4 multi-sig, controlled by trusted Maker DAO members that are not a member of SES. This multi-sig will hold the Total Budget Cap in DAI. All funds pass through this wallet before any are sent to the operational wallets. One of the signers is the Self-Accountability Auditor of the SES Core Unit.

    The signers of the Auditors Wallet are still being confirmed and will be added to the [MIP40c3-SP10 forum thread](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369). No funds will be sent to this wallet before the signers' addresses have been set in the wallet.

2. **The Operational Wallets** -- One wallet for each budget category. These are 2-out-of-3 multi-sigs controlled by SES. Signers include the facilitator, the team lead, and one other SES member from the permanent team, responsible for the associated budget category.

	* The `Permanent Team Wallet`
	* The `Grants Program Wallet`
	* The `Incubation Program Wallet`

#### Monthly Budget Statement

Within the first 5 days of each month, SES will submit a `Monthly Budget Statement` to the signers of the Auditors Wallet with the following sections:

1. **The Budget Forecast**, based on the latest available information, of the budget (in DAI) required to maintain a 3-month runway for the team.
2. **The Last Month Actuals**, i.e., the actual expenses (DAI and MKR) of the month that just ended.
3. **The MKR Vesting Overview** -- this schedule has the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **The Transaction Amounts**
    * The required DAI amount for each Operational Wallet to replenish the 3-month runway
    * Any excess DAI amount that will be returned to the Auditors Wallet

The Monthly Budget Statements will be added to the MakerDAO forum. The originals can be found in this [git repository on Github](https://github.com/makerdao-ses/transparency-reporting/tree/main/Monthly%20Budget%20Statements).

#### Monthly Top-up Cycle

##### Seeding the Auditors Wallet

As preparation for the Monthly Top-up Cycle, the Auditors Wallet first needs to be seeded with the Total Budget Cap from the surplus buffer. This seeding transaction will be included in the executive vote on the initial SES Core Unit MIPs.

##### Monthly Cycle

1. **Monthly Budget Statement Submission** -- Within the first 5 days of the month, SES submits the Monthly Budget Statement to the Auditors Wallet signers. This report is also available for the rest of the community to review.

2. **Transaction Requests Submission** -- In parallel, SES submits the necessary transaction requests for the Auditor Wallet signers to sign:

    * **DAI Top-up Transactions** -- One DAI transaction for each Operational Wallet that has a balance below the 3-month runway forecast. The top-up transaction adds enough funds to the operational wallet to replenish this runway.

3. **Returning Excess Funds** -- SES creates and signs any transactions for excess funds that should be returned to governance:

    * **Excess DAI Transactions** -- DAI transactions for Operational Wallets that have a balance above the 3-month runway forecast.

4. **Auditors' Review** -- The Auditors Wallet signers review the Monthly Budget Statement. They check that the transaction request amounts are the ones mentioned in the report and that they make sense. If there are any irregularities or other questions or comments, they discuss this with SES and allow for resubmission if any corrections are required.

5. **Transaction Approvals** -- Three Auditors Wallet signers sign the submitted transactions, sending the DAI top-up amounts to the Operational Wallets. SES can now use the funds for expenses.

6. **Auditors Wallet Top-up** -- SES submits a PR to top up the Auditors Wallet to the Total Budget Cap in the next executive vote. The cycle can now start again from step 1.

---

### Transfers

**Top-ups**

* **What:** Transfers of the total budget cap for the 3-month runway minus the available amount in the auditors' wallet.
* **When:** Automatically, upon executive vote approval (spell cast).
* **Amount:** `1,461,111 DAI` - `amount available in wallet`
* **Sender:** `Maker Protocol Surplus Buffer`
* **Recipient:** Auditors Wallet:  `0x87AcDD9208f73bFc9207e1f6F0fDE906bcA95cc6`

**Internal Transfers**

* **What:** Operational wallets monthly top-ups for  expenditures.
* **When:** Manually, upon Monthly Budget Statement review.
* **Amount:** Determined by the [Monthly Budget Statements](https://github.com/makerdao-ses/transparency-reporting/)
* **Sender:** Auditors Wallet:  `0x87AcDD9208f73bFc9207e1f6F0fDE906bcA95cc6`
* **Recipients:**
  * Permanent Team Wallet: `0xb5eB779cE300024EDB3dF9b6C007E312584f6F4f`
  * Incubation Program Wallet: `0x7c09Ff9b59BAAebfd721cbDA3676826aA6d7BaE8`
  * Grants Program Wallet: `0xf95eB8eC63D6059bA62b0A8A7F843c7D92f41de2`
