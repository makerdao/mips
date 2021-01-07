# MIP10c9-SP15: Subproposal to whitelist Gnosis Maker Adapter contract for ZRX/USD Oracle Access

## Preamble

```
MIP10c9-SP#: 18
Author(s): Cristian Ramirez
Contributors: Cristian Ramirez
Status: Formal Submission
Date Proposed: 2020-12-15
Date Ratified: <yyyy-mm-dd>
```

## Specification

### Introduction

The Gnosis Maker DAO Adapter smart contract allows users to create prediction markets for token prices using Gnosis' Conditional Tokens framework. Users create a market by specifying an oracle, a target value, resolution time and variation range. Market payouts can be binary or scalar. Once the market is created users can create short or long positions using the Gnosis Conditional Tokens contract. When the resolution time is reached the market creator calls a function that queries the Maker oracle and resolves the market. Users may then redeem their positions.

### Oracle Name

ZRX/USD

### Customer(s)

Cristian Perez Ramirez- [cristiangp777@gmail.com](mailto:cristiangp777@gmail.com)

### Whitelist

Gnosis Maker Adapter - 0xD5885fbCb9a8a8244746010a3BC6F1C6e0269777 - OSM

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? n/a
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.