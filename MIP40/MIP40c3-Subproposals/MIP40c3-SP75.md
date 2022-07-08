# MIP40c3-SP75: Modify Oracle Core Unit Budget, ORA-001

## Preamble

```
MIP40c3-SP#: 75
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Tags: core-unit, cu-ora-001, budget
Status: RFC
Date Applied: 2022-07-06
Date Ratified: n/a
Budget Start Date: 2022-07-01
Budget End Date: 2023-06-30
```

## Sentence Summary

MIP40c3-SP75 renews the Oracle Core Unit ORA-001 budget from July 1 2022 through June 30 2023. 

## Paragraph Summary

MIP40c3-SP75 renews the Oracle Core Unit ORA-001 budget from July 1 2022 through June 30 2023.

## Specification

## Motivation

The Oracle Core Unit (OCU) is responsible for R&D of the Oracle Protocol. Oracles are a critical component of securing the Maker Protocol. The Oracles protect the solvency of the Maker Protocol by ensuring Dai in circulation are sufficiently collateralized, enabling liquidations when the value of collateral declines. Oracles act as the consensus mechanism for the Maker Teleport bridges which are critical for scaling Dai in a multi-chain world. The Oracle Core Unit is essential to ensure the Oracle Protocol can evolve in a secure and scalable manner to meet the ever-growing demands of the Maker Protocol. This budget represents the resources needed to employ the exceptional talent to take on this critical responsibility.

## Core Unit ID

ORA-001

## Budget Implementation

This budget proposal institutes a continuous funding model similar to those proposed by RISK-001, SES-001, DUX-001, and SF-001. At the end of the proposed term, monthly payment amounts from this proposal will be rolled over unless modified by a MIP40c3 - Modify Core Unit Budget Subproposal.

## Smart Contract Implementation

The budget implementation utilizes DssVest to continuously vest the budget in a linear fashion. The vesting schedule begins July 1, 2022 and extends to June 30, 2023. If no MIP40c3 to modify the Core Unit’s budget has been published for RFC, submitted for FS, or ratified, a new stream will be generated with the same budget specification as the previous budget proposal.

- DAI per month = 379,547.90 (proposed budget) or 421,760.42 (previous budget)
- Destination Wallet = eth:0x2d09B7b95f3F312ba6dDfB77bA6971786c5b50Cf
- A total of 4,554,575 DAI (proposed budget) or 5,061,125 DAI (previous budget) will be streamed to eth:0x2d09B7b95f3F312ba6dDfB77bA6971786c5b50Cf starting date 7/1/22 and ending date 6/30/23.

## Budget Breakdown

## Budget Cost-Cutting

The Oracle Core Unit recognises the active discussions being had in the community around cutting costs. Therefore the Oracle Core Unit is proactively reducing its budget by 10%. 

There are however several parallel initiatives in the community for slashing core unit budgets. It is unclear at this point in time whether these cuts will target specific core units, specific initiatives, or just a universal haircut across all core units. The Oracle Core Unit needs to balance being a good citizen and proactively reducing its budget with the real risk that further cost cutting initiatives could place it in ‘double jeopardy’. **Therefore, the Oracle Core Unit is adding the clause to this budget renewal that should the proposed reduced budget be approved that the Oracle Core Unit is exempt from further budget reductions for 12 months. Should voters find that compromise unfavourable, they are able to vote for the previous year’s budget and reduce it through the DAO-wide cost-cutting initiatives which are underway.**

## Reporting Transparency

**Budget**

