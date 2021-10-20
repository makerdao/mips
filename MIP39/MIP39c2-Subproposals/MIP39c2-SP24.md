# MIP39c2-SP24: Adding Immunefi Security Core Unit - IS-001

## Preamble

```
MIP39c2-SP#: 24
Author(s): @travinimmunefi
Contributors: @psychonaut
Tags: core-unit, cu-is-001, mandate
Status: RFC
Date Applied: 2021-10-06
Date Ratified: <yyyy-mm-dd>  
Forum URL: https://forum.makerdao.com/t/mip39c2-sp24-adding-immunefi-security-core-unit-is-001/10810
```

## Sentence Summary

MIP39c2-SP24 adds Core Unit IS-001: Immunefi Security

## Specification

### Motivation

With the extensive growth of the DeFi ecosystem, as well as crypto as a whole, comes greater threats. Though a significant increase in both community sizes and funds within the ecosystem indicates a maturing environment, the glitter of success also attracts nefarious individuals and groups seeking to damage the ecosystem in exchange for their own personal gains.

While some aspects of cybersecurity within the space are well-known, primarily software audits, the shift in the ecosystem indicates a need for more proactive as well as reactive measures. With MakerDAO not only being one of the largest ecosystems in the space but also a pioneer in the push for decentralization, it is a prime target for these nefarious people. We wish to prevent, or, at the very least, minimize the negative effects of their intended actions.

#### Mission

Systematically improve security for builders, end users, and other stakeholders in the Maker Ecosystem by providing both reactive and proactive security services.

#### Vision

A Maker ecosystem with the right security measures, including regular self-evaluation for constant improvement, in order to allow the ecosystem builders and users to focus on innovation and adoption.

This is achieved through:

1. Security Operations
   1. **Identification of Critical Infrastructure** - A comprehensive list of critical people and infrastructure for the Maker ecosystem and metrics that need to be tracked in order to identify the areas needing focus and have proper monitoring implemented. 
   2. **Bug Bounty Program** - An industry-leading bug bounty program to adequately incentivize whitehat hackers to look for vulnerabilities in the Maker codebase as well as blackhat hackers to responsibly disclose vulnerabilities instead of exploiting them.
   3. **Incident Response Facilitation** - A refined set of “War Room” procedures and resources to minimize damages to the Maker ecosystem in the event of a successful attack.

2. Community Support  
   1. **Core Unit Operational Audits** - The creation, implementation, and regular evaluation of secure operational procedures for key Core Units to minimize attack opportunities.
   2. **Education and Advisory** - Create security resources available to all Core Units and the wider Maker community, as well as provide on-call security advisory services to foster a culture where security is taken more seriously

### Core Unit ID

IS-001

### Core Unit Name

Immunefi Security

### Core Unit Mandate

The overall goal of the Immunefi Security CU is to secure the Maker ecosystem through multiple angles by leveraging its existing and growing security community and expertise. This involves dedicated services to the Maker ecosystem, effectively establishing a security partnership with the DAO. 

As a pioneer in the DeFi space with billions in funds in the protocol, the Maker ecosystem is an attractive target for blackhat hackers who look to steal funds or disrupt the protocol. With millions lost regularly in the cryptocurrency space, it is likely that the Maker protocol, its key people, and its key infrastructure, are targeted on a regular basis. 

#### Identification of Critical Infrastructure

To ensure that the right areas are covered by the services of the Immunefi Security CU, the CU will need to regularly identify the critical areas of the Maker ecosystem, including key people, infrastructure, and processes. The CU will create metrics that need to be tracked for each of them. It will then coordinate with other CUs to leverage existing monitoring tools, and coordinate the creation of new tools for uncovered areas that are deemed critical. Where deemed necessary, the CU will create backups as well as provide necessary support for the upkeep of these tools. 

Throughout this time, the CU will ensure that the other CUs are aware of all dependencies that we have with them, and the reasons for their importance. The CU will also identify critical security dependencies across CUs throughout its investigation and surface these dependencies to the relevant CUs. 

#### Bug Bounty Program

The Immunefi Security CU will orient its growing community of security researchers on the Immunefi bug bounty platform towards the Maker ecosystem. Leveraging its expertise with bug bounty programs across the cryptocurrency space, especially the DeFi ecosystem, the Immunefi Security CU will create and propose a bug bounty program to economically incentivize further investigation of the code. 

The program will attract whitehat hackers who find vulnerabilities and responsibly disclose them, so they are fixed before they can be exploited. Additionally, this provides an incentivized opportunity for disclosure of vulnerabilities instead of exploitation for blackhat hackers.

In order to achieve this, the Immunefi Security CU will:

