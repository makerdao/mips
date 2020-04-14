# MIP11: Collateral Onboarding General Risk Model Management

## Preamble
```
MIP#: 11
Title: Collateral Onboarding General Risk Model Management
Author(s): Cyrus Younessi (@DonutJr), Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Type: Process
Status: <Assigned by MIP Editor>
Date Proposed: 2020-04-06
Dependencies: MIP0, MIP3, MIP7
Replaces: n/a
```

## Summary

This proposal defines the process and requirements for risk teams to onboard general risk models for use in collateral onboarding in MIP12.

## Motivation

Risk models are a crucial element of the Maker Protocol's maintenance and growth. The models provide a representation of how a risk team intends to evaluate an asset or other part of the risk function. Therefore, the purpose of this proposal is to create a defined and formalized process for Risk teams to more easily onboard their models to the Maker Protocol and ultimately help grow and maintain the Protocol.

## Specification / Proposal Details

### MIP11 Components

1. **MIP11c1:** General Risk Model Requirements
2. **MIP11c2:** List of Active General Risk Models
3. **MIP11c3:** Process for Onboarding
4. **MIP11c4:** Process for offboarding

---

### MIP11c1: General Risk Model Requirements

**Description:** A general model provides a representation of how a risk team intends to evaluate an asset or another part of the risk function. This can help determine which assets should be given priority as approved assets make their way into the collateral pool. A general model acts as a natural filtration mechanism where collateral types are ranked against one another for prioritization purposes. 

**A general model must contain a quantitative risk methodology for the evaluation of risk parameters. Optionally, it can also contain:** 

1. A qualitative framework that describes the process for evaluating the fundamentals of a proposed collateral asset
2. A scoring framework for collateral assets that enables a standardized approach for converting qualitative analysis into numerical outputs. This is achieved through a ratings-based methodology.

---

### MIP11c2: List of Active General Risk Models

**Template Explanation:**
- **Sub-proposal Number (MIP11c3-SP):** #
- **Risk Team Name:** The name of the Risk Team that submitted the General Risk Model
- **General Risk Model Name:** The name of the General Risk Model
- **Date Added:** <date in (yyyy-mm-dd) format>
- **Summary:** Summary of the General Risk Model
- **Link to full documentation:** Due to the length of General Risk Models they are contained in separate documents.

**Active General Risk Models:**

- < list >

---

### MIP11c3: Process for Onboarding

- **Outcome:** The General Risk Model specified in the MIP11c3 Sub Proposal is appended to MIP11c2.
- **Feedback Period:** 0 days
- **Frozen period:** 0 days
- **Subproposal Template:**
```
    Introduction
    - MIP11c3-SP: #
    - Risk Team Name:  
    - General Risk Model Name: 
    - Date Proposed: <date created on, in (yyyy-mm-dd) format>
    
    Specification 
        
    - Motivation:
        - A detailed explanation advocating the need for the addition of the general risk model. 
    - General Model Details
    		- The full details of the proposed general model. This includes the following requirements (as highlighted in **MIP11c1 - General Model Requirements)**
    			1. A framework for quantitative risk methodology, fundamental analysis or due diligence.  
    			2. A scoring framework for collateral assets that enables a standardized approach for converting qualitative analysis into numerical outputs. This is achieved through a ratings-based methodology.
    			3. A quantitative model that describes the process for computing risk parameters such as the Stability Fee, Liquidation Ratio, DSR, etc.
    - Relevant Information:
    	-  Links to any further discussions related to the onboarding of the proposed general model. 
```
---

### MIP11c4: Process for Offboarding

- **Outcome:** The General Risk Model specified in the MIP11c4 Sub Proposal is removed from MIP11c2.
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days
- **Subproposal Template:**
```
    Introduction
    - MIP11c4-SP: #
    - Risk Team Name:  
    - General Risk Model Name: 
    - Date of Proposed Removal: <date created on, in (yyyy-mm-dd) format>
    
    Specification
        
    - Removal Motivation:
        - An explanation behind the motivation for the removal of the general risk model. 
    
    - Relevant Information:
    	-  Links to evidence further backing the motivation behind the removal of the general risk model.
```
---
