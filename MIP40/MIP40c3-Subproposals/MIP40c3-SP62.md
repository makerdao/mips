# MIP40c3-SP62: Modify Core Unit Budget, COM-001

## Preamble

```
MIP40c3-SP#: 62
Author(s): David Utrobin
Contributors:
Tags: core-unit, cu-com-001, budget, dai-budget, active
Status: Accepted
Date Proposed: 2022-03-02
Date Ratified: 2022-04-25
Forum URL: https://forum.makerdao.com/t/mip40c3-sp62-modify-core-unit-budget-com-001/13724
Ratification Poll URL: https://vote.makerdao.com/polling/QmWQBUi6
```

## Sentence Summary

MIP40c3-SP62 slightly modifies the existing budget for COM-001 and extends funding to the end of December 2022.

## Paragraph Summary

This modification adjusts the team's budget figures, extends our funding through to the end of 12/22, and updates the budget implementation.

A vote to ratify this MIP means MKR holders agree to:

- Fund new budget figures through to the end of Q4 2022.
- Approve the new budget figures below.
- Approve associated stream and one-time payment implementations.
- Top-up our team's Continuous Operation multi-sig.

## Specification

### Motivation

Updating the Governance Communications Core Unit budget and extending our funding for the next 6 months past our [previous agreement that funds us through to the end of Q2 2022.](https://mips.makerdao.com/mips/details/MIP40c3SP40)

### Core Unit Name

Name: Governance Communications
ID: COM-001

### Contingent Execution

Upon passing, MIP40c3-62 will be disregarded and marked as obsolete *if MIP40c3-SP63 passes* . Otherwise, if MIP40c3-SP63 fails, it will be enacted.

### Budget Implementation

#### Smart Contract Implementation

**Actionable Changes**

*If SP63 passes, ignore the instructions below and use the instructions there.*

New stream will be created with a total of `336,672` DAI streamed to `0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9` starting 2022-07-01 and ending 2022-12-31

One-time payment`26,390` to the Governance Communications Operational multi-sig `0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9`

One-time payment`46,836` to the Continuous Operation multisig `0x99E1696A680c0D9f426Be20400E468089E7FDB0f`

**Information**

Governance Communications Operational multi-sig: `0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9`

- Implementation: Distribution to the Core Unit multi-sig will be executed by a DssVest Dai stream.
- Ownership: This multi-sig is 1 of 1, with additional signers to be added as needed.
- Frequency: Protocol distributions to the multi-sig will occur continuously.

Governance Communications Continuous Operation multi-sig: `0x99E1696A680c0D9f426Be20400E468089E7FDB0f`

- Implementation: This multi-sig was already funded in full upon successful onboarding of the Governance Communications Core Unit.
- Access: In order for funds to be accessed from this multi-sig, the Maker protocol must be in a state where it is unable to pay team salaries due to protocol error, shutdown and/or under governance attack.
- Ownership: The Continuous Operation multi-sig will require 3 of 6 signatures from the following keyholders. This may be expanded to other critical Core Units as they are formed:

`DavidUtro (COM-001): 0xE91f4F5834bB9312A45B2bd75804b32CC3DA8fd3`

`LongForWisdom (GOV-001) : 0x66f40F044E0e2F77bB746e3275E82e88dCBA2D69`

`Primoz (RISK-001): 0x5d67d5B1fC7EF4bfF31967bE2D2d7b9323c1521c`

`Aes (SF-001): 0xe9daebb99B1D29E1AE32F44fdfccbc8Df0ef3Aa7`

`Brian McMichael (PE-001): 0xC0dE1AB51082442f821bA273273B4F7d32521D8b`

`Nik Kunkel (ORA-001): 0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c`

#### Continuous Operation

To ensure 3 months of continuous operation in the event of emergency shutdown or protocol issues, we have been granted an upfront lump-sum of 3 months of runway to sit in a protocol owned multi-sig.

Calculation:

Use initial annual budget figure(from SP8) divided by 4 to determine the 3-month runway sum: **121,500 DAI** --> SPXX based figure: **168,336 DAI** -- **46,836** difference

Detail:

- Change to 168,336 requested, see third actionable change above.
- The lump-sum will be held outside of the surplus buffer in a protocol owned multi-sig.
- If normal protocol operation is not possible due to emergency shutdown or other protocol failure, these funds will be used to ensure continuous operation as the system gets back up and running.
- At the conclusion of the year, the lump sum will remain in the multi-sig for the following year and may be increased or decreased at that point in time due to changes in the projected budget.

#### Monthly Budget Statement

Within the first 14 days of each month, COM-001 will submit an update to its public financial documentation:

1. **Last Month Actuals**, i.e. the actual expenses (DAI and MKR) of the month that just ended, this includes reporting any surplus or deficit.
2. **The Budget Forecast**, based on the latest available information, of the budget (in DAI) that is required to maintain a 3-month runway for the team.
3. **The MKR Vesting Overview**, this is a schedule that has the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Totals**, Total received and spent to-date.

The Monthly Budget Statements are added to this [git repository on Github](https://github.com/MakerDAO-Governance-Communications-CU/transparency-reporting). Our other public financial documentation includes this [public budget overview](https://docs.google.com/spreadsheets/d/1H41VHDwZDlF9CSAlbR-u5NBUhp1qwTcaSGNkYB5C5bI/edit?usp=sharing).

### Budget Breakdown

| **Descriptions (Updated Feb 2022)** | **Annual (SP40)** | **Annual (This SP)** | **Change** |
|---|---|---|---|
| Salaries (3 FTE) | $ 285,000.00 | $ 310,200.00 | $ 25,200.00 |
| Hourly Compensation (~1 FTE) | $ 45,000.00 | $ 70,000.00 | $ 25,000.00 |
| Healthcare | $ 43,200.00 | $ 43,200.00 | $ - |
| Employer Taxes | $ - | $ 37,224.00 | $ 37,224.00 |
| Sign-on Expenses | $ 1,800.00 | $ - | $ (1,800.00) |
| Travel & Events | $ 32,000.00 | $ 42,000.00 | $ 10,000.00 |
| Operating Expenses | $ 8,000.00 | $ 80,720.00 | $ 72,720.00 |
| Legal Services | $ 50,000.00 | $ 30,000.00 | $ (20,000.00) |
| Contingency Buffer | $ 50,000.00 | $ 60,000.00 | $ 10,000.00 |
| Total | $ 515,000.00 | $ 673,344.00 | $ 158,344.00 |

Notes:

- "Professional Services" category has been renamed to "Legal Services."
- "Operating Expenses" now includes our accounting and admin costs, hence the large increase. This expense was formerly in the "Professional Services" category. This change more accurately reflects costs and categories for purposes of transparency.
- We previously budgeted 0 for legal services and have been using the contingency buffer to fund this expense. The 50k you see from the previous proposal was 100% for AccountAble and other professional service costs.
- We previously budgeted 0 for Employer Taxes and have been using the contingency buffer to fund this expense.

Changes:

- **Salaries**: We have adjusted existing salaries for annual raises.
- **Hourly Compensation**: We significantly increased our contributor budget since MKT-001 was offboarded causing our stakeholder content production team to be understaffed.
- **Healthcare**: Healthcare benefits for full time employees that averages $1200 per month per person.
- **Employer Taxes**: Employer tax contributions are 12% of salary for US based employees. We did not account for this expense in prior budget proposals. The contingency buffer provided coverage for this up until now.
- **Sign-on Expenses**: We are no longer doing sign on bonuses. The initial bonuses were to compensate the initial team members for the inconvenience of not getting paid for 2 months until our payroll setup was completed.
- **Travel & Events**: We request a 15k events budget,formerly 5k, to allow our team to more comfortably contribute to Makerdao CU event expenses (dinners, offsites, coworking spaces, etc) The other 30k is for travel and team expenses. This assumes 1x team-wide offsites (3 persons) & 3x one-off events for 2 person per year.
- **Operating Expenses**: Includes accounting & admin costs, software subscriptions, hardware & physical materials, and transaction gas fees.
- **Legal Services**: Funds our work with TechGDPR legal firm.
- **Contingency Buffer**: Increase associated with total increased budget size. We aim for ~10% contingency buffer.
- **Continuous Operation multi-sig**: Adjustment to reflect 3 months of operating expenses.

### MKR Vesting

The Governance Communications Team will add some version of MKR vesting for its team members, retroactively dated to the first day of their employment. Instead of offering our own unique proposal now, we will wait for the community to come to consensus around how Core Units should set this up. We support the formation of an overarching MKR Vesting framework that all Core Units can follow.
