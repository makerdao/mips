# Intangible Asset Assignment

## Preamble
```
MIP#: X
Title: Intangible Asset Assignment
Author(s): @LongForWisdom
Contributors: @seth
Tags: living
Type: Process
Status: RFC
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP41
Replaces: N/A
```
## References
**[MIPXc3-ForumPost-Template.md](MIPXc3-ForumPost-Template.md)**  
**[MIPXc4-Subproposal-Template.md](MIPXc4-Subproposal-Template.md)**  

## Sentence Summary

MIPX sets processes for MakerDAO to manage which actors have control of which Intangible Assets (such as web-domains, github repositories and social media accounts).

## Paragraph Summary

MIPX sets processes for MakerDAO to manage which actors have control of which Intangible Assets (such as web-domains, github repositories and social media accounts). These processes are designed to be as lightweight as possible, requiring intervention by Maker Governance only in the case of disagreement between actors over the control of Intangible Assets. Included is a set of requirements for actors to meet when management control changes, and an active list detailing which actors have control of which assets.

## Component Summary

**MIPXc1: Definitions and Assumptions**  
MIPXc1 defines the assumptions made by MIPX and clarifies what actions it does and does not cover.

**MIPXc2: Intangible Asset List**  
MIPXc2 defines a list of Intangible Assets owned by MakerDAO and details the both the purpose and controller of the asset.

**MIPXc3: Agreed Modification of Management**  
MIPXc3 defines the requirements for an agreed Modification of Management of one or more Intangible Assets owned by MakerDAO.

**MIPXc4: Contested Modification of Management**  
MIPXc4 is a process component which allows authors to appeal to Maker Governance to resolve a contested moficiation of management of one or more Intangible Assets owned by MakerDAO.

## Motivation

The goal of MIPX is to provide a lightweight and efficient mechanism for the Modification of Management of any Intangible Assets owned by MakerDAO. I have attempted to meet that goal by only requiring an on-chain vote in the event of disagreement between party's over which should have control of a Intangible Asset.

A secondary motivation of MIPX is to create a publicly accessible asset registry that lists the key information about Intangible Assets owned by MakerDAO.

## Specification / Proposal Details

### MIPXc1: Definitions and Assumptions**  

The following definitions are used within MIPX to describe the processes and actors involved in the control and assignment of Intangible Assets.

#### Processes
**Agreed Modification of Management:** An uncontested and mutually agreed-upon transfer of management control of a Intangible Asset owned by MakerDAO. A subproposal is not required for an agreed Modification of Management.

**Contested Modification of Management:** A subproposal that enables the resolution of a contested transfer of management control of a Intangible Asset by appealing to Maker Governance.

#### Actors
**Asset Owner:** An individual or organization that retains control of an asset on behalf of MakerDAO. An Asset Owner has the power to forcably revoke access and control of a Intangible Asset from a Content Manager.An Asset Owner has the power to forcably revoke access and control of a digitial asset from a Platform Manager when platform is not managed outside of the control of MakerDAO (twitter, github, etc.) The Dai Foundation is an example of an Asset Owner.

**Content Manager:** An individual or organization that has been granted access to manage the content of an asset held by an Asset Owner. For example, controlling the content of a web domain, or creating posts on a social media account.

**Platform Manager:** An individual or organization that runs the technical infrastructure that serves content to an asset held by an Asset Owner. This individual or entity may be outside MakerDAO's direct control. for example, an individual or organization hosting the web server that serves content to an asset held by an Asset Owner. As another example, a centralized organization such as Twitter or Github that manages a publicly available content platform.

#### Assumptions
The following assumptions are made regarding control and ownership of Intangible Assets within MakerDAO in order for this MIP to be effectively used to manage the access of digitial assets.

**Assumption #1**
MIPX assumes that some Asset Owner exists for the assets managed using this MIP. 

At the time of writing this MIP, the Asset Owner for many of MakerDAO's Intangible Assets is the DAI Foundation.

**Assumption #2**
MIPX assumes that actors under the umbrella of MakerDAO usually have positive relationships with one another and are able to come to mutually satisfactory resolutions in the majority of situation that require a modification to the Content Managers or Platform Managers of a Intangible Asset.

**Assumption #3**
MIPX assumes that there are sufficient Core Unit Facilitators to meet the transparency requirements defined in MIPXc3.

### MIPXc2: Intangible Asset List

MIPXc2 defines a list of the Intangible Assets owned by MakerDAO and should be managed by the MIP Editors. 

#### vote.makerdao.com
> **Asset Type:** Subdomain  
> **Controller:** DUX Incubating Core Unit  
> **Purpose:** Provide a safe and reliable way for Maker Governance to take part in the op-chain governance of MakerDAO.  

etc...

### MIPXc3: Agreed Modification of Management

In order for a Modification of Management to be valid under this component, it must meet the following requirements. In the event an asset has not yet been 'claimed' by any entity, the new managing entities must still follow the requirements listed in this component.

**Transparency**  
An agreed mofication of control must be made publicly accessible to Maker Governance using the MakerDAO discourse forum. It must remain publicly accessible for at least one week before being considered valid and actioned by the relevant Asset Owner.

The agreed Modification of Management must use the template located at **[MIPXc3-ForumPost-Template.md](MIPXc3-ForumPost-Template.md)**.

**Well Defined**  
An agreed Modification of Management must include a listed purpose for the asset and reasoning for why the change in management is desirable. Additionally, the new managers must provide a public contact address (email) and commit to respond promptly to contact requests from lawful authorities and mandated actors.

**Recorded**
An agreed Modification of Management must include a link to an open pull request on the official MIPs github repository which modifies MIPXc2 to take into account the agreed modification. The link to this pull request must be present in the discourse forum post as part of transparency requirements. 

**Supported**  
An agreed Modification of Management must be publicly supported by at least three Core Unit Facilitators as defined in MIP41. 

In the case that a Intangible Asset is currently managed by one or more actors, the managing actor(s) must support the Modification of Management in order for it to be valid under this component.

**Uncontested**  
An agreed Modification of Management must not be publicly contested by any of the following:
* Any Core Unit Facilitators as defined in MIP41.
* Maker Governance. Maker Governance can use MIP24c4 to express contention quickly.
* Any of the current managers (content or platform) of the Intangible Asset.

If an agreed Modification of Management becomes contested, it is no longer valid, and the author must submit a Contested Modification of Management subproposal before any actions are taken.

### MIPXc4: Contested Modification of Management

MIPXc4 is a Process MIP component that allows for the resolution of Contested control over a Intangible Asset by appealing to Maker Governance. A Contested Modification of Management must also meet the same requirements as an agreed Modification of Management, with the exception of the 'Uncontested' and 'Supported' headings.

If a subproposal under MIPXc4 passes successfully, then the listed Modification of Management should be made by the Asset Owner of that Intangible Asset.

MIPXc4 subproposals have the following parameters:
- **Feedback Period**: 4 full weeks
- **Frozen Period**: 1 full week

MIPXc4 subproposals must use the template located at **[MIPXc4-Subproposal-Template.md](MIPXc4-Subproposal-Template.md)**. This template is considered ratified if this MIP moves to Accepted status.

---



