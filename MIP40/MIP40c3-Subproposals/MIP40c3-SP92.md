# MIP40c3-SP92: Modify Risk Core Unit Budget (RISK-001)

## Preamble

```
MIP40c3-SP#: 92
Author(s): Primoz Kordez (@Primoz)
Contributors: @rema @monet-supply
Tags: core-unit-budget, risk-001
Status: RFC
Date Applied: 2023-02-08
Date Ratified:
Budget Start Date: 2023-03-01
Budget End Date: 2024-02-29
Forum URL: https://forum.makerdao.com/t/mip40c3-sp92-modify-risk-core-unit-budget-risk-001/19741
Ratification Poll URL:
```

## Sentence Summary

MIP40c3-SP92 renews the Risk Core Unit (RISK-001) budget from March 1, 2023, through February 29, 2024.

## Paragraph Summary

MIP40c3-SP92 renews the Risk Core Unit (RISK-001) budget from March 1, 2023, through February 29, 2024. The budget proposal is written in accordance with the latest [MIP40 Budget Process Amendment](https://github.com/makerdao/mips/blob/master/MIP4/MIP4c2-Subproposals/MIP4c2-SP19.md). The Risk Core Unit recognizes the current discussions regarding cutting costs. Hence, in this budget request, two options have been included (i) approve existing budget (business as usual) and (ii) approve reduced budget (-10%).

## Specification

### Motivation

The Risk Core Unit (RISK-001) is responsible for the financial risk management of on-chain collateral in MakerDAO. The Risk Core Unit is a critical component for securing MakerDAO and the Maker Protocol. The Core Unit ensures that the Maker Protocol stays solvent by monitoring, proposing, and managing key risk parameters for onboarding, management, and offboarding activities. There are normally about 17 parameters configured for each collateral type, 11 of which define liquidations. Each parameter needs to be carefully evaluated and proposed by the Risk Core Unit.

This budget represents the resources needed to employ exceptional talent to take on this critical responsibility.

### Core Unit ID

RISK-001

### Budget Implementation

This budget proposal institutes a continuous funding model similar to those proposed by OCU-001, SES-001, DUX-001, and SF-001.

**Smart Contract Implementation**

The budget implementation utilizes DssVest to vest the budget in a linear fashion continuously. The vesting schedule begins March 1, 2023, and extends to February 29, 2024. If no MIP40c3 subproposal to modify the Core Unit's budget has been published for RFC, submitted for FS, or ratified, a new stream will be generated with the same budget specification as the previous budget proposal.

* DAI per month = 230,000 (existing budget) or 207,000 (reduced budget)

* Destination Wallet = 0xDfe08A40054685E205Ed527014899d1EDe49B892

* A total of 2,760,000 DAI (current budget) or 2,484,000 (reduced budget) will be streamed to 0xDfe08A40054685E205Ed527014899d1EDe49B892 starting date 3/1/23 and ending date 2/29/24.

### Budget Breakdown

#### Budget Rationale

The Risk Core Unit recognizes the active discussions by the Maker community regarding budget cuts. We are also aware that some budget requests have recently been rejected and certain approved in a reduced form.

We have strong reasons to believe that the current RISK-001 budget in its current form is appropriate based on our burn rate and compared to budgets of other core protocol Core Units. The Risk Core Unit performs one of the most important protocol functions in MakerDAO while being only the 6th largest Core Unit by budget size.

We have 11 full-time contributors. The monthly burn rate is approximately 89% of the current budget. The rest is accumulated in reserves for contingency purposes. RISK-001 did not have a contingency buffer set up initially, as some other Core Units have (the amount, however, is still below the three-month burn rate in order to return a certain amount of funds as per [MIP40c4](https://mips.makerdao.com/mips/details/MIP40#MIP40c4)).

Note also that this budget request does not apply any changes to the Risk Core Unit MKR allocation as laid out in [MIP40c3-SP25: Risk Core Unit MKR Compensation (RISK-001)](https://forum.makerdao.com/t/mip40c3-sp25-risk-core-unit-mkr-compensation-risk-001/9788). The current MKR vesting schedule yields on average 70 MKR per rewarded contributor per year, or 700 MKR in total per year. The final vest ends in April 2024. We have considered increasing this amount to be more aligned with other Core Units' MKR per FTE allocations. However, we decided to keep it as it is to be more aligned with the current cost-cutting environment at Maker.

In addition, we are aware that Delegates may want all Core Units in MakerDAO to showcase cost-cutting. So even though we believe that our current DAI budget is appropriate and that our MKR vesting amount is relatively low, we have added (in addition to an option to keep the budget as is) an alternative "bear case" DAI budget option with a 10% cut.

If Delegates choose the "bear case" budget option, and a reduced budget is approved, the Risk Core Unit will have to perform a combination of internal compensation cuts and a reduction of both the contingency buffer and grant allocations for new potential talent acquisition.

### Budget Term

The RISK-001 budget will begin on March 1, 2023, and end on February 29, 2024.

### Budget Details

**Compensation & Benefits**

Contributors are paid for their work in EUR, USD, or DAI at the end of every month. This includes payment for full-time contributors and grants to external contributors. The grant system has been a useful tool for attracting new talent to the team. For example, the Risk Core Unit financed Makerburn through a grant program from June 2021 until February 2022. Following this, Makerburn was onboarded as a full-time equivalent team contributor.

**Software Expense**

Software Expense mainly includes vendor payment for our dashboards, such as Maker Risk Dashboard and Makerburn (servers, node providers, website analytics, Nansen, Debank, etc.). Additionally, our data scientists consume various on-chain and CEX financial data for our risk model and other research and analysis purposes.

**Admin Expense**

Admin costs include office rental, administration, accounting, and other services related to company administration.

**Professional Services**

Mainly includes company legal services.

**Travel**

About twice per year, the whole team holds an offsite meeting at the larger Ethereum/DeFi-focused conferences. We have brainstorming sessions and network with the MakerDAO community to gather feedback about our service and discuss Maker related topics.

**Contingency Buffer**

The surplus of monthly accrued funds is held in a contingency buffer which is only to be utilized as an emergency buffer.

### Reporting Transparency

Budget

|Expense Category|Existing 2022-2023 Budget (1 year)|Reduced 2023-2024 Budget (1 year)|Existing Monthly Equivalent|Reduced Monthly Equivalent|
| --- | --- | --- | --- | --- |
|Compensation & Benefits|$ 2,220,000|$ 1,998,000|$ 185,000|$ 166,500|
|Software Expenses|$ 123,000|$ 123,000|$ 10,250|$ 10,250|
|Admin Expenses|$ 77,400|$ 77,400|$ 6,450|$ 6,450|
|Professional services|$ 33,000|$ 33,000|$ 2,750|$ 2,750|
|Travel|$ 12,500|$ 8,750|$ 1,042|$ 729|
|Contingency|$ 294,100|$ 243,850|$ 24,508|$ 20,321|
|Grand Total|$ 2,760,000|$ 2,484,000|$ 230,000|$ 207,000|

### Increasing Value To Maker Tokenholders

**Maintain Protocol Security**

One of the Risk Core Unit's key responsibilities is to provide risk assessments and risk parameter proposals to assist MakerDAO in the management of a risk mitigated portfolio of collateral backing DAI. It is crucial that MakerDAO continues to maintain high-quality parameter management and collateral onboarding risk evaluations in order to prevent existential threats to the protocol. In 2022, MakerDAO was able to maintain resilience and robustness throughout several high-risk events, such as (i) Flappy Friday, (ii) the Luna/Terra death spiral, (iii) the 3AC bankruptcy contagion, (iv) the Ethereum PoS Merge, and (v) the FTX bankruptcy contagion. To read more about necessary responses made by the Risk Core Unit during these events, refer to the ["Proposals & Signal Request" section in The Risk Core Unit 2022 Year in Review](https://forum.makerdao.com/t/the-risk-core-unit-2022-year-in-review/19372).

A case can be made that maintaining high-quality risk assessments, parameter management, and risk mitigation strategies is even more important during times of significant organizational change, as MakerDAO is currently experiencing as a result of the Endgame plan.

**Operational Transparency**

The Risk Core Unit has posted "Month in Review" updates to the Maker forum since August 2021. All prior "Month in Review" posts are available under the [Month in Review](https://maker.blockanalitica.com/forum-archive/?category=Risk%20Core%20Unit%20Month%20in%20Review) tag in the Risk Core Unit Forum Archive. For a high-level view of operational activities for 2022, refer to [The Risk Core Unit 2022 Year in Review](https://forum.makerdao.com/t/the-risk-core-unit-2022-year-in-review/19372).

The Risk Core Unit will continue to prioritize the reporting of monthly updates going forward. We believe this is a very important activity to increase transparency and trust between Core Units, Delegates, MKR holders, and the broader Maker community.

**The Maker Risk Dashboard**

The [Maker Risk Dashboard v3](https://maker.blockanalitica.com/) has become a critical tool for the Risk Core Unit, other Maker community members, and the broader crypto-asset ecosystem. The Risk Core Unit will continue to develop the open-sourced (both [UI](https://github.com/blockanalitica/maker-ui) and [backend](https://github.com/blockanalitica/maker-api)) Maker Risk Dashboard with industry-standard software development practices. The dashboard will also track all relevant protocol changes over time that will occur as a result of the execution of the Endgame plan.

**Makerburn Dashboard Development**

The Risk Core Unit and @makerburn officially joined forces on a team level in Q1 2022. The [Makerburn](https://makerburn.com/#/) website has become a must-have tool for analyzing MakerDAO performance and other on-chain and off-chain related events.

Going forward, Makerburn will continue to track and support all necessary changes to the Maker Protocol. This will likely include (i) a comprehensive overview of SubDAOs, (ii) other Endgame-specific information, including the tracking of Elixir / LP-tokens, and (iii) more detailed RWA tracking.

**Risk Management for MCD Expansion to Other Blockchains and L2s**

The Risk Core Unit is monitoring the Protocol Engineering Core Unit's development efforts towards the [Multichain Strategy and Roadmap for Maker](https://forum.makerdao.com/t/a-multichain-strategy-and-roadmap-for-maker/8380). Once Maker Teleport and MCD is launched on other blockchain platforms and L2s, new collateral onboarding risk evaluations for Maker collateral will need to be produced. The risk evaluations will likely differ from the framework used for MCD on Ethereum L1. In addition, assessments will require specific knowledge on each respective platform where MCD will be implemented. Hence, appropriate risk frameworks will need to be developed for each respective instance of MCD.

### Roadmap and Objectives

The Objectives and Roadmap section has been purposefully written in an open-ended and flexible manner to account for the fact that certain Endgame milestones are not yet fully defined and set in stone. It is worth noting that the Risk Core Unit is willing and prepared to make necessary adjustments as the Endgame Plan evolves and ossifies.

**Daily Operations**

In general, the list below covers our day-to-day operations:

* Dashboards: maintain and further develop two key dashboards – the Maker Risk Dashboard and Makerburn
* Collateral management: monitoring, parameter adjustments, onboarding and offboarding
* Liquidations: monitor efficiency and improve parameters and introduce new liquidation curves
* Other system parameter coverage: ESM, Surplus Buffer, dsskiln, DSR
* Simulations: liquidations, volatility and slippage, user protection scoring, migrations between vaults, rate sensitivity
* Monitoring of external exposures and DeFi environment: Aave and Compound D3Ms
* Rate proposals as part of MOMC group

**Added Responsibilities As a Result of MIP39c2-SP35: Modifying Risk Core Unit Mandate - RISK-001**

The current Roadmap includes responsibilities that were assigned to RISK-001 by a [refreshed mandate](https://forum.makerdao.com/t/mip39c2-sp35-modifying-risk-core-unit-mandate-risk-001/17749) in October last year. Besides the usual responsibilities mentioned above, the new mandate gives more discretion to RISK-001 in managing the pipeline in terms of prioritization and resources dedicated to collateral management.

The mandate and responsibilities of the Risk Core Unit have increased substantially since the ratification of the Risk Core Unit budget in February 2022. For example, one section of the [Endgame Prelaunch MIP Set](https://vote.makerdao.com/polling/QmTmS5Nf#poll-detail), which passed in October 2022, was [MIP39c2-SP35: Modifying Risk Core Unit Mandate - RISK-001](https://mips.makerdao.com/mips/details/MIP39c2SP35). MIP39c2-SP35 has modified the Risk Core Unit's mandate in several ways. The current roadmap includes these added responsibilities.

1. The Risk Core Unit has discretion in managing the pipeline in terms of prioritization and resources dedicated to both the on-chain and off-chain ecosystem to propose to onboard and offboard assets into or out of the Maker Ecosystem.

2. The Risk Core Unit Facilitator is able to unilaterally, and with no additional process, propose non-standard weekly polls and Executive Votes related to: (i) Decentralized and RWA Collateral management, (ii) Risk parameter changes for Decentralized and RWA Collateral, (iii) Other risk Parameters in the Maker Protocol, (iv) Decentralized and RWA Collateral onboarding, (v) Decentralized and RWA Collateral offboarding, and (vi) other votes and governance actions related to risk, Dai collateral and risk parameters.

**Added Responsibilities Related to Collateral Management Stakeholder Alignment**

Following the CES reorganization, certain collateral management responsibilities have been transferred from the @collateral-core-unit to the Risk Core Unit. The Risk Core Unit is now leading monthly on-chain collateral strategy calls with relevant stakeholders. The Collateral Status Index (CSI) spreadsheet will be updated asynchronously by stakeholders as required.

**Added Responsibilities Related to New MakerDAO Products and Strategies**

Several new product offerings and strategies will come to light as a result of the Endgame plan. The Risk Core Unit will be mandated (and/or are willing) to aid in the development and risk management of some of these products and strategies.

1. The Protocol Owned Vault (POV) and Protocol Owned Vault Emulation (POVE): According to [MIP84: Activate Protocol-Owned Vault Emulation](https://mips.makerdao.com/mips/details/MIP84), if the POVE is implemented prior to the POV, the Risk Core Unit will be mandated with following the pre-defined manual processes to make parameter adjustment proposals as laid out in the MIP. The Risk Core Unit will likely also be responsible for parameter management once a fully automated, smart contract based, Protocol-Owned Vault (POV) is implemented.

2. EtherDai (ETHD): The development of EtherDai ($ETHD) will be a key product offering part of the Endgame Plan. ETHD will be a synthetic asset controlled by MakerDAO that aggregates top liquid staking derivative (LSD) tokens. The Risk Core Unit hopes to assist in the development of ETHD by (i) performing necessary research into the LSD market, (ii) performing risk assessments of new LSD tokens before onboarding them as Maker Collateral, and (iii) by managing relevant parameters related to the ETHD product.

3. The Decentralized Collateral Scope Framework: In 2023, Scope Frameworks will be developed as part of the ongoing Endgame plan. The Risk Core Unit will aim to provide relevant feedback on the language, structure, and formatting of the Decentralized Collateral Scope Framework.

4. DssKiln: The dsskiln module will be utilized when acquiring strategic assets such as stETH. The Risk Core Unit will likely be tasked with parameter management of the dsskiln.

**Credit Scoring**

Finally, apart from our day-to-day work and Endgame preparations and involvement, part of our engineering and data scientist teams are working on a project that should benefit Maker risk and potentially be utilized by subDAOs. We are working on a "credit scoring" tool for Maker borrowers – a ML model that assigns credit scores based on borrower's past behavior and capital held in DeFi. Initially this should give Maker a better understanding of portfolio riskiness derived from a bottom-up metric. Furthermore, a credit scoring of users opens up many additional use cases. For example, high-scoring, loyal, users could have customized, and more relaxed lending conditions since their safeness of vault management can be measured in detail. This could be either implemented at the Maker Core level or at one of MakerDAO's subDAOs that is willing to cooperate.

**Team Summary**

At present, the Risk Core Unit is composed of three subdivisions, (i) a development team, a data scientist team, and (iii) a risk analyst team. The development team consists of 4 full-time equivalent developers. The developers maintain the MakerDAO Risk Dashboard and the Makerburn website. The data scientists team consists of 2 full-time equivalent data scientists that develop and maintain risk models as well as run simulations (liquidations, research on vault retention, user growth etc.). The risk analyst team consists of 3 full-time equivalent analysts and myself. The analyst team consumes data from both the development and data scientist teams, and covers risk evaluations and all parameter-related community discussions and proposals.

Development team: 4 FTEs
Data Scientists: 2 FTEs
Analysts: 4 FTEs
Operations: 1 FTE

### Multisig Management

This multisig holds the general operational funds of the Risk Core Unit.

```

Signers = 3

Quorum = 2

Signers:

Marko Stemberger - Risk Core Unit Member - @rema

0x9863e876AFADe16C0A710804F52EDEfDC21C79cd

Monetsupply - Risk Core Unit Member - @monet-supply

0xA749c2Ab63580e9c13b34EF6E101987A5FbFD3fE

Primoz Kordez - Risk Core Unit Facilitator - @Primoz

0xfEdbAd389Eb292f25F72a5152f6EC8437a2158B9

```

### Contingency Planning

In case of unforeseen events that might lead to funding issues, we could decide to execute on the following temporary measures:

* Reduce compensations
* Reduce grant allocations for talent acquisition
* Scale down our SaaS subscriptions, although we are fairly limited
* Reduce spending on offsites.

Note that we do not expect the above measures to be necessary since we have a certain buffer in place.

### Unwinding and Defunding

Within one month of the ratification of the offboarding proposal, the Facilitator will submit a plan of approach to the governance forum, documenting the process for winding down the Risk Core Unit. This plan will include line items of the necessary tasks to complete unwinding, a projected timeline, as well as a cost estimation for completion of the wind-down proposal. After the completion of the shutdown, any remaining budget will be returned to the DAO with the following exceptions:

* Any outstanding payments that are owed to external parties and contributors but have not yet been paid.

* The Risk Core Unit and/or its management are involved in active litigation and need to retain a subset of the budget to resolve legal disputes.

After the completion of the aforementioned wind-down, any excess funds (excluding any severance defined in the offboarding proposal) in the Wallet will be returned to the Maker protocol using DssBlow. The ongoing MKR vesting cycle of contributors will be accelerated to the nearest 6-month vest on completion of the wind-down. This means a contributor vesting 10 MKR annually would vest 5 MKR at completion of the wind-down. The above clause overrides the 12-month cliff.

### Proposal Parameters

This MIP40c3 subproposal provides the following budget options, fully described above, for ranked-choice voting:

* A: Approve Existing Budget (Business as usual)
* B: Approve Reduced Budget (-10%)
* D: Reject budget
* E: Abstain
