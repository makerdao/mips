# MIP40c3-SP93: Modifying Strategic Finance Core Unit Budget (SF-001)

## Preamble

```
MIP40c3-SP#: 93
Author(s): @Aes
Contributors:
Tags: core-unit, cu-sf-001, budget, dai-budget, active
Status: RFC
Date Applied: 2023-02-08
Date Ratified: TBD
Budget Start Date: 2023-04-01
Budget End Date: 2024-04-01
Forum URL: https://forum.makerdao.com/t/mip40c3-sp93-modifying-strategic-finance-core-unit-budget-sf-001/19728
Ratification Poll URL:
```

## Sentence Summary
MIP40c3-SP93 adds the DAI budget for the Strategic Finance Core Unit (SF-001).

## Paragraph Summary
MIP40c3-SP93 adds the DAI budget for the Strategic Finance Core Unit (SF-001). It contains:
- Total Budget Cap: The hard limit voted on by Governance
- First-month forecast: The actual first-month estimated expenses
- Breakdown of Permanent Team for the expected first payment (April)

Note - the proposed budget covers the pre-game phase and may be changed significantly based on End Game plan changes, cluster & ecosystem actor funding, etc.

## Specification

### Motivation

Based on the nature of the work done by the Strategic Finance Core Unit (SF-001), the budget reflects the needs of the team to support the expansion of SF-001's mandate and ensure continuity of the work described in our [MIP39c2-SP36](https://forum.makerdao.com/t/mip39c2-sp36-modifying-strategic-finance-core-unit-mandate-sf-001/17750). This is summarized in, but not limited to:

- Maintaining Financial Statements, Reporting, and existing Dashboards
- Commercial deal analysis & Maker protocol education
- Asset-Liability Management
- RWA Collateral Management
- RWA Collateral Onboarding
- RWA Collateral Offboarding
- Risk Parameter Changes for RWA Collateral
- Other Risk Parameters in the Maker Protocol
- Other votes and governance actions related to risk, Dai collateral, and risk parameters
- Any other votes and governance actions related to content described in the informational mandate below

### Core Unit ID

SF-001

### Budget Implementation

The SF-001 budget is designed with the following in mind:

- Paying for the operational costs to run the core unit
- Having a buffer for unexpected legal, technical, or financial problems

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

A continuous funding model similar to those proposed by RISK-001, SES-001, and DUX-001. If any modifications are needed, they would be done on a six-month basis through the "Modify Core Unit Budget Subproposal Process" (MIP40c3 subproposals). If modifications .are not proposed, the monthly payment amount gets rolled over from the initial proposal if our work meets community and MKR holders' expectations and demands.

### Smart Contract Implementations

This budget implementation uses the DssVest. This can be changed if needed to any method achieving similar objectives.

The first vesting budget will be in place from April 2023 to April 2024. It will be renewed each year.

- Dai per month: 200,751
- The destination wallet is: 0xf737C76D2B358619f7ef696cf3F94548fEcec379 - SF Core Unit Multisig
- A total of 2,409,015 DAI will be streamed to 0xf737C76D2B358619f7ef696cf3F94548fEcec379 address starting date 2023-04-01 and ending date 2024-04-01

### Budget Breakdown

#### Dai Expenditure

We're asking for a monthly budget of 200,751 DAI.

The budget cap differs from the actual expenses of the core unit. The cap refers to the maximum that the core unit can request for operating, and it includes room for unforeseen circumstances.

### Reporting Transparency

### Budget

![Budget](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP93/budget.png)

**2023 FTEs - Actuals and Forecast**

![Budget](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP93/2023FTEs.png)

### Budget Term

The budget commences on 2023-04-01 and ends on 2024-04-01. The Budget term and amounts may be heavily adjusted pending cluster funding proposals and the transition out of the pre-game phase of the End Game Plan.

#### Budget Details

Providing additional detail with regards to the above line items:

**Compensation:** This budget contains compensation for seven full-time contributors and two temporary contributors. The total compensation includes a competitive base salary and funds to cover health insurance, 401K matches, and other benefits offered in the marketplace.

