# MIP15: Dark Spell Mechanism

## Preamble
```
MIP#: 15
Title: Dark Fix Mechanism
Author(s): Wil Barnes (@wilbarnes), Charles St.Louis (@CPSTL)
Contributors: 
Type: Process 
Status: Conception 
Date Proposed: 2020-05-21
Date Ratified: <yyyy-mm-dd>
Dependencies:
Replaces:
```
## References

**[Dark Spell Github Repository](https://github.com/makerdao/dss-darkspell)**  
**[MIP15c7-Subproposal-Template.md](MIP15c7-Subproposal-Template.md)**  
**[MIP15c8-Subproposal-Template.md](MIP15c8-Subproposal-Template.md)**  

## Sentence Summary

MIP15 proposes a process for applying critical bug fixes to the Maker Protocol.

## Paragraph Summary

As a means to protect MKR holders and the greater Maker community from a critical vulnerability, a special spell maneuver can be used in lieu of an unplanned Emergency Shutdown, allowing protocol fixes to be applied with zero downtime. 

This MIP proposes a special spell mechanism called a "dark spell" that conceals sensitive bytecode for the full duration of the governance vote and Governance Security Module (GSM) delay. A necessary mechanism as on-chain bytecode awaiting the GSM delay can be reverse-engineered by sophisticated attackers before going into effect. This is an improvement over using Emergency Shutdown but introduces a level of trust between the community and the Smart Contracts (SC) domain team.

## Component Summary

**MIP15c1: Definitions**
Defines several concepts that are important for understanding the Dark Spell mechanism.

**MIP15c2: Dark Spell Process Overview**
A step-by-step walkthrough of how a dark spell is deployed and an overview of which stakeholders are involved in the process.

**MIP15c3: Dark Spell Requirements**
Defines the critical bug criteria that necessitate a dark spell. 

**MIP15c4: Dark Spell Governance Vote**
Defines the required governance processes for implementing a dark spell, independent of the monthly governance cycle. 

**MIP15c5: Policy**
Describes the Policy for handling critical vulnerabilities in the Maker Protocol. 

**MIP15c6: Active List of Trusted Third Parties**
A list of the Trusted Third Parties that have been voted in by MKR holders. 

**MIP15c7: Trusted Third Party Election Process**
Defines the process for electing a trusted third party. 

**MIP15c8: Trusted Third Party Removal Process**
Defines the process for the removal of a trusted third party. 


## Motivation

This proposal aims to establish a process for how the Maker Community, the Smart Contracts (SC) domain team, and a trusted third party will work together with urgency to respond to and resolve critical vulnerabilities discovered in the Maker Protocol. 

## Specification / Proposal Details

**MIP15c1: Definitions**
- **Critical bug:** a bug that, if exploited, would result in significant economic damage to the system, is feasible for an attacker to exploit against the Ethereum mainnet either now or in the near future, with the system in normal operational mode. 
- **Spell:** A spell is an un-owned object that performs one action or a series of atomic actions (multiple transactions) one time only to the Maker protocol.
- **Dark Spell:** A special spell using an opcode that allows the address of a spell to be pre-determined before deployment. 
- **Governance Security Module (GSM) Delay:** A configurable delay attribute, setting the minimum wait time before governance votes, can be applied to the system.  

---

**MIP15c2: Dark Spell Process Overview**

**Summary:** 
The Dark Spell mechanism occurs over seven main steps and involves four key stakeholders. 

**Stakeholders:** 
- Smart Contracts Domain Team
- Trusted Third Party
- Governance Facilitator(s)
- The Maker Community

**Step-by-step breakdown of deploying a dark spell:**

- **Step 1:** The Smart Contracts (SC) domain team develops and tests the dark spell.
- **Step 2:** The SC domain team communicates the dark spell to the community and trusted third party using discretion over the level of detail.
- **Step 3:** The trusted third party coordinates an expedited discussion, and builds awareness concerning the fix and its approving governance vote.
- **Step 4:** The trusted third party confirms the sense of urgency and indicates to the governance facilitator to schedule a vote.
- **Step 5:** The dark spell governance vote is scheduled, and the GSM delay period begins once the vote passes. 
- **Step 6:** Once the delay has passed, the fix is immediately applied to the Maker Protocol via an atomic transaction. 
- **Step 7:** The trusted third party and SC domain team produce and release a post-mortem of the dark spell process to the Maker community. 

---

**MIP15c3: Dark Spell Requirements**

A dark spell is necessary because it conceals the bytecode that fixes the critical bug. When the Maker Protocol has a non-zero GSM delay, protocol changes must pass a governance vote in order to be scheduled but cannot be applied until the GSM delay duration has passed. Furthermore, if a normal spell were used in such a situation, the bytecode would be available for anyone to inspect for the length of the delay. This would open up the opportunity for the bytecode to be reverse-engineered, allowing sophisticated attackers to exploit the available information before the bug is fixed. 

**Criteria for whether a critical vulnerability necessitates a dark spell fix:**

1. Exploitation of the vulnerability results in significant economic damage to the system.
2. It is feasible for an attacker to exploit the vulnerability against the Ethereum mainnet either now or in the near future. 
3. The system must be in normal operational mode. 

If all of the above criteria are met, the step-by-step process outlined in MIP15c2 should begin immediately upon the discovery of a critical vulnerability. 

---

**MIP15c4: Dark Spell Governance Vote**

A dark spell should be used only in exigent circumstances. Therefore, the dark spell will be expedited through the Maker governance process via a separate vote, unbundled from any other proposed Protocol changes or Maker Improvement Proposals. This additional process is intended to give the dark spell governance vote the greatest chance of success, as voters will be voting on a specific, individual issue.

Furthermore, including the dark spell governance vote into the monthly governance cycle is not advised, as the timing of the vote may not align with the current governance cycle stage.

**Governance Vote Template:**

```
Vote Title: Should we fix X critical vulnerability in the Maker Protocol?

Description:

If passed, this vote will be taken as a signal to domain teams that MKR Token Holders have approved the use of a dark spell to fix a critical vulnerability in the Maker Protocol.

Background and discussion can be found at the following forum thread: <url>

Vote Options:
- [ ] Abstain 
- [ ] Yes
- [ ] No

Duration of Vote:

The poll is expedited and will run for twenty-four (24) hours.
```

---

**MIP15c5: Policy**

In the event a **critical bug** is discovered in the current Multi-Collateral Dai deployment, the SC domain team will develop and test the dark spell. The SC team is required to give notice to the community, providing as much information as possible about the bug's impact, limited by the need to maintain secrecy.

Upon being notified of the vulnerability, the elected trusted third party will begin coordination of the response, initiating discussion, and acting as a liaison between the community and the SC domain team. As part of this role, the trusted third party will coordinate with the SC domain team, including an expedited discussion period that will occur at a length contingent on the bug at hand and under guidance from the trusted third party.

After the spell is cast, a post-mortem document will be provided informing the community of all changes, the rationale, and the process followed to arrive at the decision. This document is to be created with input from both the trusted third party and the SC domain team.

This process is designed to give the trusted third party autonomy over how they will handle a critical bug response and how they communicate it to the community. The intention is that this process will evolve through iterative improvements as risks and opportunities arise over time.

---

### MIP15c6: Active List of Trusted Third Parties

This list can be amended through the onboarding (MIP15c7) and offboarding (MIP7c8) components of MIP15.

**If there are no active trusted third parties, the responsibility for fulfilling these obligations falls upon the Smart Contracts domain team.

**Entries into this list should follow the following template:**

```
Trusted Third Party Name: The name of the onboarded third party.
- Sub-proposal Number (MIP15c7-SP): #
- Date Added: (yyyy-mm-dd)
```

**Active Trusted Third Parties List**

- There are no active, trusted third parties. 

---
### MIP15c7: Trusted Third Party Onboarding

MIP15c7 is a Process MIP component that allows the onboarding of a trusted third party using a subproposal. 

If onboarded through a MIP15c7 subproposal, the trusted third party is added to the Active List of Trusted Third Parties defined in MIP7c6 by a MIP Editor.

MIP15c7 subproposals have the following parameters:
-   **Feedback Period**: 3 months
-   **Frozen Period**: 1 month

MIP15c7 subproposals must use the template located at **[MIP15c7-Subproposal-Template.md](MIP15c7-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to the Accepted status.

---

### MIP15c8: Trusted Third Party Offboarding

MIP15c8 is a Process MIP component that allows the removal of a trusted third party using a subproposal.

If offboarded through a MIP15c8 subproposal, the trusted third party is removed from the Active List of Trusted Third Parties defined in MIP15c6 by a MIP Editor.

 MIP15c8 subproposals have the following parameters:
-   **Feedback Period**: 0 days
-   **Frozen Period**: 0 days

MIP15c8 subproposals must use the template located at  **[MIP15c8-Subproposal-Template.md](MIP15c8-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to the Accepted status.

