# MIP40c3-SP69: Modify Core Unit Budget - Strategic Finance (SF-001)

```
MIP40c3-SP#: 69
Author(s): @Aes
Contributors: @SebVentures @adcv
Tags: core-unit, cu-sf-001, budget, dai-budget
Status: RFC
Date Applied: 2022-05-10
Date Ratified: TBD
Budget Start Date: 2022-7-1
Budget End Date: 2023-7-1
Forum URL: https://forum.makerdao.com/t/mip40c3-sp69-modify-core-unit-budget-strategic-finance-sf-001/15090
```
## Sentence Summary

MIP40c3-SP69 modifies the DAI budget for Core Unit SF-001: Strategic Finance.

## Paragraph Summary

MIP40c3-SP69 modifies the budget for Core Unit SF-001: Strategic Finance. It contains:

- Total Budget Cap: The hard limit voted on by Governance.
- Breakdown of Team for the budget period.

## Specification

### Motivation

Based on the nature of the work done by the Strategic Finance Core Unit (SF-001), the budget reflects the needs of the team to ensure continuity of the work described in our [MIP39c2-SP27](https://mips.makerdao.com/mips/details/MIP39c2SP27). This is summarized in, but not limited to:

- Maintaining Financial Statements, Reporting, and existing Dashboards.
- Driving alignment and facilitating discussion for Strategic Focus Areas & KPIs.
- Tracking, consolidating, and reporting Core Unit expenses to the DAO.
- Institutional vault analysis & deal negotiations.
- Oracle gas modeling and risk mitigation.
- Asset-Liability Management.

The SFCU is also supporting various strategic initiatives, including but not limited to:

- Authoring proposals to earn income from dormant balance sheet assets.
- Supporting the aggressive growth strategy with financial modeling and strategic advisory.
- Meeting with various parties to research cost and legal structure of balance sheet investments.

### Core Unit ID

SF-001

### Budget Implementation

The SF-001 budget is designed with the following in mind:

- Paying for the operational costs to run the Core Unit.
- Having a buffer for unexpected legal, technical, or financial problems.

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

A continuous funding model similar to those proposed by RISK-001, SES-001, and DUX-001. If any modifications are needed, they will be done on a six-month basis through a "Modify Core Unit Budget Subproposal Process" (MIP40c3 subproposals.) If modifications are not proposed, the monthly payment amount gets rolled over from the initial proposal, if our work meets community and MKR holders' expectations and demands.

### Smart Contract Implementations

This budget implementation uses the DssVest. This can be changed if needed to any method achieving similar objectives.
The vesting budget will be in place from July 2022 to July 2023 included. It will be renewed each year.

- DAI per month: 117,515.
- The destination wallet is: 0xf737C76D2B358619f7ef696cf3F94548fEcec379 - SF Core Unit Multisig.
- A total of 1,410,185 DAI will be streamed to 0xf737C76D2B358619f7ef696cf3F94548fEcec379 address starting date 7/1/22 and ending date 7/1/23.

### Budget Breakdown

#### DAI Expenditure

We're asking for a monthly budget of 117,515 DAI.

The budget cap differs from the actual expenses of the Core Unit. The cap refers to the maximum that the Core Unit can request for operating, and it includes room for unforeseen circumstances.

### Reporting Transparency

#### Budget

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP69/budget.png)

#### 2022 FTEs - Actuals & Forecast by Month

||February|March|April|May|June|July|August|September|October|November|December|
|---|---|---|---|---|---|---|---|---|---|---|---|
|FTEs|2.2|3.6|4.3|4.3|6.2|6|6|5.75|6.75|6.75|6.75|


#### 2023 FTEs - Forecast by Month

||January|February|March|April|May|June|
|---|---|---|---|---|---|---|
|FTEs|6.75|6.75|6.75|6.75|6.75|6.75|

### Budget Term

Budget commences on 7/1/22 and ends on 7/1/23.

#### Budget Details

Providing additional detail with regards to the above line items:

