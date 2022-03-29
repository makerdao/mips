# MIP40c3-SP2: Modify Core Unit Budget - Risk (RISK-001)

## Preamble

```
MIP40c3-SP#: 2
Author(s): Primož Kordež
Contributors: 
Tags: core-unit, cu-risk-001, budget, dai-budget
Status: Accepted
Date Proposed: 2021-02-03
Date Ratified: 2021-25-03
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-march-2021-governance-cycle-bundle-march-22-2021?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip40c2-sp2-add-core-unit-budget-risk-core-unit/6343
```

## Sentence Summary

MIP40c3-SP2 adds the budget for Core Unit RISK-001: Risk.

## Specification

### Motivation

Remuneration for the [Risk Core Unit](https://forum.makerdao.com/t/mip39c2-sp2-adding-risk-core-unit/6342).

### Core Unit Name

Risk Core Unit

### List of Budget Implementations

This budget implementation uses the Manual Budget Implementations, the Simple one, or any other method achieving the same result at the discretion of the Governance Facilitators.

* **Payment per month:** based on predetermined quarterly budget
* **Asset type:** DAI
* **Address:** 0xd98ef20520048a35EdA9A202137847A62120d2d9
* **Payment Frequency:** within first 10 days of each month

We intend to “invoice” the protocol on a monthly basis (first week of the month). This follows Simple implementation logic where through recurrent suck () calls Core Unit Facilitator requests for monthly funds to finance its team.

### Budget Breakdown / Items

#### Team costs

Team currently consists of 2 full time members, 5 part time members covering various risk related fields and at least 3 part time collateral onboarding evaluators:

* Primož Kordež (@Primoz), full time - Risk Core Unit Facilitator
* Marko Štemberger (@rema), full time - Risk Analyst
* Monetsupply (@monet-supply), part time - Collateral evaluations & DeFi
* Andy McCall (@Andy_McCall), part time - VaR models & Risk Premiums
* Vishesh Choudhry (@vishesh), tentative, part time - State of the peg
* Dmitri (dmitri.z / d_zap), part time - Auctions
* Bogdan Gheorghe (bogdan.g), part time - On-chain data
* Jernej Mlakar (@jernejml), part time - Collateral evaluations
* Andrej Marolt (@indy), part time - Collateral evaluations
* Will Remor (@williamr), part time - Collateral evaluations

#### Tooling

* AWS
* Infura
* Subscriptions to off-chain data APIs

#### Operations

* Company administration
* Flights, conferences, etc.
* Legal costs

#### Grants

* Risk tools development to attract new members
* Smaller tasks

### Funding Process

The team will use a company to distribute funds and sign contracts with its contractors (full time or part time workers). This enables contractors additional security but also enables the team to make payments in fiat (for infrastructure, administrative and operations costs). Further, this enables the team to behave like a competing startup and can manually decide how performance of individuals is rewarded. Also, privacy of workers payouts can be secured this way.

### Budget Breakdown

The monthly amount is based on quarterly budget. We believe we can reasonably estimate our costs on about a 3 month frequency. If the modifications are needed, they would be done on a 3 month basis through “Modify Core Unit Budget Subproposal Process”. If modifications are not proposed, the monthly payout amount gets rolled over from the initial proposal, if our work meets community and MKR holders expectations and demands.

**Proposed quarterly budget for the Risk Core Unit is 301,500 DAI, which translates into 100,500 DAI per month.**

Breakdown:

| Item | Percentage | Amount |
|--|--|--|
|Team Costs|78%|78,000 Dai|
|Tooling|5%|5,000 Dai|
|Operations|5%|5,000 Dai|
|Grants|12%|12,500 Dai|
