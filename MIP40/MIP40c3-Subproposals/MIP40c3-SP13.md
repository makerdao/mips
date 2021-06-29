# MIP40c3-SP13: Modify Core Unit Budget, RISK-001

## Preamble

```
MIP40c3-SP#: 13
Author(s): Primož Kordež
Contributors:
Tags: core-unit, cu-risk-001, budget, active
Status: Accepted
Date Applied: 2021-05-12
Date Ratified: 2021-06-28
```

## Sentence Summary

MIP40c3-SP13 adds the budget for Core Unit RISK-001: Risk.
## Specification

## Motivation

Remuneration for the [Risk Core Unit](https://forum.makerdao.com/t/mip39c2-sp2-adding-risk-core-unit/6342).

## Core Unit Name

Risk Core Unit
RISK-001

## Work Review

### Risk Parameters

Large part of our resources in past months was spent on proposals of various parameters:

* Risk Premiums & Debt Ceiling recommendations

Each month we update risk premiums and debt ceilings for each collateral type and recommend changes for the Parameter Proposal Group. Our calculations can be found in each monthly proposal.

* Liquidations 2.0

Most of our time was spent on analysis of Liquidations 2.0 mechanics, risks and trade-offs. We proposed sets of parameters for the majority of the Maker’s collateral assets. Currently finalizing Liq 2.0 proposed parameters for UNI LPs.

* Dust recommendations
* Surplus Buffer recommendations
* Liquidation Ratio adjustments (DAIUSDC UNI LP)
* Recommendations for UNI LP FLIP 1.2 auctions and FLAP auctions
* PSM DC recommendations

### Risk Web App

Our plan is to have all risk calculations automated and results published in real time on a public web dashboard. For this reason we started developing https://maker.blockanalitica.com/ which is currently in beta. We are also open sourcing our risk models and all the risk premium and debt ceiling simulations can be found at https://simulation.blockanalitica.com/. Plan is to have an interactive web app so that community or future risk analysts can themselves choose between model inputs and measure risk of collaterals at Maker.

Further, all our recommendations on each risk topic and research will be aggregated and published on our public dashboard. This should help the community navigate through our proposals and get informed about the state of the risk at Maker. Finally, we believe this will also help us onboard future risk analysts and scale Risk Core Unit.

### Collateral Evaluations

We covered UNI LPs & PAXG collateral evaluations and proposed parameters and are currently focusing on Sushi LP collateral evaluations.

### Other

Pending unpublished work and discussions on various proposed MIPs. Still discussed among mandated actors about potential next implementations, but we already started discussing and researching MIP43 and MIP50.

## List of Budget Implementations

This budget implementation uses the Manual Budget Implementations, the Simple one, or any other method achieving the same result at the discretion of the Governance Facilitators.

* Payment per month: based on predetermined quarterly budget
* Asset type: DAI
* Address: 0xd98ef20520048a35EdA9A202137847A62120d2d9
* Payment Frequency: within first 10 days of each month

We intend to “invoice” the protocol on a monthly basis (first week of the month). This follows Simple implementation logic where through recurrent suck () calls Core Unit Facilitator requests for monthly funds to finance its team.

## Budget Breakdown / Items

### Team costs

Team currently consists of 5 full time members, 2 part time members and 2 part time collateral onboarding evaluators. Since the last budget proposal, we replaced 2 members who are now specifically focused on development of [Maker Risk Web App](https://maker.blockanalitica.com/) and [Risk Simulations](https://simulation.blockanalitica.com/). We are also looking for another Risk Analyst in the short term, 2 in the mid-term.

* Primož Kordež ([@Primoz](https://forum.makerdao.com/u/primoz)), full time - Risk Core Unit Facilitator
* Marko Štemberger ([@rema](https://forum.makerdao.com/u/rema)), full time - Risk Analyst
* Monetsupply ([@monet-supply](https://forum.makerdao.com/u/monet-supply)), full time - Risk Analyst & DeFi coverage
* Miha Zelnik [@miha](https://forum.makerdao.com/u/miha)), full time - Maker Risk App - Senior Software Engineer
* Jan Osolnik [@josolnik](https://forum.makerdao.com/u/josolnik)), full time - Quantitative Models - Data Scientist
* Dmitri [@dmitri.z](https://forum.makerdao.com/u/dmitri.z)), part time - Auctions
* Jernej Mlakar ([@jernejml](https://forum.makerdao.com/u/jernejml)), part time - Collateral evaluations
* Andrej Marolt ([@indy](https://forum.makerdao.com/u/indy)), part time - Collateral evaluations
* Bogdan Gheorghe, part time - On-chain data
* Upcoming 1-2 full time Risk Analysts

### MKR Vesting

We plan to propose MKR vesting for full time members once the final framework proposed by MKR Compensation Working Group is adopted by MakerDAO governance. Ideally vesting schedules would be implemented retroactively from the time members got signed full time.

### Tooling

* AWS
* Infura
* Subscriptions to off-chain data APIs (Cryptocompare, Nansen, etc..)

### Operations

* Company administration
* Flights, conferences, etc.
* Legal costs

### Grants

By using our internal grants programme, we started supporting various community built analytics websites such as [makerburn.com](http://makerburn.com) and [daiauctions.com](http://daiauctions.com). We want to keep supporting a larger number of such projects and we are therefore increasing our previously proposed grants monthly budget allocation from 12,500 DAI to 25,000 DAI.

### Contingencies

We are adding a contingency buffer of 20,000 DAI to our quarterly budget adjustment. In the initial budget proposal we haven’t specified this allocation, but we were advised to use it. This should give us more flexibility between quarterly budget adjustments.

### Funding Process

The team uses a company to distribute funds and signs contracts with its contractors (full time or part time workers). This enables contractors additional security but also enables the team to make payments in fiat (for infrastructure, administrative and operations costs).

### Budget Breakdown

The monthly amount is based on the quarterly budget, starting from 1st of July if this proposal passes. We believe we can reasonably estimate our costs on about a 3 month frequency. If the modifications are needed, they would be done on a 3 month basis through “Modify Core Unit Budget Subproposal Process”. If modifications are not proposed, the monthly payout amount gets rolled over from the initial proposal, if our work meets community and MKR holders expectations and demands.

Proposed quarterly budget for the Risk Core Unit is 546,000 DAI, which translates into 182,000 DAI per month.

Breakdown:

* Team Costs 70% / 127,000 DAI
* Tooling 3% / 5,000 DAI
* Operations 3% / 5,000 DAI
* Grants 14% / 25,000 DAI
* Contingencies 11% / 20,000 DAI