**Compensation:** This budget contains compensation for the aforementioned six full-time contributors and two temporary contributors. It also contains a small allocation for grants for specific projects.

The total compensation includes a competitive base salary and funds to cover health insurance, 401K matches, and other benefits offered in the marketplace.

**Travel and Conferences:** The team plans to travel once a quarter to collaborate more intensely, meet with other DAO members, and work on our roadmap and strategic initiatives.

**Hardware & Welcome Package:** An allocation of $3,500 per new FT team member (new members only, one-time cost).

**IT & Subscriptions:** We currently have subscriptions to Dune Analytics and various productivity applications (MS OneDrive, HackMD, etc.). We will test out various data providers to determine which product best suits our needs. We will also work with the Data Insights CU to see how our data needs can be served.

**Gas Costs:** Covers monthly payments to contributors.

**Professional Services:** Coverage for legal, tax, and advisory services.

**Contingency Buffer:** Approximately 7.5% of the total cap costs added in case of additional unforeseen expenses. Any Contingency Buffer funds used will be detailed in our financial reports for transparency.

The team will generate monthly financial reports with expense forecasts and return excess Dai at the end of the budget period.

### Increasing Value to Maker Token Holders

The Strategic Finance CU seeks to drive value to the protocol through revenue growth and improving operational efficiency tangibly.

Our focus is on utilizing dormant protocol assets to generate income for the protocol on the revenue side. This work can be broken down into the following key components:

1) Allocating the majority of stablecoin PSM exposure to [short-term bonds](https://forum.makerdao.com/t/mip13c3-sp12-declaration-of-intent-invest-in-short-term-bonds/13084). We are seeing [significant traction here](https://forum.makerdao.com/t/mip65-bond-allocation-review-vote-baillie-gifford/14865), and will support any proposal brought forward that we believe is in the DAO and protocol's best interest.
2) [Modeling target asset exposure](https://forum.makerdao.com/t/a-balance-sheet-approach-to-executing-an-aggressive-growth-strategy-the-road-to-300m-revenues/14818) and [authoring SRs/MIPs to implement](https://forum.makerdao.com/t/signal-request-deploy-the-balance-sheet-in-eth/14834).
3) Launching a [treasury management strategy](https://forum.makerdao.com/t/mip55c3-sp4-adding-a-special-purpose-fund-makershire-hathaway/14643) with the long-term goal of automating, to generate yield and support DAI & MKR liquidity.

On the operational efficiency side, our focus is on delivering accurate and timely financial reports about the state of the system to token holders and commercially relevant blockchain insights. This work can be broken down into a few key areas:

1) Ongoing [monthly financial reporting and analysis](https://forum.makerdao.com/tag/financial-report). Our objective is for MakerDAO to set the DeFi standard for financial reporting quality and accuracy. Better data meaningfully improves the quality of decision-making at the protocol.
2) [Building financial dashboards](https://dune.com/SebVentures/maker---accounting_1) and tools that provide real-time financial data directly from the blockchain so stakeholders can understand the health of the protocol.
3) Facilitating Quarterly Strategic Reviews (QSRs) to review DAO-approved strategic focus areas, KPIs, and the DAO's progress against them.
4) Working with the Growth, Protocol Engineering, and Oracle Core Units to model growth opportunities and risks.
5) Accounting, solvency, liquidity, and potential regulatory reporting.

### Roadmap and Objectives

- Working with the community to allocate the majority of stablecoin PSM exposure to short-term bonds.
- Refining our target asset exposure model and aligning with the Risk & Lending Oversight CUs and community to implement.
- Launching treasury management with the long-term goal of automating to generate yield and support DAI & MKR liquidity.
- Create a Strategic Action Plan (STRAP) to develop plans to achieve DAO-wide long-term goals by facilitating:
    - Determining the protocol's strategic position.
    - Prioritization of Objectives.
    - Developing and formalizing the strategic plan.
    - The assessment of executing the plan.
    - The review and revision of the plan as necessary.
