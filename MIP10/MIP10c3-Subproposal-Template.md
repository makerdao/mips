# MIP10c3: Subproposal to Onboard Oracle

## Preamble
```
MIP10c3-SP#: 
Author(s):
Contributors:
Tags: oracle-onboarding, oracles
Type: Process Component
Oracle Team Name:
Status:
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
``` 

## Specification

### Introduction
- What data would this Oracle provide?
- What would this Oracle be used for?
- General comments by Oracle Team

### Oracle Data Model 

|      Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :-------------- | :------------ | :----: | :---------: | :----------: |
| < data source > |   < param >   | < # >  |  < model >  |  < model >   |


### Oracle Supporting Data Model(s)
    
 |      Source     |  Asset Pair   |  Feed Model  |
 | :-------------- | :------------ | :----------: |
 | < data source > |   < param >   |   < model >  |
 
 
### Oracle Address
- Medianizer
- Oracle Security Module (OSM)

### Customer(s)
- < customer name > < point of contact email >

### Whitelist
- < customer name > - < address(es) to whitelist > - < Medianizer/OSM >

### Requirements
For each customer address to be whitelisted:
	- Is the contract source code verified on etherscan? <yes/no>
	- Isther  Oracle data used in a permissioned manner that would prevent parasitic behavior? <yes/no>
	- Is Oracle data written to storage? <yes/no>
		- If Oracle data is stored, is it stored in a private variable? <yes/no>
		- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? <yes/no>

### Fee
- < customer name > - < amount in Dai >
    
### Supported Tools
- < tool name > < version commit hash > < link to github repo >

### Changelog
- List of updates