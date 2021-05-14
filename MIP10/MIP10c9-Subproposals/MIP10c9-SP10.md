# MIP10c9-SP10: Subproposal to Whitelist yearn finance for BTC/USD Oracle Access

## Preamble
```
MIP10c9-SP#: 10
Author(s): Artem K
Contributors:
Tags: oracles
Status: Accepted
Date Proposed: 2020-09-16
Date Ratified: 2020-09-28
``` 

## Sentence Summary
MIP10c9-SP10 whitelists yearn finance for BTC/USD Oracle Access.

## Specification

### Introduction
Yearn's core product is Vaults which allow depositing certain assets which are then delegated to Strategies which farm and recycle the rewards back into the base asset. A more complex product is Delegated Vaults which leverage a certain asset to borrow another asset and delegate it to a Vault.

We are currently building our second Maker-based vault that will leverage WBTC-A ilk in a similar manner to our yWETH vault that uses ETH-A ilk. It will maintain a Maker Vault and delegate the drawn DAI to the yearn DAI Vault. To make the strategy able to rebalance and unwind, we require access to the next OSM price.

We'll be using a permissioned proxy contract should new strategies requiring the OSM emerge. It is controlled by yearn's governance.

### Oracle Name
BTC/USD

### Customer(s)
yearn finance - Andre Cronje (andre.cronje@yearn.finance)

### Whitelist
	yearn finance - 0x82c93333e4E295AA17a05B15092159597e823e8a - OSM

### Requirements
For each customer address to be whitelisted:   
	- Is the contract source code verified on etherscan? yes
	- Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes   
	- Is Oracle data written to storage? no
		- If Oracle data is stored, is it stored in a private variable? not stored
		- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? not stored

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.