# MIP10c12: Subproposal to Update Oracle Access Fee

## Preamble
```
MIP10c12-SP#: 
Author(s):
Contributors:
Type: Process Component
Tags: oracles
Status:
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
``` 

## Specification

### Introduction
- What is the problem with our current Oracle Access Fee?
- Why do we need a new Oracle Access Fee?

### Oracle Access Fee Model Strategy
- How does the proposed model work?
	- Is it based on a strategy to grow the customer base?
	- Is it based on a strategy to reign in costs to a more sustainable business model?
	- Is it based on a loss-leader strategy to strengthen the brand of the Maker Protocol?
	- How are prices applied across different Oracles and different customers?
	- Is it a flat-fee applied uniformly across every Oracle and customer?
	- Is it applied to how much value a customer derives from the Oracle?
	- Is it dependent on how many Oracles a customer is whitelisted on?
	- Is it dependent on how many customers use a particular Oracle?
	- Is it dependent on how long a customer has used our Oracles?
	- Is it dependent on the type of data the Oracle is broadcasting?
	- Is it dependent on the Oracle Spread / Oracle Expiration Time of the Oracle?
	- Does the price differ if the customer is also a Light Feed?
	- Does the price differ between the Medianizer and Oracle Security Module? What if a customer wants both?
	- Are fees waived for certain classes of customers? Why?
	- Are prices dependent on what our competitors charge?
- How many customers are expected to be lost or gained due to this change in pricing?

### Supporting Data
- Empirical data supporting your Model Strategy

### Material Changes Template
- Use state of [MIP10c11-List-of-Oracle-Whitelists](MIP10c11-Subproposal-Template.md) to get all customers per Oracle.
- Only customers whose Fees are being updated need be included in the template.

**Oracle Name:**   
**Oracle Classification:** <Medianizer/Oracle Security Module   
**Contract Address:**    
| Customer |  Date Joined   | Fee (Dai)  | Whitelisted Contract | Custom Variable Used in Model |  Custom Variable Used in Model |
| :------- | :------------- | :--------- | :------------------- | :---------------------------- | :----------------------------- |
| < name > | < yyyy-mm-dd > |    < # >   |     < address >      |           < data >            |            < data >            |

### Changelog
- List of updates
