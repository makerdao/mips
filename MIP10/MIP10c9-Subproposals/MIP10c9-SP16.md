# MIP10c9-SP16: Subproposal to Whitelist Oracle Access to Oasis.app on ETHUSD, WSTETHUSD, BTCUSD, YFIUSD, UNIUSD, LINKUSD, MANAUSD

## Preamble
```
MIP10c9-SP#: 16
Author(s): Chris Bradbury
Contributors: Chris Bradbury, Adam Skrodzki
Type: Process Component
Tags: oracles
Status: Formal Submission
Date Proposed: <2022-04-01>
Date Ratified: <yyyy-mm-dd>
``` 

## Specification

### Introduction
Oasis.app, a third-party application for accessing the Maker Protocol and wider DeFi ecosystem, is planning to launch a set of new automation features to allow for better management and protection of Maker Vaults going forward.
In order for the automation features to be trustless and verifiable on-chain, Oasis.app is requesting whitelist access to the following OSMs listed below to allow its automation smart contracts to read the current and next price of the relevant Oracles.

### Oracle Names
- ETH/USD
- WSTETH/USD
- BTC/USD
- YFI/USD
- UNI/USD
- LINK/USD
- MANA/USD

### Customer(s)
Oasis.app - chris@oasis.app

### Whitelist
	Oasis.app - 0x55Dc2Be8020bCa72E58e665dC931E03B749ea5E0 - OSM

### Requirements
For each customer address to be whitelisted:   
	- Is the contract source code verified on Etherscan? yes  
	- Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? yes 
	- Is Oracle data written to storage? no  
		- If Oracle data is stored, is it stored in a private variable? n/a  
		- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a  

### Fee
In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.
