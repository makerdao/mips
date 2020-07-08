# MIP12: Collateral and Risk Parameter Management

## Preamble
```
MIP#: 12
Title: Collateral and Risk Parameter Management
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23) 
Type: Technical, Process
Status: Accepted
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Last Amended: 2020-06-25
Dependencies: MIP0, MIP3, MIP7, MIP17
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

**MIP12c4: Target Debt Ceiling and Target Risk Premium Adjustment Requirements**

Defines the requirements for which collateral types can have their Target Debt Ceiling and Target Risk Premium (TRP) risk parameters adjusted.


**MIP12c5: List of Enabled Collateral Types and their Risk Parameters**

Defines the requirements for getting a collateral type added to the List of Enabled Collateral Types. 

## Motivation

This proposal will focus on the collateral onboarding process blueprint for submitting MIP12 Subproposals (MIP12-SPs). Submitting MIP12 Subproposals is the final step before collateral types go through the governance cycle and ultimately get added to or rejected from the Maker Protocol. The Subproposal process is reserved for domain teams to propose new risk parameters, oracles, and adapters for a new, or existing collateral type. This proposal also details the overall collateral onboarding process requirements. Furthermore, it allows domain teams to execute on collateral onboarding via the executive vote. 

## Specification / Proposal Details

### MIP12c1: Domain Team Requirements for Onboarding Collateral Type to the Maker Protocol

- **A Risk team** (elected through MIP7) builds and approves risk constructs for the collateral types. 
- **A Smart Contracts team** (elected through MIP7) builds and approves the collateral types' adapter, medianizer, oracle security module for collateral types. Additionally, the Smart Contracts domain team will create the executive vote code (spell) as well as the technical risk assessments of the aforementioned smart contracts.
- **An Oracles team** (elected through MIP7), updates the oracle operations for collateral types. Additionally, the Oracles domain team approves the currently active price feeds as well as builds and approves their oracle security audit/risk assessment.
- (Optional) **A Legal team** (elected through MIP7)  creates and approves the legal risk assessment of the collateral types based on the work completed by the above domain teams.

---

### MIP12c2: Proposing New Risk Parameters, Oracles, and Collateral Adapters

MIP12c2 is a process MIP component that allows any domain team to propose new risk parameters, oracles, and adaptors for a new, or existing collateral type based on the work products of domain teams using a subproposal.

MIP12c2 subproposals must contain the following three deliverables in the specification section:
1. A risk domain team creates a risk construct for the collateral type (which should, in most cases, be based on a general risk model) and, in some cases, the results of polls that define all risk parameters for the collateral type.
2. A smart contracts domain team creates a security audit/risk assessment of a deployed and operational collateral adapter, medianizer, oracle security module, and executive vote code. 
3. An oracle domain team creates a security audit/risk assessment of the current status of the oracle price feeds for supporting the new collateral type.

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
    - `min` bid increment
    - `end` - max auction duration
    - `ttl` - time duration before an auction ends after a bid
    - **Oracle Requirements:**
        - Specify the location of the Oracle Security Module (OSM) for the collateral type.
        - gem.join adaptor

**Once the executive spell has been created, the code is executed once the Executive Governance Vote passes, and the delay period has passed. At this point, the:**
- The collateral type has been added to the Maker Protocol.
- Vaults can now be created with the new collateral type.
        
---
### MIP12c4: Target Debt Ceiling and Target Risk Premium Adjustment Requirements

The [MIP17](https://github.com/makerdao/mips/blob/RFC/MIP17/mip17.md) proposal adds extra flexibility to collateral types that are MIP17 enabled, by giving Maker Governance the recurring option to dynamically adjust their Actual Debt Ceilings and Actual Risk Premiums based on the utilization of the collateral type. Only collateral types that have been added/specified as being MIP17 enabled through a **MIP12c2 Subproposal** (Proposing New Risk Parameters, Oracles, and Collateral Adapters) can have their Target Debt Ceiling and Target Risk Premium (TRP) risk parameters adjusted. The assets that are MIP17 enabled, and their Target Debt Ceiling and Target Risk Premium parameters are listed on the current active list of Enabled Collateral Types in MIP12c5. MIP12c5 is updated when Maker Governance successfully ratifies a MIP12c2 Subproposal. A MIP12c2 subproposal can either add a new MIP17 enabled collateral type or modify an already existing MIP17 enabled collateral type.

**Note:**

- The Target Debt Ceiling (TDC) risk parameter determines which debt level the Actual Risk Premium will be equal to the Target Risk Premium.
- The Target Risk Premium (TRP) is the parameter that determines how the magnitude of Risk Premiums that the collateral type will have at different levels of Actual Debt Ceiling.

---

### MIP12c5: List of Enabled Collateral Types and their Risk Parameters

The MIP17 enabled collateral types in this component list are authorized for the original collateral types added to the Maker Protocol. More specifically, this means that only assets with the '-A' indicator can be added to this Enabled Collateral Types list. For example, assets such as **USDC-B** are not authorized to be added to the list. 

**The Enabled Collateral Types List:**

- **ETH-A**
    * TDC: 160 million 
    * TRP: 0%
- **BAT-A**
    * TDC: 3 million
    * TRP: 0%
- **WBTC-A**
    * TDC: 20 million
    * TRP: 2%
- **KNC-A**
    * TDC: 5 million
    * TRP: 4%
- **ZRX-A**
    * TDC: 5 million
    * TRP: 4%
- **USDC-A**
    * TDC: 40 million
    * TRP: 4%

**Risk Parameter Definitions:**
- **Target Debt Ceiling (TDC):** This is a risk parameter that is set by MIP12 subproposals, which regulates the adjustment of the Actual Debt Ceiling and the Actual Risk Premium in the Weekly Governance Cycle ([MIP16](https://github.com/makerdao/mips/blob/RFC/MIP16/mip16.md)).
- **Target Risk Premium (TRP):** A risk parameter set by MIP12 subproposals regulates the Actual Risk Premium's adjustment.

---
