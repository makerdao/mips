# MIP13: Declarations of Intent

## Preamble
```
MIP#: 13
Title: Declarations of Intent
Author(s): @LongForWisdom
Contributors: n/a
Type: Process
Status: Accepted
Date Proposed: 2020-05-12
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP0
Replaces: n/a
```
## References
**[MIP13c3-Subproposal-Template.md](MIP13c3-Subproposal-Template.md)**  
**[MIP13c4-Subproposal-Template.md](MIP13c4-Subproposal-Template.md)**  

## Sentence Summary

MIP13 introduces declarations of intent, which allow Maker Governance to signal an intention to the wider community.

## Paragraph Summary

MIP13 introduces declarations of intent, which allow Maker Governance to signal an intention to the wider community. MIP13 defines a list of Active declarations, and the processes required to declare, revoke and modify declarations. These declarations can help to inform DAO members or the Maker Foundation as to the issues and priorities that Governance considers to be important.

## Component Summary

**MIP13c1: What is a Declaration of Intent?**  
Describes the desireable properties of a Declaration of Intent, and the considerations that should be made when creating or modifying one.

**MIP13c2: List of Active Declarations**  
A list component which contains a list of the currently active declarations of intent.

**MIP13c3: Declaration of Intent Process**  
A process component that allows Maker Governance to create, replace or amend-through-replace a declaration of intent.

**MIP13c4: Revocation of Intent Process**  
A process component that allows Maker Governance to revoke a declaration of intent.

## Motivation

MIP13 is designed to formalize and expand on a pattern of behavior that has appeared consistently in the Maker Governance community. This pattern of behaviour tends to look like this:
1. Recognise that something should be done.
2. Discuss the problem.
3. Vote in some form to ensure that a majority wants to do something.
4. Hope someone does the thing.

We've seen this pattern come up multiple times, across multiple different subjects. Three examples that come to mind are:
1. The shutdown of SCD.
2. The introduction of ranked on-chain voting.
3. Compensation of vaults that lost money on Black Thursday. 

In each of these cases, there was no formal record of the declaration of intent beyond an on-chain poll and the various forum threads that led to the decision. By formalizing this process in MIPs, anyone wishing to interact with Maker Governance can easily discover what has been agreed on various topics in one place. In addition there will be a record of when each declaration took place, and the described reasons for it to have been declared.

## Specification / Proposal Details

### MIP13c1: What is a Declaration of Intent?  

**Definition**

A declaration of intent is a statement that declares an intention Maker Governance has to the wider ecosystem. Such declarations should be made with the aim of prompting action in a certain area.

There may be other ways to use 'Declarations' outside of intention, this system could be generalized to declaring other concepts, such as beliefs, or goals. However, based on the principles of specificity and brevity, it is suggested that these variations are defined as separate MIPs if they are determined to be needed.

**Specificity**

Declarations should be worded carefully to capture the intention of Maker Governance as precisely as possible, however, that does not mean that declarations *must* always be specific and precise. 

There may be times when Maker Governance does not care about the implementation details used to solve a problem, only that the problem is solved. There may also be times where Maker Governance has already discussed possible solutions to a problem and already aligned on an implementation to a point where they would accept *only that specific implementation.* 

Declarations of both types (and anything inbetween) should be considered legitimate, but Maker Governance should take care to make it clear where each declaration lies on the scale between these two extremes.

---

### MIP13c2: List of Active Declarations  

This list can be amended through subproposals created under MIP13c3, MIP13c4 and MIP13c5.

**Entries into this list should follow the following template:**

```
Declaration Statement:
Sub-proposal Number: #
Date Ratified: (yyyy-mm-dd)
```

Note that the subproposal code should link to the relevant subproposal.

**Active Declarations List**  
There are currently no active declarations. Below is an example declaration which should be removed (as should this paragraph) when the first ratified declaration is added to this list. If there are no active declarations, the example declaration and this paragraph should be restored. 

```
Declaration Statement: All Governance Facilitators should be given chocolate on the 30th of February each year.
Sub-proposal Number: MIP13c3-SP0
Date Ratified: 2020-02-30
```

---

### MIP13c3: Declaration of Intent Process  
MIP13c3 is a Process MIP component that allows MKR Governance to create, replace or amend-through-replace a declaration of intent through a subproposal. 

If a declaration of intent is ratified through a MIP13c3 subproposal, it should be added to the MIP13c2 list by a MIP Editor. 

If the subproposal defines a declaration to be replaced then:
- That declaration should be removed from the MIP13c2 list by a MIP Editor
- The replaced declarations subproposal status should be changed to 'revoked' by a MIP Editor

MIP13c3 subproposals have the following parameters:
-   **Feedback Period**: 4 full weeks
-   **Frozen Period**: 1 full week

MIP13c3 subproposals must use the template located at **[MIP13c3-Subproposal-Template.md](MIP13c3-Subproposal-Template.md)**. This template is considered ratified if this MIP moves to Accepted status.

---

### MIP13c4: Revocation of Intent Process  

MIP13c4 is a Process MIP component that allows MKR Governance to revoke a declaration of intent through a subproposal.

If a declaration of intent is revoked through a MIP13c4 subproposal then:
- That declaration should be removed from the MIP13c2 list by a MIP Editor.
- The revoked declarations subproposal status should be changed to 'revoked' by a MIP Editor

MIP13c4 subproposals have the following parameters:
-   **Feedback Period**: 4 full weeks
-   **Frozen Period**: 1 full week

MIP13c4 subproposals must use the template located at **[MIP13c4-Subproposal-Template.md](MIP13c4-Subproposal-Template.md)**. This template is considered ratified if this MIP moves to Accepted status.

---
