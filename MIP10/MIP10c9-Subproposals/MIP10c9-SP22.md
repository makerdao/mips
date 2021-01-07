# MIP10c9-SP22: Subproposal to whitelist Set Protocol for LRC/USD Oracle Access

## Preamble

```
MIP10c9-SP#: 22
Author(s): Alex Soong
Contributors: Alex Soong
Status: Formal Submission
Date Proposed: 2020-12-31
Date Ratified: <yyyy-mm-dd>
```

## Specification

### Introduction

Net asset value (NAV) issuance allows Set users to issue Sets based on the prices of the component tokens within a Set. To enable NAV issuance for a wider variety of Set compositions, we are requesting access to additional Maker oracles.

### Oracle Name
LRC/USD

### Customer(s)

Alex Soong - [alex@setprotocol.com](mailto:alex@setprotocol.com)

### Whitelist

LRC Oracle Proxy - 0x1D5d9a2DDa0843eD9D8a9Bddc33F1fca9f9C64a0 - MedianLRCUSD (0xcCe92282d9fe310F4c232b0DA9926d5F24611C7B)

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? n/a
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.