| Expense Category | 2021-2022 Budget (1 year) | 2022-2023 Budget (1 year) | Monthly Equivalent |
| --- | --- | --- | --- |
| Compensation & Benefits | $3,347,500 | $2,250,575 | 187,547.95 |
| Recruitment / Referral / Sign-On Bonus | $300,000 | $250,000 | $20,833.33 |
| Travel & Entertainment | $150,000 | $180,000 | $15,000 |
| Headcount Expense Subtotal | $3,797,000 | $2,680,575 | $223,381.29 |
|  |  |  |  |
| Feed Stipend | $360,000 | $954,000 | $79,500 |
| Tech-Ops CU 24/7 Monitoring | $150,000 | $216,000 | $18,000 |
| Legal | $100,000 | $150,000 | $12,500 |
| Audits | $200,000 | $100,000 | $8333 |
| Marketing | $100,000 | $75,000 | $6250 |
| Training | 0 | $30,000 | $2500 |
| Hardware Expense | $30,000 | $35,000 | $2916.67 |
| Software Expense | $35,000 | $15,000 | $1250 |
| Deployment Costs | $50,000 | $10,000 | $833.33 |
| Non-Headcount Expenses Subtotal | $1,025,000 | $1,585,000 | $132,083.33 |
|  |  |  |  |
| Contingency | $238,625 | $289,000 | $24,083.33 |
|  |  |  |  |
| Grand Total | $5,061,125 | $4,554,575 | $379,547.9 |

## Budget Term

The OCU-001 budget will begin on July 1st, 2022 and end on June 30, 2023.

## Budget Details

**Compensation & Benefits**

Contributors are paid for their work in DAI, USD or Euros every two weeks. This encompasses full time and part time contributors as well as research grants for external researchers. Low-risk work items may also be contracted out to external teams or agencies.

**Recruitment / Referral / Sign-on Bonus**

These are acquisition costs for onboarding talent to the Core Unit. This includes posting job listings on job boards, newsletters, and podcasts. External recruiters generally charge sizable recruitment fees proportional to a candidates annual salary. These are significant especially for senior candidates. Signing bonuses can be leveraged to convince candidates whose salary requirements are outside of the designated budget to join the Core Unit without increasing the Core Units long term expenditures.

**Travel**

This applies to transportation, lodging, nourishment, professional venues such as conference rooms, team activities, and conference passes.

Frequent team offsites are critical for remote organisations as they foster interpersonal relationships and generate alignment and trust. These are vital qualities in a companies culture that improve collaboration, productivity, and retention. They also have a habit of teasing out critical discussions and knowledge sharing via informal and impromptu conversations.

Conferences are hot spots for interfacing with partners and clients in a much more personal (read effective) manner. They also are ideal for scouting potential new talent as well as staying on top of industry developments, trends, and competition. Speaking at these events, participating in panels, and hosting workshops are also ideal methods to reinforce Maker’s reputation as a thought leader 

**Feed Stipends**

All Feeds are compensated with a Feed Stipend of 1000 Dai per month. There are currently 26 total Feeds; 12 Light Feeds, and 14 Dark Feeds. We expect to continue onboarding new Feeds in the coming year to meet the growing security requirements of the Maker Protocol as it scales.

**Tech-Ops Core Unit - Production Coverage**
Tech-Ops Core Unit provides excellent coverage in monitoring production systems 24/7 365 across a multitude of timezones.

**Legal**
Coverage for legal costs including entity creation, legal officer/company insurance, regulatory filings, annual fees, as well as financial reporting.

**Audits**

As the Oracle Protocol evolves, audits are an indispensable part of the QA process. In many cases, multiples audits may be required for a single release due to the sensitive role that Oracles play in securing the Maker Protocol. Audits vary in price depending on the code size and complexity, as well as the prestige of the auditor. During bull markets especially, auditors are booked months in advance and charge heavy premiums for fast-tracking. The Oracle Core Unit will always prioritise the security of the Maker Protocol over agility.

**Marketing**

The marketing budget is for building a brand around the Oracle Protocol. As we won’t have an in-house designer initially, some of the budget will be used to outsource design work. Conference sponsorships, ad campaigns with select partners, and user incentives also fall under this umbrella.

**Training**
Training is a critical component for a healthy core unit. This includes hard (technical) and soft skill training for individual contributors as well as executive training for management.
****

**Hardware Expense**

Hardware expenses pay for servers which run testing and staging environments, as well as monitoring for testing and production systems.

**Software Expense**

Software expenses encompass quite a broad range of services. These include:

- administrative applications like email, documents, and cloud storage
- monitoring software
- API services
- productivity applications like Notion and Shortcut
- staging and production logging services

**Deployment Costs**

Deployment costs are used for smart contract deployment and configuration, as well as multi-sig administration. 

## Roadmap and Objectives

