# MIP40c3-SP40: Modify Core Unit Budget, COM-001

## Preamble

```
MIP40c3-SP#: 40
Author(s): David Utrobin
Contributors:
Tags: core-unit, cu-com-001, budget, dai-budget
Status: RFC
Date Applied: 2021-10-05
Date Ratified: xxx
```

## Sentence Summary

MIP40c3-SP40 modifies the budget for Core Unit COM-001 and extends it through June 2022.

## Paragraph Summary

This budget modification adjusts the team's budget figures, extends our funding through to the end of 06/22, and updates the budget implementation to accurately reflect the current setup. The annual budget figure has changed from $486,000 to $515,000.

A vote to ratify this MIP means MKR holders agree to allow:

- Continued funding through to the end of Q2 2022(June 2022.)
- Updated figures for the funding + Stream adjustments

Primary changes:

- *Travel figures updated*: More accurately reflects expenses by assuming one team-wide offsite for three people, and coverage for two people to attend up to three events per year.
- *Salary line item updated*: More accurate.
- *Hourly Compensation item updated*: More accurate.
- *Operating Expenses item updated*: More accurate.

|  Description  |  Annual (SP8)  |  Annual (This SP)  |  Change  |
|---|---|---|---|
|  Salaries (3 FTE)  |  $ 280,000.00  |  $ 285,000.00  |  $ 5,000.00  |
|  Hourly Compensation (~1 FTE)  |  $ 40,000.00  |  $ 45,000.00  |  $ 5,000.00  |
|  Healthcare  |  $ 43,200.00  |  $ 43,200.00  |  $ -    |
|  Sign-on Expenses  |  $ 1,800.00  |  $ 1,800.00  |  $ -    |
|  Travel & Events  |  $ 10,000.00  |  $ 32,000.00  |  $ 22,000.00  |
|  Operating Expenses  |  $ 11,000.00  |  $ 8,000.00  |  $ (3,000.00) |
|  Professional Services  |  $ 50,000.00  |  $ 50,000.00  |  $ -    |
|  Contingency Buffer  |  $ 50,000.00  |  $ 50,000.00  |  $ -    |
|  |  |  |  |
|  Total  |  $ 486,000.00  |  $ 515,000.00  |  $ 29,000.00  |

What we are not changing:

- *3-month runway reserve, held in a protocol-owned multi-sig*: We will not be updating the number here since the change is less than 10k and our standing agreement is to update this once per year.
- *Commitment for a team MKR compensation package*: To be released soon.

## Specification

### Motivation

