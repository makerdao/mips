# MIP10c9-SP21: Subproposal to whitelist Set Protocol for AAVE/USD Oracle Access

## Preamble

```
MIP10c9-SP#: 21
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
AAVE/USD

### Customer(s)

Alex Soong - [alex@setprotocol.com](mailto:alex@setprotocol.com)

### Whitelist

AAVE Oracle Proxy - 0x8b1C079f8192706532cC0Bf0C02dcC4fF40d045D - Median (0xe62872DFEbd323b03D27946f8e2491B454a69811)

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? n/a
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.