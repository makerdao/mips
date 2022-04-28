# MIP4c2-SP19: MIP40 Budget Process Amendment

## Preamble

```
MIP4c2-SP#: 19
MIP to be amended: MIP40
Title: Budget Framework Replacement
Author(s): @Aes, @adcv, @SebVentures
Contributors: @LongForWisdom, @madshills, @MakerMan
Tags: MIP40, budget
Status: RFC
Date Applied: 2022-03-27
Date Ratified: 
Dependencies: MIP0, MIP16
Replaces: MIP40, MIP40c3 subproposal template
Forum URL: https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250
```
## Specification

### Motivation


As the DAO has grown, it has been increasingly challenging to track budgets, review proposals, approve spend, and hold Core Units accountable for achieving their mandate and managing their expenses.  

For the DAO to grow long-term, it is critical that MKR holders be able to evaluate and compare Budget Proposals with minimum cognitive overhead. Within this revised MIP, Core Units and proposed Core Units are required to submit standardized, transparent, and clear financial information. Budget Proposals must clearly serve a revenue-driving or supporting business purpose in line with the Objectives of the DAO. 

Operating expenses should aim to: 

1. Drive sustainable revenue growth, and/or
2. Support ongoing and new business effectively

with at least a greater impact than the size of the increase in expenses requested.

The aim is to clarify upfront as much information as possible to reduce, paradoxically, the amount of work required in putting the Budget Proposal together. It should also aid comparability and help MKR holders digest the information in a suitable way.

### Amended MIPs and Components

This MIP4 revises MIP40 as well as related subcomponents MIP40c1, MIP40c2, MIP40c3 and MIP40c4

### Amendment Pull Request

- <https://github.com/makerdao/mips/pull/534>

### Relevant Information

#### Updated requirements

Following this revision, a MIP40 Budget Proposal must:

- Include a Budget Term, with Start Dates and End Dates
- Describe how the Budget Proposal clearly supports the strategic or organizational Objectives of the DAO and should demonstrate, over the length of the Budget Term, either
    - The potential for revenue growth
    - The potential for a tangible improvement in operational efficiency
- Provide a timeline for specific deliverables over the course of the Budget Term
- List expenses by type, per the [Chart of Accounts](https://docs.google.com/spreadsheets/d/1qB1MIPCkZfdkuHSNk1udhscvTjg-mIBo/edit#gid=1506071077) and [Core Unit Operating Expense Budget Template](https://docs.google.com/spreadsheets/d/1dyrRelt5X5kD8CyRd6inyKXZV9PwF4RExPLgK3PQIRE/edit?usp=sharing)
    - Also, describe how much of the budget is to be utilized towards 'ongoing' fixed services and how much is applied to one-time type services/events (planned/unplanned/contingency)
- Disclose full-time equivalent headcount by month
- Explain how this Core Unit could guarantee minimally viable business continuity if the approved Budget Proposal was operating during a:
    - Bear/Superbear context: 10%/20% lower
    - Bull context: With corresponding objectives oriented around stretch targets 
- Define how the Core Unit will be wound down in the event of a Governance vote to defund it, with accompanying rationale (period, use of funds, return of funds)
    - Describe what costs will be paid during this period and what costs will not be paid for
    - Describe how funds will be returned to the DAO
    - Describe one-time expenses that would be needed to wind down the core unit. This also should be included in the one-time expenses to spin up.
- Be submitted during a budget submission window
    - Quarterly (March, June, September, or November Governance Cycles)


#### Post-Budget Approval

Once a budget has been approved, it is highly recommended that expense reports are published to the relevant governance section of the forums with a budget-20XX tag. 

Actual expenses should be reported on a monthly basis, following the reporting recommendations outlined by SF and SES. Core Unit Facilitators are encouraged to leverage internal and external tools to facilitate communication with MKR holders and to update reporting standards according to evolving DAO needs dynamically. Finally, Core Units are also encouraged to respond to ad-hoc requests on operating expenses and Core Unit performance that MKR holders or delegates may ask for at any given time.

If an already approved Core Unit is requesting a >10% increase in budget, the new budget proposal must include:

1. Variance analysis by expense type comparing proposed vs. existing budget, including spend and headcount
a. Variances of >10% require disclosure of driver(s)
3. Detailed business case if spend increases by >x% or >y$
a. Explain why the DAO should make this investment
b. What problem does making this investment solve?
c. Why is now the right time to make the investment?
d. Detailed incremental deliveries expected as a result of increased investment
3. Business continuity budget in case the modification proposal is not approved

#### Return of Excess Funds

Every three months starting September 30th, 2022, Core Units will be required to return all funds in excess of three months of budget, defined as the most recent three months budget proceeding the return fund date (e.g., for June 30th deadline, April, May, and June budgets will be used). Exempt are funds destined for any outstanding payments for specific projects that the budget was originally approved for.

*Calculation Example:*
Core Unit A's budget is 100,000 Dai per month for 12 months.
If the actual spend by the end of the budget period is 600,000, then the minimum that must be returned to the DAO is 300,000. 

*Budget Remaining - (3 * Monthly Budget) = Minimum Amount to Return
600,000 - (3 x 100,000) = 300,000*

Transfers should be made to the DssBlow contract, simply send a standard ERC20 Dai transaction:
0x0048fc4357db3c0f45adea433a07a20769ddb0cf