Updating remuneration for the Governance Communications Core Unit and extending our funding for the next 6 months past our [original agreement that funds us through to the end of Q4 2021.](https://mips.makerdao.com/mips/details/MIP40c3SP8)

### Core Unit ID

ID: COM-001

### Budget Implementation

#### Smart Contract Implementation

##### Actionable Changes

Former stream will be supplemented by a new stream;
New stream will be created with a total of 12,241.67 DAI streamed to 0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9 starting 2021-12-01 and ending 2021-12-31

New stream will be created with a total of 257,500.02 DAI streamed to 0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9 starting 2022-01-01 and ending 2022-06-30

##### Information

Governance Communications Operational multi-sig:
`0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9`

- Implementation: Distribution to the Core Unit multi-sig will be executed by a DssVest Dai stream.
- Ownership: This multi-sig is 1 of 1, with additional signers to be added as needed.
- Frequency: Protocol distributions to the multi-sig will occur continuously.

Governance Communications Continuous Operation multi-sig: `0x99E1696A680c0D9f426Be20400E468089E7FDB0f`

- Implementation: This multi-sig was already funded in full upon successful onboarding of the Governance Communications Core Unit.
- Access: In order for funds to be accessed from this multi-sig, the Maker protocol must be in a state where it is unable to pay team salaries due to protocol error, shutdown and/or under governance attack.
- Ownership: The Continuous Operation multi-sig will require 3 of 6 signatures from the following keyholders. This may be expanded to other critical Core Units as they are formed:
	- `DavidUtro (COM-001): 0xE91f4F5834bB9312A45B2bd75804b32CC3DA8fd3`
	- `LongForWisdom (GOV-001) : 0x66f40F044E0e2F77bB746e3275E82e88dCBA2D69`
	- `Primoz (RISK-001): 0x5d67d5B1fC7EF4bfF31967bE2D2d7b9323c1521c`
	- `SebVentures (RWF-001): 0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b`
	- `Brian McMichael (PE-001): 0xC0dE1AB51082442f821bA273273B4F7d32521D8b`
	- `Nik Kunkel (ORA-001): 0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c`

#### Continuous Operation

To ensure 3 months of continuous operation in the event of emergency shutdown or protocol issues, we have been granted an upfront lump-sum of 3 months of runway to sit in a protocol owned multi-sig.

##### Calculation

Use initial annual budget figure (from [MIP40c3-SP8](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP8.md)) divided by 4 to determine the 3-month runway sum: **121,500 DAI** --> [MIP40c3-SP40]([MIP40c3-SP8](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP8.md))-based figure: **128,750 DAI**

Detail:

- NO CURRENT CHANGE REQUESTED.
- The lump-sum will be held outside of the surplus buffer in a protocol owned multi-sig.
- If normal protocol operation is not possible due to emergency shutdown or other protocol failure, these funds will be used to ensure continuous operation as the system gets back up and running.
- At the conclusion of the year, the lump sum will remain in the multi-sig for the following year and may be increased or decreased at that point in time due to changes in the projected budget.

#### Monthly Budget Statement

Within the first 7 days of each month, COM-001 will submit `Monthly Budget Statements` with the following sections:

1. **The Budget Forecast**, based on the latest available information, of the budget (in DAI) that is required to maintain a 3-month runway for the team.
2. **The Last Month Actuals**, i.e., the actual expenses (DAI and MKR) of the month that just ended, this includes reporting any surplus or deficit.
3. **The MKR Vesting Overview**: This is a schedule that has the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transaction Amounts**: The required DAI amount to replenish the 3-month runway.

The Monthly Budget Statements will be added to the [team drive](https://drive.google.com/drive/u/0/folders/1GBAeTx4jmob7wRs7_LK32Bh_Y-pHzPvV). They will also be posted in this [git repository on Github](https://github.com/MakerDAO-Governance-Communications-CU/transparency-reporting).

_Note: Due to a delay in the administrative setup of the team, we will begin posting these in October/November and will retroactively post actuals from the team's start date of August 2nd 2021._

### Budget Breakdown

_Please Note, August 2021 was our first month of operation, and so Q3 2021 is one month short by its figures. Please use the approximate monthly figure and annual figures to see the difference. View our [public team budget sheet](https://docs.google.com/spreadsheets/d/1H41VHDwZDlF9CSAlbR-u5NBUhp1qwTcaSGNkYB5C5bI/edit?usp=sharing) for the same breakdown below._

| Description | Annual (SP8) | Q3 2021 | Annual (Current SP) | Q4 2021 | Q1 2022 | Q2 2022 |
|---|---|---|---|---|---|---|
| Salaries (3 FTE) | $ 280,000.00 | $ 46,666.66 | $ 285,000.00 | $ 71,250.00 | $ 71,250.00 | $ 71,250.00 |
| Hourly Compensation (~1 FTE) | $ 40,000.00 | $ 6,666.66 | $ 45,000.00 | $ 11,250.00 | $ 11,250.00 | $ 11,250.00 |
| Healthcare | $ 43,200.00 | $ 7,200.00 | $ 43,200.00 | $ 10,800.00 | $ 10,800.00 | $ 10,800.00 |
| Sign-on Expenses | $ 1,800.00 | $ 1,800.00 | $ 1,800.00 | $ - | $ 450.00 | $ 450.00 |
| Travel & Events | $ 10,000.00 | $ 1,666.68 | $ 32,000.00 | $ 8,000.00 | $ 8,000.00 | $ 8,000.00 |
| Operating Expenses | $ 11,000.00 | $ 1,833.34 | $ 8,000.00 | $ 2,000.00 | $ 2,000.00 | $ 2,000.00 |
| Professional Services | $ 50,000.00 | $ 8,333.33 | $ 50,000.00 | $ 12,500.00 | $ 12,500.00 | $ 12,500.00 |
| Contingency Buffer | $ 50,000.00 | $ 8,333.33 | $ 50,000.00 | $ 12,500.00 | $ 12,500.00 | $ 12,500.00 |
|  |  |  |  |  |  |  |
| Total | $ 486,000.00 | $ 82,500.00 | $ 515,000.00 | $ 128,300.00 | $ 128,750.00 | $ 128,750.00 |
| Approximate Per month | $ 40,500.00 |  | $ 42,916.67 |  |  |  |

#### Details

_Providing additional detail with regards to the above line items;_

**Salaries**: The current team has 1 full-time Facilitator and 2 full-time Project Managers.

**Hourly Compensation**: The team also consists of multiple part-time contributors, who will be compensated on an hourly basis. These are roles that require less than 25hrs per week.

**Healthcare**: In order to align with traditional company offerings, this proposal includes a healthcare supplement averaging $1250 p/month for full-time employees.

**Sign-on Expenses**: Provided at the discretion of the Facilitator to attract top talent to the team.

**Travel & Events**: Team members may travel to present at industry events, participate in team or larger MakerDAO offsites. Assumes one team-wide offsite for three people, and coverage for two people to attend up to three events per year.

**Operating Expenses**: Coverage for managing general operational overhead; includes transaction gas costs, software subscriptions, and other miscellaneous costs.

**Professional Services**: Payroll and accounting costs, as well as potential legal services if needed.

**Contingency Buffer**: Approximately 10% of budgeted costs in the event that we underestimated our current budget. Unincluded items that may end up being an expense are covered by the Contingency Buffer and will be added to an updated budget in the future, if such items exist.

### MKR Vesting

The Governance Communications Team will add some version of MKR vesting for its team members, retroactively dated to the first day of their employment. Instead of offering our own unique proposal now, we will wait for the community to come to consensus around how Core Units should set this up. We support the formation of an overarching MKR Vesting framework that all Core Units can follow.