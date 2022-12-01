# MIP58: RWA Foundations

## Preamble

```
MIP#: 58
Title: RWA Foundations
Author(s): @SebVentures, @christiancdpetersen
Contributors: N/A
Tags: process, living
Type: General
Status: Accepted
Date Proposed: 2021-08-04
Date Ratified: 2021-09-27
Dependencies: n/a
Replaces: n/a  
Ratification Poll URL: https://vote.makerdao.com/polling/QmXeWtK1?network=mainnet
Forum URL: https://forum.makerdao.com/t/mip58-rwa-foundations/9680
```

## References

[MIP58c4-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c4-Subproposal-Template.md)
[MIP58c5-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c5-Subproposal-Template.md)
[MIP58c6-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c6-Subproposal-Template.md)
[MIP58c7-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c7-Subproposal-Template.md)
[MIP58c8-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c8-Subproposal-Template.md)
[MIP58c9-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c9-Subproposal-Template.md)
[MIP58c10-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c10-Subproposal-Template.md)
[MIP58c11-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c11-Subproposal-Template.md)
[MIP58c12-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP58/MIP58c12-Subproposal-Template.md)

## Sentence Summary

MIP58: RWA Foundations MIP defines the RWA Foundation concept, its scope, and formalizes how MakerDAO can guide a RWA Foundation.

## Paragraph Summary

MIP58: The RWA Foundation is a Cayman Islands legal entity whose purpose is to manage Real-World Assets investments using the Maker Protocol. The Foundation is administered by one or more Supervisors, one or more Directors, optional Committees, and optional Authorized Signers. This MIP defines how MakerDAO can communicate with the Supervisors and the Directors of such a Foundation. MakerDAO could use multiple Foundations to achieve its goals.

## Component Summary

**MIP58c1: The RWA Foundation**
Describes the legal structure of the RWA Foundation.

**MIP58c2: The DAO Resolution**
Describes the DAO Resolution with which MakerDAO can instruct the RWA Foundation to act.

**MIP58c3: List of active RWA Foundations**
List the RWA Foundations that recognize this MIP.

**MIP58c4: Generic DAO Resolution**
Describes the process of issuing a generic DAO Resolution.

**MIP58c5: Adding a Supervisor Process**
Describes the process of adding a Supervisor at the RWA Foundation.

**MIP58c6: Removing a Supervisor Process**
Describes the process of removing a Supervisor at the RWA Foundation.

**MIP58c7: Addition of a Director Process**
Describes the process of adding a Director at the RWA Foundation.

**MIP58c8: Removal of a Director Process**
Describes the process of removing a Director at the RWA Foundation.

**MIP58c9: Addition of a Committee**
Describes the process of adding a Committee at the RWA Foundation.

**MIP58c10: Removal of a Committee**
Describes the process of removing a Committee at the RWA Foundation.

**MIP58c11: Addition of an Authorized Signer** 
Describes the process of adding an Authorized Signer at the RWA Foundation.

**MIP58c12: Removal of an Authorized Signer**
Describes the process of removing an Authorized Signer at the RWA Foundation.

## Motivation

MakerDAO has a strategy to diversify its supported collateral types by adding Real-World Assets (RWA). For this MIP, RWAs are defined broadly as any kind of security, bond, share, token, loan, note, mortgage, or security interest (the list is not exhaustive).

This MIP aims to solve two issues limiting the ability of MakerDAO to implement its strategy:

- Holding of traditional RWAs requires enforcement of KYC/AML Rules (Know Your Customer/Anti-Money Laundering) that the Maker Protocol can't satisfy in its current shape, and with the current regulatory framework.
- Enforcing RWA holding rights, like suing in a court of law. The Maker Protocol can't defend its rights in its current shape and with the current regulatory framework.

## Specification / Proposal Details

### MIP58c1: The RWA Foundation

The RWA Foundation legal structure is based on the Cayman Islands Foundation Companies Law, 2017. The Foundation Company is a very flexible structure that allows for its organization and administration to be modified for specific needs. In the case of the RWA Foundation, this flexibility is used to balance the need for rigidity in the Foundation’s management, with the need to get things done.

