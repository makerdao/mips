# MIP0: The Maker Improvement Proposal Framework

## Preamble
```
MIP#: 0
Title: The Maker Improvement Proposal Framework
Author(s): Charles St.Louis (@CPSTL) and Rune Christensen (@Rune23)
Type: Process
Status: <Assigned by MIP Editor>
Date Proposed: 2020-04-06
Dependencies: n/a
Replaces: n/a
```

## Summary

MIP0 is the genesis proposal describing the MIPs Framework. This includes the core components and statuses as well as the various MIP types and the overall MIP lifecycle. Furthermore, it provides the necessary tools, such as MIP templates, replacement processes, and dependencies. Lastly, the proposal details the key roles of the framework, the MIP Editor and the Governance Facilitator along with the process for adding and removing them.


## Motivation

MakerDAO is evolving into an organization that is trustless, fully decentralized, open-sourced, and self-sustainable. In order to further enable this gradual evolution while maintaining governance functionality both during this process and after the dissolution of the Maker Foundation, Maker will be governed using Maker Improvement Proposals (MIPs).

The purpose of the MIPs Framework is to open up the ability to improve Maker Governance and the Maker Protocol to anyone in the community.


By empowering the participation of the community and other stakeholders to have a standard approach to proposing improvements, specifications, or process and state changes, the goal is to enable organic growth that will in turn bring MakerDAO closer to self-sustainability.

In order for MIPs to be functional they need to comply with a basic standard outlining their internal structure and external dependencies. This standard is MIPs described in MIP0, the Maker Improvement Proposal Framework.


## Specification / Proposal Details


### MIP0 Components
1. **MIP0c1:** Definitions of the Maker Improvement Proposal Framework
2. **MIP0c2:** Three Core Principles
3. **MIP0c3:** The MIP Lifecycle
4. **MIP0c4:** MIP Components and MIP Component Types
6. **MIP0c5:** MIP Replacement Process
7. **MIP0c6:** MIP Templates
8. **MIP0c7:** MIP0 Domain Role Dependencies
9. **MIP0c8:** MIP Editor Election Process  
10. **MIP0c9:** MIP Editor Removal Process
11. **MIP0c10:** Governance Facilitator Election Process
12. **MIP0c11:** Governance Facilitator Removal Process

---

### MIP0c1: Definitions of the Maker Improvement Proposal Framework

- **Maker Improvement Proposals (MIPs)** are the preferred mechanism for improving Maker Governance and the Maker Protocol. Through an open and documented process, the goal is to collect as much community feedback as possible and reach the broadest possible consensus on how the Maker Protocol should evolve. A proposal clearly defines how and why Maker Governance or the Maker Protocol should be changed and ensures that this improvement is introduced in a responsible way, respecting the highest quality, security and community standards.
-   **MIP0:** The genesis MIP defining the MIPs framework. This MIP defines all of the processes that are required for the implementation of future MIPs. 
-   **MIP Sets:** A MIP set is a group of several MIPs that are interdependent, in which without the entire set of MIPs existing, one or more MIPs in the Set become inconsistent, invalid or nonsensical. The intention is for MIP sets to together describe a single complex behaviour in such a way that allows each individual MIP to be written following the principle of Specificity but work together as a cohesive modular whole.
-   **MIP Types:** MIPs are separated into a number of types, and each type has its own list of MIPs and processes.
-   **Process MIP:** Process MIPs are used to create and define a specific recurring process that the Maker Protocol or Governance will employ.
-   **Subproposals (SPs):** A subproposal is an instance of a sub-process that has been defined by a specific MIP. Subproposals are named in the following format: MIP0-SP1 (where MIP0 is a Process MIP and MIP0-SP1 is a subproposal under that Process MIP)  
-   **Minimum Feedback Period:** The minimum amount of time within which the community is able to give feedback in response to a proposed MIP.  
-   **Minimum Frozen Period:** The minimum amount of time during which a MIP must remain unchanged (frozen) before it can be submitted for ratification/implementation.
-   **Governance Facilitator(s):** Governance Facilitators are tasked with ensuring the smooth operation of the governance process. This involves a wide range of activities, anything from general administration to signals gathering to governance scheduling.
-  **MIP Editor(s):** Enforce the administrative and editorial aspects of the overall MIPs process and program. The expectation is that the program will start out with an interim editor from the Maker Foundation and that others will join later.
-   **Domain Teams**: Domain Teams work for the DAO, are onboarded through governance and are paid by the Protocol. Domain teams perform defined duties for the DAO, such as overseeing critical processes and mitigating risk. These teams consist of but are not limited to Risk, Oracles, Smart Contracts or Legal. 
    

