# MIP10c9-SP25: Subproposal to whitelist Set Protocol for UNI/USD Oracle Access

## Preamble

```
MIP10c9-SP#: 25
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
UNI/USD

### Customer(s)

Alex Soong - [alex@setprotocol.com](mailto:alex@setprotocol.com)

### Whitelist

UNI Oracle Proxy - 0x3c3Afa479d8C95CF0E1dF70449Bb5A14A3b7Af67 - Median (0x52f761908cC27B4D77AD7A329463cf08baf62153)

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? n/a
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.