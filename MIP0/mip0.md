# MIP0: The Maker Improvement Proposal Framework

## Preamble

```
MIP#: 0
Title: The Maker Improvement Proposal Framework
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23)
Contributors: @LongForWisdom, @blimpa, @Elihu
Type: Process
Status: Accepted
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Last Amended: 2023-02-26
Dependencies: n/a
Replaces: n/a
Ratification Poll URL:
Forum URL: https://forum.makerdao.com/t/mip0-the-maker-improvement-proposal-framework/1902
Extra: This MIP has been amended. See [MIP4c2-SP10](https://mips.makerdao.com/mips/details/MIP4c2SP10), [MIP4c2-SP13](https://mips.makerdao.com/mips/details/MIP4c2SP13), [MIP4c2-SP14](https://mips.makerdao.com/mips/details/MIP4c2SP14), and [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1). The original version can be found [here](https://github.com/makerdao/mips/blob/2f474bd463b2a239ed9a26dcf6509c3471e8a55b/MIP0/mip0.md).
```

## References

**[General-MIP-Template.md](General-MIP-Template.md)**  
**[Technical-MIP-Template.md](Technical-MIP-Template.md)**

## Sentence Summary

MIP0 defines the *Maker Improvement Proposals (MIPs) Framework* for all subsequent MIPs to utilize.

## Paragraph Summary

MIP0 defines the *Maker Improvement Proposals (MIPs) Framework* for all subsequent MIPs to utilize. This MIP is the foundational MIP that provides the necessary templates, processes, and guidelines for working within the framework and defines the key roles required for the operation of the MIPs Process.

## Component Summary

**MIP0c1: Definitions of the Maker Improvement Proposal Framework**  
*Defines core concepts of the MIP Framework.*  

**MIP0c2: Endgame Configuration**  
*Specifies which MIPs are active*  

**MIP0c3: The MIP Lifecycle**  
*Defines the formal stages in the lifecycle of MIPs from conception to approval, rejection, or deferral.*  

**MIP0c4: MIP Components and MIP Component Types**  
*Defines MIP Components and their types.*  

## Motivation

For MakerDAO to evolve into a fully decentralized and self-sustainable organization, a formalized process of decision-making is required.

The MIP Framework serves to empower each off-chain and on-chain Governance participant by giving them a standardized way of interacting with the wider DAO.

In Endgame, the MIP framework is eventually going to be fully replaced with the Maker Constitution and the Scope Frameworks, and this MIP regulates the transition period before they are fully replaced.

## Specification / Proposal Details

### MIP0c1: Definitions of the Maker Improvement Proposal Framework

- **Maker Improvement Proposals (MIPs):** - MIPs are standardized documents subject to voting that, once given the accepted status through the process described in MIP0, regulate and define the behavior of Maker Governance and the Maker Protocol. MIPs can be amended and removed. All MIPs except for Endgame MIPs are automatically considered obsolete, and do not have any effect on Maker Governance processes, Governance Polls, or Executive Votes.
- **Endgame MIPs:** Endgame MIPs are MIPs that are specifically designated in MIP0c2 to remain active after the Maker Constitution has come into effect.
- **Governance Process Support Ecosystem Actors:** Individuals or companies that have been publicly designated by an Ecosystem Facilitator to be tasked with Governance Process Support, including MIP process support.
-   **Subproposals (SPs):** Subproposals are instances of Process MIP Components. See `MIP0c4`.  
-   **Minimum Feedback Period:** The minimum amount of time within which the community can give feedback in response to a proposed MIP before it can advance to Formal Submission. See `MIP0c3`.  
-   **Minimum Frozen Period:** The minimum amount of time during which a MIP must remain unchanged before it can advance to Formal Submission. See `MIP0c3`.

### MIP0c2: Endgame MIPs
New MIPs cannot be submitted.

All MIPs except the Endgame MIPs and their Subproposals lose their accepted status, and must be assigned as obsolete. They are automatically considered obsolete by Maker Governance, regardless of which status they have been assigned. 

All MIPs except the Endgame MIPs and their Subproposals have no effect, and do not impact Maker Governance, Core Units, or the Maker Protocol in any way, and cannot trigger Governance Polls or Executive Votes. This does not affect consequences of those MIPs that has already occured, such as smart contracts, legal entities, payments that have already been made, etc.

The Endgame MIPs are:
- MIP0
- MIP16
- MIP24
- MIP38
- MIP39
- MIP40
- MIP41
- MIP51
- MIP55
- MIP62
- MIP101
- MIP102
- MIP104
- MIP106
- MIP107
- MIP108
- MIP113

