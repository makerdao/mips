# MIPX: Domain Structure and Roles

## Preamble
```
MIP#: X
Title: Domain Structure and Roles
Author(s): @LongForWisdom
Contributors: N/A
Type: General
Status: RFC
Date Proposed: TBC
Date Ratified: n/a
Dependencies: n/a
Replaces: n/a
```

## References


## Sentence Summary

MIPX provides a flexible and consistent structural framework for personnel working for MakerDAO within any domain.

## Paragraph Summary

MIPX provides a flexible and consistent structural framework for personnel working for MakerDAO within any domain. It defines two classes of roles, Domain Facilitators and Domain Contributors, and describes how they relate to one another. It also lays out guidelines for expansion into new domains, and how this should be defined under the MIPs framework.

## Component Summary

**MIPXc1: Domain Structure**  
Describes a consistent structure that can be used for any domain. 

**MIPXc2: Domain Facilitators**  
Defines the domain facilitator role in general terms.

**MIPXc3: Domain Contributors**  
Defines the domain contributor role in general terms.

**MIPXc4: Domain Definition MIPs**  
Suggests a template structure to be used to define specific instances of domain teams.

**MIPXc5: Domain Structure Transitioning**  
Describes how MakerDAO will transition from the current domain team model to the new hierarchical domain structure.

## Motivation

While MIP7 provided an initial starting point, it did not attempt to define how domain teams should be structured. 

In theory, the open and permissive structure of having multiple teams within a domain that work independently has the advantage of decentralization and scalability. However in practice MakerDAO is not yet at the point where there are a sufficient number of qualified and willing personnel to support multiple teams. In fact, the open team structure may be inhibiting the growth and sharing of domain expertise due to the barrier for entry.

The domain structure defined in MIPX is designed to promote knowledge transfer from current domain personnel into potential domain personnel via a facilitator-contributor model. In this hierarchical model, there is more of an opportunity for community members to be paid for domain work without immediately taking on longer term responsbility for that domain or having to pass a governance vote.

It is hoped that the addition of an explicit entry-level role will increase interest in these roles and leave the protocol with a larger pool of trained personnel to fulfil domain work.

## Specification / Proposal Details

### MIPXc1: Domain Structure

Specific role definitions of individual domains are not covered by this MIP, instead it seeks to lay out a generic, flexible and lightweight structure that can be used by all domains within MakerDAO.

Each domain is encouraged to build their own working structure under this umbrella to meet the requirements of their domain if they feel this is necessary. The key importance is to separate those with responsbility to the protocol, and those doing work for the protocol into two separate roles.

The first role is known as the Domain Facilitators. This position maps most closely to the previous Domain Team role. This position takes responsibility for the domain as it relates to MakerDAO and takes more of an organizational role. Persons in this role must be ratified by Maker Governance.

The second role is known as the Domain Contributors. This position is a working role that fulfils tasks as defined by the Domain Facilitators. Domain Contributors are not required to be ratified by governance.

---

### MIPXc2: Domain Facilitators

The Domain Facilitators take responsibility for the success of MakerDAO as it relates to their domain. They will outsource to their Domain Contributors such that the required work is completed and domain reponsibilities are fulfilled. Additionally, they will agressively transfer knowledge and attempt to grow the pool of personnel that can effectively work within their domain.

Each domain will have its own specific requirements and responsibilites, but it is suggested that domain facilitors keep the following principles in mind at all times:
* Transparency - Be clear and upfront with the activities within the domain. Make every effort to inform Maker Governance of current work, issues, and concerns.
* Effectiveness - Aim to complete work and resolve problems within the domain to the best of their abilities.
* Present and Future Focus - Solve the problems of the present while being aware of the future impact of their actions.

At least one Domain Facilitator is required to explicitly and publicly approve any domain work that has been produced by a Domain Contributor before it can be used by Maker Governance. Any Domain Facilitator is able to explicitly and publicly veto the use of any unit domain work that has been produced by a Domain Contributor, this veto power takes precedence over the approval power. It must be expicitly and publicly communicated to Maker Governance which Domain Contributor(s) is responsible for any given unit of domain work.