- Continue facilitating recurring Strategy reviews to:
    - Assess how CUs are executing the mission and agreed-upon strategy.
    - Understand issues and obstacles the DAO needs to address.
    - Discuss new opportunities that have arisen that the DAO may want to pursue.
    - Decide if adjustments to the plan are needed.
    - Facilitate optimal capital allocation.
- Build out 'Governance Relations' by partnering with CU leadership to frame and communicate MakerDAO's strategy, operations & financial results to the community.
- Asset-Liability Management:
    Reporting the current and future balance sheet structure in terms of interest rate, duration, maturity, and profitability.
    - Researching and proposing ways to optimize the balance sheet allocation.
    - Providing insights into [borrower risks](https://forum.makerdao.com/t/borrowers-concentration-analysis/12014) and [analyzing customer capital flows](https://forum.makerdao.com/t/alm-liquidity-update/14687).
- Financial Reporting & Planning
     - [Monthly Financial Reports](https://forum.makerdao.com/tag/financial-report).
     - [Monthly Expense Reports](https://forum.makerdao.com/tag/expense-reporting).
     - Monthly Revenue and Expense Forecasts.
     - Budgeting support through building Budget Templates and providing expense analysis to CUs.
- KPI dashboard.
     - Building real-time dashboards leveraging on-chain data to measure DAO-approved Strategic Focus Areas and Key Performance Indicators.
- Real-time Vault Profitability Analysis.
- Partnering with SES to standardize and automate expense reporting across the DAO.
    - Increase transparency and reporting standards to provide more accountability to CU spend

### Headcount Planning and Team Summary for 2H 2022

The team for this budget cycle will be composed of six permanent members and two temporary (Summer Interns) members:

Facilitator - @Aes
ALM - @SebVentures
Finance & Strategy - @adcv
Business Analysis - @lyt
Sr Financial Analyst - TBD
Lead Accountant - TBD

Temporary/part-time team members include:
1 MBA Intern
1 Undergraduate Intern @Juanbug


### Contingency Planning - Scenarios

**Bear/Superbear:** Should the DAO seek to cut expenses in a bear or superbear market, the SFCU would reduce expenses by minimizing or eliminating travel, delaying new hires, and, if needed, reducing HC compensation.

**Bull:** In a bull market, we would accelerate hiring plans and bring on the Sr. Financial Analyst, Lead Accountant, and DAO Auditor more quickly. We would also move forward efforts to automate Makershire, subject to performance and DAO approval, by co-funding smart contract development and audits.

In the event of rapid expansion outpacing our capacity, we would explore expanding the budget to accommodate an additional resource. However, our policy is to reach and exceed 100% capacity for some months with each of our Core Unit collaborators before looking into the need for adding an additional resource.

### Unwinding and Defunding

If SF-001 is defunded, all expansionary work will be halted to shift focus to wrapping up existing initiatives, creating documentation of existing processes, transitioning any processes, and archiving projects & data. Any funds not already allocated (such as employee compensation and software subscriptions) at offboarding will be returned to the DAO through DSSBlow. All unvested MKR would be returned to the DAO as of the end date. No one-time expenses are anticipated at this time.

### Considerations for Budget Modifications

The requested budget is a 43% increase over the first SF-001 budget. The increase is driven almost entirely by headcount compensation, which is driven by increased headcount. This is slightly offset by a lower contingency buffer (24% lower than the previous budget). Travel expenses have been increased nearly 3x, driven by a 69% (nice) increase in headcount and increasing the frequency of team meetings from twice a year to four times a year. The new travel budget remains lower than average.

We plan to increase the permanent team headcount by two, and hire two temporary interns for the Summer ( 1 MBA and 1 Undergraduate). Please see below for a summary of core responsibilities for each role:

**MBA Intern:**
- Analyze the protocol's core business from a first-principles approach, and build an investment and capital allocation prioritization framework to help guide protocol capital allocation decisions.
- Assist with refining and iterating on the Quarterly Strategic Review deck, leveraging learnings from the above analysis.
- Research quantitative and qualitative metrics for DAI and how to best position DAI in the marketplace to maximize organic DAI growth.

**Undergraduate Intern:**
- Create an investment and risk framework for treasury asset allocations in collaboration with key DAO stakeholders and the community.
- Model treasury portfolio risk, return, measure and report results, monitor and optimize positions.
- Build the action plan and roadmap for automating the treasury.

**Sr. Financial Analyst**
- Take overall existing Financial Reporting, including but not limited to: monthly financial reports, expense reports, forecasting models, DCF models, Oracle gas models, etc.
- Collaborate with the SF team and Lead Accountant to automate, optimize, and increase the robustness of our financial reporting processes.
- Assist with QSR and developing Operations QSR materials, Stakeholder relations, and educational materials.

**Lead Accountant**
- Develop the foundation for DeFi-native accounting principles, leveraging concepts from traditional accounting frameworks (GAAP and IFRS).
- Own and manage the protocol financial statements to maximize transparency and visibility to stakeholders.
- Finalize and launch a DAO financial and accounting closure process.

### Business Case for Investment

Hiring Summer Interns will enable the DAO to source and trial talent on a cost-controlled and temporary basis. Many have joined the DAO starting on a part-time basis to gain comfort and ensure mutual fit with the DAO before committing to the project on a full-time basis, myself included.

Building relationships with top Universities will enable the DAO to source talent better. At this time, SF has sourced intern talent from Harvard Business School and UPenn (Wharton).

In addition to the above, we believe these individuals can add tremendous value to the DAO, even during the limited time with us on a full-time basis. If the trials are successful, we will endeavor to keep these individuals engaged on a part-time basis.

Hiring a Sr. Financial Analyst will free up significant time for @adcv and me, allowing us to work on higher-value initiatives and projects. We currently spend 40+ hours per month on financial reporting and related activities. With the higher bandwidth, we plan to invest significant time into:

1) Vault User Research
    a. Creating an NPS (Net Promoter Score) survey
    b. Quantifying vault usage by Front End
    c. Analyzing historical CLIPs and how liquidations can be improved
2) Surplus Buffer & Treasury Analysis
    a. Collaborate with risk to model and quantify the minimum amount to be held in Surplus Buffer
    b. Develop NPV framework for potential investments (re-investing vs. burning MKR)
    c. Strategic partnerships to increase yield
3) Create an investment prioritization framework to maximize ROI
4) Accelerate automation efforts of Makershire
5) Develop an Operations QSR

