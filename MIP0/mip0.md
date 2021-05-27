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
Last Amended: 2021-04-29
Dependencies: n/a
Replaces: n/a
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

**MIP0c2: Core Principles**  
*Sets the principles that all MIPs should aim to follow.*  

**MIP0c3: The MIP Lifecycle**  
*Defines the formal stages in the lifecycle of MIPs from conception to approval, rejection, or deferral.*  

**MIP0c4: MIP Components and MIP Component Types**  
*Defines MIP Components and their types.*  

**MIP0c5: MIP Replacement Process**  
*Defines the process for replacing MIPs.*  

**MIP0c6: Supporting Materials**  
*Defines how to include external materials in MIPs.*  

**MIP0c7: MIP Templates**  
*Provides the MIP templates for both General and Technical MIPs.*  

**MIP0c8: MIP0 Domain Role Dependencies**    
*Defines the core roles essential to the MIP Framework.*  

**MIP0c9: MIP Editor Role**  
*Defines the responsibilities of the MIP Editor role and the criteria and grounds for their removal.*  

**MIP0c10: Governance Facilitator Role**  
*Defines the Governance Facilitator role's responsibilities and the criteria and grounds for their removal.*  

**MIP0c11: Core Personnel Onboarding (`OBSOLETE`)**  
*Rendered obsolete by the Core Unit Framework (See [MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md))*  

**MIP0c12: Core Personnel Offboarding (`OBSOLETE`)**  
*Rendered obsolete by the Core Unit Framework (See [MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md))*  

**MIP0c13: MIP Set Management**  
*Defines procedures for managing MIP Sets.*  

## Motivation

For MakerDAO to evolve into a fully decentralized and self-sustainable organization, a formalized process of decision-making is required. In a permissionless protocol, everyone should be able to propose changes and improvements.

The MIP Framework serves to empower each off-chain and on-chain Governance participant by giving them a standardized way of interacting with the wider DAO and defining its future shape.

## Specification / Proposal Details

### MIP0c1: Definitions of the Maker Improvement Proposal Framework

- **Maker Improvement Proposals (MIPs):** - **Maker Improvement Proposals (MIPs):** MIPs are standardized documents subject to voting that (once enacted) regulate and define the behavior of the Maker Governance and the Maker Protocol. MIPs can be added, amended, replaced, and removed.
-   **MIP Sets:** MIP Sets are groups of interdependent MIPs that work as a modular whole. See `MIP0c13`.
-   **MIP Types:** MIPs can be either general or technical. See `MIP0c5`.
-   **Subproposals (SPs):** Subproposals are instances of Process MIP Components. See `MIP0c4`.  
-   **Minimum Feedback Period:** The minimum amount of time within which the community can give feedback in response to a proposed MIP before it can advance to Formal Submission. See `MIP0c3`.  
-   **Minimum Frozen Period:** The minimum amount of time during which a MIP must remain unchanged before it can advance to Formal Submission. See `MIP0c3`.
-   **Governance Facilitator(s):** Governance Facilitators are tasked with ensuring the smooth operation of the governance process. This role must carry a wide range of activities. Governance Facilitators cannot delegate their formal responsibilities in the MIP Framework. See `MIP0c10`.
-  **MIP Editor(s):** MIP Editors enforce the administrative and editorial aspects of the overall MIPs process and program. See `MIP0c9`.

---

### MIP0c2: Core Principles

1. **Specificity:** A MIP must define and address a specific behavior or single responsibility. Overburdened MIPs are not allowed.

2. **Completeness:** A MIP must be thorough. Relevant, specific particulars must not be left undefined or unreferenced.

3. **Avoid overlap:** Multiple MIPs must not implement the same type of behavior independently. For instance, there should not be two separate, interchangeable ways to onboard collaterals.

4. **Clarity:** A MIP must not have equally valid conflicting interpretations. A MIP must be as clear and easy to understand as possible.

5. **Brevity:** A MIP must be as short as possible, including only what is essential given the other core principles.

---

### MIP0c3: The MIP Lifecycle

#### The MIP Lifecycle and MIP Statuses

