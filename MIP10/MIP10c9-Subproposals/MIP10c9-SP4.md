## Preamble

```
MIP10c9-SP#: 4
Author(s): Zhao Yang, Tianchi Zhu, Jie liu
Contributors: Nik Kunkel
Status: Formal Submission
Date Proposed: 2020-06-03
Date Ratified: <yyyy-mm-dd>
```

## Disclaimer
MIP10 is meant to handle all of the Oracle related actions. Unfortunately MIP10 has inconsistencies and doesn’t conform to the monthly governance cadence that the Maker Improvement Proposal framework is built around. This has generated a backlog of Oracle proposals. While MIP10 is refactored to conform to the regular MIP process, Oracle proposals such as this one will utilize the more liberal weekly governance cycle. While strictly speaking this makes them not subproposals, they are included in the subproposal archive as a point of provenance to serve as a paper trail.

## Specification

### Introduction

[MCDEX](https://mcdex.io) is a decentralized derivatives trading platform for perpetual contracts and futures. Currently, the perpetual contract is provided with fully on-chain AMM and off-chain order book. Both of the trading mode are based on margin account which is create through depositing collaterals into the contract. The PNL (profit and loss) is calculated based on the price read from oracle called mark price which is critical for keeping the whole system work.

Therefore, instead of using mark price from a single oracle, we read price from a primary oracle source and validate it with prices from different on-chain data sources. An update causing the price gap between primary price and validating prices exceeding a threshold (5% by default) would never success. The administrator could then decide to switch to another data source or stop the perpetual to prevent further loss.

Currently, MCDEX uses single price from Chainlink and intent to introduce Medianizer as a validator. There may be more sources in the future and a switch between them could happen at any time.

### Oracle Name

ETH/USD

### Customer(s)

MCDEX - [contact@mcdex.io](mailto:contact@mcdex.io) 

### Whitelist

MCDEX - 0x12Ee7E3369272CeE4e9843F36331561DBF9Ae6b4 - Medianizer

### Requirements

For each customer address to be whitelisted:   
- Is the contract source code verified on etherscan? yes
- Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes 
- Is Oracle data written to storage? yes
- If Oracle data is stored, is it stored in a private variable? yes
- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? yes

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.

### Changelog
	- reformatted preamble
	- added disclaimer