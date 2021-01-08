# MIP10c9-SP24: Subproposal to whitelist Set Protocol for ZRX/USD Oracle Access

## Preamble

```
MIP10c9-SP#: 24
Author(s): Alex Soong
Contributors: Alex Soong
Status: Formal Submission
Date Proposed: 2020-1-2
Date Ratified: <yyyy-mm-dd>
```

## Specification

### Introduction

Net asset value (NAV) issuance allows Set users to issue Sets based on the prices of the component tokens within a Set. To enable NAV issuance for a wider variety of Set compositions, we are requesting access to additional Maker oracles.

### Oracle Name
ZRX/USD

### Customer(s)

Alex Soong - [alex@setprotocol.com](mailto:alex@setprotocol.com)

### Whitelist

ZRX Oracle Proxy - 0xFF60D1650696238F81BE53D23b3F91bfAAad938f - MedianZRXUSD ( 0x956ecD6a9A9A0d84e8eB4e6BaaC09329E202E55e)

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? n/a
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.