- Research and Publish Oracle Assessments to Advise the DAO on collateral onboarding
- Implement and deploy Oracles to support collateral onboarding
- Deploy Oracles on L2 & EVM-based L1
- Maker Teleport Oracle to support MakerDAO L2 Initiatives
  - Arbitrum
  - Optimism
  - StarkNet
- Optimize Oracle Gas Costs
- Next-gen Oracle client (Ghost)
- Extend Feed Validator Set
- Re-Architecture Oracle Security Module smart contract
- Oracle Dashboard
- Next-gen Oracle relayer client
- Advanced Oracle Monitoring

## Increase Value to Maker Tokenholders

**Facilitate Maker Protocol and Dai expansion to other blockchains including L2**

By expanding the responsibility of the Feeds to not just poll prices but monitor other blockchains, the Maker Oracles are able to power the consensus engine for the Maker Teleport initiative. This will enable Dai Fast-Withdrawals between Ethereum and L2 chains such as Optimism, Arbitrum, and StarkNet. This is the first step to expanding Dai’s hegemony across all chains.

Furthermore, the Oracle Core Unit is building out L2 Oracles which will be critical infrastructure for the deployment of the Maker Protocol on other chains.

**Increase Protocol Security**

One of the Oracle Core Unit’s main responsibilities is to protect the Maker Protocol from Oracle attacks. Oracle attacks are primarily an existential threat to the protocol as they enable the attacker to mint unbacked Dai, leading to losses for the protocol and in the worst case insolvency. They can also cause the protocol to liquidate it’s entire crypto collateral portfolio which could cause a liquidity crisis and realize losses for both Vault owners, Dai holders, and the Maker protocol.

Therefore it is imperative that the Oracle Core Unit spends a significant amount of its resources on bolstering its security. This is done in a defense by layers approach. New high quality Feeds are added to increase the quality and size of the validator set. Oracle Data Models are routinely refactored to more accurately profile the liquidity properties of their reference asset. Oracle stack components and infrastructure are constantly being rearchitected to patch bugs, simplify code, and remove external dependencies. Minor releases are extensively tested with end-to-end testing in advanced staging environments which simulate real world conditions. Major releases are audited by both internal and external parties for quality and safety.

This is an area where no news is good news and the Oracle Core Unit’s track record speaks for itself. 

**Optimize Oracle expenditures**

The Oracle Core Unit is painfully aware of the gas costs of the Oracles being linearly correlated with the Ethereum gas cost base fee. With peaks of over 7000 gwei within the past year, the Oracle Core Unit has spent an enormous of time on optimizing the Oracles to reduce gas usage.

Past and Current Initiatives:

- fine tuning quorum
- fine tuning price spread
- fine tuning expiration time
- offboarding unprofitable collateral types
- novel signing mechanisms research
- data compression research (multi-asset medianizer)
- reducing external contract calls (medianizer-OSM hybrid)
- Oracle Security Module rearchitecture (OSMv2)
- MegaPoker ‘smart-poke’
- L2 optimized Oracle smart contracts (calldata compression)

 **Oracle as a Service (OaaS) business**

The Oracle Core Unit is building an Oracle as a Service product to create an Oracle business on behalf of the DAO. This Oracle business will bolster the reputation of MakerDAO as a secure and reliable high-value service provider, help subsidize the costs incurred by Oracles, and potentially generate profit. Oracles as a service can also be used as leverage for partnerships and integrations. For example MakerDAO may be more willing to lend Dai to a secondary lender if they utilize Maker Oracles as it minimizes MakerDAO’s risk exposure to external Oracle providers.

## Headcount Planning / Team Summary

The Oracle Core Unit made the deliberate decision to pause hiring during the peak of the bull-run as candidate salary expectations were unreasonably high and ultimately unsustainable. Now that market sentiment has mean-reverted the Oracle Core Unit plans to aggressively pursue hiring for key roles. Due to the nature of finding exceptional talent, projections for modeling number of FTEs over time are not meaningful and therefore not provided.

Current: 6 FTE + 1 PT

Target: 15 FTE + 2 PT

**Current Roles:**

Facilitator

Engineering Lead

3x Senior Backend Engineer

Backend Engineer

Researcher (PT)

**Open Roles**

**varying seniority*

Operations Manager

