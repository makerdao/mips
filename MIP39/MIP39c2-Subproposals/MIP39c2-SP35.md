# MIP39c2-SP35: Modifying Risk Core Unit Mandate - RISK-001

## Preamble

```
MIP39c2-SP#: 35
Author(s): @rune
Contributors: @juan, @retro
Status: RFC
Date Proposed: 2022-09-07
Date Ratified: yyyy-mm-dd
Forum URL: https://forum.makerdao.com/t/mip39c2-spxx-modifying-risk-core-unit-mandate-risk-001/17749
```

## Specification

## Motivation

The Risk Core Unit Mandate is modified as a part of the Endgame Plan Approval MIP Set in order to eliminate any possible risk of the collateral onboarding process becoming disrupted or blocked by the removal of the old MIP6 process.

The updated mandate is written with a new approach where the critical element of the mandate that explicitly and directly impacts Facilitator Governance Powers are provided up front. This information is also described as short and succinct as possible in order to make it completely clear what Governance Privileges the Core Unit Facilitator will have with regards to proposing non-standard weekly polls as defined in MIP16.

## Core Unit Name

**Name:** Risk Core Unit
**ID:** RISK-001

## Core Unit Facilitator

Primož Kordež

## Core Unit Mandate

### Mandate as it relates to Facilitator Governance Powers

The Risk Core Unit Mandate makes the Risk Core Unit Facilitator is also able to unilaterally, and with no additional process, propose non-standard weekly polls and Executive Votes related to:
* Decentralized and RWA Collateral management
* Risk parameter changes for Decentralized and RWA Collateral
* Other Risk Parameters in the Maker Protocol
* Decentralized and RWA collateral onboarding
* Decentralized and RWA Collateral offboarding
* Other votes and governance actions related to risk, Dai collateral and risk parameters
* Any other votes and governance actions related to content described in the Informational Mandate below

### Informational Mandate
This section is additional in depth information about the Risk Core Unit Mandate

The Risk Core Unit Mandate includes but is not limited to the following tasks:

* Risk Parameter Proposals
* Assets Onboarding and Offboarding
    * Proposals and Funnel (pipeline) Management
    * Evaluations and Monitoring
* Monitoring of Portfolio Exposure
* Community Involvement
* Monitoring DeFi Systemic Risk
* Research
* Risk Tooling

### Risk Parameters

Risk Core Unit’s responsibility is to ensure Maker Protocol’s risk profile is mitigated at all times and includes but not limited to calculations and proposed adjustments of the following parameters or risk metrics of crypto collateral debt exposure:

* Risk Premiums
* VaR (Value at Risk) estimates for MakerDAO credit portfolio
* Debt Ceiling (IAM)
* Liquidation Ratio
* Auction’s parameters
* Surplus Buffer
* Dust Configuration

Note that Core Unit is focused on financial risks of the protocol, whereas smart contract risks should be addressed by Smart Contract Core Units.

### Assets Onboarding and Offboarding

#### Proposals and Funnel (pipeline) Management

Risk Core Unit will evaluate the current off-chain and on-chain (ETH/ETH-derived, D3Ms, PSMs and assets with revenue potential above 1 million per year) ecosystem to propose to onboard or offboard assets into or out of the Maker Ecosystem, based on the current and sought risk for Maker as a whole.

Risk Core Unit will have discretion in managing the pipeline in terms of prioritization and resources dedicated to the aforementioned process.

#### Assets Evaluations & Monitoring

Risk Core Unit ensures risk evaluation of newly onboarded vault types by evaluating qualitative and quantitative risk metrics of crypto collateral assets. All evaluations from our team are based on the internally developed framework.

After collateral is added, collaterals’ risk metrics are also continuously monitored:

* Liquidity of collateral asset
* Qualitative changes to risk profile of collateral asset
* Vault type collateralization ratio distribution
* Vault user behaviour
* Liquidation Curve
* DAI liquidity (AMMs & Secondary lending platforms)

#### Collateral Onboarding Evaluations & Monitoring

### Community Involvement

* Interact with community when proposing adjustments to risk parameters
* Educate community members in understanding the protocol and risk aspects
* Train community contributors to take on tasks themselves
* Develop tooling for community members
* Review community proposals
* Get feedback on business vs. risk decisions

### DeFi Systemic Risks

MakerDAO is highly integrated in DeFi which continues to expand in total value locked and its complexity. Team needs to evaluate how any potential parameter change or new collateral inclusion at MakerDAO might affect systemic imbalances. Furthermore, it needs to monitor DAI dynamics in DeFi to properly address liquidity and other risk related concerns.

### Research

Besides ongoing risk related work and tasks, the team also aims to perform regular research on potential new protocol design topics and how it might benefit MakerDAO’s risk profile. This also includes monitoring of DeFi addressed above and considering potential integrations by other protocols.

### Risk Monitoring & Tooling

Risk monitoring is ensured by regular usage of our internally developed risk models. All risk estimates and methods used are being reported openly and frequently. Plan is to have all our risk models (risk premium, max debt ceiling, VaR) completely automated and run regularly with an open web access so that the community can get informed about Maker’s risk profile at any time.

This also allows easier access to new Risk contributors and establishment of additional Risk Core Units.

## Team Structure

The Risk Core Unit will function as a self-managing entity. The team, through its Facilitator, will answer to the community and MKR holders regarding its directives which shall include any of the mandates mentioned above.


## Team Credentials

Core team members come with a background in financial risk and comprehensive understanding in blockchain fundamentals. Team has high knowledge of MakerDAO mechanics and its risk profile metrics, but also possesses high skill at evaluating other crypto assets or protocols in DeFi.

## Domain Evolution

We believe the best way to scale Risk at MakerDAO is to have emergent structures from an initial one proposed here. Risk Core Unit scaling should be ideally done in a way to have “risk field specialized units” separated from the initial one with its own facilitator.

For instance, a team member within the Risk Core Unit may want to specialize on auctions. He creates his own Auctions Core Unit with his own team and budget. He would be separated from the initial Risk Core Unit but would still collaborate with it.

In our opinion, such evolution of teams within one broad domain such as Risk is preferred because it doesn’t lead to work overlapping and cost inefficiency, which would be the case if we were to have multiple Risk Core Units performing the same type of work initially.

We do however support development of separate additional Risk Core Units and are willing to collaborate with them. We only believe development of such units may be most efficient when developed from initial teams where common language already exists and coordination is easier.
