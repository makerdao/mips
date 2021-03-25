# MIP10c9-SP5: Subproposal to Whitelist dYdx for ETH/USD Oracle Access

## Preamble

```
MIP10c9-SP#: 5
Author(s): Brendan Chou
Contributors:
Status: Formal Submission
Date Proposed: 2020-07-21
Date Ratified:
```

## Sentence Summary

MIP10c9-SP5 whitelists dYdX for ETH/USD Oracle Access.

## Disclaimer

MIP10 is meant to handle all of the Oracle related actions. Unfortunately MIP10 has inconsistencies and doesn’t conform to the monthly governance cadence that the Maker Improvement Proposal framework is built around. This has generated a backlog of Oracle proposals. While MIP10 is refactored to conform to the regular MIP process, Oracle proposals such as this one will utilize the more liberal weekly governance cycle. While strictly speaking this makes them not subproposals, they are included in the subproposal archive as a point of provenance to serve as a paper trail.

## Specification

### Introduction
The dYdX team plans to use the oracle in an ETH-USD Inverse Perpetual trading pair (https://github.com/dydxprotocol/perpetual). They are currently using the BTC-USD oracle for a BTC-USD Vanilla Perpetual (https://trade.dydx.exchange/perpetual/BTC-USDC) which has been live in production for months.

### Oracle Name

ETH/USD

### Customer(s)

dYdx - brendan@dydx.exchange

### Whitelist

dYdX - 0x538038E526517680735568f9C5342c6E68bbDA12 - Medianizer

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan?
Yes https://etherscan.io/address/0x538038E526517680735568f9C5342c6E68bbDA12#code

* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior?
Yes, the only contract intended to use this data is the same type of contract already using the BTC-USD data, which prevents public read-access of the data.
https://github.com/dydxprotocol/perpetual/blob/master/contracts/protocol/v1/impl/P1Getters.sol#L198

* Is Oracle data written to storage?
No

* If Oracle data is stored, is it stored in a private variable?
N/A

* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol?
N/A

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.

## Changelog

* reformatted into MIP10c9 format
* answered the Requirements questions
