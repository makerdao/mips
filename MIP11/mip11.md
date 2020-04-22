# MIP11: Collateral Onboarding General Risk Model Management

## Preamble
```
MIP#: 11
Title: Collateral Onboarding General Risk Model Management
Author(s): Cyrus Younessi (@DonutJr), Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Type: Process
Tags: process, collateral-onboarding, risk, risk-team, active-list
Status: Request for Comments (RFC)
Date Proposed: 2020-04-06
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP0, MIP3, MIP7
Replaces: n/a
```

## References
No referenced materials.

## Sentence Summary

MIP11 defines the requirements of general risk models and how they are onboarded to and offboarded from the Maker Protocol.

## Paragraph Summary

This proposal defines the process and requirements for risk teams to onboard general risk models for use in collateral onboarding in MIP12.

## Component Summary

**MIP11c1: General Risk Model Requirements**  
Describes the concept of a general risk model and defines both the required components that all general risk models must have and optional components that a general risk model may have.

**MIP11c2: List of Active General Risk Models**  
A list component that is kept up-to-date with the currently active general risk models.

**MIP11c3: Process for Onboarding**  
A process component that defines a method and a template for onboarding a general risk model.

**MIP11c4: Process for offboarding**  
A process component that defines a method and a template for offboarding a general risk model.

## Motivation

Risk models are a crucial element of the Maker Protocol's maintenance and growth. The models provide a representation of how a risk team intends to evaluate an asset or other part of the risk function. Therefore, the purpose of this proposal is to create a defined and formalized process for Risk teams to more easily onboard their models to the Maker Protocol and ultimately help grow and maintain the Protocol.

## Specification / Proposal Details

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