![The MIP Lifecycle](upload://f0szLOFFFZB6vqJuqc8mSSKZH8G.png)

#### MIP Lifecycle Breakdown

1. **Conception**: A MIP Author posts a MIP proposal in the [Maker forum](https://forum.makerdao.com/c/mips/14) under the *Maker Improvement Proposals* category. From this point on, MIP Editors will be available to assist the MIP Author.

2. **Approved by MIP Editor(s)**: A MIP Editor verifies that the posted MIP proposal:

   - Follows the appropriate format of the MIP Template for its type. See `MIP0c4`.
   - Is either an original MIP or a replacement for an older MIP.
   - Has been submitted to the [MIPs GitHub](https://github.com/makerdao/mips) repository with a Pull Request by either the MIP Author or a MIP Editor.

   If the verification is successful, the MIP Editor:

   - Approves the MIP and assigns it a formal MIP number.
   - Merges in the PR.

3. **Request for Comments (RFC)**: A period of reviewing by the community and attendant redrafting begins. The minimum duration of this period is determined by two variables:

   - `Feedback Period`: 3 months.
   - `Frozen Period`: 1 month.

   These periods can overlap. See `MIP0c1` for their definitions.

4. **Fulfilled Feedback Period Requirements:** After the MIP has fulfilled the RFC phase, it is ready for Formal Submission.

5. **Formal Submission (FS):** At this point, the MIP Author submits their MIP to the Governance Cycle by moving it to the [*Formal Submission* forum category](https://forum.makerdao.com/c/mips/fs/16) within the [formal submission window of a Governance Cycle](https://github.com/makerdao/mips/blob/master/MIP16/mip16.md).

6. **Approved by the Governance Facilitator(s):** The Governance Facilitators evaluate the MIP. If they approve it, the MIP will be entered in the inclusion poll of the Governance Cycle. If they do not, the MIP may be reconsidered to enter the Governance Cycle at a later date.

7. **Governance Cycle:** At this point, the proposal enters the Monthly Governance Cycle. See [MIP3](https://github.com/makerdao/mips/blob/master/MIP3/mip3.md) for further details.

8. **Executive Vote:** The executive vote by MKR holders ultimately accepts or rejects the MIP.  

9. **Accepted/Rejected:** If the executive vote passes, the MIP is officially accepted and is given the `Accepted` status. If not, the MIP is rejected.

#### Resubmission

A MIP can be resubmitted to the Formal Submission process up to 3 times without having to go through phases 1-4 again if it failed to pass due to legitimate external reasons (e.g., got bundled in a governance poll with a controversial proposal.)

A rejected MIP can be resubmitted. In some cases (if it was rejected for provable extraneous explanation, as judged by Governance Facilitators), it may be allowed to enter the next Governance Cycle immediately.

#### Other MIP Statuses

- **Withdrawn:** Assigned when a MIP Author withdraws their MIP proposal.

  > A MIP may be withdrawn at any point before it enters the Governance Cycle. Note that a withdrawn proposal can be taken over from the original Author with a simple transition facilitated by a MIP Editor and the respective parties. If the original MIP Author ceases to be available, a MIP Editor may proceed with the transfer of authorship.

- **Deferred:** Assigned when a proposal has been deemed as not ready or not a priority but can be re-proposed at a later date. This status can be assigned during RFC or by a rejecting forum poll or Signal Request.

- **Obsolete:** Assigned when:

  - A MIP has been superseded or deprecated.
  - A MIP has been deferred for over six months.
  - A MIP Author has abandoned the proposal and no person has communicated willingness to take over the responsibility of a MIP Author.

#### MIP Status Change Process

If a MIP Author requests a status change for a MIP, a MIP Editor will review it. If the status change is warranted, the MIP Editor will change the status. Otherwise, the MIP Editor will revert and highlight issues for the MIP Author to fix before requesting another status change.

---

### MIP0c4: MIP Components and MIP Component Types

#### MIP Components

In order to satisfy the Core Principles of clarity and completeness, a MIP may need to have multiple components that each define distinct units of logic.

A MIP Component can be of one of two types: General or Process. The type of General MIP Components is usually left undeclared: It is the assumed type of components that are not of Process type.

#### Process MIP Component  

MIP Components of the Process type shape a specific process flow for the Maker community to adopt and standardize with respect to how governance operates. This MIP component type helps streamline particular processes in a transparent, open, and traceable manner.

In this MIP, `MIP0c5` is a Process Component.

Process MIP Components require no special template.

#### Subproposals

Subproposals are instances of the processes defined by Process MIP Components. For example, every concrete onboarding of a Governance Facilitator requires creating (instantiating) a subproposal off the Process MIP Component `MIP41c4` in [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md).

Subproposals go through the same process MIPs do, as described in `MIP0c3`.

For their derived subproposals, Process Component MIPs define:

- Which template they must use. If none is specified, no special template is needed.
- Their Feedback Period and their Frozen Period.

#### Naming conventions

**MIP Components** follow the naming convention `MIPXcY`, where `X` is the parent MIP and `Y` is the component number.

**Subproposals** follow the naming convention `MIPXcY-SPZ`, where `X` is the parent MIP, `Y` is the component number, and `Z` is the subproposal number.

---

### MIP0c5: MIP Replacement Process

A MIP can define one or more replacement targets in its preamble. If the MIP is given the `Accepted` status, the replacement target(s) MIPs receive the `Obsolete` status and effectively become inactive. The replaced MIP will record the number of the MIP that replaced it. MIPs that depend on the replaced MIP will instead interact with the new MIP.

Since dependencies carry over, a MIP with defined replacement targets must strictly adhere to dependency requirements and interface correctly with MIPs that depend on the replaced MIP.

---

### MIP0c6: Supporting Materials

MIPs can optionally refer to external materials. External materials must be added to the [MIPs GitHhub](https://github.com/makerdao/mips) in the same folder as the MIP which references them.

Externally referenced materials are not MIP content and are not ratified when a MIP becomes `Accepted` unless it is explicitly stated otherwise in a MIP Component specification.

---

### MIP0c7: MIP Templates

#### General MIP Template
- The General MIP Template should be used for MIPs whenever a more specific ratified template is not more appropriate.
- The General MIP Template is located at **[General-MIP-Template.md](General-MIP-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.

#### Technical MIP Template
- The Technical MIP Template should be used for MIPs whenever a MIP proposes changes to the smart contract code within the Maker Protocol.
- The Technical MIP Template is located at **[Technical-MIP-Template.md](Technical-MIP-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.

---    

### MIP0c8: MIP0 Domain Role Dependencies

The MIP Framework depends on two Domain Roles: MIP Editor and Governance Facilitator.

#### MIP Editor

MIP Editors enforce the administrative and editorial aspects of the overall MIPs process and program.

##### Specific authority of the MIP Editor(s) in MIP0 processes

* MIP Editors control phase 2 of the MIP lifecycle and can assign MIP numbers.
* MIP Editors are admins on the [MIPs Github repository](https://github.com/makerdao/mips).
* MIP Editors moderate the [MIPs category in the forum](https://forum.makerdao.com/c/mips/14).
* MIP Editors are responsible for updating the status of MIPs, as described in `MIP0c4`, *The MIP Lifecycle*.

#### Governance Facilitator

Governance Facilitators operate voting frontends, run governance meetings and accept MIPs that are ready to be included in the Governance Cycle and thus voted on.

Governance Facilitators have all the editorial powers a MIP Editor has, and can bestow these powers on contributors.

##### Specific authority of the Governance Facilitator in MIP0 processes

* Consensus from all Governance Facilitators controls phase 6 of the MIP lifecycle. See `MIP0c3`.

Governance Facilitators are defined as Facilitators attached to Core Units with the ID `GOV` in [MIP38: DAO Primitives](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md). They are added using [MIP41: Facilitator Framework](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md).

---

### MIP0c09: MIP Editor Role  

#### Responsibilities

MIP Editors enforces the administrative and editorial aspects of the overall MIP process and framework. This includes:
-   Maintaining and managing the [MIPs Portal](mips.makerdao.com) and the [GitHub MIPs repository](https://github.com/makerdao/mips).
-   Providing feedback in the [MIP section of the forum](https://forum.makerdao.com/c/mips/14).
-   Managing and organizing MIP and Subproposal Preambles.

They should also enforce the proper MIPs process with responsibilities such as:
-   Assigning formal number labels to MIPs.
-   Making sure that titles, MIP statuses, category placements all track the actual MIPs.
-   Confirming there is a (real) dedicated MIP author, coordinator, funder and/or sponsor, etc.
-   Corresponding with MIP authors/coordinators.
-   Reviewing MIPs for obvious defects in the language
-   Making sure that MIPs follow the style guide (template). 
-   Working and communicating with Governance Facilitators on coordinating governance and executive votes in relation to MIPs and the Governance Cycle.

MIP Editors can correct issues themselves, but they are not required to.

---

### MIP0c10: Governance Facilitator Role

#### Core Responsibilities

- Responsible for ensuring the health and integrity of communication channels that are used for communication within MakerDAO. These tasks include moderation duties, establishing processes and social norms, and defending the channels from trolling and Sybil attacks.
- Required to remain neutral and objective on issues outside the governance domain and focus on policy, procedure and facilitation.
- Required to schedule, run and moderate weekly governance and risk meetings from a position of neutrality.
- Required to manage and run governance processes as directed by relevant Accepted MIPs or MIP sets.
- Required to create on-chain polls on the ‘official’ voting frontend as directed by governance processes defined in relevant Accepted MIPs or MIP sets.
- Should aim to foster a culture of openness, receptiveness and reasoned discussion within the community.
- Should work with the community to operate an emergency voting process to defend the system in the event of an emergency.
- Should aim to onboard and maintain at least three Governance Facilitators at all times while prioritising candidates from unrepresented geographic regions.

##### Encouraging Participation
- Should work to maintain and encourage healthy debate, in accordance with the guidelines outlined in the Scientific Governance and Risk Framework and the Core Foundation Principals.
- Should ensure that the upcoming governance schedule is well communicated to all stakeholders at least a week in advance.
- Should aim to promote and increase engagement by stakeholders in the governance process.
- Should ensure that new members of the community understand the general level of decorum and civility expected by the group, that they have the resources they need to get onboarded quickly.

##### Improving Efficiency

- Should ensure that once debate reaches its natural end that appropriate consensus gathering methods take place.
- Should support and facilitate communications between the other mandated actors in the Maker Protocol.
- Should look for opportunities to streamline the governance process without sacrificing its integrity.

##### Cohesion and Morale
- Responsible for raising community governance issues to the Maker Foundation or the third-party ecosystem and ensuring appropriate follow up for the community.
- Should help to build and maintain morale and engagement among members of the governance community.
- Should encourage the community to come to consensus over the least objectionable option(s) rather than treating decision-making as a competition where a subset of the community must end up disappointed in the outcome.
- Should work to bring the governance community together on divisive topics and to prevent political polarisation and demagoguery.

---

### MIP0c11: Core Personnel Onboarding (`OBSOLETE`)
*Rendered obsolete by the Core Unit Framework (See [MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md))*

### MIP0c12: Core Personnel Offboarding (`OBSOLETE`)
*Rendered obsolete by the Core Unit Framework (See [MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md))*

---

### MIP0c13: MIP Set Management

Some unitary structures and behaviors must be analyzed into separate parts across more than one MIP. When these MIPs are tightly interwoven, they constitute a MIP Set.

#### Tagging

For any MIP Set, its constituent MIPs must all share a common tag. The tag should be defined by MIP Authors and/or MIP Editors and should comply with the following format:

`descriptive short name-mipset`

MIP Sets are usually introduced as such by MIP Authors, but if MIP Editors find that a group of loose, untagged MIPs in the RFC phase satisfy the conditions for being a MIP Set, they can tag these MIPs together into a formal MIP Set. When in doubt, the ultimate criteria should be usefulness and modularity.

#### Additional Considerations

Because of their interdependent nature, MIP Sets can only be voted as a block, as any partial passing would result in the onboarding of inconsistent, incomplete, or nonsensical MIPs. By the same token, special care must be taken when modifying or removing MIPs within a MIP Set.
