# MIP10c9-SP8: Subproposal to Whitelist DDEX for WBTC/USD Oracle Access

## Preamble
```
MIP10c9-SP#: 8
Author(s): Scott Winges
Contributors: Nik Kunkel (@NiklasKunkel)
Tags: oracles
Status: Accepted
Date Proposed: 2020-09-09
Date Ratified: 2020-09-28
```

## Sentence Summary
MIP10c9-SP8 whitelists DDEX for WBTC/USD Oracle Access.

## Specification

### Introduction

DDEX used the Maker medianizer oracle v1 for WBTC/USD price info prior to deprecation. The price is primarily used for determining the collateral status of loans, but is also used for several other information fields on the application. DDEX would use the v2 medianizer for the same purposes.

### Oracle Name

* WBTC/USD

### Customer(s)

* DDEX ([scott@ddex.io](mailto:scott@ddex.io))

### Whitelist

```
- DDEX - 0x4935B1188EB940C39e22172cc5fe595E267706a1 - Medianizer
```

### Requirements

For each customer address to be whitelisted:

* Is the contract source code verified on etherscan? yes
* Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
* Is Oracle data written to storage? no
* If Oracle data is stored, is it stored in a private variable? no
* If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.
