# MIP40c3-SP84: Modify Core Unit Budget (COM-001)

## Preamble

```
MIP40c3-SP#: 84
Author(s): David Utrobin
Contributors:
Tags: core-unit, cu-com-001, budget, dai-budget
Status: RFC
Date Applied: 2022-10-05
Date Ratified: 
Forum URL: https://forum.makerdao.com/t/mip40c3-sp84-modify-core-unit-budget-com-001/18250
```

## Sentence Summary

This proposal renews the Governance Communications Core Unit budget details and extends funding for six months from January 1st, 2023, through June 30th, 2023.

## Paragraph Summary

MIP40c3-SP84 renews the Governance Communications Core Unit (COM-001) budget from January 1st, 2023, through June 30th, 2023, and follows the latest MIP40 amendment. This budget proposal recognizes the DAO's intent to cut costs with a significant bottom-line budget reduction of approximately -23%. We reduced the number of full-time salaried employees to two while expanding the part-time contributor budget from 70k to 120k. These changes ensure we can still execute the active pieces of our mandate while growing in our most impactful activities.

A vote to ratify this MIP means MKR holders agree to:

- Fund new budget figures for the next six months through to the end of Q2 2023.
- Budget implementation detailed below.
- Larger contributor budget.
- Smaller full-time employee budget.
- A set of discretionary budgets for travel, training, legal expenses, hardware, software, and non-software subscriptions.
- Standard 10% contingency buffer.
- Accept a return of excess funds from the COM-001 continuous operation multisig.
- 7% salary increase for the Facilitator.

For specifics, continue below.

## Specification

### Motivation