It is recommended that Maker Governance aim to recruit and maintain three domain facilitators for each defined domain in the near-medium term. Three facilitators provides redundancy while allowing for knowledge transfer and on the job training within the role. Longer term, it is likely that this domain structure will change, or that a greater number of Domain Facilitators will be required.

The Domain Facilitator role within any domain is an elected role. Personnel must be ratified via a subproposal to be defined in each individual domain definition MIP (see MIPXc4.) A list of Domain Facilitators will be maintained within the domain definition MIP for that domain by the Domain Facilitators.

Each domain facilitator must provide a hardware-wallet secured ethereum public address to which they uniquely hold the private key. This address must be listed in the domain facilitator list for this domain (see MIPXc4). This address may be delegated powers or authority by Maker Governance at a future date.

---
### MIPXc3: Domain Contributors

The Domain Contributors within a domain perform work on tasks within their given domain. These tasks can either be directly assigned by Domain Facilitators, or can be performed on a contributors own initiative. 

Each domain will have its own specific requirements and responsibilites, but it is suggested that Domain Contributors keep the following principles in mind at all times:
* Communication - Be clear and upfront with the work you are doing within the domain. Make every effort to inform the Domain Facilitators of the status of your current work, as well as any issues or concerns.
* Effectiveness - Aim to complete work assigned as agreed with the Domain Facilitators to a high level of quality. 

It is recommended that the Domain Facilitators attempt to cultivate and recruit as many Domain Contributors as possible within their domain. Redundancy is critical, and it is expected that Domain Contributors serve as the main source of potential candidates for Domain Facilitators.

The Domain Contributor role within any domain is not an elected role. Instead, an individual or team is officially labelled a Domain Contributor when domain work of theirs is approved by a Domain Facilitator. At this point, the Domain Contributor must provide a name or pseudonym, coupled with a brief paragraph describing their qualifications, experience or interest in the Maker Protocol. A list of Domain Contributors will be maintained within the domain definition MIP for that domain by the Domain Facilitators.

---

### MIPXc4: Domain Definition MIPs

It is proposed that each domain operating under the Maker Protocol is defined within its own MIP, known as a Domain Definition MIP. A Domain Definition MIP must have at least the following set of components:
* Domain Overview - A description of the domain itself.
* Domain Facilitator Role and Responsibilities - A list of the responsibilities taken on by the Domain Facilitators.
* Domain Facilitator Candidate Criteria - A list of the qualities and qualifications suggested for the Domain Facilitators.
* Domain Facilitator Removal Criteria - A list of the criteria under which a Domain Facilitator should be removed. 
* Domain Facilitator List - A list of Domain Facilitators within this Domain.
* Domain Contributors List - A list of Domain Contributors within this Domain.
* Facilitator Onboarding Process Component - A component that allows for the onboarding of a Domain Facilitator within this domain.
* Facilitator Offboarding Process Component - A component that allows for the offboarding of a Domain Facilitator within this domain.

---

### MIPXc5: Domain Structure Transitioning

Given the current set of MIPs, the current domain team structure and the absence of Domain Definition MIPs for the existing domains, a transition plan is defined here and should be followed if this MIP moves to the Accepted status.

Until a Domain Definition MIP is produced for an existing domain, that domain will continue to operate using the previous structure and onboarding / offboarding proposals defined in MIP7.

When a Domain Definition MIP is Accepted for an active domain (Smart Contracts, Risk, Oracles) the following will occur:
* Any reference to 'Domain Teams' in existing MIPs should be modified by the MIP Editors to reference the appropriate Domain Facilitators.
* Members of currently ratified domain teams will become Domain Facilitators under the new structure automatically.
* Any individual or team that has provided approved domain work in that domain will become Domain Contributors under the new structure automatically.
* Any reference to MIP7 related to that domain in existing MIPs should be modified by the MIP Editors to reference the newly created MIP.
* The MIP Editors will use their discretion when making the above changes with the aim of matching the intention of the transition to existing MIPs to the fullest extent possible.

Once Domain Definition MIPs have been produced for the Oracle, Risk, and Smart Contracts domains, MIP7 should be moved to deprecated status by the MIP Editors and should no longer be considered active or usable. At that stage, any reference to MIP7 within other MIPs should be modified to reference the appropriate Domain Definition MIP by the MIP Editors.

---