Investing in a dedicated accounting resource will build higher confidence and trust in all MakerDAO financial reporting. While [MakerDAO is already considered a leader by some top crypto funds](https://www.ar.ca/blog/the-good-bad-ugly-of-voluntary-reporting-and-transparency) in terms of financial reporting and transparency, we believe we are just scratching the surface of what can and should be done to bring confidence to DAI and protocol stakeholders. Making an investment in a seasoned accounting professional will signal to the market that MakerDAO is serious about furthering these efforts and committed to continuing to be an industry leader in trust and transparency.

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP69/monthly.png)

## Proposal Parameters

-   **Minimum Feedback Period**: 1 Month.
-   **Minimum Frozen Period**: 1 Week.
-   Ratification Polls for MIP40c3 subproposals involving a Core Unit Budget Modification will have different requirements to MIP51c2. Instead of binary voting, they must use ranked-choice voting, with the options as follows:
    -   A: Approve increased budget
    -   B: Approve existing budget only (Business as usual)
    -   C: Reject budget
    -   D: Abstain

In order for this Ratification Poll to conclude successfully and the contained proposal(s) move to Accepted status, each of the following conditions must be true:

-   `A` or `B` vote-weight must exceed `C` vote-weight when the poll closes.
-   Winning vote-weight must exceed the `Minimum Positive Participation` value of 10,000 MKR when the poll closes.

Please make sure to rank all of the options during the vote, specifically for approving a budget request. Also, make sure to rank the option to approve the existing budget.
