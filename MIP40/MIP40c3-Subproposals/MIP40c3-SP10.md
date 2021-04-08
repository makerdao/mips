# MIP40c3-SP10: Modify Core Unit Budget

## Preamble
```
MIP40c2-SP#: 10
Author(s): @wouter, @juan
Contributors:
Status: Request for Comments (RFC)
Date Applied: 2021-04-07
Date Ratified: <yyyy-mm-dd>
```

## Sentence Summary

MIP40c3-SP10 adds the budget for Core Unit SES-001: Sustainable Ecosystem Scaling

## Specification

### Motivation

Going by the critical nature of the work done by the Sustainable Ecosystem Scaling Core Unit, sufficient funds need to be provisioned in order to guarantee the success of the Maker ecosystem in the long run.

The proposed budget comprises three parts:

#### Permanent Team Budget
The Permanent Team Budget is covering salaries and operational costs for the permanent team members of the Sustainable Ecosystem Scaling Core Unit. This is a standard budget based on the breakdown of actual costs. It will evolve over time in a relatively slow and predictable way.

#### Incubator Program Budget

The Incubator Program Budget is not based on a breakdown of actual costs, but rather acts as a spending limit for a financial buffer that will be used for funding incubation projects at the discretion of the SES Facilitator and multisig co-signers.

![](https://i.imgur.com/0gmjLcX.png)

A big part of the Incubator Program's value lies in this ability to quickly allocate budgets without having to wait for governance approval. This is to avoid a situation where promising teams have to wait in great uncertainty, typically 3 months or longer, before potentially receiving the first DAO payment for their Core Unit. This is seen as a requirement that is an unreasonable barrier to entry for new teams joining the ecosystem.

#### Grants Program Budget

The Grants Program Budget is a similar buffer that is requested based on prior experience with the governance community's grants program that has now been sunset.

### Core Unit ID

SES-01

### Budget Implementation

**Total Budget Limit Request**
`1,042,435 Dai` for maintaining a 3-month runway

![](https://i.imgur.com/ZWfYVj2.png)

We want to manage the Core Unit Wallet balance:
- To ensure maintaining a 3-month runway for the Permanent Team, the Incubator Program, and the Grants Program
- By readjusting the balance at the beginning of each month, either by:
    - pulling in new funds (through `suck()` or keg implementation) to replenish the 3-month buffer,
    - or sending back excess funds in case the current balance exceeds that 3-month buffer

The balance will never exceed the upper limit of 1,042,435 Dai. If this limit needs to be raised, or we're no longer expecting to ever need it, an additional subproposal MIP will be submitted to adjust it.

---
### Budget Limit Breakdown

**Note**: the *Operational* column captures fixed expenses that are certain to be made every month. The *Development* column captures variable expenses that depend on the circumstances of that given month.

**Grand Total**

| Group       | Operational | Development |Monthly Total| 3 Months  |
|-------------|------------:|------------:|------------:|---------------:|
| Permanent Team|   $85,270 |     $32,208 |    $117,478 |       $352,435 |
| Incubation  |             |    $200,000 |    $200,000 |       $600,000 |
| Grants      |             |     $30,000 |     $30,000 |        $90,000 |
| **Grand Total** |     **$85,270** |    **$262,208** |    **$347,478** | **$1,042,435** |

**Permanent Team**

| Type                 | Operational | Development | Monthly Total |
|----------------------|------------:|------------:|------------:|
| Salaries             |     $83,068 |     $19,708 |    $102,777 |
| Buffer               |             |      $8,333 |      $8,333 |
| Software Development |             |      $4,167 |      $4,167 |
| Software             |      $1,785 |             |      $1,785 |
| Gas                  |        $417 |             |        $417 |          |
| **Grand Total**          | **$85,270** |  **$32,208**| **$117,478**|



**Incubation Program**

The limit for the Incubation Program was estimated based on a number of team configuration scenarios that we want to support, as outlined in the table below. The requested limit is the (rounded) maximum amount needed for any of these scenarios.

|               | Teams | Avg Team Size | People Total | Avg Salary | Annual Cost | Monthly Cost |
|---------------|:-----:|:-------------:|:---------:|----------:|-----------:|--------------:|
| Sr. Engineers |   3   |       4       |     12    |   $155,000 |  $1,860,000 |     $155,000 |
| Non-technical |   5   |       4       |     20    |   $120,000 |  $2,400,000 |     $200,000 |
| Mix           |   3   |       6       |     18    |   $137,500 |  $2,475,000 |     $206,250 |
*Estimations of different incubation costs at industry standards.*

---
### June Transfer

Below is the breakdown of the first transfer that will happen on June 1, 2021, assuming the budget gets approved by Maker Governance. A similar statement will be provided for every following month as part of the transparency reporting by the core unit.

| Group       | Operational | Development | Monthly Total | 3 Months |
|-------------:|-------------:|-------------:|-------------:|----------------:|
| Permanent Team   |     $85,270 |     $32,208 |    $117,478 | $352,435       |
| Incubation  |             |    $110,466 |    $110,466 |  $331,398      |
| Grants      |             |     $23,333 |     $23,333 |       $70,000 |
| **Target Balance** |     **$85,270** |    **$166,008** |    **$251,278** |       **$753,833** |
| Current Balance |       |      |      |       -$0,00 |
| **Transfer Amount** |      |     |     |       **$753,833** |


Included in the estimate for this first transfer:

- Salaries for the Permanent Team (5.5 FTEs)
- Salaries for the Incubator Teams (8 FTEs)
- Budget for bespoke needs (Consulting, Audits, etc.)
- Budget for hosting, domains, and certificates
- Budget for tooling & software
- Budget to build bespoke tools
- Buffer for contingencies
- Gas Costs
