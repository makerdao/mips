# MIP13: Declarations of Intent

## Preamble
```
MIP#: 13
Title: Declarations of Intent
Author(s): @LongForWisdom
Contributors: n/a
Type: Process
Status: Request for Comments (RFC)
Date Proposed: 2020-05-12
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP0
Replaces: n/a
```
## References
**[MIP13c3-Subproposal-Template.md](MIP13c3-Subproposal-Template.md)**  
**[MIP13c4-Subproposal-Template.md](MIP13c4-Subproposal-Template.md)**  
**[MIP13c5-Subproposal-Template.md](MIP13c5-Subproposal-Template.md)**  

## Sentence Summary

MIP13 introduces declarations of intent, which allow Maker Governance to signal an intention to the wider community and optionally attach a monetary incentive to help convert that intention into reality.

## Paragraph Summary

MIP13 introduces declarations of intent, which allow Maker Governance to signal an intention to the wider community and optionally attach a monetary incentive to help make that intention into reality. MIP13 defines a list of Active declarations, and the processes required to declare, revoke and modify declarations. Additionally, Maker Governance is able to optionally attach bounties to these declarations in order to incentivise actors to work on making them a reality.

## Component Summary

**MIP13c1: What is a Declaration of Intent?**  
Describes the desireable properties of a Declaration of Intent, and the considerations that should be made when creating or modifying one.

**MIP13c2: List of Active Declarations**  
A list component which contains a list of the currently active declarations of intent.

**MIP13c3: Declaration of Intent Process**  
A process component that allows Maker Governance to create, replace or amend-through-replace a declaration of intent.

**MIP13c4: Revocation of Intent Process**  
A process component that allows Maker Governance to revoke a declaration of intent.

**MIP13c5: Acceptance of Work Process**  
A process component that allows Maker Governance to formally accept work done as the realisation of a declared intention and disburse any relevant bounties.

**MIP13c6: Considerations for Bounty Hunters**  
Lays out a set of considerations for Bounty Hunters that wish to earn bounties through working on declared intents.

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

The inclusion of bounties helps to deal directly with point 4 listed above, in that after Maker Governance declares the intent to do something (regards of the method used to do so), it is currently unable to incentivise that thing to take place without relying in some way on the Maker Foundation. 


## Specification / Proposal Details

### MIP13c1: What is a Declaration of Intent?  

**Definition**

A declaration of intent is a statement that declares an intention Maker Governance has to the wider ecosystem. Such declarations should be made with the aim of prompting action in a certain area.

There may be other ways to use 'Declarations' outside of intention, this system could be generalized to declaring other concepts, such as beliefs, or goals. However, based on the principles of specificity and brevity, it is suggested that these variations are defined as separate MIPs if they are determined to be needed.

**Specificity**

Declarations should be worded carefully to capture the intention of Maker Governance as precisely as possible, however, that does not mean that declarations *must* always be specific and precise. 

There may be times when Maker Governance does not care about the implementation details used to solve a problem, only that the problem is solved. There may also be times where Maker Governance has already discussed possible solutions to a problem and already aligned on an implementation to a point where they would accept *only that specific implementation.* 

Declarations of both types (and anything inbetween) should be considered legitimate, but Maker Governance should take care to make it clear where each declaration lies on the scale between these two extremes.

**With relation to bounties**

While it's perfectly acceptable to declare intent in vague terms, it is suggested that Governance consider the vagueness of the declaration as a factor when determining if a bounty is released. Vague intentions may result in implementations that match the intention as written, but are not what Maker Governance expected, this should not be used as an excuse to deny bounty payments.

---

### MIP13c2: List of Active Declarations  

This list can be amended through subproposals created under MIP13c3, MIP13c4 and MIP13c5.

**Entries into this list should follow the following template:**

```
Declaration Statement:
Sub-proposal Number: #
Date Ratified: (yyyy-mm-dd)
Bounty: 
```

Note that the subproposal code should link to the relevant subproposal.


**Active Declarations List**  
There are currently no active declarations. Below is an example declaration which should be removed (as should this paragraph) when the first ratified declaration is added to this list .

```
Declaration Statement: All Governance Facilitators should be given chocolate on the 30th of February each year.
Sub-proposal Number: MIP13c3-SP0
Date Ratified: 2020-02-30
Bounty: 1,000,000 DAI
```

---

### MIP13c3: Declaration of Intent Process  
MIP13c3 is a Process MIP component that allows MKR Governance to create, replace or amend-through-replace a declaration of intent through a subproposal. 

Note that Declarations of Intent can be assigned bounties as part of this process. Bounties are always denominated and provided in DAI.

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

### MIP13c5: Acceptance of Work Process  
MIP13c5 is a Process MIP component that allows MKR Governance to formally accept work done as the realisation of a declared intention and disburse any relevant bounties. Note that MIP13c5 subproposals are technical subproposals, they define executive code that transfers DAI from the Maker Protocol to the producer(s) of the accepted work.

If work is accepted that fulfils a declared intention then:
- The fulfilled declaration should be removed from the MIP13c2 list by a MIP Editor.
- The fulfilled declarations subproposal status should be changed to 'fulfilled' by a MIP Editor.

MIP13c5 subproposals have the following parameters:
-   **Feedback Period**: 4 full weeks
-   **Frozen Period**: 1 full week

MIP13c5 subproposals must use the template located at **[MIP13c5-Subproposal-Template.md](MIP13c5-Subproposal-Template.md)**. This template is considered ratified if this MIP moves to Accepted status. The 'Proposed Executive Code' section of this template should be left unchanged by subproposal authors.

---

### MIP13c6: Considerations for Bounty Hunters  
This component is included to provided guidance to Bounty Hunters that wish to fulfil declared intentions and recieve DAI as bounty.

1. Payment is contingent on demonstrating to Maker Governance that the intention has been satisfied.
2. Once the work has been completed, the party responsible for the work should submit a MIP13c5 subproposal to claim the bounty.
3. Work with Maker Governance as much as possible for each step of the process, make sure that you have a full understanding of the intention described in the declaration of intent subproposal.
4. If you are worried that a specific declaration of intent is confusing, ambiguous, or otherwise badly formed, please communicate this before starting work.
5. If a declaration of intent is quite old, consider reaching out to Maker Governance to enquire as to whether it is still valid before starting work. This may prompt a new declaration of intent in the case intentions have changed.
6. Due to the way the Governance Cycle operates, payment for completed bounties may be delayed for several months in the worst case.
