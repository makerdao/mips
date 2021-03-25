# MIP39c2-SP2: Adding Risk Core Unit - RISK-001

## Preamble

```
MIP39c2-SP#: 2
Author(s): Primož Kordež (@Primoz)
Contributors: 
Status: Formal Submission
Date Applied: 2021-02-03
Date Ratified:
```

## Sentence Summary
MIP39c2-SP2 adds Core Unit RISK-001: Risk.

## Specification

## Motivation

Onboarding Risk Core Unit ensures Maker Protocol can continue to grow safely by having proper risk management parameters and risk mitigation tools applied.

## Core Unit Name

Name: Risk Core Unit
ID: RISK-001

## Core Unit Facilitator

Primož Kordež

## Core Unit Mandate

The Risk Core Unit Mandate includes but is not limited to following tasks:

* Risk Parameter Proposals
* Collateral Onboarding Evaluations
* Monitoring of Portfolio Exposure
* Community Involvement
* Monitoring DeFi Systemic Risk
* Research
* Risk Tooling

### Risk Parameters

Risk Core Unit’s responsibility is to ensure Maker Protocol’s risk profile is mitigated at all times and includes but not limited to calculations and proposed adjustments of following parameters or risk metrics of crypto collateral debt exposure:

* Risk Premiums
* VaR (Value at Risk) estimates for MakerDAO credit portfolio
* Debt Ceiling (IAM)
* Liquidation Ratio
* Auction’s parameters
* Surplus Buffer
* Dust

Note that Core Unit is focused on financial risks of the protocol, whereas smart contract risks should be addressed by Smart Contract Core Units.

### Collateral Onboarding Evaluations & Monitoring

Risk Core Unit ensures risk evaluation of newly onboarded vault types by evaluating qualitative and quantitative risk metrics of crypto collateral assets. All evaluations from our team are based on the internally developed framework.

After collateral is added, collaterals’ risk metrics are also continuously monitored:

* Liquidity of collateral asset
* Qualitative changes to risk profile of collateral asset
* Vault type collateralization ratio distribution
* Vault user behaviour
* Liquidation Curve
* DAI liquidity (AMMs & Secondary lending platforms)

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

Team currently consists of following members:

* Primož Kordež (@Primoz), full time - Risk Core Unit Facilitator
* Marko Štemberger (@rema), full time - Risk Analyst
* Monetsupply (@monet-supply ), part time - Collateral evaluations & DeFi
* Andy McCall (@Andy_McCall), part time - VaR models & Risk Premiums
* Vishesh Choudhry (@vishesh), tentative, part time - State of the peg
* Dmitri (dmitri.z / d_zap), part time - Auctions
* Bogdan Gheorghe (bogdan.g), part time - On-chain data
* Jernej Mlakar (@jernejml), part time - Collateral evaluations
* Andrej Marolt (@indy), part time - Collateral evaluations
* Will Remor (@williamr), part time - Collateral evaluations

## Team Credentials

Core team members come with a background in financial risk and comprehensive understanding in blockchain fundamentals. Team has high knowledge of MakerDAO mechanics and its risk profile metrics, but also possesses high skill at evaluating other crypto assets or protocols in DeFi.

## Domain Evolution

We believe the best way to scale Risk at MakerDAO is to have emergent structures from an initial one proposed here. Risk Core Unit scaling should be ideally done in a way to have “risk field specialized units” separated from the initial one with its own facilitator.

For instance, a team member within the Risk Core Unit may want to specialize on auctions. He creates his own Auctions Core Unit with his own team and budget. He would be separated from the initial Risk Core Unit but would still collaborate with it.

In our opinion, such evolution of teams within one broad domain such as Risk is preferred because it doesn’t lead to work overlapping and cost inefficiency, which would be the case if we were to have multiple Risk Core Units performing the same type of work initially.

We do however support development of separate additional Risk Core Units and are willing to collaborate with them. We only believe development of such units may be most efficient when developed from initial teams where common language already exists and coordination is easier.