Risk / Research Lead

Researcher

Governance and Community Liaison

Smart Contract Engineer

Fullstack Engineer

Backend Engineer

DevOps Engineer

Marketing Associate

### **Headcount Strategy**

The expansion with open roles is meant to professionalize the Oracle Core Unit. Currently the Oracle Core Unit has strong specialised engineering talent. This engineering core needs to be supplemented with key skills to create supporting products and infrastructure that reinforce the transparency, accessibility, reliability, and marketability of the Oracle service. 

**Operations Manager**

Currently all operations related functions are being handled by the Facilitator including accounting, payments, expenses, organizing offsite logistics, recruiting, interviews, ect. As the organisation scales these responsibilities will amplify and take up more and more of the Facilitator’s bandwidth. An operations manager will free up the Facilitator to work on higher impact items such as business initiatives and improving internal processes.

**Head of Risk / Research & Researcher**

Key here is that the risk and research function is split out from the engineering side. The investment of resources into a dedicated research arm ensures MakerDAO’s Oracles remain on the cutting-edge while freeing up engineers to focus on implementation. Focus areas for research will include scalability, security, decentralisation, data compression, and data integrity.

**GovComm Liaison**

The governance and community liaison is a role dedicated to increasing transparency and giving Maker Governance more insight into the progress made by the Core Unit on deliverables. They will serve as the key interface point between the Core Unit and Maker Governance acting as a two-way bridge. This will free up leadership to focus on Core Unit initiatives.

**Fullstack Engineer**

