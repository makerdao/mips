# Maker Improvement Proposals (MIPs) 

## Introduction

MIPs are the preferred mechanism for improving both Maker Governance and the Maker Protocol. Through an open and documented process, community feedback will be collected to reach the broadest possible consensus on how the Maker Protocol should evolve. 

Furthermore, MIPs will provide a mechanism for any community member to define key issues and suggest changes and additions to the system. MIPs will allow for a high level of transparency, rigor, and community input in order to minimize undesirable results from the process. In most cases, MIPs will be arranged in sets (multiple MIPs that are interdependent but together solve a single problem, risk, or opportunity through one or more processes).

## Contributing Guidelines
-  To learn more about the purpose of MIPs and how to start writing a MIP, please start by reading the following resources: 
    - [Announcement: Kickstarting the Self-Sustaining MakerDAO Initiative](https://forum.makerdao.com/t/announcement-kickstarting-the-self-sustaining-makerdao-initiative/1864)
    - [The Maker Foundation’s Vision of a Self-sustaining MakerDAO: Initiation of Maker Improvement Proposals (MIPs) Framework](https://forum.makerdao.com/t/the-maker-foundation-s-vision-of-a-self-sustaining-makerdao-initiation-of-maker-improvement-proposals-mips-framework/1882)
    - [The Release of the 13 Initial Maker Improvement Proposals (MIPs)](https://forum.makerdao.com/t/the-release-of-the-13-initial-maker-improvement-proposals-mips/1915)
    - [MIP0: The Maker Improvement Proposal Framework](https://forum.makerdao.com/t/mip0-the-maker-improvement-proposal-framework/1902)
-  After reading through the above materials, prospective MIP Authors should first propose their proposal on the [MakerDAO Forums](https://forum.makerdao.com/c/MIPS/14) as well as complete the other criteria laid out in the `Conception` phase of the MIPs Lifecycle (described below).
- **Important Notes:**
    - When creating a MIP, clone the MIPs repository from GitHub, and start by filling out the appropriate [MIP template](https://github.com/makerdao/mips/blob/master/mip0.md#mip0c6-mip-templates).
    - When submitting a Pull Request (PR) for a MIP proposal, be sure to include the following details:
        - Pull Request Title:`MIP#: MIP Title`
        - In the PR comment box, please include the MIP's premable. This includes the following:
        ```
        MIP#:
        Title: 
        Author(s):
        Type:
        Status: Conception
        Date Proposed: <year-month-day>
        Dependencies: n/a
        Replaces: n/a
        ```
-  In the **RFC Phase**, community members may propose changes to proposed MIPs. When proposing changes to MIPs in the RFC Phase, clone the MIPs repository from GitHub, and then make a Pull Request (PR) for the respetive MIP with the following details: 
    -  PR title: `Add/Change/Delete <details> to MIP#`
    -  In the PR comment box, include a short description of the proposed change. 

    Note that is it ultimately up to the MIP Author to     decide whether or not these proposed changes or         addtions will be included in the final version of the MIP.

## The MIP Lifecycle

<img width="507" alt="mips-lifecycle" src="https://user-images.githubusercontent.com/32653033/79141634-3798b380-7d88-11ea-98b7-386689eaa9f9.png">

### MIP Status Criterion
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
    


## Proposed MIPs (Statuses)

|MIP № |Date Proposed | Proposal Link                     |Description/Title                                  | Status    |
|------|--------------|-----------------------------------|---------------------------------------------------|-----------|
|   0  |   2020-04-06 | [MIP0](https://github.com/makerdao/mips/blob/master/mip0.md)                          |Maker Improvement Proposals Framework              | RFC       |
|   1  |   2020-04-06 | [MIP1](https://github.com/makerdao/mips/blob/master/mip1.md)                          |Maker Governance Paradigms                         | RFC       |
|   2  |   2020-04-06 | [MIP2](https://github.com/makerdao/mips/blob/master/mip2.md)                          |Launch Period                                      | RFC       |
|   3  |   2020-04-06 | [MIP3](https://github.com/makerdao/mips/blob/master/mip3.md)                          |Governance Cycle                                  | RFC       |
|   4  |   2020-04-06 | [MIP4](https://github.com/makerdao/mips/blob/master/mip4.md)                          |MIP Amendment and Removal Process                 | RFC       |
|   5  |   2020-04-06 | [MIP5](https://github.com/makerdao/mips/blob/master/mip5.md)                          |Emergency Voting System                           | RFC       |
|   6  |   2020-04-06 | [MIP6](https://github.com/makerdao/mips/blob/master/mip6.md)                          |Collateral Onboarding Form/Forum Template         | RFC       |
|   7  |   2020-04-06 | [MIP7](https://github.com/makerdao/mips/blob/master/mip7.md)                          |Domain Teams (Collateral Onboarding)              | RFC       |
|   8  |   2020-04-06 | [MIP8](https://github.com/makerdao/mips/blob/master/mip8.md)                          |Domain Greenlight (Collateral Onboarding)         | RFC       |
|   9  |   2020-04-06 | [MIP9](https://github.com/makerdao/mips/blob/master/mip9.md)                          |Community Greenlight (Collateral Onboarding)      | RFC       |
|   10 |   2020-04-06 | [MIP10](https://github.com/makerdao/mips/blob/master/mip10.md)                         |Oracle Management                                 | RFC       |
|   11 |   2020-04-06 | [MIP11](https://github.com/makerdao/mips/blob/master/mip11.md)                         |General Risk Model Management (Collateral Onboarding)  | RFC       |
|   12 |   2020-04-06 | [MIP12](https://github.com/makerdao/mips/blob/master/mip12.md)                         |Collateral and Risk Parameter Management          | RFC       |



## Join the conversation 

- MIPs [Discussion Channel](https://go.rocket.chat/invite?host=chat.makerdao.com&path=invite%2FNPEuhW) 
- MakerDAO [MIPs Forum](https://forum.makerdao.com/c/MIPs/14) 
