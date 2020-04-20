# MIP6: Collateral Onboarding Form/Forum Template

## Preamble
```
MIP#: 6
Title: Collateral onboarding form/forum template
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23)
Contributors: @LongForWisdom, Leo Jsaraceno (Mitote), Helge Andreas Qvam (@planet_X)
Type: Process
Status: <Assigned by MIP Editor>
Date Proposed: 2020-04-06
Dependencies: n/a
Replaces: n/a
```

## Sentence Summary

MIP6 provides an overview of defines a standardised application form used to kick off the process of onboarding a new collateral asset to the Maker Protocol.

## Paragraph Summary

The purpose of this proposal is to standardize the collateral onboarding form/forum template that community members and third-party projects can use to begin the process of getting their collateral onboarded to the Maker Protocol.

## Component Summary

**MIP6c1: Process Overview**  
Provides an overview of the collateral application form submission process which includes location, involved stakeholders and the next phase.

**MIP6c2: Application Form Template**  
Provides an collateral application form template to be used in the submission process defined in MIP6c1. 

**MIP6c3: Sub Proposal Framework**  
A process component that defines a method and template to amend the collateral application form template defined in MIP6c2.

## Motivation

This proposal aims to layout one part of the generalized process for adding collateral types to the Maker Protocol. This will allow the community to get an idea of what the applying collateral is, an overview of the risks, and an understanding of the potential benefits to Maker. A consistent application form allows prospective collateral types to be compared by the community. The pitch materials allow the interested party to generate interest from the Maker community.

Although this is only one component of the overall collateral onboarding process, this proposed standard would decrease confusion surrounding how to start the process of getting collateral added to the Maker Protocol and ultimately, increase the onboarding speed at which new collateral types can be onboarded.

## Specification / Proposal Details

### MIP6c1: Process Overview

**Collateral Onboarding Form / Form Template**
1.  Fill out the application/questions in as much detail as you’re willing.
    

	-   Once filled out, the application must be published on the official MakerDAO forum and should be posted within the `Collateral Onboarding App` subcategory within the `Maker Improvement Proposals` category.
	-   This post should have the tag `collateral-app`.
	-   Note that an 'interested party' refers to anybody willing to act as a stakeholder for this onboarding process.
    

2.  After the submission on the forum, the community will likely have follow up questions. While not a requirement, answering questions about your project may help generate support or excitement for the proposed collateral type. Additionally, the interested party may organize an optional call to pitch their proposal as well as open up further discussion to the community. 
    
3.  Once the application has been submitted to the forum, it is eligible for Domain Greenlight as defined in MIP8.

4.  After two weeks of discussion have passed, and Domain Greenlight (MIP8) has been completed, the application is eligible to move to the Community Greenlight poll defined in MIP9.
    

### Overall Process Overview Diagram

<img width="649" alt="mip6" src="https://user-images.githubusercontent.com/32653033/79087563-ad136e00-7d0d-11ea-89b2-679747275ecf.png">

---
### MIP6c2: Application Form Template

Responses to these questions serve as an introduction to the community, this minimum set of information helps intrigued community members research the project on their own. Other pitch materials of all sorts are encouraged if the applicant believes it will help them garner support and excitement for the collateral.

**The suggested application questions are as follows:**

1. Who is the interested party for this collateral application?
2. Provide a brief high-level overview of the project, with a focus on the applying collateral token.
3. Provide a brief history of the project.
4. Link the whitepaper, documentation portals, and source code for the system(s) that interact with the proposed collateral, and all relevant Ethereum addresses. If the system is complex, schematic(s) are especially appreciated.
5. Link any available audits of the project. Both procedural and smart contract focused audits. 
6. Link to any active communities relating to your project.
7. How is the applying collateral type currently used?
8. Does one organization bear legal responsibility for the collateral? What jurisdiction does that organization reside in?
9. Where does exchange for the asset occur?
10. (Optional) Has your project obtained any legal opinions or memoranda regarding the regulatory standing of the token or an explanation of the same from the perspective of any jurisdiction? If so, those materials should be provided for community review.
11. (Optional) Describe whether there are any regulatory registrations for the token and provide related documentation (including an explanation of any past or existing interactions with any regulatory authorities, regardless of jurisdiction), if applicable.
12. (Optional) List any possible oracle data sources for the proposed Collateral type.
13. (Optional) List any parties interested in taking part in liquidations for the proposed Collateral type.

    
---
### MIP6c3: Sub Proposal Framework

In addition to the standardized template for submitting collateral types to be reviewed, this MIP also introduces MIP6-Subproposal (MIP6-SPs).

**Requirements**

MIP6-SPs will be used to define changes to the required fields of this collateral application form/forum post. However, there is a lot of flexibility, both when it comes to omitting certain data, but more importantly when it comes to adding extra data. It is expected that the community will often have a backlog of the additional de-facto standard required data fields in proposals that aren’t yet added to the official required fields via MIP6-SPs.

In order to submit a MIP6-Subproposals, one must create a MIP from the provided template.

**MIP6-SP Template:**  
- **Feedback Period**: 1 month
- **Frozen Period**: 1 week
- **Sub Proposal Template**:


```
Introduction 

  - MIP6c3-SP: #

  - Title: <Title>

  - Author(s): <Name>, <Github handle>

  - Date Proposed: year-month-day

Specification 

  - Motivation
    - Explain the motivation behind the changes to the application questions.
    
  - List of changes to Application questions.

```
