# MIP Statuses

|MIP № |Date Proposed | Proposal Link                     |Description/Title                                  | Status    |
|------|--------------|-----------------------------------|---------------------------------------------------|-----------|
|   0  |   2020-04-06 | [MIP0](./core-governance/mip0.md)                          |Maker Improvement Proposals Framework              | RFC       |
|   1  |   2020-04-06 | [MIP1](./core-governance/mip1.md)                          |Governance Paradigms                         | RFC       |
|   2  |   2020-04-06 | [MIP2](./core-governance/mip2.md)                          |Launch Period                                      | RFC       |
|   3  |   2020-04-06 | [MIP3](./core-governance/mip3.md)                          |Governance Cycle                                  | RFC       |
|   4  |   2020-04-06 | [MIP4](./core-governance/mip4.md)                          |MIP Amendment and Removal Process                 | RFC       |
|   5  |   2020-04-06 | [MIP5](./core-governance/mip5.md)                          |Emergency Voting System                           | RFC       |
|   6  |   2020-04-06 | [MIP6](./collateral-onboarding/mip6.md)                          |Collateral Onboarding Form/Forum Template         | RFC       |
|   7  |   2020-04-06 | [MIP7](./collateral-onboarding/mip7.md)                          |Domain Teams (Collateral Onboarding)              | RFC       |
|   8  |   2020-04-06 | [MIP8](./collateral-onboarding/mip8.md)                          |Domain Greenlight (Collateral Onboarding)         | RFC       |
|   9  |   2020-04-06 | [MIP9](./collateral-onboarding/mip9.md)                          |Community Greenlight (Collateral Onboarding)      | RFC       |
|   10 |   2020-04-06 | [MIP10](./collateral-onboarding/mip10.md)                         |Oracle Management                                 | RFC       |
|   11 |   2020-04-06 | [MIP11](./collateral-onboarding/mip11.md)                         |General Risk Model Management (Collateral Onboarding)  | RFC       |
|   12 |   2020-04-06 | [MIP12](./collateral-onboarding/mip12.md)                         |Collateral and Risk Parameter Management          | RFC       |

## The MIP Lifecycle

![The Life and Times of an MIP](https://raw.githubusercontent.com/andytudhope/maker-flow/master/Life%20and%20Times%20of%20MIPs.png)

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
      
### Other MIP Statuses  
     

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
    
  
### MIP Status Change Process

A status change for a MIP is requested by the MIP Author and will be reviewed by the MIP Editor(s) to see if it meets the status criteria of the requested status change. If it does, the Editor(s) will change the status of the MIP and the Author may proceed with the next stage of the process. If it does not, the MIP Editor(s) will revert with highlighted issues, and the Author must fix the highlighted issues before requesting another status change.