**Grants:** Used for senior contributors/experts to assist in ALM modeling, RWA on-chain reporting, specialised structured finance transactions like asset specific know-how, regulatory or jurisdiction specific expertise.

**Travel and Conferences:** The team plans to travel once a quarter to collaborate more intensely, meet with other DAO members, and work on our roadmap and strategic initiatives.

**Hardware & Welcome Package:** An allocation of $3,500 per new FT team member (new members only, one-time cost).

**Software Costs:** We currently have subscriptions to Dune Analytics and various productivity applications (MS OneDrive, HackMD, Notion, etc.). We will test out various data providers to determine which product best suits our needs. We will also work with the Data Insights CU to see how our data needs can be served. In the base case, we would expand our subscriptions to include institutional credit research and analysis to support the assessment of risks and pricing of RWA proposals.

**Gas Costs:** Covers monthly payments to contributors.

**Professional Services:** Coverage for real-world structures, legal, tax, and advisory services related to the RWAs proposals and prospective SubDAO protector clusters. RWA Foundation was set up in the previous facilitation for HVB, and there is a yearly cost of ~50K DAI.

**Contingency Buffer:** Approximately 5% of the total cap costs are added in case of additional unforeseen expenses.

### Increasing Value to MakerDAO Token Holders

The Strategic Finance CU seeks to drive value to the protocol through revenue growth, improving operational efficiency tangibly and preparing transparent financial reports.

We focus on utilizing dormant protocol assets to generate new revenues for the protocol. This work can be broken down into the following key components:

1. Facilitate partnerships with stablecoin issuers to provide marketing incentives for the Maker Protocol - opening and increasing PSM debt ceilings to drive on-chain liquidity
2. Work with arrangers to facilitate the onboarding of ultra-safe, cash-like collateral
3. Create a streamlined RWA onboarding process for 'arrangers' and 'flagship' collaterals
4. Advocate for allocating capital to on-chain solutions to generate yield and support DAI, MKR, and any future Maker product's liquidity.
5. Modeling target asset exposure and authoring weekly polls and MIPs to implement.

We have led engagements and collaborated with stablecoin partners that have directly resulted in over 1.5M DAI in realized revenues to date from **proposals that represent over >35M Dai in annualized revenues**, without any assets leaving the protocol's custody and without any changes to the protocol. We have also supported the implementation of MIP65 (20M+ annualized revenue at current rates) and MIP81 (18-38M Dai in annualized revenue). We will continue to facilitate commercial risk and legal assessments of real-world asset collateral deals greenlit by MakerDAO token holders. **All of which was accomplished with one of the lowest budgets in the DAO and within one year of the core unit being onboarded.**

On the operational efficiency side, we focus on delivering accurate and timely financial reports about the state of the system to token holders and commercially relevant blockchain insights. This work can be broken down into a few key areas:

1. Ongoing monthly financial reporting and analysis. Our financial reporting quality and accuracy has already established MakerDAO as a leader among DeFi protocols and arguably goes further than virtually any public company. Better data meaningfully improves the quality of decision-making at the protocol and demonstrates the value of real-time detailed financial analytics digestible for a broader set of protocol users and constituents
2. Building financial dashboards and tools that provide real-time financial data directly from the blockchain so stakeholders can understand the health of the protocol
3. Creating RWA-specific reporting and dashboards to monitor RWA and off-chain collateral. We believe in a future where all financial assets can be monitored on-chain and risks can be automatically flagged, addressed, and mitigated to build a better financial system that is open and transparent
4. Working with the Growth, Protocol Engineering, and Oracle Core Units to model growth opportunities and risks.
5. Accounting, solvency, liquidity, and potential crypto-regulatory reporting

### Roadmap and Objectives

