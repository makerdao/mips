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

- MIPx establishes a Self Insurance Fund (SIF) with the purpose of covering legal expense costs and managing legal risk of MakerDAO stakeholders.

## Paragraph Summary

- MIPx will create a DAI 5M legal defense fund to reimburse legal expenses incurred by specific MakerDAO stakeholders in case of legal or regulatory proceedings. The fund will initially provide coverage to the founding team, recognized delegates and permanent contributors.

- MIPx will authorize the incorporation of a Cayman Foundation that will manage operations of the SIF.
 

## Component Summary

[MIPx-c1] SIF requirements: Outline the requirements for the SIF

[MIPx-c2] SIF funding process: A process component that provides clarity on the governance process to approve and execute payouts to the SIF

[MIPx-c3] Subproposal to request funding

[MIPx-c4] The SIF Foundation. Describes the legal structure and purpose of the SIF Foundation

[MIPx-c5] Payouts and claim managament. Describes the process for deciding and managing claims

[MIPx-c6] Permissionless implementation of claim management. Describe futur permissionless implementation of the claim management process to gradually decentralze

[MIPx-c7] Investment managament.  Describes the process and policies for investing SIF funds 

[MIPx-c8]. Permissionless implementation of investment management

[MIPx-c9] DAO resolution. Describes the DAO Resolution with which MakerDAO can instruct the SIF Foundation to act.

[MIPx-c10] Adding a Supervisor Process.   Describes the process of adding a Supervisor at the SIF Foundation.

[MIPx-c11] Removing a Supervisor Process. Describes the process of removing a Supervisor at the SIF Foundation.

[MIPx-c12] Adding a Director Process. Describes the process of adding a Director at the RWA Foundation.

[MIPx-c12] Removing a Director Process. Describes the process of removing a Director at the RWA Foundation.

[MIPx-c12].Creation of Committee Process. Describes the process of adding a Committee at the RWA Foundation.

[MIPx-c12]. Termination of Committee. Describes the process of removing a Committee at the RWA Foundation.

[MIPx-c12].  Creation of Authorized Signer. Describes the process of adding an Authorized Signer at the RWA Foundation.

[MIPx-c12].   Termination of Authorized Signer. Describes the process of removing an Authorized Signer at the RWA Foundation.

## Motivation

- Self-insurance is a well known risk management technique that consists in setting funds aside for compensating a possible future loss. Typically self insurance is used when risk can not be transferred through traditional instruments such as insurances. Due to the fact that MakerDAO is not, and will not be incorporated as a legal entity,  stakeholders are exprosed to increased legal risk. The Self Insurance Fund is an ideal instrument to de-risk involvement in MakerDAO and manage professionally legal risk.



## Specification / Proposal Details

[MIPx-c1] SIF requirements: Outline the requirements for the SIF

Must follow the multisig process outlined in MIP47: MakerDAO Multisignature Wallet Management. It must include a wallet address, official Point of Contact, and Comptroller signers must be publicly verified.

Funding provided in DAI

Beneficiary of Multisg is Maker Governance. Funds not used after [xxx] months will be returned to Governance

[MIPx-c2] SIF funding process: A process component that provides clarity on the governance process to approve and execute payouts to the SIF.

The process is as follows:

MIPx-c3 subproposal is submitted.

MIPx-c3 subproposals must use the template located at [xxx] md. This template is considered ratified once this MIP moves to Accepted status.

Upon approval of the MIPx-c subproposal, funds would be transferred first to the escrow multisig. The funds in escrow must be in a multi-sig with signatory requirements of a minimum of two Comptrollers. Funds must be held in escrow, only released when two Comptrollers sign off.

Funding Implementation

Transfer of DAI from the protocol will take DAI from the Surplus Buffer if available. If funding a MIP55c3 subproposal would result in a FLOP auction, Governance Facilitator(s) will use established communication channels to ensure the community is informed.

The initial funding implementation would use a simple funding implementation of a fixed total of funds taken from the Protocol and put directly to a multi-sig used for escrow.

If available, other advanced smart-contract based implementations can be used for automated distribution mechanisms, such as a simplified smart contract implementation of DSSVest.


[MIPx-c3] Subproposal to request funding

MIPx-c3 subproposals must use the template located at [xxx]

This is a component that can have on-chain effects that alter the Maker Protocol's state. When subproposals are generated from this component, the vote must include a Technical State Change to authorize drawing funds from the Maker Protocol.


[MIPx-c4] The SIF Foundation. Describes the legal structure and purpose of the SIF Foundation

The RWA Foundation legal structure is based on the Cayman Islands Foundation Companies Law, 2017. The Foundation Company is a very flexible structure that allows for its organization and administration to be modified for specific needs. 

The objects for which the SIF Foundation will be incorporated are the following:

- Execute instructions of Maker governance regarding administration of the Fund
- Manage claim procedures
- Hire suppliers and contractors necessary for the administration of the fund
- Serve as policy holder for nsurances (beneficiaries: MAkerDAO stakeholders) 


[MIPx-c5] Payouts and claim managament. Describe the process for deciding and managing claims

Two Claim Committees will be created which will be in charge of deciding and processing claims:

Internal MakerDAO members (i.e. Mandated Actors or other reputable DAO members)
External, technical members with experience in risk management, claim management and legal proceedings


Claim decision process: 

The external technical committee receives and classifies and qualifies the claim, and produces a recommendation.  
The internal committee approves or disapproves the recommendation.



MKR token holder veto to a pyout possible?

More detailed info on the process and docuemnts needed under [rules of procedure]

If payout is approved, funds will be trandferred from the SPF multisig to a whitlisted address


[MIPx-c6] Permissionless implementation of claim management

Claim management processes will be gradually decentralzed to eliminate trust assumptions and central points of failure. 

[MIPx-c7] Investment managament. Describes the process and policies for investing SIF funds 

[MIPx-c8]. Permissionless implementation of investment management

Permissonless Market operations MIP 74 with DSSKiln

[MIPx-c9] DAO resolution. Describes the DAO Resolution with which MakerDAO can instruct the SIF Foundation to act.

The SIF Foundation recognizes the concept of DAO Resolutions by which MakerDAO can instruct the RWA Foundation to act and ratify such a decision when taken. The following components of this MIP formalize those DAO Resolutions. DAO Resolutions don't have to follow this MIP process, but DAO Resolutions not following this MIP should be avoided and are discouraged.

[MIPx-c10] Adding a Supervisor Process.   Describes the process of adding a Supervisor at the SIF Foundation.

[MIPx-c11] Removing a Supervisor Process. Describes the process of removing a Supervisor at the SIF Foundation.

[MIPx-c12] Adding a Director Process. Describes the process of adding a Director at the RWA Foundation.

[MIPx-c12] Removing a Director Process. Describes the process of removing a Director at the RWA Foundation.

[MIPx-c12].Creation of Committee Process. Describes the process of adding a Committee at the RWA Foundation.

[MIPx-c12]. Termination of Committee. Describes the process of removing a Committee at the RWA Foundation.

[MIPx-c12].  Creation of Authorized Signer. Describes the process of adding an Authorized Signer at the RWA Foundation.

[MIPx-c12].   Termination of Authorized Signer. Describes the process of removing an Authorized Signer at the RWA Foundation.






