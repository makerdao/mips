# MIP40c3-SP43: Adding Sidestream Auction Services Core Unit Budget - SAS-001

## Preamble

```
MIP40c3-SP#: 43
Author(s): @danik
Contributors: @BracketJohn, @lukass, @builderman, @wouter, @juan, @Petru_Catana, @lollike, @Njoku_Emmanuel
Tags: core-unit, cu-sas-001, budget, dai-budget
Status: RFC
Date Applied: <2021-10-06>
Date Ratified: <yyyy-mm-dd>  
Forum URL: https://forum.makerdao.com/t/mip40c3-sp43-adding-sidestream-auction-services-core-unit-budget-sas-001/10799/2
```

## Sentence Summary

MIP40c3-SP43 adds the DAI budget for Core Unit SAS-001: Sidestream Auction Services.

## Paragraph Summary

The SAS CU budget is designed with the following in mind:

* Paying for the operational costs to run the core unit
* Having a buffer for unexpected legal, technical, or financial expenses

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

* Funding a 3 month run-way for SAS CU
* Replenish this runway on a monthly basis as described in [the SES top-up mechanism](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369)

## Specification

### Motivation

Based on the nature of the work done by the Sidestream Auction Services Core Unit (SAS), the budget reflects the needs of the team to ensure continuity of the work described in our MIP39. This is summarized in, but not limited to:

1. Visualize auction data to increase transparency and generate insights
2. Provide intuitive UIs and well-maintained APIs for interaction with the auction mechanism (to increase accessibility and adoption)
3. Help ensure that there is always sufficient auction participation, even in extreme circumstances such as
   * Protocol upgrades (e.g. new collateral types)
   * Inefficient market conditions

### Core Unit ID

* SAS-001

## List of Budget Implementations

The detailed budget implementation will be added shortly.

### List of Budget Breakdowns

#### Dai Expenditure

We’re asking for a Total Budget Cap of 282,598.13 DAI, spanning a 3-month runway.

The budget cap differs from the actual expenses of the core unit. The cap refers to the maximum that the core unit can request for operating, and it includes room for unforeseen circumstances.

**Contributor Compensation**

|Type|Monthly Cost|Quarterly|
| --- | --- | --- |
|Grand Total|$54,337.50|$163,012.50|

**Budget Breakdown:**

|Summary|Monthly Cost|Quarterly|
| --- | --- | --- |
|Permanent contributer comepensation|$54,337.50|$163,012.50|
|Travel & Events|$2,500.00|$7,500.00|
|IT & Subscriptions|$1,500.00|$4,500.00|
|Gas Costs|$2,000.00|$6,000.00|
|Office Space|$1,575.00|$4,725.00|
|Professional & Legal Services|$5,000.00|$15,000.00|
|Engineer Contractor|$10,000.00|$30,000.00|
|Other Contactor Services (e.g. Audits)|$5,000.00|$15,000.00|
||||
|**Total**|$81,912.50|$245,737.50|
|**Contentigency Buffer (15%)**|$94,199.38|$282,598.13|

### Budget Details

Providing additional detail regarding the above line items:

* Permanent contributor Compensation: The permanent team consists of five permanent team members (3.5 FTE). The total cost of an employee includes only compensations as a contractor. Contractors have to take care of their health insurance and other expenses.

|Team members|Headcount|FTE (Full-Time Equivalent)|
| --- | --- | --- |
|Facilitator|1|0.5|
|Designer & Product Manager|1|1|
|Full-stack Engineer|3|2|
|Total|5|3.5|

* **Travel and Events** (*): The team may travel to present at industry events, attend conferences or participate in a team off-site.
* **IT, Infrastructure & Subscriptions** (*): We anticipate a variety of costs related to software subscriptions, cloud services, analytics, and tooling. Our infrastructure costs are around $1,500 per month, coming from the previous costs that the team’s applications have incurred. We will work to lower these expenses to a reasonable amount by optimizing network usage.
* **Gas Costs** (*): The gas cost assumes testing auction and keeper features on mainnet. $2000 per month is allocated for this purpose.
* **Office Space** (*): Every permanent team member gets a desk paid in a co-working space (to enable working together physically)
* **Engineering Contractors** (*): Currently two non-permanent team members work together with the team during the incubation period and will likely continue working on Auctions UI where it makes sense (potentially becoming permanent at a later point when we have a need to scale up, or reduce if the extra hours aren’t needed).
* **Professional & Legal Services** (*): Coverage for legal services, financial services, and payment processor fees. In the first months, these costs will likely be around the estimate as we have to work with lawyers on terms & conditions and other topics to cover liabilities. Later on, the costs are likely to decrease.
* **Contractor Services** (*): The core unit may occasionally need to hire additional contractors, other core units, or professional services (Security auditing, quality assurance, etc).
* **Contingency Buffer** (*): Approximately 15% of the total cap costs added in case of additional urgent expenses, such as:
  * Spikes in gas prices
  * Additional need to defend the CU legally/financially
  * Error in budget planning

(*) = These are estimated values. The team will generate financial reports and return the excess capital through the top-up mechanism.

Any changes to these amounts will be reported in the transparency report and reviewed by our budget auditors.

*This reporting framework and the monthly top-up mechanism are adopted from the SES. Thank you to SES for their incubation program and guidance.*

#### Monthly Budget Statement

Within the first 5 days of each month, we will submit a Monthly Budget Statement to the signers of the Auditors Wallet with the following sections:

1. **Budget Forecast**: The amount of Dai that is required to maintain a 3-month runway for the team based on available information
2. **Previous Month Actuals**: The actual expenses (DAI and MKR) of the month that just ended
3. **MKR Vesting Overview**: A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transaction Amounts**
    * The required DAI amount for the Operational Wallet to replenish the 3-month runway
    * Any excess DAI amount that will be returned to the Auditors Wallet

The Monthly Budget Statements will be added to the MakerDAO forum. The originals can be found [here](https://github.com/makerdao-sas/transparency-reporting).