Our motivation is to improve stakeholder coordination and information accessibility at MakerDAO and to do so in increasingly efficient ways. Additionally, our [previous agreement expires at the end of Q4 2022](https://mips.makerdao.com/mips/details/MIP40c3SP62), so it is time to refresh our agreement with MakerDAO.

### Core Unit ID

COM-001

### Budget Implementation

The budget will be made available through a continuous stream executed by a smart contract.

#### Smart Contract Implementation

**Actionable Changes**

New stream will be created with a total of 258,807 DAI streamed to `0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9` starting 2023-01-01 and ending 2023-06-30

**Information**

Governance Communications Operational multisig: `0x1eE3ECa7aEF17D1e74eD7C447CcBA61aC76aDbA9`

- Implementation: Distribution to the Core Unit multisig will be executed by a DssVest Dai stream.
- Ownership: This multisig is 1-of-1, with additional signers to be added at the request of governance.
- Frequency: Distributions to the multisig will be claimed from the stream as needed.

Governance Communications Continuous Operation multisig: `0x99E1696A680c0D9f426Be20400E468089E7FDB0f`

- Implementation: This multisig has been fully funded through individual transactions executed through governance.
- Access: Accessible if normal protocol operation is not possible due to emergency shutdown or other protocol failures, or if a future budget proposal fails to pass, these funds will be used for winding down the Core Unit (details below.)
- Ownership: The Continuous Operation multisig will require 3 of 5 signatures from the following keyholders. This may be expanded to other critical Core Units as they are formed:

`DavidUtro (COM-001): 0xE91f4F5834bB9312A45B2bd75804b32CC3DA8fd3`

`LongForWisdom (GOV-001) : 0x66f40F044E0e2F77bB746e3275E82e88dCBA2D69`

`Primoz (RISK-001): 0x5d67d5B1fC7EF4bfF31967bE2D2d7b9323c1521c`

`Aes (SF-001): 0xe9daebb99B1D29E1AE32F44fdfccbc8Df0ef3Aa7`

`Nik Kunkel (ORA-001): 0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c`

#### Continuous Operation

To ensure three months of continuous operation we are granted funds upfront to sit in a protocol-owned multisig.

Calculation:

Current Balance: 
**168,336**

Updated 3-month runway sum:
**129,404**

Difference:
**-38,932**

Detail:

- Amount set to **129,404**.
- Surplus of **38,932** will be returned to the surplus buffer upon the passing of this proposal, at the availability of 3/6 signers.

#### Reporting Transparency

Within the first 14 days of each month, COM-001 will publish monthly budget statements for the previous month:

1. **Last Month Actuals**, the actual expenses of the previous month.
2. **Budget Forecast**, three months ahead.
3. **MKR Vesting Overview**, a schedule with the expected MKR vesting amounts for the current team members, grouped by the pay-out month.
4. **Totals**, total received and spent from Core Unit start to the reporting month.

The Monthly Budget Statements are added to this [github repository](https://github.com/MakerDAO-Governance-Communications-CU/transparency-reporting).
Our other public financial documentation includes this [public budget overview](https://docs.google.com/spreadsheets/d/1H41VHDwZDlF9CSAlbR-u5NBUhp1qwTcaSGNkYB5C5bI/edit?usp=sharing).
Additionally, we commit to working with SES-001 on reporting financials through their new expense reporting tool.

### Budget Breakdown

| **Expense Category** | **Previous(1Y)** | **Proposed(1Y)** | **Diff(1Y)** | **Type** |
|---|---|---|---|---|
|  |  |  |  |  |
| **Headcount Expense Subtotal** | **502,624** | **395,609** | **(107,015)** | **-21.2913%** |
|  |  |  |  |  |
| Salaries & Wages |   347,424  |   228,000  |   (119,424) | Fixed, Ongoing |
| Healthcare |   43,200  |   18,809  |   (24,391) | Fixed, Ongoing |
| Contractor Fees |   70,000  |   120,000  |   50,000  | Discretionary, Ongoing |
| Hotels |   15,000  |   6,400  |   (8,600) | Discretionary, One-time |
| Airfare |   15,000  |   7,000  |   (8,000) | Discretionary, One-time |
| Meals |   -    |   4,400  |   4,400  | Discretionary, One-time |
| Activities & Events |   12,000  |   8,000  |   (4,000) | Discretionary, One-time |
| Transportation (Uber, Taxi, etc.) |   -    |   3,000  |   3,000  | Discretionary, One-time |
|  |  |  |  |  |
| **Non-Headcount Expenses Subtotal** | **170,720** | **122,004** | **(48,716)** | **-28.5356%** |
|  |  |  |  |  |
| Exchange Fees |   -    |   2,400  |   2,400  | Discretionary, Ongoing |
| Bank Fees |   -    |   1,200  |   1,200  | Discretionary, Ongoing |
| Gas |   6,000  |   2,400  |   (3,600) | Discretionary, Ongoing |
| Subscriptions (non-software) |   -    |   1,200  |   1,200  | Discretionary, Ongoing |
| Hardware Expense |   2,000  |   2,004  |   4  | Discretionary, One-time |
| Accounting Expense |   42,000  |   30,000  |   (12,000) | Discretionary, Ongoing |
| Legal Expense |   30,000  |   15,000  |   (15,000) | Discretionary, One-time |
| Payroll Services |   27,720  |   12,600  |   (15,120) | Fixed, Ongoing |
| Software Expense |   3,000  |   3,000  |   -    |  |
| Training |   -    |   4,200  |   4,200  | Discretionary, One-time |
| Contingency Buffer |   60,000  |   48,000  |   (12,000) | Contingency |
|  |  |  |  |  |
| **Annual Total** | **673,344** | **517,613** | **(155,731)** | **-23.128%** |
| **Monthly Total** | **56,112** | **43,134** | **(12,978)** | **-23.128%** |

#### Budget Details

**Salaries & Wages:** Cost includes salaries and employer taxes for two full-time team members.
**Healthcare:** For two full-time team members.
**Contractor Fees:** Upper limit of $10k per month for copy editors, researchers, moderators, designers, excel consultants, and other professional contributors. These are paid on an hourly basis at individually negotiated rates.

**Travel:** Upper limit of up to two off-sites a year, preferably partnering with GOV or other operations-related teams. Upper limit of up to two facilitator-only engagements as needed.
- *Hotels:* $150 per night max.
- *Airfare:* Coach.
- *Meals:* Target of ~$100 per day for breakfast, lunch, and dinner combined per person.
- *Activities & Events:* Conference tickets, group dinners with MakerDAO stakeholders, partial sponsorships of MakerDAO events.
- *Transportation:* taxis, scooters, bikes, etc.

**Exchange Fees:** Dai conversion into USD, EUR, or other.
**Bank Fees:** Cost of wire transfers & outgoing crypto transactions to pay contributor invoices via AccountAble.
**Gas:** Ethereum transaction fees incurred by the Operational Wallet by claiming, sending, and returning funds.
**Accounting Expense:** Fixed fee of $800 & variable fee of the rest depending on how much we spend.
**Payroll Services:** $525 per month per person maintenance cost, $200 per new onboarded employee, and $350 per offboarding.

**Subscriptions (non-software):** Design assets and nothing else at the moment.
**Hardware Expense:** Office supplies as needed.
**Software Expense:** Google, Adobe, and some design applications.

**Legal Expense:** TechGDPR or other lawyers as needed.
**Training:** Paid professional development for team members to learn new skills, improve their weaknesses, or sharpen their strengths.

**Contingency Buffer:** Standard ~10% margin of error.

### Budget Term

January 1st, 2023, through June 30th, 2023.

### Improvement to MakerDAO's Operational Efficiency

As a hybrid operations/communications team, our work has a direct impact on stakeholder coordination & information accessibility. Our offerings improve operational efficiency in various ways, specific to each active program. In general, we provide information services, coordination services, and coordination tools.

We use discretion and take a flexible approach towards fulfilling our mandate, with the guiding principle to produce the most impact with our work.

While our original aim was to execute our entire proposed mandate, as detailed by the program, the reality is that the needs of the DAO change often, and the ability of a team like ours to make fast changes is critical for efficiency and success in maximizing our impact. The rigidity of the governance system makes it difficult to add, remove, or restructure programs quickly. As MakerDAO evolves, so do our offerings. We take great care to detail the reasoning behind changes to our work. Read our [Monthly Updates](https://forum.makerdao.com/c/core-units/governance-communications/44) for that information. See our [transparency dashboard](https://govcomms.makerdao.network/) for a better understanding of our currently active programs.

### Deliverables/Ongoing Services

The nature of our work is mostly ongoing. During the budget term, we intend to execute these programs but reserve the right to make changes as needed:

- Calendars.
    - Calls.
    - Votes and Important Dates.
- Call Support.
    - Attendance tracking.
    - Banners/Thumbnails.
    - Hosting.
    - Summaries.
    - Slide Decks.
    - Strategy.
- Communication Platform Stewardship.
    - Forum Moderation.
    - Subreddit Moderation.
    - Forum Information Architecture Design.
    - Tag correction.
- Emergency Communications Support.
    - Pager Duty Coordination w/TECHOPs.
    - Emergency Playbook.
- Stakeholder Alignment.
    - Participate in Decentralized Operations Initiative.
    - Host Monthly Collateral Management Initiative Planning.
    - Host Monthly Security Initiative Planning.
- Stakeholder Content.
    - Aggregated Monthly CU Updates.
    - Weekly Relay.
    - Weekly Forum Recap.
- Stakeholder Database.
- Stakeholder Notices.
    - Vault Offboarding Notices as required by MIP62.
- Trackers.
    - All Available Dashboards Tracker.
    - All Available Guides Tracker.
    - Discord Server Tracker.
    - Event Specific Trackers for Attendees, Speakers, and Resources.
    - Initiatives Tracker.
    - Office Hours Tracker.
    - Services and Owners Tracker.

### Team Summary

The current team is composed of two committed full-time members, and nine part-time contributors.

- Facilitator: 1 FTE
- Project Manager: 1 FTE
- Part-Time contributor team: 1.5 FTE

Note: The number of part-time contributors may change as this group is managed at the discretion of the facilitator.

### Bear Context - Minimum Viable Business Continuity

In case of unforeseen events that might lead to funding decreases of 10-20%, our strategy would be to cut spending in the below areas, judging by the situation:

- Reduce travel spending in half, limiting ourselves to one off-site a year and one facilitator engagement per year.
- Reduce contributor spending by 10-20%.
    - Call summaries by request only.
    - Less spend on design work.
    - Less spend on excel consulting & automation.
- Reduce training budget by 50%.
- Decrease contingency buffer by 10-20%.

Additionally, we will go through a program evaluation process that may result in cuts of ineffective programs. We already actively do these evaluations, but in the bear context we will have more aggressive judgement. We will consult the community of stakeholders about any program we are thinking of cutting.

### Bull Context - Core Unit Growth Prospects

In case of increased funding, our strategy may vary depending on the needs of the DAO:

- Do nothing, assuming our existing scope stabilizes and stakeholders are content with performance.
- Hire high-tier contributors for existing or new programs, giving us more room to experiment with other ways to improve information accessibility & ease of coordination.

### Unwinding and Defunding

Within one month of the ratification of an offboarding proposal, the Facilitator will submit a winddown plan to the governance forum. This plan will include line items of the necessary tasks to complete unwinding, a timeline, and a cost estimate for completing the wind-down proposal.

After the completion of the wind-down, any excess funds in the Operational Wallet & Continuous Operations Multisig will be returned to the Maker protocol using DssBlow. The ongoing MKR vesting cycle of contributors will be accelerated to the nearest 6-month vest on completion of the wind-down. The above clause overrides the 12-month cliff.

Process:

- Offboarding of CU is ratified.
- Internally determine essential programs that need to be taken over.
    - Calendars.
    - MIP 62 Vault Offboarding Notices.
    - etc...
- Halt work on non-essential programs.
- Create recommendations for transferring essential programs.
- Reach out to teams named in our recommendations for buy-in.
- Identify programs that no one is willing to take over and that will permanently end.
- Post plan to the forum, including notices about fully discontinued programs.
- Execute the plan.

One-time expenses:

 - Severance packages
 - 2x $350 offboarding charges from payroll provider