As defined in the following diagram. The RWA Foundation itself is not intended to directly hold any RWA but to have SPV (Special Purpose Vehicle) subsidiaries that hold the actual RWA. RWA Foundation should only hold equity interests in subsidiaries in order to qualify as a "Pure Equity Holding Company" under the "International Tax Co-Operation (Economic Substance) Act" of the Cayman Islands

While there could be one Foundation per collateral type, it can also be a SPV per collateral type (or any hybrid combination). This allows to select the right jurisdiction/legal structure for each SPV and define a set of rules (e.g., Articles of Association) for each. As an example, investments in the U.S. may be carried out through a member-managed Delaware LLC (with RWA Foundation as the sole member) or through a Delaware Statutory Trust (with RWA Foundation as the trust sponsor). MakerDAO will lend (or contribute) DAI to the RWA Foundation which will contribute (or lend) the proceeds to the SPV for investment in the RWA.

For illustrative purposes, the objects for which the RWA Foundations are established could be the following: 

- To act as a borrower of a decentralized autonomous organization. 
- To carry out the mandates of a decentralized autonomous organization.
- To act as a holding company and an investment company, with no restriction on the objects or operations of its subsidiaries or on the nature of its or their investments.
- To make capital contributions or loans to subsidiaries of the company.
- To provide financial assistance or benefits to beneficiaries as designated or determined under the articles of association. 
- To do all such things as in the opinion of the Directors are or may be incidental or conducive to the above objects or any of them.