* **Coordinate with various CUs** in order to identify the scope of assets as well as impacts to ensure that bugs reported are those that are valuable to the ecosystem.
* **Maintain the program** by incorporating additional content where needed, such as additional requirements for submissions, restrictions, and information, adding and removing scope as needed, and including various improvements from knowledge gained through the operation of the overall Immunefi platform. If necessary, the Immunefi Security CU will create separate bug bounty programs for different areas, for example smart contracts vs. cloud infrastructure.
* **Triage** all vulnerability reports and escalate to the appropriate CU as needed. 
* **Publicly report** all critical vulnerabilities after all fixes have been implemented and verified in the format of a postmortem, and respond to inquiries from the community.

#### Incident Response Facilitation

Even with an effective Bug Bounty Program and appropriate incentives in place, there are always those who don’t care about these incentives, or believe that they can get away cleanly with more funds than the bug bounty program reward.

This is why the Maker ecosystem should still be prepared to react appropriately in the event of a serious successful attack. 

The Immunefi Security CU will collaborate with other CUs to create a War Room of on-call members, both from within and outside the Maker ecosystem. This will provide the necessary support in order to minimize the impact of the attacks.

* **Technical experts** to act on and validate successful attacks as well as assist in fixes as necessary. 
* **PR specialists** to take a proactive role in framing the perception of the exploit in a constructive manner, with the appropriate legal review of public statements. 
* **Community coordinators** to assist existing community organizers and managers in dealing with the immediate aftermath of the exploit. 

#### Core Unit Operational Audits - Full Spectrum Security Service

In addition to software and public network security, operational security also needs to be considered due to the many other attack vectors that exist. This is why the Immunefi Security CU will provide operational audits to selected CUs in the form of a Full Spectrum Security Service.

The service first identifies the key areas that need focus, and what needs to be done to address them. Within three months, the Immunefi Security CU will then review the changes that were made by the audited CU, and make further recommendations where needed. 

After this initial review, regular quarterly reviews will be conducted (1) to ensure that existing security practices are still being followed, and (2) to update the recommendations based on the most recent available information.

Throughout this process, Maker will be given access to the world class security expertise in our network to source the best solutions to its security problems.

In order to achieve this, the Immunefi Security CU will:

* **Connect with CUs** that need the service and coordinate with each of them directly with appropriate prioritization, based on information acquired during the “Identification of Critical Infrastructure” section.
* **Assemble the team and support structure** required to execute the service at the desired level. 
* **Review changes** implemented after three months to determine if the right modifications were done and if further modifications or actions are required. 
* **Create a handbook** that can be referenced by these CUs to incorporate into their emergency response operations as well as day-to-day safety procedures.

The audits include, but are not limited to:

* Threat assessment
* Private Key and multisig management
* Securing the development pipeline and infrastructure
* Physical security and key personnel security policies
* Communications, operations, and information security
* Incident response procedures relevant for the CU
* Secure software and hardware recommendations

#### Education and Advisory

As a last pillar of our strategy, the Immunefi Security CU will provide educational resources and on-call advisory, especially those for areas not covered by the Full Spectrum Security Service.

* **Provide content** that is accessible to the wider community, including resources for end users, with prioritization determined after getting feedback from other CUs
* **Conduct live seminars and workshops** for Maker ecosystem projects and CUs, with a focus on smart contract security, including bringing in experts from the wider ecosystem to provide up-to-date security information.
* **Be accessible** to all Maker projects and CUs for advisory on security-related matters in the form of an open questions and answers channel as well as an office hours call twice a month. 
* **Collaborate** with CUs that need to provision security processes, such as the SES CU when new CUs are being onboarded. 

#### Roadmap

Below is a roadmap of the activities of the Core Unit of the first 5 months after the posting of this RFC

##### September - October 2021

* Submit RFC for Core Unit, Budget, and Facilitator MIPs
* Onboard Deputy Facilitator
* Begin identification of critical infrastructure for bug bounty program coverage 
* Finalize draft of bug bounty program 
* Begin coordination for Incident Response

#####  November 2021

* Post Core Unit and Facilitator MIP
* Post bug bounty program RFC 
* Begin content planning 
* Launch of social media channels 

#####  December 2021

* Anticipated Core Unit Launch
* Post bug bounty program MIP 
* Post Core Unit Operational Audits RFC 
* Set up weekly calls for office hours and general update calls
* Launch community channels 

#####  January 2022

* Post Core Unit Operational Audits MIP 
* Finalize initial incident response procedures 
* Complete identification of metrics for nefarious activity 
* First regular content publication 

#####  February 2022

* Organize the creation of backups for critical monitoring infrastructure 
* Commence first fire drill 
* Begin Core Unit Operational Audits for two CUs 