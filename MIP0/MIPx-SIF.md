# MIPx- Self Insurance Fund

## Preamble
```
MIP#: <# to be assigned>
Title: <Self Insurance Fund>
Author(s): <@layerzero>
Contributors:
Tags: template
Type: General
Status: <Assigned by MIP Editor>
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: <n/a
```
## References

- A list of supporting materials referenced by this MIP.

## Sentence Summary

- MIPx establishes a Self Insurance Fund (SIF) with the purpose of covering legal expense costs and managing legal risks of MakerDAO stakeholders.

-MIPx authorizes the incorporation of a orphan Cayman Foundation to manage the Fund.

## Paragraph Summary

- MIPx will create a DAI 5M legal defense fund to reimburse legal expenses incurred by specific participants in the MakerDAO ecosystem in case of legal or regulatory proceedings against them. The fund will be fully controlled by Maker Governance. It will initially provide coverage to the founding team, recognized delegates and permanent contributors. Coverage can be extended to additional group of persons in the future.

- Self-insurance is a well known risk management technique that consists in setting funds aside for compensating a possible future loss. More technically, it is a tool for retaining risk managing risks professionally. Typically self insurance is used when risk can not be transferred through  instruments like insurances, but it can also be used in combination with them. DAO participants are exposed to novel legal risks. Self insurances are customizable instruments which can be tailo made to cover some of thesse risks. o
 

## Component Summary

**[MIPx-c1]** SIF requirements: Outline the requirements for the SIF.

**[MIPx-c2]** SIF funding process: Describes the governance process to approve and execute payouts to the SIF

**[MIPx-c3]** Subproposal to request funding

**[MIPx-c4]** The SIF Foundation. Describes the legal structure and purpose of the SIF Foundation

**[MIPx-c5]** Payouts and claim managament. Describes the process for deciding and managing claims

**[MIPx-c6]** Investment managament.  Describes the process and policies for investing SIF funds. 

---

**[MIPx-c7]** DAO resolution. Describes the DAO Resolution with which MakerDAO can instruct the SIF Foundation to act.

**[MIPx-c8]** Adding a Supervisor Process. Describes the process of adding a Supervisor at the SIF Foundation.

**[MIPx-c9]** Removing a Supervisor Process. Describes the process of removing a Supervisor at the SIF Foundation.

**[MIPx-c10]** Adding a Director Process. Describes the process of adding a Director at the SIF Foundation.

**[MIPx-c11]** Removing a Director Process. Describes the process of removing a Director at the SIF Foundation.

**[MIPx-c12]** Creation of Committee Process. Describes the process of adding a Committee at the SIF Foundation.

**[MIPx-c13]** Termination of Committee. Describes the process of removing a Committee at the SIF Foundation.

**[MIPx-c14]**  Creation of Authorized Signer. Describes the process of adding an Authorized Signer at the SIF Foundation.

**[MIPx-c15]**   Termination of Authorized Signer. Describes the process of removing an Authorized Signer at the SIF Foundation.

## Motivation

- Self-insurance is a well known risk management technique that consists in setting funds aside for compensating for a possible future loss. Typically self insurance is used to retain risks when they can not be transferred to third parties through traditional instruments such as insurances. 

- MakerDAO is not a company nor is incorporated as a legal entity. Hence, stakeholders involved in the ecosystem are exposed to increased legal risk. MakerDAO participants need novel instruments for managign professionally legal risks. The Self Insurance Fund is an ideal instrument to de-risk involvement in MakerDAO.


## Specification / Proposal Details

**[MIPx-c1] SIF requirements:**  Outline the requirements for the SIF and initial Funding.

