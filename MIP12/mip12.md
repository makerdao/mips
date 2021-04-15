# MIP12: Collateral and Risk Parameter Management

## Preamble
```
MIP#: 12
Title: Collateral and Risk Parameter Management
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23) 
tags: technical, process, collateral-onboarding, risk, mip-set, collateral-onboarding-mipset
Type: Technical, Process
Status: Accepted
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Last Amended: 2020-06-25
Dependencies: MIP0, MIP3, MIP7
Replaces: n/a
```  

## References
**[MIP12c2-Subproposal-Template.md](MIP12c2-Subproposal-Template.md)**

## Sentence Summary

MIP12 defines the domain team and documentation requirements for adding or changing collateral packages in the Maker Protocol.

## Paragraph Summary

This proposal defines the documentation and work requirements for the onboarding of new collateral types to the Maker Protocol, specifically the domain teams' objectives and requirements to deliver it in a unified MIP12 subproposal (MIP12-SP).

## Component Summary

**MIP12c1: Domain Team Requirements for Onboarding Collateral Type to the Maker Protocol**  
Lists the required and optional domain teams involved in onboarding a collateral type to the Maker Protocol as well as a high-level overview of the domain work required.

**MIP12c2: Proposing New Risk Parameters, Oracles, and Collateral Adapters**  
A process component that defines a method, a template, and the requirements for proposing new risk parameters, oracles, or collateral adaptors for collateral types.

**MIP12c3: Collateral Type Checklist (Governance)**  
Defines a checklist of actions that must be completed before and after governance approval of a collateral type.

## Motivation

This proposal will focus on the collateral onboarding process blueprint for submitting MIP12 subproposals (MIP12-SPs). Submitting MIP12 subproposals is the final step before collateral types go through the Governance Cycle and ultimately get added to or rejected from the Maker Protocol. The subproposal process is reserved for domain teams to propose new risk parameters, oracles, and adapters for a new, or existing collateral type. This proposal also details the involvement of the community greenlight polls (MIP9) and the overall collateral onboarding process requirements. Furthermore, it allows domain teams to execute on collateral onboarding via the executive vote. 

## Specification / Proposal Details

### MIP12c1: Domain Team Requirements for Onboarding Collateral Type to the Maker Protocol

- **A Risk team** (elected through MIP7) builds and approves risk constructs for the collateral types that have been greenlit through the MIP9 and MIP8 processes. 
- **A Smart Contracts team** (elected through MIP7) builds and approves the collateral types' adapter, medianizer, oracle security module for collateral types that have been greenlit through the MIP9 and MIP8 processes. Additionally, the Smart Contracts domain team will create the executive vote code (spell) as well as the technical risk assessments of the aforementioned smart contracts.
- **An Oracles team** (elected through MIP7), updates the oracle operations for collateral types that have been greenlit through the MIP9 and MIP8 processes through MIP10 (Oracle Management). Additionally, the Oracles domain team approves the currently active price feeds as well as builds and approves their oracle security audit/risk assessment.
- (Optional) **A Legal team** (elected through MIP7) creates and approves the legal risk assessment of the collateral types based on the work completed by the above domain teams.

---

### MIP12c2: Proposing New Risk Parameters, Oracles, and Collateral Adapters

MIP12c2 is a process MIP component that allows any domain team to propose new risk parameters, oracles, and adaptors for a new, or existing collateral type based on the work products of domain teams using a subproposal.

MIP12c2 subproposals must contain the following three deliverables in the specification section:
1. A risk domain team creates a risk construct for the collateral type (which should, in most cases, be based on a general risk model) and, in some cases, the results of polls that define all risk parameters for the collateral type.
2. A security audit and risk assessment of a deployed and operational collateral adapter, medianizer, oracle security module, and executive vote code by a smart contracts domain team.
3. A security audit and risk assessment of the current status of the oracle price feeds for supporting the new collateral type by an oracle domain team.

 MIP12c2 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days

MIP12c2 subproposals must use the template located at **[MIP12c2-Subproposal-Template.md](MIP12c2-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.

---

### MIP12c3: Collateral Type Checklist for Governance Approval

**Before being approved by governance, the following must be prepared in advance:**

- The risk construct for the collateral type
- The oracle solution for the collateral type

**After the collateral type has been approved by governance, the Smart Contracts Domain Team conducts the following actions to formally implement the collateral type as a part of the Maker Protocol:**

- The **Smart Contract Domain team** creates the executive spell with the following bundled components generated from the risk construct and the oracle solution for the collateral type at hand:
    - `ilk` - Vault type
    - `debt ceiling` - the maximum amount of Dai that can be generated from the Vault/collateral type.
    - `stability fee` - a variable-rate fee on Dai generated from the collateral type's Vault.
    - `collateralization ratio` - the ratio between the value of the collateral and the value of the generated Dai for the specific collateral type Vault.
    - `flipper` - for the specified collateral type
    - `lot` - size for flip auction
    - `beg` - min bid increase
    - `min` - bid increment
    - `end` - max auction duration
    - `ttl` - time duration before an auction ends after a bid
    - **Oracle Requirements:**
        - Specify the location of the Oracle Security Module (OSM) for the collateral type.
        - gem.join adaptor

**Once the executive spell has been created, the code is executed once the Executive Governance Vote passes, and the delay period has passed. At this point, the:**
- The collateral type has been added to the Maker Protocol.
- Vaults can now be created with the new collateral type.

---
