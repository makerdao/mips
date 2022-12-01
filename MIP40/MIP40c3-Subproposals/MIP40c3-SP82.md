# MIP40c3-SP82: Modify Development & UX Core Unit Budget (DUX-001)

## Preamble

```
MIP40c3-SP#: 82
Author(s): Deniz Yilmaz (@0xdeniz)
Tags: core-unit, cu-dux-001, budget, dai-budget, active
Status: Accepted
Date Applied: 2022-09-02
Date Ratified: 2022-11-28
Budget Start Date: 2023-02-01
Budget End Date: 2024-01-31
Forum URL: https://forum.makerdao.com/t/mip40c3-sp82-development-ux-core-unit-budget-dux-001/17611
Ratification Poll URL: https://vote.makerdao.com/polling/QmdhJVvN
Extra: Winning option was Option 2, NewBase.
```

## Sentence Summary

MIP40c3-SP82 renews the Development & UX Core Unit (DUX-001) budget from February 1st 2023 through January 31st 2024. 

## Paragraph Summary

MIP40c3-SP82 renews the Development & UX Core Unit (DUX-001) budget from February 1st 2023 through January 31st 2024, and is written in accordance with the [latest MIP40 amendment](https://github.com/makerdao/mips/blob/master/MIP4/MIP4c2-Subproposals/MIP4c2-SP19.md). This budget proposal is written in recognition of today's bearish market context and the DAO's intent to cut costs. In this proposal we provide two distinct budget options that both represent a significant (>10%) bottom-line budget reduction for our Core Unit without impairing execution of our mandate. We collectively decided to not include any raises or bonuses in this budget proposal.

## Specification

### Motivation

The Development & UX Core Unit (DUX-001) is one of MakerDAO's engineering Core Units, currently focused on maintaining and improving MakerDAO's governance tooling and infrastructure. The Maker protocol has a unique and bespoke governance system, and the MakerDAO organization is continuously evolving its governance processes and organizational structure.

The DUX Core Unit is committed to maintaining and improving Maker's governance tooling and infrastructure today, *and* working towards evolving Maker governance together with the context and needs of both the Maker protocol and the DAO. This budget proposal replaces our current budget [MIP40c3-SP52](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP52.md) which ends in January 2023. This budget proposal represents the resources our Design & Development product team needs to execute our mandate and support other operational Core Units (e.g., GovAlpha, SES, DIN) with technical execution power. 

As a team we acknowledge the harsh market conditions and broader context of MakerDAO, and therefore optimized for cutting costs without impairing our team's efficacy. After a full year of operating as a Core Unit we have a good understanding of our software expenses and team needs, which is reflected in a more fine-tuned budget and fewer 'buffers'. In addition we have collectively decided to **NOT** add any compensation raises and/or bonuses to this budget proposal as a gesture of good faith to the Maker community. As a Facilitator this puts a smile on my face as it's telling for our team dynamic and commitment to the Maker project. 

This budget proposal provides two distinct budget options, fully elaborated in this proposal:

- ’NewBase’ (~86% of existing budget)
- ’NewBear’ (~76% of existing budget)

The only difference is the optionality of hiring one additional full-time software engineer sometime in 2023. At this point we're convinced that we could very effectively use an additional software engineer towards executing our mandate, but this decision is to be made by MKR token holders.

### Core Unit ID

DUX-001

### Budget Implementation

The ratified budget option will be implemented through a continuous funding model, developed by the SES Core Unit. The model combines smart contract automation and manual auditing functions to securely and efficiently implement the budget. Refer to the diagram below for a simplified overview—a more elaborate description of the process is provided below.

![schematic overview of budget implementation (unchanged)|690x375](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP82/schematic.png)

#### Multisig Wallets

The following multisigs are involved:

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multisig, composed of 1-out-of-2 role-based multisigs as signers. The Auditor Wallet will have two roles defined for its signers: Auditors and Accountants.
   
    The Accountant Role multisig will have 2 signers---both SES permanent team contributors. The Auditor Role Multisig will also have two signers, also both SES permanent team contributors. SES-001 will conduct the monthly auditing process as described in the Monthly Top-up Cycle, increasing transparency of the auditing process for the community.
   
    The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multisig wallet, ensuring control over these funds and acting as a backup.
   
    This multisig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet.

2. **The Operational Wallet** -- One wallet for DUX operational expenses. This is a 3-out-of-6 multisig controlled by DUX. Signers include the Facilitator, the team lead, and the other DUX team members.

#### Monthly Budget Statement

Within the first five days of each month, DUX will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended.
2. **Budget Forecast** - A forecast of the DAI amount required to maintain a 3-month operational runway for the team based on the latest available information.
3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transactions**
   - The required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish the 3-month runway as indicated in the Budget Forecast section.
   - Any excess DAI amount above the 3-month forecast in the Operational Wallet that will be returned to the Auditor Wallet.

The Monthly Budget Statements can be found in **[this GitHub repository](https://github.com/makerdao-dux/transparency-reporting)**.

> 💡 DUX Core Unit is one of the first teams that was onboarded to the [Transparency Dashboard](https://expenses.makerdao.network/) (built by SES) where our financial reporting will be readily available.

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, DUX submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.

2. **Transaction Requests Submission** -- In parallel, DUX submits the necessary transaction requests for the Auditor Wallet signers to sign:
   
   - DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast 3-month runway. Only applies if the Operational Wallet balance is below this forecast.

3. **Returning Excess Funds** – DUX creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   
   - Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet.

4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the DUX DssVest contract, replenishing the available funds in the Auditor Wallet.

5. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by DUX to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings.
   
    A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the DUX’s transparency reporting repository on Github.

6. **Transaction Approvals** – Upon acceptance of the Monthy Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet.

7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the **[DssBlow contract described here](https://github.com/Lollike/dss-blow)**, will return the excess DAI directly to the Surplus Buffer.
   
    As such, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Implementation Steps

The budget implementation utilizes DssVest to continuously vest the budget in a linear fashion. The vesting schedule begins February 1, 2023 and extends to January 30, 2024.

- DAI per month = $104,585 ('NewBase' budget) or $89,168. ('NewBear' budget) or $153,142 (existing budget)
- Destination Wallet = eth:0x5A994D8428CCEbCC153863CCdA9D2Be6352f89ad (DUX auditor wallet)

No additional governance transactions are needed to enable the transition from MIP40c3-SP52 to the new MIP40c3-SP82.

The last top-up transaction from the protocol to the Auditor Wallet according to MIP40c3-SP52 is expected to happen throughout the month of January 2023, after acceptance of the December budget statement by the auditors.

### Budget Breakdown

This budget proposal is optimized for reducing our existing budget based on actual needs, without impairing execution of our mandate. 

#### Budget Details

This section describes the Expense Categories that comprise the budget and how their monthly amount was determined. Note that we're removing a few existing expense categories from our budget all-together as a means of cost-cutting and further simplification. 

**Compensation and Benefits:** Our team's contributors are paid for their work as independent contractors in DAI, USD, and/or EUR. This expense category does NOT include temporary contracting work—it solely exists to compensate the members of the Core Unit. The DAI amount is based on the salaries we need to cover—this budget proposal offers two budget options which are differentiated by this expense category (more specifically, the inclusion or exclusion of one full-time hire). Details below:

- **'NewBase’ Budget Option:** We include optionality to hire one additional full-time software engineer for when the context is right (e.g., our team takes on an additional product, opportunity for a fruitful hire arises). We provide optionality for one of our engineers to switch back to 1 FTE from 0.6 FTE. Lastly we cut some unused spending room from the existing budget.
- **'NewBear’ Budget Option:** No new hires as long as this budget is active. We provide optionality for one of our engineers to switch back to 1 FTE from 0.6 FTE. Lastly, we cut some unused spending room from the existing budget.

Note that both budget options do NOT include any raises or bonuses to contributor compensation, as a deliberate gesture of good faith to the Maker community.

**Travel and Entertainment:** Our team works fully remote but aims to do three off-sites a year, centered around a relevant conference. I believe the off-sites are critical to our functioning and we use the time for team bonding, workshops related to our working process and roadmap, and connecting with others from the industry (both internal and external to MakerDAO). This expense category covers travel, accommodation, event tickets and on-site expenses. The DAI amount is based on the estimated cost of three team off-sites per year.

**Software Expense:** This expense category covers the costs of our SaaS software subscriptions (ie. software we use to coordinate our work) and infrastructure providers (ie. servers, node providers) that our products rely on. The DAI amount is based on our estimated monthly software & infra expenses after a year of running as a CU, with an additional 30% growth buffer to account for increased complexity and traffic over the next 12 months.  

**Gas Expense:** This expense category is reserved for any on-chain gas costs related to our software testing and L2 voting we subsidize for our product's users. The DAI amount is based on a rough estimate. 

**Admin Expense:** This expense category is solely reserved for the costs incurred by our team's financial services provider, providing a crypto offramp for the various expense categories covered. The DAI amount is based on the spending pattern of the past 12 months of running as a Core Unit, and the fees set in the active contract with our financial services provider.

**Professional Services:** This expense category is used to procure external services when our context demands it. Examples are hosting and 24/7 monitoring of our products by the TechOps Core Unit, one-off code audits (if deemed necessary), training (if deemed necessary), and hiring specialized engineers/designers (if deemed necessary). The DAI amount is based on an ongoing paid collaboration with the TechOps Core Unit (4500 DAI/mo) and an added 3000 DAI/mo allocation for other external services that will only be spent if necessary.

**Contingency Buffer:** We've decided to move away from a general-purpose 10% buffer in acknowledgement to the community's scrutiny of this practice. Instead, we're reducing this budget from ~20k DAI to 3k DAI and earmarking this buffer as an 'emergency legal fund' that will *only* be used in case one or more of our team's contributors are in need of legal defence as a result of their involvement with MakerDAO. As we are building frontends for end-users *and* as (unfortunately) the DAO currently has **zero** legal risk mitigation (e.g., a [self-insurance fund](https://forum.makerdao.com/t/self-insurance-fund-update/15943)) in place for its workforce, I deem this 'insurance-like' budget component as an absolute necessity for our team. 

### Reporting Transparency

| Expense Category          | Existing budget (1y) | New budget (1y)                                    | New budget (monthly eq.)                        |
| ------------------------- | -------------------- | -------------------------------------------------- | ----------------------------------------------- |
| Compensation and Benefits | $1,100,000           | _NewBase:_ $1,255,020 <br/>_NewBear:_ $1,070,016 | _NewBase:_ $104,585<br/>_NewBear:_ $89,168 |
| Travel and Entertainment  | $54,000              | $54,000                                            | $4,500                                          |
| Software Expense          | $108,000             | $86,400                                            | $7,200                                          |
| Gas Expense               | $12,000              | $12,000                                            | $1,000                                          |
| Admin Expense             | $78,000              | $78,000                                            | $6,500                                          |
| Professional Services     | $180,000             | $90,000                                            | $7,500                                          |
| Contingency Buffer        | $252,300             | $36,000                                            | $3,000                                          |
| [old] Legal Services      | $66,000              | $0                                                 | $0                                              |
| [old] One time costs      | $21,000              | $0                                                 | $0                                              |

Total annual budget:

- Existing: $1,871,300
- NewBase: $1,611,420 **(~86% of existing)**
- NewBear: $1,426,416 **(~76% of existing)**

### Budget Term

This renewed budget for DUX-001 will begin on February 1st 2023 and end 12 months after (as per the MIP40c3 standard) on January 31st 2024.

### Increasing Value to Maker Tokenholders

Maker's unique and bespoke governance system is a moat that contributed to Maker's resilience over the past years, and will be even more crucial in the years to come. The DUX Core Unit is committed to facilitating the safe and effective use of Maker's governance system through maintaining its related off-chain tooling & infrastructure (including end-user frontends). More importantly, we are committed to evolving the aforementioned tooling and infrastructure alongside the changing wants and needs of MakerDAO and the protocol.

These wants and needs tend to change over time as the DAO grows and evolves into more complex structures, as the wider context of the Maker Protocol changes, and as the design space of decentralized governance expands. Through staying attuned with MakerDAO governance and a close collaboration with the GovAlpha Core Unit, we aim to pave the way by developing features and improvements that are wanted and needed. In addition the Facilitator of the DUX team is passionate and committed to contributing to MakerDAOs organisational operations in collaboration with other Mandated Actors, such as those from SES, GovAlpha, and GovComms.

Lastly, the DUX Core Unit is first and foremost a product team with R&D capabilities and a deep understanding of MakerDAO and the Maker Protocol. Our current focus is governance tooling and infrastructure, but we would be able to switch focus partially or entirely onto other products/domains if desired. This would be based on a decision by MakerDAO governance and/or in consultation with other Core Units (e.g., SES, GovAlpha). It would warrant a change to our Core Unit's mandate through the respective MIP.

### Roadmap and Objectives

Our team uses quarterly product roadmaps to allow for accountability whilst preserving flexibility. Every three months we publish a 'Roadmap Spotlight' ([example](https://forum.makerdao.com/t/dux-roadmap-spotlight-q3-2022/16372/)), which is an elaborate forum post and pre-recorded walkthrough to wrap up the past quarter and commit to a focus for the next quarter. In addition we maintain [a public backlog](https://makergovernance.canny.io/) of ideas and projects, which is where prioritisation happens. The top-priority work items are copied over into our sprint board and further broken down for implementation. 

Here's a rough list of current roadmap priorities as per our [backlog](https://makergovernance.canny.io/):

- Launch gasless poll voting (leveraging an Ethereum L2 chain).
- Research and develop emergency governance frontend (mitigating reliance on web2 infrastructure).
- Integrate Governance Dashboard (built by @hernandoagf :trophy: ) into Governance Portal.
- Prepare Governance Portal for multi-chain spells (in light of Maker's L2 roadmap).
- Explore and implement new governance primitive for prioritisation.
- Make governance metadata data store more resilient and performant.

Lastly, we intend to make our roadmaps available through the DAO Transparency Dashboard which is currently in development by SES Core Unit.

### Team Summary

The current team is composed of 6 contributors, 5.6 FTE in total:

- Facilitator & Product Manager: 1 FTE
- Senior Software Engineer: 3.6 FTE
- Senior Designer & UX Specialist: 1 FTE

In the 'bear' budget option, we will not expand our team besides the optionality of reverting one part-time (0.6 FTE) senior software engineer back to full-time (1 FTE).

In the 'base' budget option we will seek to expand our team by one additional full-time (1 FTE) senior software engineer. In addition we will grant one part-time (0.6 FTE) senior software engineer the optionality to revert back to full-time (1 FTE).

### Contingency Planning

In case of unforeseen events that might lead to funding issues, we could decide to execute on the following temporary measures:

- Scale down our SaaS subscriptions.
- Temporarily halt paid collaborations.
- More aggressive use of caching to reduce resource usage.
- Reduce spending on off-sites.

Note that we do not expect the above measures to be necessary since we have a buffer in place for software expenses and have a budget buffer in place for legal services. 

### Unwinding and Defunding

Within one month of the ratification of the offboarding proposal, the Facilitator will submit a plan of approach to the governance forum, documenting the process for winding down the DUX Core Unit. This plan will include line items of the necessary tasks to complete unwinding, a projected timeline, as well as a cost estimate for completion of the wind-down proposal.

After the completion of the aforementioned wind-down, any excess funds (excluding any severance defined in the offboarding proposal) in the Operational Wallet will be returned to the Auditor Wallet, and from there will be returned to the Maker protocol using DssBlow. The ongoing MKR vesting cycle of contributors will be accelerated to the nearest 6-month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at completion of the wind-down. The above clause overrides the 12-month cliff.

### Proposal Parameters

This MIP40c3 subproposal provides the following budget options, fully described above, for ranked-choice voting:

- A: Approve existing budget only (Business as usual)
- B: Approve NewBase budget
- C: Approve NewBear budget
- D: Reject budget
- E: Abstain

## Attachments

* [DUX CU Onboarding MIP](https://mips.makerdao.com/mips/details/MIP39c2SP18)
* [DUX CU Facilitator Onboarding MIP](https://mips.makerdao.com/mips/details/MIP41c4SP32)
* [DUX CU Launch Pod Session](https://forum.makerdao.com/t/core-unit-launch-pod-sessions-session-17-development-and-ux-core-unit/10297)
* [Latest DUX CU Budget MIP](https://mips.makerdao.com/mips/details/MIP40c3SP52#paragraph-summary)
* [Latest DUX CU Monthly Update post](https://forum.makerdao.com/t/dux-monthly-update-july-2022/17005)
* [Latest DUX CU Roadmap Spotlight post](https://forum.makerdao.com/t/dux-roadmap-spotlight-q3-2022/16372)

