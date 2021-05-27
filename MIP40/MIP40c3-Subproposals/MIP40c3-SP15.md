# MIP40c3-SP15: Modify Oracles Core Unit Budget

## Preamble

```
MIP40c3-SP#: 15
Author(s): Niklas Kunkel
Contributors: N/A
Status: RFC
Date Applied: 2021-05-12
Date Ratified:
```

## Sentence Summary

MIP40c3-SP15 adds the budget for the Oracles Core Unit.

## Specification

## Core Unit Name

Oracles Core Unit
ORA-001

## Motivation

On behalf of the Oracles Core Unit, I'm proposing the following budget to deliver on our mandate. This includes, but is not limited to:

* Securing the Maker Protocol
* Developing the Oracle Protocol to meet the constantly growing needs of the Maker Protocol
* Deploying, Monitoring, and Administering Oracles on behalf of the Maker Protocol
* Responsibility for all Oracle elements of collateral-onboarding
* Transforming the Oracles into a revenue-generating service
* Expanding the Oracles product suite

Oracles are a critical component of the Maker Protocol's security, through which failure could potentially allow printing of unbacked Dai, and liquidation of all vaults. Many DeFi hacks can be traced back to a faulty Oracle. The budget presented below represents the resources needed to employ the exceptional talent to take on this critical responsibility.

## Budget Considerations

**This budget was designed with the philosophy that it's better to ask for too much budget and not spend it, than ask for too little, and need it.** At this stage of growth for the Maker Protocol, being blocked by a lack of capital would be a careless and unnecesary mistake. There is a limited time-window to execute on the opportunities at hand before the market becomes too crowded with well-capitalized competitors. **Given the amount of time it will take to hire the right people and set up internal processes, it is highly unlikely that the Oracle Core Unit will spend even half of the proposed budget in its first year.** Subsequent budget requests will have much better calibration with actual expenses incurred.

The following considerations have been taken into account when building the proposed budget:

* A competitive salary in-line with industry standards
* A competitive benefits package in-line with industry standards
* The Core Unit will need to find and hire exceptional talent rapidly in order to scale quickly enough to meet the needs of its mandate. To this end, a large pool of capital has been allocated for recruiting, refferals, and sign-on bonuses.
* A high travel budget, in order to fund attending crypto conferences and team offsites which are critical for remote teams to build interpersonal relationships; vital for collaboration and retention.
* A healthy contingency in case budget estimates are significantly off

It should be noted that the gas costs for operating Oracles are not included in this budget and will be requested in a later subproposal. These costs scale linearly with the gas-price of the Ethereum Network and **are significant, variable, and difficult to model**.

## Budget

The yearly budget request for the Oracles Core Unit is $5m. This equates to a $419k monthly expense to support the team mandate.

This budget secures a team of 15.5 full-time employees as well as covers all operational costs listed below.

At the end of the calendar year, all unused funds will be returned to the Maker Protocol. Should the Oracle Core Unit shutdown, all unused funds will be returned to the DAO immediately.

**Annual Budget**
| Component  | Amount     |
| ---------- | ---------- |
| Salary     | $2,575,000 |
| Total Employee Cost (Salary + Benefits + Taxes) | $3,347,500|
| Feed Stipends | $360,000|
| Recruiting/Referral/Sign-On Bonus | $300,000 |
| Audits     | $200,000   |
| Travel     | $150,000   |
| Tech-Ops Core Unit - Production Coverage | $150,000 |
| Legal      | $100,000   |
| Marketing  | $100,000   |
| Deployment Costs | $50,000 |
| Tools/Services/Devices | $35,000|
| Hardware   | $30,000    |
| Operations | $25,000    |
| Contingency| $238,625   |
|            |            |
| Total Annual Budget  | $5,036,125 |
|            |            |
| Total Monthly Budget | $419,677 |

**Budget Distribution**
https://imgur.com/a/RCRGbBg

## Budget Details

**Salaries**
The current team has 4 full-time developers, 1 Team Lead, and 1 Facilitator. The team is seeking to grow this by 9.5 members to 15.5 total to meet the evergrowing needs of the Maker Protocol.