- Working with the community to support the allocation of stablecoin PSM exposure to diversify and generate yield
- Refining our target asset exposure model and aligning with the Risk CU and community to implement
- Review each existing RWA collateral, determine if risk parameters are appropriate, and recommend changes to MKR holders if necessary
- Monitor and create reporting for existing RWA vaults
- Taking over the off-chain collateral onboarding status index from CES
- Collaborate with the community regarding how the RWA Council should oversee SubDAOs - design constraints in collaboration with ALM contributors and PECU to ensure ample liquidity under significant market stress
- Commercial and legal assessments for community-approved RWA collaterals as needed
- Review of the legal structures
- Review of the resolution, wording, and workflow
- Review of the agreement between entities and service providers
- Writeups of Legal Structure and Governance Appropriateness Verification
- Other open legal review questions identified along the way
- Commercial risk analysis: including but not limited to sponsor or arranger risk, credit risk, concentration risk, servicing risk, etc.
- Review of the commercial structure: flow of funds, leverage profile, credit enhancement, servicing mechanics, scaling/ramp-up/utilization structure, reps/warranties/covenants
- Asset-Liability Management:

Reporting the current and future balance sheet structure in terms of interest rate, duration, maturity, and profitability.

- Researching and proposing ways to optimize the balance sheet allocation
- Providing insights into borrower risks and analyzing customer capital flows
- Financial Reporting & Planning
- Monthly Financial Reports
- Monthly Revenue and Expense Forecasts
- Budgeting support through building Budget Templates and providing expense analysis to CUs
- RWA Reporting
- KPI dashboard
- Building real-time dashboards leveraging on-chain data to measure DAO-approved Strategic Focus Areas and Key Performance Indicators
- Real-time Profitability Analysis
- Build out 'Governance Relations' by partnering with CU leadership to frame and communicate MakerDAO's progress transitioning to the End Game Plan, operations & financial results to the community

### Headcount Planning and Team Summary for 2023

The team for this budget cycle will be composed of seven permanent members and two temporary (Summer Interns) members:

1 Facilitator
1 ALM
1 Finance & Strategy
1 Business Analysis
1 Structured Credit
1 Legal & Transactions
1 RWA Monitoring & Reporting
Temporary/part-time team members include:
1 MBA Intern
1 Undergrad Intern

### Contingency Planning - Scenarios

**Bear/Superbear:** Should the DAO seek to cut expenses in a bear or superbear market, the SFCU would reduce expenses by minimizing travel, delaying new hires, and, if needed, reducing HC/HC compensation.

**Bull:** In a bull market, we would accelerate hiring plans and look to bring on additional expertise through community grants and professional services to support the RWA and Stability & Liquidity scopes.

### Unwinding and Defunding

If SF-001 is defunded, all expansionary work will be halted to shift focus to wrapping up existing initiatives, creating documentation of existing processes, transitioning any processes, and archiving projects & data. Any funds not already allocated (such as employee compensation and software subscriptions) at offboarding will be returned to the DAO through DSSBlow. No one-time expenses are anticipated at this time.

### Considerations for Budget Modifications

The requested budget is a 144% increase over the first SF-001 budget. The increase is driven mostly by headcount compensation, which is driven by increased headcount. Travel expenses have been increased considerably, driven by an increase in headcount, increasing the frequency of team meetings from twice a year to four times a year, and a buffer for meeting with prospective RWA collateral applicants.

Given SF-001's expanded mandate to include RWAs, we believe an apples to apples comparison would include the prior RWF-001 budget. Combining both of the prior budgets below, the requested base budget results in a **25% decrease.**

We understand the need and desire to run a lean operation, especially during such depressed market conditions, but feel the below budget is quite reasonable in respect to the prior RWF and combined budgets given the increased exposure to RWA collaterals, the fact that RWAs drive the majority of protocol revenue, and the increased desire from the community for active RWF monitoring and reporting.

*Note - we've excluded the $6M in legal budget included in RWF-001's previous budget request*

