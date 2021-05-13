# MIP10c2: Subproposal for Oracle Onboarding Request

## Preamble
```
MIP10c2-SP#: 
Author(s):
Contributors:
Tags: template
Type: Process Component
Status:
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
``` 

## Specification

### Introduction
- What data should this Oracle provide?
- What will this Oracle be used for?
- General comments by proposer

### Customer(s)
- < customer name > < point of contact email >

### Whitelist
- < customer name > - < address(es) to whitelist > - < Medianizer/OSM s>

### Requirements
For each address to be whitelisted:
	- Is contract source code verified on etherscan? <yes/no>
	- Is Oracle data used in a permissioned manner that would prevent parasitic behavior? <yes/no>
	- Is Oracle data written to storage? <yes/no>
		- If Oracle data is stored, is it stored in a private variable? <yes/no>
		- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? <yes/no>