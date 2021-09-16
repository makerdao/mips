# MIP10c9-SP14: Subproposal to whitelist Yearn Finance on YFI/USD Oracle

## Preamble
```
MIP10c9-SP#: 14
Author(s): Artem K, Daniel L
Contributors:
Type: Process Component
Tags: oracles
Status: Formal Submission
Date Proposed: 2020-11-19
Date Ratified:
``` 

## Sentence Summary
MIP10c9-SP14 whitelists Yearn Finance for YFI/USD Oracle Access.


## Disclaimer

MIP10 is meant to handle all of the Oracle related actions. Unfortunately MIP10 has inconsistencies and doesn’t conform to the monthly governance cadence that the Maker Improvement Proposal framework is built around. This has generated a backlog of Oracle proposals. While MIP10 is refactored to conform to the regular MIP process, Oracle proposals such as this one will utilize the more liberal weekly governance cycle. While strictly speaking this makes them not subproposals, they are included in the subproposal archive as a point of provenance to serve as a paper trail.

## Specification

### Introduction

Yearn’s core product is Vaults. A vault takes a specific base asset as deposit, which is then delegated to Strategies that farm and recycle rewards back into the specific base asset of the Vault in question. A more complex product is a Delegated Vault, which leverages a certain base asset to borrow another asset that is then delegated to a Vault.

We are currently building our third Maker-based vault, taking YFI as a base asset and leveraging it in a similar manner as our existing yWETH and yWBTC Vaults. It will maintain a Maker Vault and delegate the drawn DAI to the Yearn DAI Vault. To make the strategy able to rebalance and unwind, we require access to the next OSM price.

We’ll be using a permissioned proxy contract should new strategies requiring the OSM emerge. It is controlled by Yearn’s Governance.

### Oracle Name
YFI/USD

### Customer(s)
yearn finance - Andre Cronje (andre.cronje@yearn.finance)

### Whitelist
	yearn finance - 0x208EfCD7aad0b5DD49438E0b6A0f38E951A50E5f - OSM

### Requirements
For each customer address to be whitelisted:   
	- Is the contract source code verified on etherscan? yes
	- Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes   
	- Is Oracle data written to storage? no
		- If Oracle data is stored, is it stored in a private variable? not stored
		- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? not stored

### Fee
yearn finance - ROMP