![image|690x288, 100%](upload://uczFcw5zhDqeqpmMhgBk02k1ccD.png)

We plan to increase the permanent team headcount by three to support RWA activities and the formation of ProtectorDAOs and hire two temporary interns for the Summer (1 MBA and 1 Undergraduate). Please see below for a summary of the core responsibilities of the full-time and intern roles:

**Structured Credit:**

- Review existing RWA collateral, determine if risk parameters are appropriate, recommend changes to MKR holders if necessary
- Lead monitoring and report creation for existing RWA vaults
- Commercial risk assessments for community-approved RWA collaterals as needed, including but not limited to sponsor or arranger risk, credit risk, concentration risk, servicing risk, etc.
- Collaborate with the community regarding how the RWA Council should oversee MetaDAOs - design constraints in collaboration with ALM contributors to ensure ample liquidity under significant market stress

**Legal Counsel**

- Legal assessments for community-approved RWA collaterals as needed:
- Review of the legal structures
- Review of the resolution, wording and workflow
- Review of the agreement between entities and service providers
- Writeups of Legal Structure and Governance Appropriateness Verification
- Other open legal review questions identified along the way
- Review of the commercial structure: flow of funds, leverage profile, credit enhancement, servicing mechanics, scaling/ramp-up/utilization structure, reps/warranties/covenants

**RWA Monitoring & Reporting**

- Creation of custom dashboards and reports for existing and new RWA deals
- Continuous maintenance and updates for RWA dashboards and reports
- Assessment of RWA credit quality and issuer health via fundamental and relative value analysis
- Periodic due diligence on RWA counterparties and ecosystem participants
- Proactive monitoring of financial markets and industry trends affecting RWA exposure
- Coordination with MakerDAO partners to develop and support innovative on-chain data access and input processes

- Regular communication and engagement with the MakerDAO community regarding RWA exposure

**Intern:**

- Analyze the protocol's core business from a first-principles approach, and build an investment and capital allocation prioritization framework to help guide protocol capital allocation decisions.
- Assist with ALM modeling and liquidity analysis in order to optimize DAI's stability and the protocol's income generation.
- Research quantitative and qualitative metrics for DAI and how to best position DAI in the marketplace to maximize organic DAI growth.

### Business Case for Investment

Hiring structured credit and transaction law experts will be critical to the successful launch of the ProtectorDAOs and ensuring continuity in onboarding RWA collateral in the interim, which now makes up >75% of protocol revenue. With the current pipeline of RWA deals, it is reasonable to assume that **>90% of protocol revenue** will be generated by RWA collaterals in the next three to six months.

The DAO also has a gap in RWA vault monitoring and reporting, which we seek to address with this expanded budget. Doing so will bring more transparency and trust to Dai holders, the Maker community, the crypto industry, legislators, and regulators worldwide. We endeavor to leverage the transparent and immutable nature of the blockchain to create the gold standard for RWA reporting.

Hiring Summer Interns will enable the DAO to source and trial talent on a cost-controlled and temporary basis. Many have joined the DAO starting on a part-time basis to gain comfort and ensure mutual fit with the DAO before committing to the project on a full-time basis, myself included.

Building relationships with top Universities will enable the DAO to source talent better. In 2022, SF sourced intern talent from Harvard Business School and UPenn (Wharton). We believe these individuals can add tremendous value to the DAO, even during the limited time with us on a full-time basis. If the trials are successful, we will endeavor to keep these individuals engaged on a part-time basis.

## Proposal Parameters

- Minimum Feedback Period: 1 Month.
- Minimum Frozen Period: 1 Week.
- Ratification Polls for MIP40c3 subproposals involving a Core Unit Budget Modification will have different requirements to MIP51c2. Instead of binary voting, they must use ranked-choice voting, with the options as follows:

- A: Approve base budget
- B: Approve bear budget
- C: Approve existing budget only (no RWAs/ProctectorDAO work)
- D: Reject budget
- E: Abstain

For this Ratification Poll to conclude successfully and for the contained proposal(s) to move to Accepted status, each of the following conditions must be true:

- A, B, or C vote-weight must exceed D vote-weight when the poll closes.
- Winning vote-weight must exceed the Minimum Positive Participation value of 10,000 MKR when the poll closes.

Please make sure to rank all of the options during the vote, specifically for approving a budget request. Also, make sure to rank the option to approve the existing budget.
