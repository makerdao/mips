# MIP7: Onboarding and Offboarding Domain Teams (Collateral Onboarding)

## Preamble
```
MIP#: 7
Title: Onboarding and Offboarding Domain Teams (Collateral Onboarding)
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23)
Contributors: @LongForWisdom, Leo Jsaraceno (@Mitote), Helge Andreas Qvam (@planet_X)
Type: Process
Tags: process, collateral-onboarding, domain-team, risk-team, smart-contracts-team, oracle-team, legal-team, active-list
Status: Request for Comments (RFC)
Date Proposed: 2020-04-06
Dependencies: n/a
Replaces: n/a
```
## Sentence Summary

MIP7 defines processes for onboarding and offboarding domain teams.

## Paragraph Summary

The Domain Teams Onboarding & Offboarding proposal provides a predictable framework for both onboarding and offboarding domain teams required for the collateral onboarding process.

## Component Summary

**MIP7c1: Domain Team Descriptions**  
Describes the various domain teams and their responsibilities as they relate to the collateral onboarding process.

**MIP7c2: The Current Domain Roles List**  
A list component that is kept up-to-date with the currently ratified domain teams.

**MIP7c3: Domain Team onboarding**  
A process component that defines a method and a template that allows the onboarding of domain teams.

**MIP7c4: Domain Team offboarding**  
A process component that defines a method and a template that allows the offboarding of domain teams.

## Motivation

The Maker Protocol requires a decentralized workforce in order to onboard new collateral assets. This MIP  describes Domain Teams that are needed in the collateral onboarding process and highlights their special authority in the governance system to oversee critical processes and mitigate risk.

## Specification / Proposal Details

### MIP7c1: Domain Team Descriptions

- **Oracle Teams** are responsible for designing oracle feed mechanisms for new collateral types, compelling the oracles to upgrade their nodes with new price feeds for new collateral types via MIP10, and creating the oracle work product for collateral onboarding.
- **Smart Contracts Teams** are responsible for developing and deploying the collateral adapter for new collateral onboarding, and creating the technical work product for collateral onboarding proposals.
- **Risk Teams** are responsible for creating the risk construct for a collateral onboarding proposal. As a part of the collateral on-boarding process, they also need to get a general model ratified on which they can base their risk construct.
- **Legal Teams** are in some cases necessary for collateral onboarding, when dealing with assets that have legal claims attached to them. They create the legal work product for collateral onboarding.


---

### MIP7c2: The Current Domain Roles List

This list can be amended through the onboarding (MIP7c3) and offboarding components (MIP7c4) of MIP7.

**Entries into this list should follow the following template:**

```
- Team Name: The name of the onboarded domain team.
- Sub-proposal Number (MIP7c3-SP): #
- Domain: The domain in which the team operates.
- Date Added: <date in (yyyy-mm-dd) format>
```

**Active Domain Teams List**

**1. Oracle Domain Teams:** 
- **Team Name:** Green Team
	- **Sub-proposal Number (MIP7c3-SP):** n/a (Oracle Team was ratified prior to the MIPs process. Reference: [Mandate: Oracle Teams](https://forum.makerdao.com/t/mandate-oracle-teams/443))
	- **Domain:** Oracle
	- **Date Added:** 2019-10-7 [Poll: Ratify the Interim Oracle Team Mandate](https://vote.makerdao.com/polling-proposal/qmas1bqrquo2h41qv4fa8hpek9ukb7dlwtpkpn62r5hhmq)

**2. Smart Contracts Domain Teams:**

**3. Risk Domain Teams:**

**4. Legal Domain Teams:**

---

### MIP7c3: Domain Team Onboarding
- **Outcome:** Domain team is either onboarding successfully or is rejected. If onboarded, the domain team is added to the The Current Domain Team Roles list defined in MIP7c2 by the MIP Editor.
-   **Feedback Period**: 3 months
-   **Frozen Period**: 1 month
-   **Onboarding template:**

```
Introduction

 - Domain: <Ex: Risk>
 - Domain Team Name: <Ex: Risk Team A>
 - Author: <Person creating this proposal>
 - Date Applied: <date created on, in (yyyy-mm-dd) format>

Application

-   Domain Team Introduction

	-   Brief introduction / pitch of the team, why they want to work.
    

-   Motivation

	-   Why the team wants to join a certain domain.
    

-   Work Credentials

	-   Full names of members
	-   Past work experience of members
    
-   Relevant Information
    
	- Github accounts
	- Forum accounts
	- Other 
```
---

### MIP7c4: Domain Team offboarding
- **Outcome:** The Domain team is offboarded and the Domain team is removed from the Current Domain Team Roles list defined in MIP7c2 by the MIP Editor.
-   **Feedback Period**: 0 days
-   **Frozen Period**: 0 days
-   **Offboarding template:**

```
Introduction
    
    - Domain Team Name:   
    - Date of Proposed Removal: <date created on, in (yyyy-mm-dd) format>
    
Specification
        
    - Removal Motivation:
        - An explanation behind the motivation for the removal of the domain team. 
    
    - Relevant Information:
    	-  Links to evidence further backing the motivation behind the removal of the domain team.
```
---
