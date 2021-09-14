# Intangible Asset Assignment

## Preamble
```
MIP#: 60
Title: Intangible Asset Assignment
Author(s): @LongForWisdom
Contributors: Seth Goldfarb (@seth)
Tags: living
Type: Process
Status: RFC
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP24, MIP41
Replaces: N/A
```

## References
**[MIP60c3-ForumPost-Template.md](MIP60c3-ForumPost-Template.md)**  
**[MIP60c4-Subproposal-Template.md](MIP60c4-Subproposal-Template.md)**  

## Sentence Summary

MIP60 sets processes for MakerDAO to determine which actors manage which Intangible Assets (such as web domains, Github repositories, and social media accounts).

## Paragraph Summary

MIP60 sets processes for MakerDAO to determine which actors manage which Intangible Assets (such as web domains, GitHub repositories, and social media accounts). These processes are designed to be as lightweight as possible, requiring intervention by Maker Governance only in the case of disagreement between actors over the management of Intangible Assets. Included is a set of requirements for actors to meet when management control changes, and an active list detailing which actors manage which assets.

## Component Summary

**MIP60c1: Definitions and Assumptions**  
MIP60c1 defines actors and processes that take place under MIP60, along with assumptions that it requires to operate effectively.

**MIP60c2: Intangible Asset List**  
MIP60c2 defines a list of Intangible Assets owned by MakerDAO and details both the purpose and controller of the asset.

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

**Platform Manager:** An individual or organization that runs the technical infrastructure that serves content to an asset held by an Asset Owner. This individual or entity may be outside MakerDAO's direct control. For example, an individual or organization hosting the webserver that serves content on a given domain is a platform manager. As another example, a centralized organization such as Twitter or Github that manages a publicly available content platform is a Platform Manager.

#### Assumptions
The following assumptions are made regarding control and ownership of Intangible Assets within MakerDAO in order for this MIP to be effectively used to manage the access of digital assets.

**Assumption #1:**
MIP60 assumes that some Asset Owner exists for the assets managed using this MIP. 

At the time of writing this MIP, the Asset Owner for many of MakerDAO's Intangible Assets is the DAI Foundation.

**Assumption #2:**
MIP60 assumes that actors under the umbrella of MakerDAO usually have positive relationships with one another and are able to come to mutually satisfactory resolutions in the majority of situations that require a modification to the Content Managers or Platform Managers of an Intangible Asset.

**Assumption #3:**
MIP60 assumes that there are sufficient Core Unit Facilitators to meet the transparency requirements defined in MIP60c3.

### MIP60c2: Intangible Asset List

MIP60c2 defines a list of the Intangible Assets owned by MakerDAO and should be managed by the MIP Editors. 

#### vote.makerdao.com

> **Asset Type:** Subdomain  
> **Asset Owner:** DAI Foundation  
> **Platform Manager:** DUX Incubating Core Unit (DUX email?)  
> **Content Manager:** GovAlpha Core Unit (GovAlpha@protonmail.com)  
> **Purpose:** Provide a safe and reliable way for Maker Governance to take part in the on-chain governance of MakerDAO.  
> **Last Modification:** N/A (Grandfathered)  

etc...

### MIP60c3: Agreed Modification of Management

In order for a Modification of Management to be valid under this component, it must meet the following requirements. In the event an asset has not yet been 'claimed' by any entity, the new managing entities must still follow the requirements listed in this component.

**Transparency**  
An agreed modification of control must be made publicly accessible to Maker Governance using the MakerDAO discourse forum. It must remain publicly accessible for at least one week before being considered valid and actioned by the relevant Asset Owner.

The agreed Modification of Management must use the template located at **[MIP60c3-ForumPost-Template.md](MIP60c3-ForumPost-Template.md)**.

**Well Defined**  
An agreed Modification of Management must include a listed purpose for the asset and reasoning for why the change in management is desirable. Additionally, the new managers must provide a public contact address (email) and commit to responding promptly to contact requests from lawful authorities and mandated actors.

**Recorded**  
An agreed Modification of Management must include a link to an open pull request on the official MIPs GitHub repository which modifies MIP60c2 to take into account the agreed modification. The link to this pull request must be present in the discourse forum post as part of transparency requirements. 

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

MIP60c4 is a Process MIP component that allows for the resolution of Contested control over an Intangible Asset by appealing to Maker Governance. A Contested Modification of Management must also meet the same requirements as an agreed Modification of Management, with the exception of the 'Uncontested' and 'Supported' headings.

If a subproposal under MIP60c4 passes successfully, then the listed Modification of Management should be made by the Asset Owner of that Intangible Asset.

MIP60c4 subproposals have the following parameters:

- **Feedback Period**: 4 full weeks
- **Frozen Period**: 1 full week

MIP60c4 subproposals must use the template located at **[MIP60c4-Subproposal-Template.md](MIP60c4-Subproposal-Template.md)**. This template is considered ratified if this MIP moves to Accepted status.

---



