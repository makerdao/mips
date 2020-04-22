# MIP12: Collateral and Risk Parameter Management

## Preamble
```
MIP#: 12
Title: Collateral and Risk Parameter Management
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23) 
Type: Technical, Process
Status: Request for Comments (RFC)
Date Proposed: 2020-04-06
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP0, MIP3, MIP7, MIP10, MIP11
Replaces: n/a
```  

## References
No referenced materials.

## Sentence Summary

MIP12 defines the domain team and documentation requirements for adding or changing collateral packages in the Maker Protocol.

## Paragraph Summary

This proposal defines the documentation requirements for the onboarding of a new collateral type to the Maker Protocol, more specifically, the risk teams' objectives and requirements to deliver it in a unified package risk construct.

## Component Summary

**MIP12c1: Domain Team Requirements for Onboarding Collateral Type to the Maker Protocol**  
Lists the required and optional domain teams involved in onboarding a collateral type to the Maker Protocol.

**MIP12c2: Proposing New Risk Parameters, Oracles, and Collateral Adapters**  
A process component that defines a method, a template and the requirements for proposing new risk parameters, oracles or collateral adaptors.

**MIP12c3: Collateral Type Checklist (Governance)**  
Defines a checklist of actions that must be completed before and after governance approval of a collateral type.

## Motivation

This proposal will focus on the collateral onboarding process blueprint for submitting MIP12 Subproposals (MIP12-SPs). The subproposals allow any community member to propose new risk parameters, oracles, and adapters for a new, or existing collateral type. Additionally, it will also define priority polls and the overall collateral onboarding process requirements. Furthermore, it allows domain teams to execute on collateral onboarding via the executive vote. This is the last step that needs to be completed when you have the risk construct with risk parameters based on a risk model ratified through MIP11.

## Specification / Proposal Details

### MIP12c1: Domain Team Requirements for Onboarding Collateral Type to the Maker Protocol

- **A Risk team** (elected through MIP7) builds and approves their risk construct based on a ratified general model from MIP11 (Collateral Onboarding General Risk Model Management).
- **A Smart Contracts team** (elected through MIP7) builds and approves its collateral adapter, medianizer, oracle security module and executive vote code and the technical risk assessments of these smart contracts.
- **An Oracles team** (elected through MIP7), updates the oracle operations through MIP10 (Oracle Management) and then approves of the currently active price feeds as well as builds and approves their oracle security audit/risk assessment.
- (Optional) **A Legal team** (elected through MIP7) has created and approved the legal risk assessment of the collateral type based on the work completed by the above domain teams.

---

### MIP12c2: Proposing New Risk Parameters, Oracles, and Collateral Adapters

**Description:** This is a technical process MIP component for submitting **MIP12c2-SPs** that allows any community member to propose new risk parameters, oracles, and adapters for a new, or existing collateral type, based on the work products of domain teams. MIP12-Subproposals (MIP12c2-SPs) MUST contain the following **three** deliverables in the specification section:

1. A risk construct based on an active general risk model by a ratified risk team and the results of polls that define all risk parameters for the collateral type.
2. A security audit and risk assessment of a deployed and operational collateral adapter, medianizer, oracle security module and executive vote code by a smart contracts domain team.
3. A security audit and risk assessment of the current status of the oracle price feeds for supporting the new collateral type by an oracle domain team.


**Feedback Period:** 0 days

**Frozen Period:** 0 days

**Subproposal Template:**

    Introduction 
    
    MIP12c2-SP: #
    Title: <Title>
    Name: <Name and/or Github handle>
    Date Proposed: <date created on, in (yyyy-mm-dd) format>
    
    Specification 
    
    - Summary
    
    	- A short description of the proposed improvement.
        
    - Proposal Details
        - The three required deliverables 
    
    - Motivation
    
    	- Explanation as to why the sub proposal is necessary.
    
    Relevant Information:
    
    - Links to evidence further backing the motivation behind the proposal for adding n**ew Risk Parameters, Oracle, or Collateral Adapter**

---

### MIP12c3: Collateral Type Checklist for Governance Approval


**Before being approved by governance, the following must be prepared in advance:**

- The risk model/risk construct for the collateral type
- The oracle solution for the collateral type

**After the collateral type has been approved by governance, the following actions are performed by the Smart Contracts Domain Team to formally implement the collateral type as a part of the Maker Protocol:**

- The Smart Contract Domain team creates the spell with the following bundled components generated from the risk model and the oracle solution:
    - `ilk` - Vault type
    - `debt ceiling` - the maximum amount of Dai that can be generated from Vault/collateral type.
    - `stability fee` - a variable-rate fee on Dai that is generated from the collateral type's Vault.
    - `collateralization ratio` - the ratio between the value of the collateral and the value of the generated Dai for the specific collateral type Vault.
    - `flipper` - for the specified collateral type
    - `lot` - size for flip auction
    - `beg` - min bid increase
    - `min` bid increment
    - `end` - max auction duration
    - `ttl` - time duration before an auction ends after a bid
    - **Collateral type Oracle**
        - Specify the location of the Oracle Security Module (OSM) for the collateral type
        - gem.join adaptor
    - **Once the spell has been created, the code is executed and the following occurs:**
        - The collateral type has been added to the Maker Protocol
        - Vaults can now be created with the new collateral type
---