Recent forays into community driven prototypes have produced notable results ([https://makeroracles.xyz/](https://makeroracles.xyz/)). In a bid to increase transparency and awareness of the Oracles, an internally driven effort for an Oracle Dashboard by a dedicated fullstack engineer is planned.

**Backend Engineer**

Reinforcement of the backend team will create redundancy in several key areas, as well as free up senior engineers from trivial tasks.  

**DevOps Engineer**

Acquiring an internal DevOps engineer will enable the Oracle Core Unit to begin to wean itself off of its dependency on Tech-Ops for production monitoring. This will enable more focused attention on the needs of the Core Unit, as well as a lower latency communication loop with respect to issues / emergencies. It will also support the transition of the Maker Protocol to go multi-chain as Oracles will be required to expand to every chain Maker wants to support.

**Marketing Associate**

A marketing role is necessary to engage with the crypto ecosystem about the exceptional reliability and security properties of the Maker Oracles. This marketing would aim to onboard new Oracle consumers and Feeds.

## MKR Vesting

The Oracle Core Unit uses a linear interpolation model which utilizes contributor compensation to calculate the amount of MKR each individual will vest.

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
| Annual MKR Amount         | Initial Annual Incentive Value (USD) / MKR/USD lock-in Price |
| Vesting Period        | 4 years                  |
| Cliff Vest            | 12 months                |
| Vesting Schedule      | After cliff has expired, half of the annual MKR amount vests every 6 months. |
| Manual Repricing      | yes                      |
| Auto-Renewal          | yes                      |
| Estimated Max Total team MKR After 1 Year (15 FTE + 2 PT)*  |  1100 |
| Estimated Max Total team MKR After 4 Years (15 FTE + 2 PT)* |  4400    |

*MKR amounts can change if a contributor's lock-in is reset via manual repricing. Resets will be reported to the DAO on a quarterly basis.
## Multi-Sig Management

The Oracle Core Unit has four Multisig wallets.

1. [Oracle Core Unit Operations Multisig](https://gnosis-safe.io/app/eth:0x2d09B7b95f3F312ba6dDfB77bA6971786c5b50Cf/balances)
2. [Oracle Core Unit Emergency Multisig](https://gnosis-safe.io/app/eth:0x53CCAA8E3beF14254041500aCC3f1D4edb5B6D24/balances)
3. [Oracle Core Unit Gas Multisig](https://gnosis-safe.io/app/eth:0x2B6180b413511ce6e3DA967Ec503b2Cc19B78Db6/balances)
4. [Oracle Core Unit Gas Emergency Multisig](https://gnosis-safe.io/app/eth:0x1A5B692029b157df517b7d21a32c8490b8692b0f/balances)

**Oracle Core Unit Operations Multsig**

This multisig holds the general operational funds of the Oracle Core Unit.

```
Signers = 3
Quorum = 2

Signers:
Nik - Oracle Core Unit Faciliator - @NikKunkel
0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c

Marc-Andre - Oracle Core Unit Engineering Lead - @marcandu
0xf63EfEE2A663b04cB5a09De6E3EB910d8442131D

Derek - Protocol Engineering Facilitator - @Derek
0xe3a76328edE8Fd61d5fA7840b878Dd69cdfD67d8

```

Current Balance: 1,253,473.75*  (DAI)

Unclaimed vested funds from previous budget: 2,216,771 (DAI)

*some of these funds are earmarked to vendors which have yet to submit invoices

**Oracle Core Unit Emergency Multisig**

This multisig has funding designated exclusively for emergencies. While unforeseen events can occur which broaden the scope of what entails an emergency, the scope is intended to be narrow. 

1. The protocol undergoes emergency shutdown and needs to be redeployed and bootstrapped.
2. A hacker manages to attack the protocol potentially resulting in a loss of assets or mass printing of unbacked Dai.
3. Governance is captured by an objectively malicious actor.

```
Signers = 7
Quorum = 4

Signers:
Nik - Oracle Core Unit Faciliator - @NikKunkel
0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c

Primoz - Risk Core Unit Faciliator - @Primoz
0x5d67d5B1fC7EF4bfF31967bE2D2d7b9323c1521c

Derek - Protocol Engineering Core Unit Facilitator - @Derek
0xe3a76328edE8Fd61d5fA7840b878Dd69cdfD67d8

LongForWisdom - Gov Alpha Core Unit Facilitator - @LongForWisdom
0x66f40F044E0e2F77bB746e3275E82e88dCBA2D69

Nadia - Growth Core Unit Facilitator - @Nadia
0xc8E6c287F6c127AFE5e4CB30bC440607b44c35f8

SebVentures - Real World Finance Core Unit Facilitator - @SebVentures
0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b

Juan - Sustainable Ecosystem Scaling Core Unit Facilitator - @juan
0xFCa6e196c2ad557E64D9397e283C2AFe57344b75
```

Current Balance: $800,000 (DAI)

**Oracle Core Unit Gas Multisig**

This multisig is used exclusively for holding funds designated for Oracle gas expenditures. These costs are variable as gas prices fluctuate on blockchain networks (Ethereum, Optimism, Arbitrum, StarkNet, etc.) and as the number of deployed Oracles increases over time. Gas costs are typically forecast and renewed by the Maker Protocol every three months. Gas prices are unpredictably volatile and funding drawdown can occur rapidly. The Bored Ape Yacht Club APE land sale caused gas prices to temporarily spike as high as 5000 gwei more than 200x the average over the previous month. For this reason, funds budgeted for Oracle gas costs are issued by governance as a lump-sum payment rather than vesting over time. 

A variety of factors have led to an exponential reduction in Oracle gas price expenditures relative to initial projections. These include:

1. gas cost optimizations by the Oracle Core Unit
2. collateral offboarding by Maker Governance
3. Ethereum gas base fee reduction 

The remainder of funds initially allocated by the DAO to cover Oracle gas costs for 3 months at current expenditure rates should now cover the next ~2.5 years. If the base fee were to trend higher, that 1.5 year runway would reduce significantly.

```
Signers = 6
Quorum = 3

Signers:
Nik - Oracle Core Unit Faciliator - @NikKunkel
0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c

Marc-Andre - OCU Engineering Team Lead - @marcandu
0xf63EfEE2A663b04cB5a09De6E3EB910d8442131D

Simon - Tech-Ops Core Unit Co-Facilitator - @simonkp
0xA60C77efe539166F1C4a6cE2512F3cBF451fFbc5

Dumitru Zavrotschi - Tech-Ops Core Unit Co-Facilitator - @dumitru
0xcebd4Fa8c2c6014F2F7924De3Ae617BdD42ca25B

Primoz - Risk Core Unit Facilitator - @Primoz
0x5d67d5B1fC7EF4bfF31967bE2D2d7b9323c1521c

PunchIt Inc. - Protocol Engineering Core Contributor - @cmooney
0xEeF3026eF864C9398c008195E65d16D9cb42a512
```

Current Balance: $1,966,214.12 (DAI), 201.26 ETH

**Oracle Core Unit Gas Emergency Multisig**

These funds are allocated for an emergency scenario where either:

1. the funds in the primary Oracle Core Unit Gas Multisig have been expended
2. the fund in the primary Oracle Core Unit Gas Multisig are unaccessible due to signers being “on a plane, on vacation, asleep, off-the-grid, bus factor, or generally unavailable.

The emergency multisig has a lower signing threshold than the primary gas multisig in order to ensure that funds can be withdrawn on short notice in the event that quorum cannot be achieved in the primary.

```
Signers = 3
Quorum = 2

Signers:
Nik - Oracle Core Unit Faciliator - @NikKunkel
0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c

Marc-Andre - OCU Engineering Team Lead - @marcandu
0xf63EfEE2A663b04cB5a09De6E3EB910d8442131D

Simon - Tech-Ops Core Unit - @simonkp
0xA60C77efe539166F1C4a6cE2512F3cBF451fFbc5
```

Current Balance: $1,805,407 (DAI)

## Contingency Planning

In a super-bear scenario, the Oracle Core Unit could temporarily abandon long-term objectives such as:

- Feed Stipend increases
- Feed validator set expansion
- Customer Oracle development
- Marketing
- Offsites + Conferences
- Research
- Engineering team expansion

Cutting all of the above would reduce expenses to ~2,500,000 DAI annually. The Core Unit could then use its remaining resources to focus on security and reliability. It could operate in this vegetative state for a considerable amount of time (12 months+), though eventually negative externalities stemming from pulling investment from long term initiatives will coagulate and compound. Retention and team morale may also become an issue. Oracle gas optimization efforts may lose ground relative to the increase of gas prices the longer the super bear period continues increasing long-term costs of the DAO.

## Return of Excess Funds

As specified in [MIP4c2-SP19 (’Budget Process Amendment’)]([https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250](https://forum.makerdao.com/t/mip4c2-sp19-mip40-budget-process-amendment/14250)), once every three months, all funds held in the Oracle Core Unit Operations Multisig in excess of three months worth of budget will be returned to the DAO (minus outstanding liabilities). Three months of budget being defined as 1/4 of the allotted annual budget rather than relative to the previous three months actual expenditures.

Note that this exclusively applies to the Operational Multi-Sig. Fund management of the Emergency, Gas, and Gas Emergency multisigs are distinctly exempt and will be handled on a case by case basis.

## Unwinding and Defunding

Within one month of the ratification of the offboarding proposal the Facilitator will submit a proposal to the community documenting the plan for wind-down of the Oracle Core Unit. This plan will include line items of the necessary tasks to complete unwinding, a projected timeline, as well as a cost estimate for completion of the wind-down proposal. After the completion of the shutdown, any remaining budget will be returned to the DAO with the following exceptions:

- Any outstanding payments that are owed to external parties and contributors but have not yet been paid.
- The Oracle Core Unit and/or its management are involved in active litigation and need to retain a subset of the budget to resolve legal disputes.

Oracle Core Unit contributor MKR vesting will be accelerated to the nearest 6 month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at completion of the wind-down. The above clause overrides the 12 month cliff.

## Proposal Parameters

- **Minimum Feedback Period**: 1 Month.
- **Minimum Frozen Period**: 1 Week.
- Ratification Polls for MIP40c3 subproposals involving a Core Unit Budget Modification will have different requirements to MIP51c2. Instead of binary voting, they must use ranked-choice voting, with the options as follows:
    - A: Approve existing budget (2021-2022) (Business as usual)
    - B: Approve proposed budget (2022-2023) (Reduced budget exempt from further cuts for 12 months)
    - C: Reject budget
    - D: Abstain

In order for this Ratification Poll to conclude successfully and the contained proposal(s) move to Accepted status, each of the following conditions must be true:

- `A` or `B` vote-weight must exceed `C` vote-weight when the poll closes.
- Winning vote-weight must exceed the `Minimum Positive Participation` value of 10,000 MKR when the poll closes.