![](https://github.com/makerdao/mips/blob/master/MIP58/diagram.png)

In case this MIP conflicts with the Cayman Islands' laws, the Articles of Association, or the Memorandum of Association of the RWA Foundation; the latter shall prevail. The RWA Foundation MIP applies to any compatible Cayman Foundation regardless of the name of such Foundation.

The parties involved in a RWA Foundation are the following:

- Members and Supervisors who vote at the general meeting and whose main purpose is to appoint/remove Directors.
- Directors that are managing the Foundation and can also appoint/remove Supervisors.
- The secretary which is a licensed service provider required by the law.
- The beneficiary, which, if set, is MakerDAO.
- Committee members, which are advising the Directors on specific topics.
- Authorized Signers, which is a way for Directors to delegate some actions.

While having a member at the creation, this membership is terminated, and a special resolution is passed to irrevocably prohibit the appointment of a member in the future. The RWA Foundation will not have members and is not expected to have one in the future. It is an orphaned entity.

The Supervisors are independent third-party service companies. The Supervisors are voting at the general meeting. The purpose of the Supervisor is to act as an "interested person" to enforce the rights of the Foundation and enforce the rights and liabilities of the Directors. The RWA Foundation Supervisors will be authorized to appoint and remove the Directors (but require a DAO Resolution, MIP58c6 or MIP58c7). The Supervisors can also change the Articles of Associations by issuing a Special Resolution (but require a DAO Resolution, MIP58c3). The Supervisors can be appointed or removed by the Directors with by MakerDAO (MIP58c4 and MIP58c5). It is intended to have one Supervisor, being a reputable servicing company.

The Directors are independent third-party service companies. The Directors are managing the Foundation. They are appointed or removed by the Supervisors with an ordinary resolution of the general meeting (MIP58c6 and MIP58c7). While they can manage the day to day administrative part of the Foundation, more impacting actions need to be initiated and ratified by MakerDAO (MIP58c3). It is intended to have one Director, being a reputable independent third-party service company. It is intended that the Director service company is different from the Supervisor independent third-party service company. This provides for greater redundancy.

The Committee is a group of MakerDAO appointed people through a DAO Resolution to the directors (MIP58c9 and MIP58c10). The DAO Resolution will set forth the size, composition and authorities of the Committee. The Committee, if adopted, is intended to have some defined level of authority to instruct the Directors to carry out certain predefined actions in respect of RWA without having to revert to Maker on every administrative detail. The Directors will still have to accept to act on the guidance and follow their fiduciary duty to the RWA Foundation and obedience to the Cayman's laws. This provides some additional safety versus appointing those MakerDAO people as Directors. It also reduces the need for paperwork and scrutiny on MakerDAO people, possibly allowing pseudonymous Committee members.

A potential list of delegations that can be left to the Committee is the following:

- Notify the borrower of a default.
- Take any time sensitive measures to protect lender rights.
- Immaterial (non-monetary) waivers under financing agreements.
- Immaterial (non-monetary) amendments under financing agreements.
- Administrative matters to maintain SPV security (UCC filings, renewals).
- Authorize payments of administrative fees, costs and expenses for loan management.

The Authorized Signers are appointed by the Directors following a DAO Resolution. They are given the power to represent the RWA Foundation on a set of limited topics. For instance, they can be appointed to open a bank account to the benefit of a RWA Foundation SPV (one time event) or to issue a default notice when there is a need to (ongoing authorization). That can be used when the Directors is not willing to convey the action (for instance because he is not competent in the designed jurisdiction) or to save cost and time (each Director action being an expense).

Both the Committee and the Authorized Signers are optional and can be set up or removed by the Directors following a DAO Resolution.

Actor             | Direct power | Indirect Power | Required Trust  | Examples of actions (issuance)
------------------|--------------|----------------|-----------------|------
Supervisor        | High         | High           | High            | Administrative tasks (if any)
Director          | High         | High           | High            | Day to day administration of the Foundation
Committee         | None         | Custom         | Limited         | Custom
Authorized Signer | Custom       | Custom         | Limited         | Administrative task of RWA administration at the SPV level
MakerDAO          | None         | Very High      | Absolute        | Anything

This MIP manages only the actors power in respect to the Cayman Foundation and its subsidiaries. The flow of DAI and, if applicable, other currencies should be secured by separated MIPs. One solution is to use the `RwaConduit` smart contract from [MIP21](https://github.com/makerdao/MIP21-RWA-Example/blob/master/src/RwaConduit.sol) and/or escrow accounts.

To summarize, there are 3 levels of decision making (origination of the decision):

- For administrative tasks (like paying the annual registration fee), those are done directly by the directors. By construction, the servicing companies will not take more elaborate decisions.
- For significant tasks (creation of a SPV, selling an asset of a SPV, ...), directors will act on the basis of a DAO Resolution.
- For time sensitive and/or low to medium impact tasks (like sending a notice of default to a borrower):
  - The Committee can be delegated the power to instruct the directors to act.
  - An Authorized Signer can be delegated the power to act.

This MIP doesn't define the limits of those decision making types. That can be defined for each RWA Foundation and changed over time by MakerDAO.

### MIP58c2: DAO Resolution

The RWA Foundation recognizes the concept of DAO Resolutions by which MakerDAO can instruct the RWA Foundation to act and ratify such a decision when taken. The following components of this MIP formalize those DAO Resolutions. DAO Resolutions don't have to follow this MIP process, but DAO Resolutions not following this MIP should be avoided and are discouraged.

It is understood that the recipients of the DAO Resolution (Supervisors or Directors of the RWA Foundation) might alter the instructions to comply with law, regulations, and formal processes. They are not allowed to alter the representation of the intent.

MakerDAO can take the following type of instructions:

- Ordinary Resolution to be issued and approved at the next General Meeting of the RWA Foundation. 
- Special Resolution to be issued and approved at the next General Meeting of the RWA Foundation.
- Instruction to Directors.

### MIP58c3: List of active RWA Foundations

This list can be amended by any interest party providing evidence that the provided legal entity is compatible with this MIP or no longer active. It is provided for reference and usage of DAO Resolution is not limited to this list.

**Entries into this list should follow the following template:**

```
Legal entity name:
Address:
```

**Active RWA Foundations List**
```
Legal entity name: RWA Foundation
Company No: 381281
Address: Silverside Management Ltd., Whitehall Chambers, 2nd Floor Whitehall House, 238 North Church Street, George Town, Cayman Islands
```

### MIP58c4: Generic DAO Resolution

This subproposal is used to issue a DAO Resolution. Such subproposal has a validity of 30 days from the execution date.

MIP58c4 subproposals have the following parameters:

* Feedback Period: 2 Weeks.
* Frozen Period: 2 Weeks.

MIP58c4 subproposals must use the template located at [this link](MIP58c4-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP58c5: Adding a Supervisor Process

This subproposal is used to instruct the RWA Foundation Directors to appoint a Supervisor (and ratify such appointment). Such subproposal has a validity of 1 year (365 days) from the execution date. If added by the Directors and not removed, the Supervisor appointment survives the validity of the subproposal.

The Supervisors should be reputable service providers entities. There are not expected to take any decision beside acting on DAO Resolutions. therefore, the risk of appointing a rogue Supervisor is quite limited. 

It is the intent of the MIP to add a Supervisor only to replace a defaulting or resigning Supervisor. Having more than one Supervisor doesn't bring significant benefits but increases the costs.

MIP58c5 subproposals have the following parameters:

* Feedback Period: 2 Weeks.
* Frozen Period: 2 Weeks.

MIP58c5 subproposals must use the template located at [this link](MIP58c5-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP58c6: Removing a Supervisor Process

This subproposal is used to instruct the RWA Foundation directors to remove a Supervisor (and ratify such removal). Such subproposal has a validity of 1 year (365 days) from the execution date.

MIP58c6 subproposals have the following parameters:

* Feedback Period: 2 Weeks.
* Frozen Period: 2 Weeks.

MIP58c6 subproposals must use the template located at [this link](MIP58c6-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP58c7: Adding a Director Process

This subproposal is used to instruct the RWA Foundation supervisors to appoint a Director (and ratify such appointment). Such subproposal has a validity of 1 year (365 days) from the execution date. If added by the Supervisors and not removed, the Director appointment survives the validity of the subproposal.

The Supervisors should be reputable service providers entities. They are not expected to make any decision besides acting on DAO Resolutions and managing the day to days administrative operations of the Foundation.

While not expected to act on significant matters without a DAO Resolution or a Committee guidance, it is always a possibility that external actors would act in good faith on a Directors' request (without a DAO Resolution) incurring a liability for the Foundation. This should be a quite remote issue with any service provider.

It is the intent of the MIP to add a Director only to replace a defaulting or resigning Director. Having more than one Director doesn't significantly reduce the issue mentioned above.

MIP58c7 subproposals have the following parameters:

* Feedback Period: 2 Weeks.
* Frozen Period: 2 Weeks.

MIP58c7 subproposals must use the template located at [this link](MIP58c7-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP58c8: Removing a Director Process

This subproposal is used to instruct the RWA Foundation supervisors to remove a Director (and ratify such removal). Such subproposal has a validity of 1 year (365 days) from the execution date.

MIP58c8 subproposals have the following parameters:

* Feedback Period: 2 Weeks.
* Frozen Period: 2 Weeks.

MIP58c8 subproposals must use the template located at [this link](MIP58c8-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP58c9: Creation of a Committee

This subproposal is used to instruct the RWA Foundation Director to create a Committee (and ratify such creation). Such subproposal has a validity of 1 year (365 days) from the execution date. If appointed by the Directors and not removed, the Committee survives the validity of the subproposal.

It is important to be careful when defining the Committee members and the authority they would have.

MIP58c9 subproposals have the following parameters:

* Feedback Period: 2 Weeks.
* Frozen Period: 2 Weeks.

MIP58c9 subproposals must use the template located at [this link](MIP58c9-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP58c10: Termination of a Committee

This subproposal is used to instruct the RWA Foundation Director to terminate a Committee (and ratify such termination). Such sub proposal has a validity of 1 year (365 days) from the execution date. 

MIP58c10 subproposals have the following parameters:

* Feedback Period: 1 Week.
* Frozen Period: 1 Week.

MIP58c10 subproposals must use the template located at [this link](MIP58c10-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP58c11: Creation of an Authorized Signer 

This subproposal is used to instruct the RWA Foundation director to create an Authorized Signer (and ratify such creation). Such sub proposal has a validity of 1 year (365 days) from the execution date. If appointed by the Directors and still valid, the Signing Authorization survive the validity of the subproposal.

It is important to be careful when delegating powers to Authorized Signers as they can create liabilities to the Foundation. The mandate should be limited in scope and, if possible, limited in time.

MIP58c11 subproposals have the following parameters:

* Feedback Period: 2 Weeks.
* Frozen Period: 2 Weeks.

MIP58c11 sub proposals must use the template located at [this link](MIP58c11-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP58c12: Termination of an Authorized Signer

This subproposal is used to instruct the RWA Foundation Director to terminate an Authorized Signer (and ratify such amendment of termination). Such sub proposal has a validity of 1 year (365 days) from the execution date.

MIP58c12 subproposals have the following parameters:

* Feedback Period: 1 Week.
* Frozen Period: 1 Week.

MIP58c12 subproposals must use the template located at [this link](MIP58c12-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.
