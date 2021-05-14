# MIP10c9-SP11: Subproposal to Whitelist PT Pricing Contract for ETH/USD Oracle Access

## Preamble
```
MIP10c9-SP#: 11
Author(s): Desmond Ho, Anton Buenavista
Contributors: Desmond Ho, Anton Buenavista
Tags: oracles
Status: Accepted
Date Proposed: 2020-09-16
Date Ratified: 2020-09-28
```

## Sentence Summary
MIP10c9-SP11 whitelists PT Pricing Contract for ETH/USD Oracle Access.

## Disclaimer

MIP10 is meant to handle all of the Oracle related actions. Unfortunately MIP10 has inconsistencies and doesn’t conform to the monthly governance cadence that the Maker Improvement Proposal framework is built around. This has generated a backlog of Oracle proposals. While MIP10 is refactored to conform to the regular MIP process, Oracle proposals such as this one will utilize the more liberal weekly governance cycle. While strictly speaking this makes them not subproposals, they are included in the subproposal archive as a point of provenance to serve as a paper trail.

## Specification

### Introduction

KyberSwap has a Promo Token, facilitated by Kyber Network, that is used at hackathons and conferences to promote usage of its platform. 1 PT token is pegged to approximately 1 USD, and is priced against ETH. Hence, the v1 medianizer suited its purpose well and was used.

### Oracle Name

ETH/USD

### Customer(s)

Kyber Network - [hello@kyber.network](mailto:hello@kyber.network)

### Whitelist

PT Pricing Contract - 0xe1bdeb1f71b1cd855b95d4ec2d1bfdc092e00e4f - MedianETHUSD (0x64DE91F5A373Cd4c28de3600cB34C7C6cE410C85)

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? no
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? no

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.