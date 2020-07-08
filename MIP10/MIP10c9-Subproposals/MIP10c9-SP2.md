# MIP10c9-SP#2: Subproposal to Whitelist DeFi Saver for BAT/USD Oracle Access

## Preamble
```
MIP10c9-SP#: 2
Author(s): Nenad Palinkasevic, Nikola Klipa, Nikola Jankovic
Contributors: Nenad Palinkasevic, Nikola Klipa, Nikola Jankovic
Type: Process Component
Status: /
Date Proposed: <2020-05-15>
Date Ratified: <yyyy-mm-dd>
``` 
## Specification

### Introduction
[DeFi Saver](https://defisaver.com/) is a 3rd party MakerDAO management application created by [Decenter](https://www.decenter.com/). One of the included features is Automation - a system for automated MakerDAO CDP/Vault management based on user’s configuration.

The Automation system has recently experienced issues protecting some automated positions against liquidation [on Black Thursday](https://medium.com/defi-saver/black-thursday-at-defi-saver-3c35ea6cd0d0), where large price updates in MakerDAO bypassed users’ configurations and rendered the system unable to act, the cause of which was lack of access to the MakerDAO OSM for the data on next scheduled price update and the DeFi Saver team’s desire to maintain trustlessness of the system. Since then, the team has [introduced an update](https://medium.com/defi-saver/introducing-automation-v2-now-with-flash-loans-and-next-price-support-433040e6d63b) that takes into account next scheduled price update in the OSM for better resilience, but in a non-trustless manner.

The Oracles v2 introduction post published by the Maker Foundation in September of 2019 outlined a future capability of Maker Governance to whitelist access to Oracle feeds and the more recent Governance actions [have now fully ratified such a process](https://blog.makerdao.com/the-first-maker-improvement-proposals-mips-ratification-vote-passes-governance-cycle-has-begun/), as described in [Maker Improvement Proposal #10: Oracle Management](https://github.com/makerdao/mips/blob/master/MIP10/mip10.md).

DeFi Saver would use access to this Oracle to trustlessly verify the next MakerDAO price update in OSM. 

### Oracle Name
BAT/USD

### Customer(s)
DeFi Saver - nikola.jankovic@decenter.com

### Whitelist
DeFi Saver - 0xeAa474cbFFA87Ae0F1a6f68a3aBA6C77C656F72c - OSM

### Requirements
For each customer address to be whitelisted:
- Is the contract source code verified on etherscan? Yes
- Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? Yes
- Is Oracle data written to storage? No
- If Oracle data is stored, is it stored in a private variable? n/a
- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee
In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.
