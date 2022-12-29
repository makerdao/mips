# MIP13c3-SP13: Declaration of Intent to Develop a Comprehensive On-chain Monitoring Solution for RWA Vaults

## Preamble

```
MIP13c3-SP#: 13
Author(s): @rspa
Contributors: @twblack88
Tags: declaration-of-intent
Status: RFC
Date Proposed: 2022-12-08
Date Ratified: --
---
Declaration Statement: Declaring the intent to fund the development of a comprehensive on-chain monitoring solution for RWA vaults.
Declaration to Replace: n/a
```

## Specification

### Context and Motivation

Current RWA monitoring is lagging behind [as much as 13 months in the case of New Silver](https://docs.google.com/spreadsheets/d/12VwbP0UxdL7Ck38SnwC-Ok8Pjo1O2F1Ryrf9gv7Mp88/edit#gid=1553817594). MakerDAO is scaling up RWA vaults for yield and diversification. We need to develop maximum transparency around that.

Currently no Core Unit is explicitly and directly responsible for monitoring RWA vaults for violations of covenants or reporting obligations. Strategic Finance (SF-001) has developed some solutions, in extension of their mandate, and at considerable extra cost and effort. [Flipside Governance](https://forum.makerdao.com/t/flipside-crypto-delegate-platform/13456) wants to applaud these initiatives. RWA counterparties have professed additional reporting.

### Declaration Detail

MakerDAO intends to pick a RWA on-chain monitoring solution by electing to fund a proposed SPF by a an external solution provider (the proposer).

The proposer should demonstrate the ability and the credentials that they can develop a trustworthy and transparent solution to RWA monitoring.

Solutions have three main areas to cover:

1. The first mile
2. The infrastructure
3. The presentation

**ad 1.)** This is the most important and the most difficult part any proposal must cover. Relevant data necessary to adequately judge RWA vault health needs to be gathered first. This could mean looking at detailed breakdowns of loans originated for a credit portfolio as well as the health of these loans. Or a detailed breakdown of the tenancy and cost of a real estate portfolio. Or the performance of installed solar panels, to give some examples.

Ideally, this is done by more than one well-established third party so that multiple eyes perform cross-checks on each other, if feasible.

The ideal proposer would include an initial list of data points to be monitored for at least one existing RWA vault as part of their proposal so the community can judge their acumen. 

If proposers host Q&A calls to field possible questions, even better.

**ad 2.)** The more decentralized, permissionless, and uncensorable the transferring of data gathered is, the better. @NikKunkel from Chronicle Labs has expressed that Chronicle Oracles would be able to transport such data as well, given adequate standardization. We have mentioned Chainlinks Proof-of-Reserve protocol as a further example.

MakerDAO wants to remain the gold standard for decentralization, and any proposed solution should ensure this is taken into account.

**ad 3.)** While it is necessary to have the gathered data available in its raw format and as openly as is permissible without running into confidentiality issues, the ideal proposal should also develop a dashboard where interested community members can dig into vault health parameters at their leisure, and also have the most important parameters visible at a glance.

Strategic Finance has recently published an accounting dashboard for Maker, which can definitely serve as a benchmark in this regard. (See link below) 

The proposer should include the following information in their SPFs:

- Developer team with a spokesperson for the team
- Credentials or references to prior work
- Proposed data points gathered for a selection of existing RWA vaults
- How the solution is designed and how it will be implemented
- Milestones for development with costs for milestones
- Total budget breakdown
- Time for execution


### Proposed process

Should MIP13c3-SP13 be ratified by MKR holders, we propose a 30-day window for interested parties to submit Special Purpose Fund requests to fulfill the intent of this MIP. After these 30 days, the SPF will enter an on-chain approval voting poll to determine the winner.

The SPF shall not be paid out at once but according to the proposed milestones. Milestone specifications should be easy and unambiguous to verify. MakerDAO will determine a responsible counterparty together with the winning proposer, either in the form of multi-sig owners or a responsible core unit that can verify milestones have been met and then pay for the delivered milestone.

### Relevant Links

- [Maker Transaction Level Accounting Dashboard](https://forum.makerdao.com/t/maker-transaction-level-accounting-dashboard/19143)
- [Monetalis Clydesdale Dashboard](https://dune.com/SebVentures/makerdao-mip65)