**Total Employee Cost**
The total cost of an employee includes salary, all benefits (including healthcare), and taxes. This has been calculated by scaling salaries by 30%. This premium is likely an overestimation, and the realized cost is expected to be lower. That being said, paying salaries to a a global remote team in a multitide of jurisdictions can be quite expensive without the proper legal infrastructure in place.

**Feed Stipends**
All Feeds are compensated with a Feed Stipend of 1000 Dai per month. There are currently 26 total Feeds; 12 Light Feeds, and 14 Dark Feeds. We expect to continue onboarding new Feeds in the coming year to meet the growing security requirements of the Maker Protocol as it scales.

**Recruiting/Referall/Sign-On Bonus**
Recruiters are going to be critical for discovering talent, and their commission for successful hires is often high, especially for more senior roles. We also want to have flexibility with offering significant sign-on bonuses to elite cant-live-without candidates. Keep in mind many of these are one-time costs.

**Travel**
Conferences and team offsites have been critical in the Maker Foundation's history of fostering interpersonal relationships and generating trust. These are vital qualities in a companies culture that improve collaboration, productivity, and retention.

Conferences in particular also serve a multitude of purposes. Employees are educated about the bleeding-edge technologies in the industry, and can apply that knowledge within the Oracle Core Unit. They also are a way for the Oracle Core Unit to present seminars, giving visability to potential customers and attracting new talent. Additionally, they serve as hotspots which can be used to connect with potential clients in a much more personal (read effective) manner.

This budget would cover flights, lodging, nourishment, team-activities, and conference passes.

**Audits**
As the Oracle Protocol evolves, audits are an indispensible part of the QA process. In many cases, multiples audits may be required for a single release due to the sensitive role that Oracles play in securing the Maker Protocol. Depending on the code size and complexity, as well as the prestige of the auditor, audits can range from $10,000 to $50,000. During bull markets especially, auditors are booked months in advance and charge heavy premiums for fast-tracking. The Oracle Core Unit will always prioritize the security of the Maker Protocol over agility.

**Tech-Ops Core Unit - Production Coverage**
The Maker Foundation Tech-Ops team has in the past provided excellent coverage in monitoring production systems 24/7 365 across a multitude of timezones. This would be prohibitively expensive to staff within the Oracle Core Unit, and is best outsourced to the Tech-Ops Core Unit which will provide round the clock monitoring to a handful of Core Units running production services on behalf of the Maker Protocol.

**Legal**
Coverage for legal costs including entity creation, legal officer/company insurance, as well as monthly and annual financial reporting.

**Marketing**
The marketing budget is for building a brand around the Oracle Protocol.
As we won't have an in-house designer initially, some of the budget will be used to outsource design work. Conference sponsorships, ad campaigns with select partners, and user incentives also fall under this umbrella.

**Operations**
General operational overhead as well as outsourcing accounting work (potentially to another Core Unit).

**Deployment Costs (Gas)**
Gas costs have continued to ride as demand for interacting on the Ethereum network grows. In particular, the plethora of AMMs which become arbitraged and front-run by bots en-masse is a systemic problem that does not look to let up anytime soon. As such we expect extreme gas-costs for smart-contract deployments, the majority of which are for Oracles related to collateral-onboarding for the Maker Protocol. This budget should cover deployment and configuration for roughly 35 collateral types.

**Tools/Services/Devices**
New team members will need to be provided with laptops for the duration of their employment. Licenses for essential productivity tools like Clubhouse

**Hardware**
The Oracle Core Unit will need to host Oracle development and production infrastructure such as testing and staging environments, developer environments, relayers, ethereum nodes, APIs, data logging, and monitoring tools.

**Contingency**
As with any new indeavor, especially in an industry innovating as quickly as ours, there are many unknowns when it comes to estimating budget requirements, as well as unexpected costs that arise from time-to-time. The contigency represents 5% of the total budget and is there to act as a safety buffer.