### MIP0c3: The MIP Lifecycle

#### MIP Lifecycle Breakdown

1. **Conception**: A MIP Author posts a MIP proposal in the [Maker forum](https://forum.makerdao.com/c/mips/14) under the *Maker Improvement Proposals* category. From this point on, Governance Process Support Ecosystem Actors will be available to assist the MIP Author.

2. **Approved by Governance Process Support Ecosystem Actor(s)**: A Governance Process Support Ecosystem Actor verifies that the posted MIP proposal:

   - Follows the appropriate format of the MIP Template for its type. See `MIP0c4`.
   - Is a valid Subproposal based on a Process Component of an Endgame MIP
   - Has been submitted to the [MIPs GitHub](https://github.com/makerdao/mips) repository with a Pull Request by either the MIP Author or a Governance Process Support Ecosystem Actor.

   If the verification is successful, the Governance Process Support Ecosystem Actor:

   - Approves the MIP and assigns it a formal MIP number.
   - Merges in the PR.

3. **Request for Comments (RFC)**: A period of reviewing by the community and attendant redrafting begins. The minimum duration of this period is determined by two variables contained within the Process Component:

   - `Feedback Period`
   - `Frozen Period`

   These periods can overlap. See `MIP0c1` for their definitions.

4. **Fulfilled Feedback Period Requirements:** After the MIP has fulfilled the RFC phase, it is ready for Formal Submission.

5. **Formal Submission (FS):** At this point, the MIP Author submits their MIP to the Governance Cycle by moving it to the [*Formal Submission* forum category](https://forum.makerdao.com/c/mips/fs/16) within the [formal submission window of a Governance Cycle](https://github.com/makerdao/mips/blob/master/MIP51/mip51.md#mip51c1-governance-cycle-breakdown).

6. **Approved by the Governance Process Support Ecosystem Actor(s):** The Governance Process Support Ecosystem Actors evaluate the MIP. If they do not approve it, the MIP may be reconsidered to enter the Governance Cycle at a later date.

7. **Monthly Governance Cycle**: At this point, the proposal enters the [Monthly Governance Cycle](https://github.com/makerdao/mips/blob/master/MIP51/mip51.md).

8. **Accepted/Rejected:** The MIP is voted on. If it passes, it is officially accepted and is given the `Accepted` status. If not, the MIP is rejected.

#### Other MIP Statuses

- **Obsolete:** Assigned when:

  - A MIP has been superseded or deprecated.
  - A MIP has been deferred for over six months.
  - A MIP Author has abandoned the proposal and no person has communicated willingness to take over the responsibility of a MIP Author.
  - A MIP is not an Endgame MIP as defined in MIP0c2

#### MIP Status Change Process

If a MIP Author requests a status change for a MIP, a Governance Process Support Ecosystem Actor will review it. If the status change is warranted, the Governance Process Support Ecosystem Actor will change the status. Otherwise, the Governance Process Support Ecosystem Actor will revert and highlight issues for the MIP Author to fix before requesting another status change.

---

### MIP0c4: MIP Components and MIP Component Types

#### MIP Components

In order to satisfy the Core Principles of clarity and completeness, a MIP may need to have multiple components that each define distinct units of logic.

A MIP Component can be of one of two types: General or Process. The type of General MIP Components is usually left undeclared: It is the assumed type of components that are not of Process type.

MIP components can specify that they supersede other components in the same MIP. If a component specifies that it supersedes other components in the MIP, then the superseded components must be interpreted differently, to account for the parts that have been superseded and no longer have an effect.

#### Process MIP Component  

MIP Components of the Process type shape a specific process flow for the Maker community to adopt and standardize with respect to how governance operates. This MIP component type helps streamline particular processes in a transparent, open, and traceable manner.

In this MIP, `MIP0c5` is a Process Component.

Process MIP Components require no special template.

#### Subproposals

Subproposals are special MIPs defined in Process MIP Components.

Subproposals go through the same process MIPs do, as described in `MIP0c3`.

For their derived subproposals, Process Component MIPs define:

- Which template they must use. If none is specified, no special template is needed.
- Their Feedback Period and their Frozen Period.

#### Naming conventions

**MIP Components** follow the naming convention `MIPXcY`, where `X` is the parent MIP and `Y` is the component number.

**Subproposals** follow the naming convention `MIPXcY-SPZ`, where `X` is the parent MIP, `Y` is the component number, and `Z` is the subproposal number.
