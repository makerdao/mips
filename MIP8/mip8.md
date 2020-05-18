# MIP8: Domain Greenlight

## Preamble
```
MIP#: 8
Title: Domain Greenlight
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23)
Contributors: @LongForWisdom, Leo Jsaraceno (@Mitote), Helge Andreas Qvam (@planet_X)
Type: Process
Status: Accepted
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Dependencies: n/a
Replaces: n/a
```
## References
No referenced materials.

## Sentence Summary

MIP8 defines the process by which domain teams signal that a potential collateral type is worth the time spent investigating its inclusion in the Maker Protocol.

## Paragraph Summary

This proposal aims to define the process where at least one domain team from each domain (Risk, Smart Contracts, Oracles, Legal, etc) "Greenlights" the collateral type (based on research) in order for the collateral onboarding process to proceed.

## Component Summary

**MIP8c1: Domain Greenlight Requirements**  
Defines the responsibilities of the domain teams in the domain greenlight process.

**MIP8c2: Domain Greenlight Process**  
Defines the domain greenlight process and its interaction with the collateral onboarding process.

**MIP8c3: Domain Greenlight Outcomes**  
Defines the possible outcomes from the domain greenlight process.


## Motivation

The goal of this proposal is to inform the community about the pre-evaluation stage with the aim of identifying any show-stopping problems before time is spent on a full evaluation of the collateral type.

## Specification / Proposal Details

In this stage, the domain teams will signal that they believe the collateral type is worth the time to perform a full evaluation in their respective domain. Note that this stage may happen in parallel to the MIP6 process, but communication from the Domain teams should always come within two weeks of the end of the allotted review time for MIP6's collateral onboarding form/forum publication. 

### MIP8c1: Domain Greenlight Requirements

-   If unresolvable issues arise with a specific domain, that domain team is responsible for communicating that they have **rejected** the collateral type to both the interested party and the community via the Maker forums. The domain team will provide a reason for rejection as part of this communication.
-   If resolvable issues arise with a specific domain, that domain team is responsible for communicating that the collateral is **deferred** to both the interested party, and to the community via the Maker forums. This communication will include an explanation for the change in status and the criteria that should be met before they resume work.
-   If there are no issues that warrant stopping this process, then each domain team is responsible for communicating that they are happy to proceed to a full evaluation. This is done by a member of each type of domain team making a forum reply to the MIP6 collateral application forum post saying they have done a MIP8 review and found no issues.

---

### MIP8c2: Domain Greenlight Process

-   In case new information becomes available that changes the assessment of a domain team, they can revoke their greenlight by posting that they are revoking it in the same forum post.
-   If domain greenlight fails from one or multiple domain teams, it does not prevent the asset from being considered for collateral onboarding. It only prevents it from being onboarded if there is not an alternative team in that domain willing to greenlight it.

#### Overall Process Overview Diagram

<img width="822" alt="mip8-diagram" src="https://user-images.githubusercontent.com/32653033/79890509-9637e000-83cd-11ea-8078-7fcaac410a51.png">

---
    
### MIP8c3: Domain Greenlight Outcomes

-   Regardless of whether any issues are raised, the process continues with MIP9 (Community Greenlight).
-   If **deferred**, a resumption criterion is defined and communicated clearly. Until all **deferred** criteria are met, the deferring domain team will not work on the collateral. 
-   If **rejected** by any domain team, that team has signalled that they are unwilling to do further work on the collateral and that they do not recommend it for inclusion into the Maker Protocol.