## Budget Distribution

Budget should be distributed to the Oracle Core Unit multi-sig on a monthly basis. This multi-sig will initially be a 2 of 3 with the Oracle Core Unit Facilitator (@NikKunkel), Oracle Core Unit Eng Team Lead (@marcandu), and the Protocol Engineering Core Unit Facilitator (@Derek).

## Conditions - Continuous Operation

To ensure 3 months of continuous operation in the event of emergency shutdown or protocol issues, the Oracle Core Unit is requesting an upfront lump-sum of $800K to sit in a protocol owned multisig.

Calculation:

The lump sum is the equivalent of 3 months of budgeted salaries and essential team expenses.

Detail:

The lump-sum will be held outside of the surplus buffer in a protocol owned multisig

If normal protocol operation is not possible due to emergency shutdown or other protocol failure, these funds will be used to ensure employment resources get the system back up and functional.

At the conclusion of the year, the lump sum will remain in the multisig for the following year and may be increased at that point in time due to team growth or the need for an increased runway.

## MKR Vesting

The Oracle Core Unit is proposing to apply a linear interpolation model to utilize salary to calculate the amount of MKR each individual will vest. This model has been proposed by the [SES Core Unit](https://drive.google.com/file/d/128sgsmMU8eXgRXpHZcA1gywUrv_FbGSg/view) with minor modifications. These modifications include a higher floor for intermediate and junior contributors as well as a longer vesting period to reward loyal contributors and mitigate brain-drain.

### Formulas

```
[Initial Annual FTE Incentive Value in USD] = MAX(
    2.45 * [Annual FTE Gross Salary] -275,000 USD;
    [Annual FTE Gross Salary] * 0.35
)
```

```
[Initial Annual FTE Incentive (MKR)] =

    [Initial Annual FTE Incentive Value in USD] /
    [180-Average Price of MKR at the first date of employment]

```

### Vesting Details


| Property | Value |
| -------- | -------- |
| MKR/USD lock-in Price (New) | Trailing 6 month average |
| MKR/USD lock-in Price (OG)  | [MKR = $1956 (11/12/20 - 05/12/21)](https://www.investing.com/crypto/maker/mkr-usd-historical-data)
| Biannual MKR Amount         | Initial Annual Incentive Value (USD) / MKR/USD lock-in Price |
| Vesting Period        | 4 years                  |
| Cliff Vest            | 12 months                |
| Vesting Schedule      | After cliff has expired, the Biannual MKR amount vests every 6 months and is distributed on Jan/July 1st. |
| Manual Repricing      | yes                      |
| Auto-Renewal          | yes                      |
| Estimated Max Total team MKR After 1 Year (15.5 FTE)*  |  1051.25 |
| Estimated Max Total team MKR After 4 Years (15.5 FTE)* |  4205    |

**Note that this estimation is based on all 15.5 FTEs joining the Oracle Core Unit on day 1. There are currently, only 6 FTEs (potentially 5) working for the Maker Foundation that are joining the Oracle Core Unit  which significantly reduces the actual amount of MKR expended for Oracle Core Unit vesting. While we will try to begin hiring as soon as possible, we're absolutely prioritizing to find the highest caliber candidates to fill vacant positions and will take our time accordingly. In the meantime the trailing 6 month average MKR price should rise which will reduce the amount of MKR awarded to new hires.*

Manual repricing allows any contributor of the Oracle Core Unit to calculate a new MKR/USD lock-in price using the trailing 6 month average. This ensures that contributors who join during a bull market aren't penalized relative to new contributors who join later during a bear market. In order to prevent abuse, manual repricing will reset the 12 month cliff vest period.

### Related Documents

[MIP39c2-SP12 Oracles Core Unit MIP](https://forum.makerdao.com/t/mip39c2-sp12-adding-oracles-core-unit/8048)

[MIP41c4-SP13 Facilitator Onboarding, Oracles Core Unit Proposal](https://forum.makerdao.com/t/mip41c4-sp13-facilitator-onboarding-oracles-core-unit/8046)
