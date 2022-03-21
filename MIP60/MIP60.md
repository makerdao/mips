# MIP60: Intangible Asset Assignment

## Preamble

```
MIP#: 60
Title: Intangible Asset Assignment
Author(s): @LongForWisdom
Contributors: Seth Goldfarb (@seth)
Tags: process, living
Type: Process
Status: Accepted
Date Proposed: 2021-09-14
Date Ratified: 2022-02-28
Dependencies: MIP24, MIP41
Replaces: N/A  
Ratification Poll URL: https://vote.makerdao.com/polling/QmWDna6r
Forum URL: https://forum.makerdao.com/t/mip60-intangible-asset-assignment
```

## References
**[MIP60c3-ForumPost-Template.md](MIP60c3-ForumPost-Template.md)**  
**[MIP60c4-Subproposal-Template.md](MIP60c4-Subproposal-Template.md)**  
**[Public Records Google Sheet](https://docs.google.com/spreadsheets/d/1tW2FeaseSb4ExjRajbes9WURrIc416K6kIcrPc5l1zQ/edit#gid=0)**  

## Sentence Summary

MIP60 sets processes for MakerDAO to determine which actors manage which Intangible Assets (such as web domains, GitHub repositories, and social media accounts).

## Paragraph Summary

MIP60 sets processes for MakerDAO to determine which actors manage which Intangible Assets (such as web domains, GitHub repositories, and social media accounts). These processes are designed to be as lightweight as possible, requiring intervention by Maker Governance only in the case of disagreement between actors over the management of Intangible Assets. Included is a set of requirements for actors to meet when management control changes, and links to the records detailing which actors manage which assets.

## Component Summary

**MIP60c1: Definitions and Assumptions**  
MIP60c1 defines actors and processes that take place under MIP60, along with assumptions that it requires to operate effectively.

**MIP60c2: Intangible Asset Records**  
MIP60c2 defines the records of Intangible Assets owned by MakerDAO.

**MIP60c3: Agreed Modification of Management**  
MIP60c3 defines the requirements for an agreed Modification of Management of one or more Intangible Assets owned by MakerDAO.

**MIP60c4: Contested Modification of Management**  
MIP60c4 is a process component that allows authors to appeal to Maker Governance to resolve a contested modification of management of one or more Intangible Assets owned by MakerDAO.

## Motivation

The goal of MIP60 is to provide a lightweight and efficient mechanism for the Modification of Management of any Intangible Assets owned by MakerDAO. I have attempted to meet that goal by only requiring an on-chain vote in the event of disagreement between parties over which should have control of an Intangible Asset.

A secondary motivation of MIP60 is to create a publicly accessible asset registry that lists the key information about Intangible Assets owned by MakerDAO.

## Specification / Proposal Details

### MIP60c1: Definitions and Assumptions  

The following definitions are used within MIP60 to describe the processes and actors involved in the control and assignment of Intangible Assets.

#### Processes

**Agreed Modification of Management:** An uncontested and mutually agreed-upon transfer of management control of an Intangible Asset owned by MakerDAO. A subproposal is not required for an agreed Modification of Management.

**Contested Modification of Management:** A subproposal that enables the resolution of a contested transfer of management control of an Intangible Asset by appealing to Maker Governance.

#### Actors

**Asset Owner:** An individual or organization that retains control of an asset on behalf of MakerDAO. An Asset Owner has the power to forcibly revoke access and control of an Intangible Asset from a Content Manager. An Asset Owner has the power to forcibly revoke access and control of a digital asset from a Platform Manager when the platform is not managed outside of the control of MakerDAO (Twitter, GitHub, etc.) The Dai Foundation is an example of an Asset Owner.

**Content Manager:** An individual or organization that has been granted access to manage the content of an asset held by an Asset Owner. For example, controlling the content of a web domain, or creating posts on a social media account.

**Platform Manager:** An individual or organization that runs the technical infrastructure that serves content to an asset held by an Asset Owner. This individual or entity may be outside MakerDAO's direct control. For example, an individual or organization hosting the webserver that serves content on a given domain is a platform manager. As another example, a centralized organization such as Twitter or GitHub that manages a publicly available content platform is a Platform Manager.

#### Assumptions
The following assumptions are made regarding control and ownership of Intangible Assets within MakerDAO for this MIP to be effectively used to manage the access of digital assets.

**Assumption #1:**
MIP60 assumes that some Asset Owner exists for the assets managed using this MIP.

At the time of writing this MIP, the Asset Owner for many of MakerDAO's Intangible Assets is the DAI Foundation.

**Assumption #2:**
MIP60 assumes that actors under the umbrella of MakerDAO usually have positive relationships with one another and can come to mutually satisfactory resolutions in the majority of situations that require a modification to the Content Managers or Platform Managers of an Intangible Asset.

**Assumption #3:**
MIP60 assumes that there are sufficient Core Unit Facilitators to meet the transparency requirements defined in MIP60c3.

### MIP60c2: Intangible Asset Records

The canonical Intangible Asset records will be maintained in the [interim-asset-records](link) github repository. The records will be stored in an appropriate open-source file format. It is the responsibility of the Asset Owner to ensure that changes to the canonical Intangible Asset record for an owned asset are accompanied by a relevant and specific commit-message explaining why the change took place.

For convenience, a publicly accessible google sheet will be maintained in parallel to the canonical records. The canonical records will be maintained for each asset by the Asset Owner or an agent employed on their behalf.

The google sheet can be found [here](https://docs.google.com/spreadsheets/d/1tW2FeaseSb4ExjRajbes9WURrIc416K6kIcrPc5l1zQ/edit#gid=0).

For each intangible asset, the records must contain the following information:
* The asset type
* The asset owner
* The platform manager
* The content manager
* The purpose of the asset
* The last modification date
* A link to the last modification documentation

### MIP60c3: Agreed Modification of Management

In order for a Modification of Management to be valid under this component, it must meet the following requirements. In the event an asset has not yet been 'claimed' by any entity, the new managing entities must still follow the requirements listed in this component.

**Transparency**  
An agreed modification of control must be made publicly accessible to Maker Governance using the MakerDAO discourse forum. It must remain publicly accessible for at least one week before being considered valid and actioned by the relevant Asset Owner.

The agreed Modification of Management must use the template located at **[MIP60c3-ForumPost-Template.md](MIP60c3-ForumPost-Template.md)**.

**Well Defined**  
An agreed Modification of Management must include a listed purpose for the asset and reasoning for why the change in management is desirable. Additionally, the new managers must provide a public contact address (email) and commit to responding promptly to contact requests from lawful authorities and mandated actors.

**Recordable**  
An agreed Modification of Management must include the required information such that the Intangible Asset records can be updated.

**Supported**  
An agreed Modification of Management must be publicly supported by at least three Core Unit Facilitators as defined in MIP41.

In the case that an Intangible Asset is currently managed by one or more actors, the managing actor(s) must support the Modification of Management in order for it to be valid under this component.

**Uncontested**  
An agreed Modification of Management can be contested by the following actors:
* Any Core Unit Facilitators as defined in MIP41.
* Maker Governance. Maker Governance can use MIP24c4 to express contention quickly.
* Any of the current managers (content or platform) of the Intangible Asset.

If an agreed Modification of Management becomes contested, it is no longer valid, and the author must submit a Contested Modification of Management subproposal before any actions are taken.

### MIP60c4: Contested Modification of Management

MIP60c4 is a Process MIP component that allows for the resolution of contested control over an Intangible Asset by appealing to Maker Governance. A Contested Modification of Management must also meet the same requirements as an agreed Modification of Management, with the exception of the 'Uncontested' and 'Supported' headings.

If a subproposal under MIP60c4 passes successfully, then the listed Modification of Management should be made by the Asset Owner of that Intangible Asset.

MIP60c4 subproposals have the following parameters:

- **Feedback Period**: 4 full weeks
- **Frozen Period**: 1 full week

MIP60c4 subproposals must use the template located at **[MIP60c4-Subproposal-Template.md](MIP60c4-Subproposal-Template.md)**. This template is considered ratified if this MIP moves to Accepted status.

---
