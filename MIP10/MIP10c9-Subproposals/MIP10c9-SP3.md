## Preamble

```
MIP10c9-SP#: 3
Author(s): Nenad Palinkasevic, Nikola Klipa, Nikola Jankovic
Contributors: Nik Kunkel
Status: Formal Submission
Date Proposed: 2020-05-17
Date Ratified: <yyyy-mm-dd>
```

## Disclaimer
MIP10 is meant to handle all of the Oracle related actions. Unfortunately MIP10 has inconsistencies and doesn’t conform to the monthly governance cadence that the Maker Improvement Proposal framework is built around. This has generated a backlog of Oracle proposals. While MIP10 is refactored to conform to the regular MIP process, Oracle proposals such as this one will utilize the more liberal weekly governance cycle. While strictly speaking this makes them not subproposals, they are included in the subproposal archive as a point of provenance to serve as a paper trail.

## Specification

### Introduction

The Oracles v2 introduction post published by the Maker Foundation in September of 2019 outlined a future capability of Maker Governance to whitelist access to Oracle feeds and the more recent Governance actions [have now fully ratified such a process](https://blog.makerdao.com/the-first-maker-improvement-proposals-mips-ratification-vote-passes-governance-cycle-has-begun/), as described in [Maker Improvement Proposal #10: Oracle Management](https://github.com/makerdao/mips/blob/master/MIP10/mip10.md).

[DeFi Saver](https://defisaver.com/) is a 3rd party MakerDAO management application created by [Decenter](https://www.decenter.com/). One of the included features is Automation - a system for automated MakerDAO CDP/Vault management based on user’s configuration.

DeFi Saver would use access to this Oracle to trustlessly verify the next MakerDAO price update in OSM.

### Oracle Name

- BTC/USD

### Customer(s)

DeFi Saver - nikola.jankovic@decenter.com

### Whitelist

DeFi Saver - 0xeAa474cbFFA87Ae0F1a6f68a3aBA6C77C656F72c - OSM

### Requirements

For each customer address to be whitelisted:
- Is the contract source code verified on etherscan? yes
- Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes
- Is Oracle data written to storage? no
- If Oracle data is stored, is it stored in a private variable? n/a
- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.

### Changelog
	- reformatted preamble
	- added disclaimer