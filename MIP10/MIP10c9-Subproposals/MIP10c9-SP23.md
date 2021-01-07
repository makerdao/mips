# MIP10c9-SP23: Subproposal to whitelist Set Protocol for YFI/USD Oracle Access

## Preamble

```
MIP10c9-SP#: 23
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
YFI/USD

### Customer(s)

Alex Soong - [alex@setprotocol.com](mailto:alex@setprotocol.com)

### Whitelist

YFI Oracle Proxy - 0x1686d01Bd776a1C2A3cCF1579647cA6D39dd2465 - Median (0x89AC26C0aFCB28EC55B6CD2F6b7DAD867Fa24639)

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? n/a
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.