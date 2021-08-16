# MIP40c3-SP8: Modify Core Unit Budget - Governance Communications (COM-001)

## Preamble

```
MIP40c3-SP#: 8
Author(s): David Utrobin
Contributors:
Tags: core-unit, cu-com-001, budget, dai-budget, active
Status: Accepted
Date Applied: 2021-03-12
Date Ratified: 2021-07-26
```

## Sentence Summary

MIP40c3-SP8 adds the budget for Core Unit COM-001: Governance Communications.

## Paragraph Summary

This initial budget, for 163,200 Dai, provides five months of runway, August 2021 - Dec 2021. In the next year, we intend to submit bi-annual budgets, covering 6 months at a time unless otherwise preferred by MakerDAO. The annual budget figure is $486,000.

A vote to ratify this MIP means MKR holders make a commitment to:

- An initial five month (Q3-Q4) budget.
- A continuous monthly funding model.
- A 3-month runway reserve, held in a protocol-owned multi-sig.
- An MKR vesting package for COM-001, with details being determined in the near future.

## Specification

### Motivation

Remuneration for the Governance Communications Core Unit

### Core Unit Name

Name: Governance Communications
ID: COM-001

### Budget Implementation

#### Smart Contract Implementation

Governance Communications Operational multi-sig:
`0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9`

- Implementation: Initial distribution to the Core Unit multi-sig will be manual until an automated solution is in place.
- Ownership: This multi-sig will be 1 of 1 initially, with additional signers being added as needed.
- Frequency: Protocol distributions to the multi-sig will occur during the last week of the month with all the other budget disbursements.

Governance Communications Continuous Operation multi-sig: `0x99E1696A680c0D9f426Be20400E468089E7FDB0f`

- Implementation: This multi-sig will be funded in full upon successful onboarding of the Governance Communications Core Unit.
- Access: In order for funds to be accessed from this multi-sig, the Maker protocol must be in a state where it is unable to pay team salaries due to protocol error, shutdown and/or under governance attack.
- Ownership: The Continuous Operation multi-sig will require 3 of 6 signatures from the following keyholders. This may be expanded to other critical Core Units as they are formed:

`DavidUtro (COM-001): 0xE91f4F5834bB9312A45B2bd75804b32CC3DA8fd3`

`LongForWisdom (GOV-001) : 0x66f40F044E0e2F77bB746e3275E82e88dCBA2D69`

`Primoz (RISK-001): 0x5d67d5B1fC7EF4bfF31967bE2D2d7b9323c1521c`

`SebVentures (RWF-001): 0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b`

`Brian McMichael (PE-001): 0xC0dE1AB51082442f821bA273273B4F7d32521D8b`

`Nik Kunkel (ORA-001): 0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c`

#### Continuous Operation

To ensure 3 months of continuous operation in the event of emergency shutdown or protocol issues, we will be requesting an upfront lump-sum of 3 months of runway to sit in a protocol owned multi-sig.

Calculation:

Use initial annual budget figure divided by 4 to determine the 3-month runway sum: **121,500 DAI**

Detail:

- The lump-sum will be held outside of the surplus buffer in a protocol owned multi-sig.
- If normal protocol operation is not possible due to emergency shutdown or other protocol failure, these funds will be used to ensure continuous operation as the system gets back up and running.
- At the conclusion of the year, the lump sum will remain in the multi-sig for the following year and may be increased or decreased at that point in time due to changes in the projected budget.

#### Monthly Budget Statement

Within the first 7 days of each month, COM-001 will submit `Monthly Budget Statements` with the following sections:

1. **The Budget Forecast**, based on the latest available information, of the budget (in DAI) that is required to maintain a 3-month runway for the team.
2. **The Last Month Actuals**, i.e. the actual expenses (DAI and MKR) of the month that just ended, this includes reporting any surplus or deficit.
3. **The MKR Vesting Overview**, this is a schedule that has the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transaction Amounts**, The required DAI amount to replenish the 3-month runway.

The Monthly Budget Statements will be added to the [team drive](https://drive.google.com/drive/u/0/folders/1GBAeTx4jmob7wRs7_LK32Bh_Y-pHzPvV). They will also be posted in this [git repository on Github](https://github.com/MakerDAO-Governance-Communications-CU/transparency-reporting).

### Budget Breakdown

_Please Note, Q3 2021 only covers the month of August, and includes some upfront costs. This budget assumes a July 2021 Governance Cycle ratification with August being our first month officially operating._

|  Description  |  Annual  |  Q3 2021  |  Q4 2021  |
|-|-|-|-|
|  Salaries (3 positions)  |  $ 280,000.00  |  $ 23,333.33  |  $ 70,000.00  |
|  Hourly Compensation  |  $ 40,000.00  |  $ 3,333.33  |  $ 10,000.00  |
|  Healthcare  |  $ 43,200.00  |  $ 3,600.00  |  $ 10,800.00  |
|  Sign-on Expenses  |  $ 1,800.00  |  $ 1,800.00  |  $ -    |
|  Travel & Events  |  $ 10,000.00  |  $ 833.33  |  $ 2,500.00  |
|  Operating Expenses  |  $ 11,000.00  |  $ 916.67  |  $ 2,750.00  |
|  Professional Services  |  $ 50,000.00  |  $ 4,166.67  |  $ 12,500.00  |
|  Contingency Buffer  |  $ 50,000.00  |  $ 4,166.67  |  $ 12,500.00  |
|  |  |  |  |
|  Total  |  $ 486,000.00  |  $ 42,150.00  |  $ 121,050.00  |
|  Approximate Per month  |  $ 40,500.00  |  |  |

#### Details

_Providing additional detail with regards to the above line items;_

**Salaries**: The current team has 1 full-time Facilitator and 1 full-time Project Manager, with the intention of hiring a second full time Project Manager within the first two months of operating.

**Hourly Compensation**: The team also consists of multiple part-time contributors, who will be compensated on an hourly basis. These are roles that require less than 25hrs per week.

**Healthcare**: In order to align with traditional company offerings, this proposal includes a healthcare supplement averaging $1250 p/month for full-time employees.

**Sign-on Expenses**: Provided at the discretion of the Facilitator to attract top talent to the team. This will cover Opolis setup costs for full-time team members.

**Travel & Events**: Team members may travel to present at industry events, participate in team or larger MakerDAO offsites.

**Operating Expenses**: Coverage for managing general operational overhead; includes transaction gas costs, software subscriptions, and other miscellaneous costs.

**Professional Services**: Payroll and accounting costs, as well as potential legal services if needed.

**Contingency Buffer**: Approximately 10% of budgeted costs in the event that we underestimated our current budget. Unincluded items that may end up being an expense are covered by the Contingency Buffer and will be added to an updated budget in the future, if such items exist.

### MKR Vesting

The Governance Communications Team will add some version of MKR vesting for its team members, retroactively dated to the first day of their employment. Instead of offering our own unique proposal now, we will wait for the community to come to consensus around how Core Units should set this up. We support the formation of an overarching MKR Vesting framework that all Core Units can follow.