Initial 5M funding will be sent to a multisig, which must follow the process outlined in [MIP47: MakerDAO Multisignature Wallet Management]  (https://mips.makerdao.com/mips/details/MIP47#sentence-summary) It must include a wallet address, official Point of Contact, and Comptroller signers must be publicly verified.

Multisig is meant as an interim instrument while a permissionless solution is developed.

Beneficiary of Multisig is Maker Governance. 

**[MIPx-c2] SIF funding process:** Describes the governance process to approve and execute future payouts to the SIF.

The process is as follows:

MIPx-c2 subproposal is submitted.

MIPx-c2 subproposals must use the template located at [xxx.md]. This template is considered ratified once this MIP moves to Accepted status.

Upon approval of the MIPx-c subproposal, funds would be transferred to the escrow multisig. The funds in escrow must be in a multi-sig with signatory requirements of a minimum of two Comptrollers. Funds must be held in escrow, only released when two Comptrollers sign off.

**[Funding Implementation]**

Transfer of DAI from the protocol will take DAI from the Surplus Buffer if available. If funding a MIP55c2 subproposal would result in a FLOP auction, Governance Facilitator(s) will use established communication channels to ensure the community is informed.

The initial funding implementation would use a simple funding implementation of a fixed total of funds taken from the Protocol and put directly to a multi-sig used for escrow.

If available, other advanced smart-contract based implementations can be used for automated distribution mechanisms, such as a simplified smart contract implementation of DSSVest.

**The proposal parameters**

Requests of less than or equal to xx Dai may go into the Weekly Governance Cycle, provided the Feedback and Frozen Periods have been fullfilled. Anything above xx Dai must go through the Monthly Governance Cycle.

_Parameters for requests of less or equal to xxK Dai:_

* Minimum Feedback Period: 2 Weeks.
* Minimum Frozen Period: 1 Week.

_Parameters for requests of above xxK Dai:_

* Minimum Feedback Period: 4 Weeks.
* Minimum Frozen Period: 1 Week.


**[MIPx-c3] Subproposal to request funding.**

MIPx-c3 subproposals must use the template located at [xxx].

This is a component that can have on-chain effects that alter the Maker Protocol's state. When subproposals are generated from this component, the vote must include a Technical State Change to authorize drawing funds from the Maker Protocol.


**[MIPx-c4] The SIF Foundation.** Describes the legal structure and purpose of the SIF Foundation

The SIF Foundation legal structure will be a Cayman Foundation based on the Cayman Islands Foundation Companies Law, 2017. The Foundation Company is a very flexible structure that allows for its organization and administration to be modified for specific needs. 

The objects for which the SIF Foundation will be incorporated are the following:

- Execute instructions of Maker governance regarding administration of the Fund
- Manage claim procedures
- Hire suppliers and contractors necessary for the administration of the fund
- Serve as policy holder for insurances (beneficiaries: MAkerDAO stakeholders) 


**[MIPx-c5] Payouts and claim managament.** Describe the process for deciding and managing claims.

Two Claim Committees will be created which will be in charge of deciding and processing claims:

Internal MakerDAO members (i.e. Mandated Actors or other reputable DAO members)
External, technical members with experience in risk management, claim management and legal proceedings


Members of the internawill be owners of the multisig wallet


**Claim decision process:**

The external technical committee receives and classifies and qualifies the claim, and produces a recommendation.  
The internal committee approves or disapproves the recommendation.

The claim management process, policies and documents required can be found at [rules of procedure]

**Payout**

If the payout is approved, funds will be trandferred from the SIF multisig to a whitlisted address. Members of the internal committee will have signatures of the SIF multisig.


MKR token holder veto to a payout possible?


**Permissionless implementation of claim management**

Claim management processes will be gradually decentralized to eliminate trust assumptions and central points of failure. 

**[MIPx-c6] Investment managament.** Describes the process and policies for investing SIF funds. 

Investment policies will be determined by Maker Governance.

 **Permissionless implementation of investment management**is 

Permissionless Market operations MIP 74 with DSSKiln


**[MIPx-c7] DAO resolution.** Describes the DAO Resolution with which MakerDAO can instruct the SIF Foundation to act.

The SIF Foundation recognizes the concept of DAO Resolutions by which MakerDAO can instruct the SIF Foundation to act and ratify such a decision when taken. The following components of this MIP formalize those DAO Resolutions. DAO Resolutions don't have to follow this MIP process, but DAO Resolutions not following this MIP should be avoided and are discouraged.



**[MIPx-c8] Adding a Supervisor Process.**   Describes the process of adding a Supervisor at the SIF Foundation.

**[MIPx-c9] Removing a Supervisor Process.** Describes the process of removing a Supervisor at the SIF Foundation.

**[MIPx-c10] Adding a Director Process.** Describes the process of adding a Director at the SIF Foundation.

**[MIPx-c11] Removing a Director Process.** Describes the process of removing a Director at the SIF Foundation.

**[MIPx-c12].Creation of Committee Process.** Describes the process of adding a Committee at the SIF Foundation.

**[MIPx-c13]. Termination of Committee.** Describes the process of removing a Committee at the SIF Foundation.

**[MIPx-c14]. Creation of Authorized Signer.** Describes the process of adding an Authorized Signer at the SIF Foundation.

**[MIPx-c15]. Termination of Authorized Signer.** Describes the process of removing an Authorized Signer at the SIF Foundation.






