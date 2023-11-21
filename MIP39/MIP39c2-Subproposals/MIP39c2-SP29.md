# MIP39c2-SP29: Adding TechOps Core Unit (TECH-001)

## Preamble

```
MIP39c2-SP#: 29
Author(s): @simonkp
Contributors: @georgen, @dumitru, @lukaszb, @wouter
Tags: core-unit, cu-tech-001, mandate, active
Status: Accepted
Date Proposed: 2021-12-08
Date Ratified: 2022-01-24
Forum URL: https://forum.makerdao.com/t/mip39c2-sp29-adding-techops-core-unit-tocu-001
Ratification Poll URL: https://vote.makerdao.com/polling/QmZEeWAC
```

## Sentence Summary

MIP39c2-SP29 adds the TechOps Core Unit (TECH-001) to handle the system administration and technical support needs of the Maker Protocol and its Core Units.

## Paragraph Summary

The TechOps Core Unit will handle system administration and technical support needs of Maker Protocol and its Core Units. TECH-001 will strive to improve communication and collaboration between the developers, end users, and other stakeholders by applying DevOps principles to software delivery and first-class technical support.

## Specification

### Motivation

TECH-001 is looking forward to passionately support secure, reliable and transparent infrastructure in order to improve MakerDAO’s collaboration, agility, and resilience. Stakeholders in the Maker Ecosystem such as the Maker Community, the Maker Governance, other CUs, and users of the Maker Protocol (DAI holders) know that they can rely on an experienced team to set up and securely maintain their infrastructure.

### Core Unit ID

TECH-001

### Core Unit Name

TechOps

### Core Unit Team

The essential factor of TechOps services is 24/7/365 support. This requires proper coverage across all time zones. The Core Unit team already has a total time zone coverage with Engineers in the Americas (1 Engineer), Europe (2) and APAC (1). We plan to hire another 3 Engineers in the near future to improve time zone coverage, namely in the Americas, Europe and APAC.

Another important factor of TechOps services is cost effectiveness. Combining these two factors together (the 24/7/365 support and cost effectiveness), the team will also provide services for other Core Units and commercial entities (subject of separate arrangements), and settle the accounts based on FTE (Full Time Equivalent) allocation.

The structure below presents the **current team structure** built around the mission of providing technical support services to the MakerDAO Ecosystem.

|Role|People|FTE|
|--|--|--|
|Facilitator/DevOps Engineer|2|1.6|
|DevOps Engineer|2|1.6|
|Project Manager|0|0.0|
|Operations Consultant|1|0.2|
|**TOTAL**|**6**|**3.4**|

The structure below presents a **prospective team structure** with planned additional hires.

|Role|People|FTE|
|--|--|--|
|Facilitator/DevOps Engineer|2|1.6|
|DevOps Engineer|5|3.4|
|Project Manager|1|0.5|
|Operations Consultant|1|0.2|
|**TOTAL**|**9**|**5.7**|

#### Core Unit Facilitator - 2

* Communications with Governance and MakerDAO Community
* Agile workload management
* Managing budget and strategy
* 24-hour availability due to time zones coverage
* No single point of failure
* The Facilitators will also have the responsibilities of the DevOps Engineer role

#### Engineering - currently 4

* Securely manage existing and provision new infrastructure
* Operate the internal support desk
* Select, secure, and manage administrative cloud services
* Manage logging, monitoring, detection and recovery of hosted services
* Software development and life cycle support
* 24-hour availability due to different time zones coverage
* No single point of failure

#### Project Manager - 0.5 FTE

Will be looking to hire in the near future. The main objective is to relieve the Facilitators to focus more on engineering tasks and communications with the community.

## Core Unit Mandate

### Mission

To provide technical support services to MakerDAO stakeholders and liaison with external service providers while ensuring the effectiveness, reliability and security of the MakerDAO infrastructure layer.

### Vision

TECH-001 is a team of passionate professionals with quality-first attitude, extensive experience in the Maker Ecosystem and a heavy interest in the always developing Web3 space.

The infrastructure we deliver is reinforced by:

* _Reliability_ - Secure and reliable operations, resulting in high service availability, robust monitoring, and regular safe deployments
* _Support_ - 24/7 detection and incident response with high level of redundancy between critical components and team members
* _Transparency_ - Accessibility and transparency to other CUs and the broader MakerDAO community. Stakeholders will be kept informed regularly about the state of the infrastructure, its cost structure and the tradeoffs involved

