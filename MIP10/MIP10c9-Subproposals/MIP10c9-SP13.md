# MIP10c9-SP13: Subproposal to whitelist B.Protocol contract for ETH/USD Oracle Access

## Preamble

```
MIP10c9-SP#: 13
Author(s): Yaron Velner
Contributors: Yaron Velner
Tags: oracles
Status: Formal Submission
Date Proposed: 2020-10-07
Date Ratified:
```

## Sentence Summary
MIP10c9-SP13 whitelists B.Protocol contract for ETH/USD Oracle Access.

## Disclaimer

MIP10 is meant to handle all of the Oracle related actions. Unfortunately MIP10 has inconsistencies and doesn’t conform to the monthly governance cadence that the Maker Improvement Proposal framework is built around. This has generated a backlog of Oracle proposals. While MIP10 is refactored to conform to the regular MIP process, Oracle proposals such as this one will utilize the more liberal weekly governance cycle. While strictly speaking this makes them not subproposals, they are included in the subproposal archive as a point of provenance to serve as a paper trail.

## Specification

### Introduction

[B.Protocol](https://medium.com/b-protocol/b-protocol-b6dd4e3bf9c0) makes lending platforms more stable by incentivizing liquidity providers (keepers) to commit on liquidation of under collateralized loans and shift the miners extracted profits back to the users of the platform. 
We integrated B.Protocol with MakerDAO, letting the users interact with the lending platform they are used to, via a dedicated smart contract interface. B.Protocol liquidators get a priority in the liquidation process which helps them manage risk in a more predictable manner. In return, Liquidators share their proceeds with B.Protocol users, making it a win-win situation for all parties involved:
 
* MakerDAO as a platform get [additional players](https://medium.com/b-protocol/the-genesis-backstop-b-protocol-brings-new-players-to-defi-liquidations-74619b11486e) to participate in the liquidation process.
* Users get extra value (share the liquidation proceeds) with no extra risk.
Liquidators get better predictions and hence can better manage their risk.


B.Protocol is using the OSM so liquidators could topup CDPs that are expected to be liquidated in the next price update.
This way after the price update, the usual bite process is prevented, and an "internal" liquidation (unwind) process happens on B.Protocol.

### Oracle Name

ETH/USD

### Customer(s)

B.Protocol- [info@bprotocol.org](mailto:info@bprotocol.org)

### Whitelist

B.Protocol bud connector - 0x2325aa20DEAa9770a978f1dc7C073589ffC79DC3 - OSMETHUSD (0x81FE72B5A8d1A857d176C3E7d5Bd2679A9B85763)

EDIT: address of smart contract was changed in a version that is more gas efficient.

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? n/a
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.