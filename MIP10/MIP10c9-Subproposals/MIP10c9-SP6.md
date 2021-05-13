# MIP10c9-SP6: Subproposal to Whitelist yearn finance for ETH/USD Oracle Access

## Preamble
```
MIP10c9-SP#: 6
Author(s): Artem K
Contributors:
Status: Accepted
Date Proposed: 2020-08-23
Date Ratified: 2020-08-31
```

## Sentence Summary
MIP10c9-SP6 whitelists yearn finance for ETH/USD Oracle Access.

## Specification

### Introduction
Yearn's core product is Vaults ([example](https://etherscan.io/address/0xacd43e627e64355f1861cec6d3a6688b31a6f952#code)) which allow staking certain assets which are then delegated to Strategies ([example](https://etherscan.io/address/0xa069E33994DcC24928D99f4BBEDa83AAeF00B5f3#code)) which recycle the rewards back into the base asset. A more complex product is Delegated Vaults which leverage a certain asset to borrow an asset and delegate it to a Vault.

We are currently building ([work in progress](https://etherscan.io/address/0x6f6194041f019c7fa21a6e35e4fb496b2d6e1e95#code)) such a delegated vault strategy for the ETH Vault. It will maintain a Maker Vault and and delegate the drawn DAI to the yearn DAI Vault. To make the strategy safer and more robust, we require an ability to incentivize people to save the Vault from liquidation. To verify this on chain, we need access to the next OSM price.

We'll be using a permissioned proxy contract should new strategies requiring the OSM emerge. It is controlled by yearn's governance.

### Oracle Name
ETH/USD

### Customer(s)
yearn finance - Andre Cronje (andre.cronje@yearn.finance)

### Whitelist
	yearn finance - 0xCF63089A8aD2a9D8BD6Bb8022f3190EB7e1eD0f1 - OSM

### Requirements
For each customer address to be whitelisted:   
	- Is the contract source code verified on etherscan? yes
	- Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes   
	- Is Oracle data written to storage? no
		- If Oracle data is stored, is it stored in a private variable? not stored
		- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? not stored

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.