TECH-001 closely collaborates with the stakeholders of the Maker Ecosystem facilitating:

* _Education_ - TECH-001 properly educates stakeholders about operational security best practices and regularly reviews them for improvements
* _Point of contact_ - TECH-001 facilitates incident response and acts as a first line of support for external security researchers and Maker Ecosystem participants
* _Integration_ - New participants in the Maker Ecosystem and third-party integrators can access and reuse infrastructure scripts and recipes from the service catalogue created and maintained by TECH-001

### Strategy

By following the rapid continuous improvement and innovation cycle between TechOps and other Core Units, we strive to improve communication and collaboration between the developers, end users, and other stakeholders (that is, all participants in the MakerDAO Ecosystem, not just technical Core Units) by applying DevOps and SRE (Site Reliability Engineering) principles.

![DevOps|690x323](upload://9HKRSjZiemDqO4ax7qZmiVUyf7P.png)
Source: atlassian.com

#### Plan

- Establish clear priorities: Ensure that urgent or time sensitive work is prioritised appropriately
- Conduct peer code reviews: A minimum of two other engineers looking at every code change
- Limit WIP (Work in Progress): Minimise context switching and improve quality of work
- Knowledge sharing sessions: Analyse our performance and update the process as necessary

#### Provision Infrastructure with Infrastructure as Code

- Easy to understand and share with others
- Simple and fast to change, upgrade, and scale
- Fast feedback from problems

#### Service Building & Continuous Delivery

We work closely with the developers (and other Core Units) to provide them with service delivery pipelines for their service’s code repositories. This allows them to get their work done in smaller batches and automatically deploy new changes, leading to higher quality software and faster feedback from tests and the user.

#### Monitoring Applications, Protocol & Infrastructure

Providing monitoring components such as:

- Performance monitoring
- Insight into system components
- Metrics, Logs and Dashboards
- Alerting infrastructure

#### Continuous Feedback & Transparency

- From the Stakeholders: Regular meetings for a chance to hear from the stakeholders with any feedback
- Metrics and Logs: Monitoring systems setup to gather a constant stream of data to improve our positioning for a more reliable infrastructure

> Read the full version of our [Mission, Vision and Strategy](https://docs.google.com/document/d/10cQSdFxh_BbjPVL2F7TGOyX4cSaDNZD_RYzrGbpnPs4/edit#)

### Products and Services

The main areas of responsibilities are:

- Hosting and supporting Critical Maker Components in collaboration with other CUs
- General System Administration
- DevOps Services to deliver services reliably
- Research and Development to future proof the infrastructure we manage

_Note:_ Due to the limited number of FTE resources and costly cloud infrastructure (see Budget MIP), it is up to TECH-001 to triage incoming requests and, in some cases, to declare work as out of scope and infrastructure not critical. Basically TECH-001 will not use DAO funds lightly to support non-critical infrastructure.

#### Critical Maker Components

The TechOps Core Unit will maintain a registry of critical Maker infrastructure and support the activities that it will offer. The team will work with the relevant stakeholders (for example, the Immunefi Security Core Unit, IS-001) to keep this list up-to-date and ensure that it evolves with the changing needs of the MakerDAO Ecosystem and the protocol.

The initial list is included below:

- Collaboration with other Core Units
    - **Protocol Engineering (PE-001)** - Ethereum nodes provisioning, administration and monitoring
    - **Oracle (ORA-001)**
        - Administration, Monitoring and new Collateral onboarding
        - Addition of each new collateral type touches various systems that need to be reconfigured to accept said collateral. Systems such as Oracle Feeds and Relayers, monitoring, dashboards, keepers, changelog and _spell_ whitelisting.

      _Note_: A different MIP will be put forward to the community to transfer the ownership of the current Oracle Feed and Relayers from the Maker Foundation to TECH-001.
    - **Development & UX (DUX-001)** - GovPollDB hosting & maintenance
    - **GovAlpha (GOV-001)** - Monitoring spells and voting
    * **Immunefi Security (IS-001)** - Runbooks for incident response and emergency procedures
    * **VulcanizeDB** - Maintenance, hosting, and new collateral support
    * **SAI API** - Legacy support

Critical Maker protocol components such as:

- Flap auctions
- Forum*
- Website*
- Blog*
- Discord administration
- Various keepers - open source services to facilitate Maker smart contracts operations
    - [Chief Keeper](https://github.com/makerdao/chief-keeper)
    - [Cage Keeper](https://github.com/makerdao/cage-keeper)
    - [D3M Keeper](https://github.com/makerdao/d3m-keeper)**
    - [Autoline Keeper](https://github.com/makerdao/autoline-keeper)**
    - ETH Filler
    - Poker Keeper
    - Drip Keeper

  \* **Note**: TECH-001 will only take responsibility for the infrastructure hosting exclusively as Platform Manager, and will not be responsible for the content hosted on these platforms.
The team will work with the community and follow the procedures laid out in [MIP60](https://forum.makerdao.com/t/mip60-intangible-asset-assignment/10319) to establish Content Managers for the respective platforms.
At the very minimum the contact details of the Content Manager need to be publicly available on the platform. Platforms without a designated Content Manager will be taken offline after a notice period of 70 days.

  \*\* **Note**: Gas costs are not included in our [MIP40c3-SP28](https://forum.makerdao.com/t/mip40c3-sp28-techops-core-unit-dai-budget/12072) budget proposal. TECH-001 will work with the relevant stakeholders and MakerDAO governance to organise the provisioning of ETH to cover these costs. TECH-001 will at any time be managing these funds in service of the MakerDAO community and will at no time take ownership of the assets that are involved in the process. The Maker Protocol will be added as beneficiary in the multisigs that are part of this setup wherever practically feasible.

- Infrastructure Monitoring & Alerts: Dashboards, response to alerts and Reports

  **Note**: TECH-001 is not responsible for any actions taken from looking at the metrics presented through the dashboards hosted by TECH-001. All the data is public and available to be consumed by everyone.

- Development & QA
- Infrastructure design, CI/CD pipelines and staging environments
- Technical Support: Support CUs we work with, to set up accounts, helping with infrastructure setup and configuration, security best practices education, and so on. 24/7 follow-the-sun support, assessment and remediation
- Tools administration and development: 3rd party services administration and management, such as:
    - Development of Discord bots and integration with other services
    - Grafana dashboards development, which are then made available to others
    - PagerDuty alarms development and integration with other services
    - Development of various keeper services (those listed above and others per community needs)
    - Maintenance of projects used by the keepers (pymaker, pygasprice-client)

#### General System Administration

- Infrastructure hosting for the CUs that we work with
- Documentation of critical components
- Cloud providers management
    - Multiple cloud providers to prevent lock-in, add pricing options and introduce fault tolerance. Automated with Infrastructure as Code.
- Network & Security
    - Virtual Private Cloud (VPC) and Firewall management
- Load balancing
    - Dynamic upstreams and SSL certificates automation
- Testing (services and infrastructure)
- Database administration
- Secrets and service credentials management
- Backups & Restore
    - Database
    - Stateful services filesystem
    - Regular automated restore tests

#### DevOps Services

- Infrastructure as Code Automation
    - Cloud Environment provisioning
    - Cost management & Optimisations
- Source control and artefacts management
    - GitHub and Docker repositories
- CI/CD - Setting up automated delivery and testing pipelines to deploy Maker services to various environments with confidence
    - Github Actions and other CI systems
- Monitoring, Metrics & Alerts
    - Various server metrics
    - Service availability and performance monitoring
- Log Aggregation
    - Centralised log data storage for easy developer access, analysis and optional alerting
- Knowledge Sharing and Training
    - Expected to be continuously learning
    - Provide environment for safe experimentation
    - Regular knowledge sharing presentations within the team and to outside stakeholders

### Roadmap and R&D/POC

-  Ongoing improvements of the cloud infrastructure redundancy by further diversifying availability zones, regions, and service providers
- Explore new decentralised infrastructure architectures introduced by Web3, e.g., IPFS
- Eth2 nodes administration
- Container orchestration on Kubernetes
- Chaos Engineering implementation for testing the redundancy of components
- Mapping and establishing Service Level Indicators (SLIs) and Service Level Objectives (SLOs). Made popular by Google, SLOs are a tool to help determine what engineering work to prioritise, therefore increasing reliability of services