---
### MIP0c2: Three Core Principles

 1. **Specificity:** A MIP needs to define and address a specific behaviour or single responsibility. MIPs with many different behaviours or responsibilities will not be allowed and must be split up into multiple MIPs.
	 - This mitigates the risk of having “fine print” or potential attacks hidden in large, complex MIPs.
 2. **Completeness:** A MIP or MIP Set is complete if it has all the necessary or appropriate parts that cover a whole behaviour and avoids being only a specific part of a greater whole.
	 - This is important for both understandability, readability and accessibility of MIPs.
3.  **Avoid overlap:** Multiple MIPs should not implement the same type of behaviour independently. For instance, there should not be two separate but interchangeable ways to do collateral onboarding.
	- This way the primary and best-understood process for each particular behaviour will be fairly available to everyone, without risking having a knowledge gap that makes it possible for some actors with better access to information to use different and potentially better processes
	
---

### MIP0c3: The MIP Lifecycle

**The MIP Lifecycle Flow and MIP Statuses**

![mip_life_cycle](https://user-images.githubusercontent.com/32653033/79086728-19d93900-7d0b-11ea-8086-c255d919096c.png)


**MIP Status Criteria**  
  

**1. Conception:** The lifecycle of a MIP begins when the MIP proposal is posted on the Maker forum. However, in order for a MIP to move to the next stage, it needs to satisfy the transition criteria (1) described below:

-   Submitted to the MIPs Discourse Forum.
-   Submitted to the MIPs Github repository (with a Pull Request created by the MIP Author or MIP Editor).
-   The format must follow the appropriate MIP Template for its type.
-   MIPs must be original or replacement versions of older MIPs (No repeats allowed).

**2. Approved by MIP Editor(s):** This phase of a MIP’s life cycle is when the MIP Editor(s) confirms that the proposed MIP follows the correct structure and editorial criteria defined in the MIP template. If the criteria is not met, the MIP Editor(s) will provide an explanation to the MIP Author as to why and allow them to make the appropriate changes before reconsideration. If the criteria have been met, the MIP Editor(s) performs the following actions:
    
-   The MIP is approved by a MIP Editor(s) and is assigned a formal MIP number.
-   The PR is merged in by a MIP Editor(s).

**3. Request for Comments (RFC):** This phase is when a MIP goes through a formal review period, including feedback from the community, further drafting and additions. The timeline for the RFC phase is defined by its Feedback Period and Frozen Period. In order to move to the next phase, it needs to satisfy the transition criteria listed below:
     
 - MIP Author finalizes changes of the MIP, based on community feedback.
 - MIPs have a Feedback Period of 3 months. The RFC phase lasts at least 3 months before the MIP can move to the next phase. 
 - MIPs have a Frozen Period of 1 month. MIPs must not have had any changes for the last 1 month before they move to the next phase.
  

**4. Fulfilled Feedback Period Requirements:** This status is given once the MIP has fulfilled the defined Feedback Period and Frozen Period. After the MIP has waited out its Feedback Period and Frozen Period, it’s ready for Formal Submission. Note that the Feedback Period and Frozen Period can overlap.

**5. Formal Submission (FS)** - This phase is when MIP Authors submit their complete MIP(s) to the Governance cycle by posting it to the formal submission forum category within the formal submission window of a governance cycle.
    - A MIP can be re-submitted to the formal submission process a maximum of 2 additional times (3 total), without having to go through phase 1- 4 again, if it failed to pass due to legitimate external reasons (e.g. got bundled in a governance poll or executive vote with a controversial proposal - subject to the governance facilitators judgement).
  

**6. Approved by the Governance Facilitator(s)**: This phase is when the MIP must be formally approved by the Governance Facilitators.   

- Once approved by the Governance Facilitator, the MIP will be included in the inclusion poll of the Governance cycle.
- If the MIP is not approved by the Governance Facilitator, it may be reconsidered at a later date to enter the Governance cycle. 
    
**7. Governance Cycle**: This phase is when MKR holders vote on whether to include the MIP in the governance poll, ultimately determining whether or not the MIP can formally enter the governance cycle.
- Once approved for the governance poll, MKR holders determine whether to accept or reject the package of proposals in the governance poll and finally to ratify the result in the executive vote.  

**8. Executive Vote:** This phase is when the MIP becomes officially ratified or not. Determined by MKR holders, the executive vote ultimately accepts or rejects the MIP.  

**9. Accepted/Rejected:** The Executive vote results in either acceptance or rejection of the MIP. If passed, the MIP is officially accepted and is given the accepted status. If the executive vote fails to pass before expiring, the MIP is rejected.
- As described in phase 5, a rejected MIP, can be resubmitted, and in some cases (if it was rejected for provable extraneous explanation) may be allowed to enter the next Governance cycle immediately.  
      
    

**Other MIP Statuses:**  
     

**Withdrawn**: when a MIP Author withdraws their MIP proposal, such as when:

 - A MIP may be withdrawn at any point before it enters the Governance cycle. 
 - Note that a withdrawn proposal can be taken over from the original Author with a simple transition facilitated by a MIP Editor(s) and the respective parties. If the original MIP Author ceases to be available, the MIP Editor(s) may proceed with the transfer of Authors.

**Deferred**: when a proposal has been deemed as not ready or not a priority but can be re-proposed at a later date.
-   Request for Comments (RFC) - Forum poll/signal request rejects a MIP Proposal.

**Obsolete**: when a proposal is no longer used or is out of date, such as:
    
-   A MIP is replaced with a new proposal.
-   A MIP has been deferred for over 6 months.
-   A MIP Author has abandoned the proposal and no person has communicated willingness to take over MIP Author responsibility.
-   A MIP has been replaced by a newer, more updated MIP Proposal.
-   A MIP no longer makes sense to keep in consideration.
    
  
**MIP Status Change Process:**
    

A status change for a MIP is requested by the MIP Author and will be reviewed by the MIP Editor(s) to see if it meets the status criteria of the requested status change. If it does, the Editor(s) will change the status of the MIP and the Author may proceed with the next stage of the process. If it does not, the MIP Editor(s) will revert with highlighted issues, and the Author must fix the highlighted issues before requesting another status change.
    
---
### MIP0c4: MIP Components and MIP Component Types


#### MIP Components

1. When necessary, MIPs can have multiple components if it needs to contain multiple units of logic to satisfy completeness. A MIP can also have only a single component.
2. MIP components are categorized by types, depending on what kind of logic they contain. MIP components are named by their parent MIP. The abbreviation convention MIPXcY is used to refer to these components (as seen in this document).
3. A MIP component has one type or no types. 

Note: MIP0's MIP Components are introduced at the beginning of the **Specification** section. 

#### Component Types

1. **Technical MIP Components**  
      
    1. **Summary:** The purpose of technical MIP components is to perform state changes to the Maker Protocol.  
    2. **Specific Template:** [Technical MIPs](../../contributing/templates/technical) are based on the General MIP Template but must include the following additional information in their specification section:  
	    1. **Proposed Code**
		    - Audited, final code that can be used directly in the executive vote to accept or reject the MIP.
	    2. **Test Cases**
		    - Test cases for the implementation or testing of the proposed code
	    3. **Security Considerations**
		    - The purpose of this section is to proactively document any security-relevant design information, decisions, potential failure modes, implementation details, and important discussions related to the proposed change.
		    -   Backwards compatibility
	    4. **Auditor Information and Report**
		    -   This section includes the audit partner details and the final audit report for the proposed code.
	    5. **License**
    
2. **Process MIP Component**  
      
    1. **Summary:** The purpose of a Process MIP component is to shape a specific process flow for the Maker community to adopt and standardize with respect to how governance operates. This MIP component type helps streamline specific processes in a transparent, open and traceable manner. A Process MIP will provide a publicly documented scope of a proposed process framework as well as a detailed description of the subproposal structure.  
      
    2. **Special Template:** N/A  
      
    3. **Important Notes:**  
	    -   A Process MIP component must define the Feedback Period and Frozen Period for its sub proposals.
	    -   Sub proposals of Process MIP components with additional MIP Component types inherit the same types.  
      
    

3. **Sub Proposals**  
      
    1. **Summary:** A MIP component creates a bespoke process that is engaged by submitting sup proposals according to the framework specified in the process MIP component.
    
        -  The subproposal component naming convention is `MIP#c#-SP#`. This is important in order to delineate between different SPs under the same MIP.
   
    2. **Special Template:** N/A  
  
---

### MIP0c5: MIP Replacement Process

A MIP can define one or more replacement targets in its preamble. If the MIP is given the accepted status, the replacement target(s) MIPs then receive the Obsolete status and effectively become inactive. The replaced MIP will in its MIP document contain the number of the MIP that replaced it, and other MIPs that depend on the replaced MIP, will instead interact with the new MIP.

Due to the fact that the dependencies carry over, a MIP with defined replacement targets must, in order to be valid, strictly adhere to dependency requirements and interface correctly with MIPs that depend on the replaced MIP, and thus after the replacement with the new MIP.  

---

### MIP0c6: MIP Templates

**[General MIP Template](../../contributing/templates/general)**
    
**[Technical MIP Template](../../contributing/templates/technical)**

---    

### MIP0c7: MIP0 Domain Role Dependencies

The MIPs Framework depends on these types of Domain Roles:  

1. **MIP Editor(s):** Enforces the administrative and editorial aspects of the overall MIPs process and program. The expectation is that the program will start out with an interim editor from the Maker Foundation and that others will join later.  
2. **Specific authority of the MIP Editor(s) in MIP0 processes:**  
	1. The MIP Editor(s) controls phase 2 of the MIP lifecycle and can assign MIP numbers  
	2. The MIP Editor(s) is an admin on the MIPs Github repository  
	3. The MIP Editor(s) is a moderator on the MIPs Discourse forum  
	4. The MIP Editor(s) is responsible for updating the status of MIPs, as described in MIP0c4 “The MIP Lifecycle”.  
3. **Governance Facilitator:** Operates voting frontends, runs governance meetings and accepts MIPs that are ready to be included in the Governance Cycle and thus, voted on.  
4. **Specific authority of the Governance Facilitator in MIP0 processes:**  
	1. Consensus from all governance facilitators controls phase 6 of the MIP lifecycle, which allows them to, with consensus, add valid MIPs to the inclusion poll of the next governance cycle, moving them from phase 5 (formal submission) to phase 7 (governance cycle).
	
---

### MIP0c8: MIP Editor Election Process  


1. **Description of MIP Editor Role**: The MIP Editor enforces the administrative and editorial aspects of the overall MIPs process and framework. This includes:
    -   Maintain and manage mips.makerdao.com.
    -   Provide feedback and have discussions in the MIP section of forum.makerdao.com (ex: helping vet proposal ideas).
    -   MIPs processing.
    -   Enforcing the proper MIPs process with responsibilities such as:
    -   Confirm that the title accurately describes the content of the proposal.
    -   Confirm there is a (real) dedicated author, coordinator, funder and/or sponsor, etc. of the MIP.
    -   Assign proposed MIP's formal number labels.
    -   Change MIP statuses.
    -   Correct MIP category placement.
    -   Correspond with MIP authors/coordinators.
    -   Review the MIP for obvious defects in the language (format, completeness, spelling, grammar, sentence structure) and that it follows the style guide (template). MIP Editors are allowed to correct problems themselves, but are not required to do so and can send comments to authors to improve it themselves.
    -   Work and communicate with Governance Facilitators on coordinating governance and executive votes in relation to MIPs and the governance cycle.
    -   Onboard and vet new MIP Editors.
    -   The expectation is that the system will start out with an interim editor from the Maker Foundation and that others will join later.
    -   A MIP Editor must be vetted by the current MIP Editor(s) and by MKR holders through this sub proposal. Once an Editor, they will be added to Github and subscribed to watching the MIP repository. They will also become a moderator in the MIPs Rocket.Chat Channel and the MIPs Forum. Much of the correspondence regarding MIPs will be handled through GitHub as well in the MakerDAO forums.
    

**MIP Editor Selection Criteria** 

-   A complete understanding of the MIPs Framework
-   Knowledge share will occur when onboarded but the candidate must be very familiar with the framework and how other improvement proposal frameworks operate.
-   Required to be a community member for some time. This can be shown through various proof of participation methods, such as:
    -   Past forum posts
    -   Attendance of community and governance calls
    -   Articles written about Maker or Dai
-   Familiarity with the technical inner workings of the Maker Protocol (bonus)
-   Experience with Github
    -   Merging, editing, closing Pull Requests
    -   Addressing issues
    -   Adding tags / labels
-   Experience with the Markdown language
    -   MIPs will be written in Markdown, so editors will need to be familiar with the language. 
        

**MIP Editor Election Subproposal**

-   **Subproposal Feedback Period**: 3 months
-   **Sub proposal Frozen Period**: 1 month
-   **Sub proposal template**:
    
```md
Introduction

- Role: MIP Editor

- Name of applicant or proposed applicant:

- Date Applied: <date created on, in (yyyy-mm-dd) format>


Application Form
    
- Motivation:
    - Explanation of why and how you want to become a MIP Editor
    
- Credentials:
	- Past work experience
	- Github account
	- Forum account

- Relevant Information:
	-  Links to forum posts, blog posts, 
    or any other community contributions related to Maker. 
    
```

---
### MIP0c9: MIP Editor Removal Process

**A MIP Editor should be considered for removal if they are:**
    
-   Not adequately performing their defined duties
-   Absence from their duties for a longer period
-   Biased or malicious behaviour
-   The Editor expresses unwillingness to continue in their role.

The removal process begins once the community has agreed on the reasoning for removal. This process must be communicated publicly via the forums in order to provide complete transparency. **The MIP Editor will then be removed from the following channels:**

-   Github
-   RocketChat
-   Forums

**A MIP0 Sub Proposal is required to remove a MIP Editor.**
    

-   **Sub proposal Feedback Period**: 0 days
-   **Sub proposal Frozen Period**: 0 days
-   **Sub proposal template**:
  
```md
Introduction

  - Role: MIP Editor

  - Person to be removed:

  - Date of Proposed Removal: <date created on, in (yyyy-mm-dd) format>

Removal Form and Supporting Evidence
    
  - Motivation:
    - Explanation behind the removal of the MIP Editor

  - Relevant Information:
	-  Links to evidence further backing the motivation behind the removal of the MIP Editor

```
---

### MIP0c10: Governance Facilitator Election Process


**Description of Governance Facilitator Role and Authority**:
-   Governance Facilitators are persons or teams responsible for operating a governance and voting frontend that is available to the entire community as well as venues the community uses for communications.
-   Governance Facilitators have the authority and responsibility to put proposals up for MKR vote for full community ratification, if they determine, with input from the community, that the proposals have fulfilled all requirements to be eligible for MKR voting.
-   Reference: [“Mandate: Interim Governance Facilitators”](https://forum.makerdao.com/t/mandate-interim-governance-facilitators/264).
    

**GF Selection Criteria**
    
Governance Facilitators must have experience engaging with different stakeholders in the community in all the different venues the community uses for communications including chat rooms, forums and video conference calls.  

- **Feedback Period:** 3 months
- **Frozen Period**: 1 month
- **Sub proposal template**:

```md

Introduction

- Role: Governance Facilitator

- Name of applicant or proposed applicant:

- Date Applied: <date created on, in (yyyy-mm-dd) format>


Application Form
    
- Motivation:
    - Explanation of why and how you want to become a Governance Facilitator. 
    
- Credentials:
	- Past work experience
	- Github account
	- Forum account

- Relevant Information:
	-  Links to forum posts, blog posts, or any other community contributions related to Maker. 
```
---

### MIP0c11: Governance Facilitator Removal Process


**A Governance Facilitator should be considered for removal if they are:**

-   Not adequately performing their defined duties
-   Absence from their duties for a longer period
-   Biased or malicious behaviour
-   A Governance Facilitator expresses unwillingness to continue in their role.
    

The removal process begins once the community has agreed on the reasoning for removal. This process must be communicated publicly via the forums in order to provide complete transparency. **The Governance Facilitator will then be removed from the following channels:**
-   Github
-   RocketChat
-   Forums
-  Other Relevant Channels
    

**A MIP0 Sub Proposal is required to remove a Governance Facilitator**

-   **Sub proposal Feedback Period**: 0 days
-   **Sub proposal Frozen Period**: 0 days
-   **Sub proposal template**:
    
```md
Introduction

  - Role: Governance Facilitator

  - Person to be removed:

  - Date of Proposed Removal: <date created on, in (yyyy-mm-dd) format>

Removal Form and Supporting Evidence
    
  - Motivation:
     - The explanation behind the removal of the Governance Facilitator

  - Relevant Information:
	 -  Links to evidence further backing the motivation behind the removal of the Governance Facilitator.
```  
---
