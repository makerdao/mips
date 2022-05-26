# MIP39c2-SP7: Adding Protocol Engineering Core Unit

## Preamble

```
MIP39c2-SP#: 7
Author(s): Protocol Engineering Core Unit
Contributors: Smart Contracts Domain Team
Tags: smart-contracts, core-unit, cu-pe-001, active, mandate
Status: Accepted
Date Proposed: 2021-03-03
Date Ratified: 2021-04-27  
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-march-2021-governance-cycle-bundle-march-22-2021?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip39c2-sp7-adding-protocol-engineering-core-unit/6831
```

## Sentence Summary

MIP39c2-SP7 adds Protocol Engineering Core Unit.

## Specification

## Motivation

Onboarding the Protocol Engineering Core Unit secures a wealth of engineering, security, research and smart contract development experience ensuring that the Maker protocol can safely continue to grow as a DeFi leader.

**New Information:** This proposal was originally titled the Smart Contract Core Unit. However, community discussion during the RFC process indicated that we should also give immediate attention to promoting future protocol growth and innovation, in particular Layer2 development. To accelerate this we will be increasing our immediate headcount by two. Further details can be found in the budget [MIP](https://forum.makerdao.com/t/mip40c2-sp7-modify-smart-contract-core-unit-budget/6832). This addition will drive the development of the Optimism Dai bridge and L2 solutions - a game changer for Maker! Specifics have been added to the L2 Development section below.

Therefore, this Core Unit has been renamed to the  **Protocol Engineering Core Unit**, as it is a more accurate title of the team's responsibilities, summarised in the following infographic and the team's mandate further below.

![](https://i.imgur.com/qaNOqGq.png)

## Responsibilities
*The Protocol Engineering Team’s responsibility is to extend the functionality of the Maker protocol, assist with the maintenance and operation of existing smart contracts and ensure the safety and correctness of protocol design and implementation.*

1) **Extending the functionality of the protocol** via the design and implementation of new smart contracts and other censorship-resistant mechanisms. This will include additional smart contract modules as well as expansion to L2 solutions or other L1 blockchains in the future.

2) **Assisting in the maintenance and operation of existing smart contracts** as needed, for example by writing code to implement executive proposals, fixing bugs, or simply providing expert consultation on matters like the risks associated with various parameters or how different parts of the system interact.

3) **Ensuring the safety and correctness of the protocol** at the design and implementation levels, from bytecode to game theory. This includes being a last line of defense for any and all code added to the protocol, and being responsible for setting standards, designing processes, and selecting, providing training for, and making available tools to achieve safety and correctness. It further encompasses the application of formal methods to provide best-in-class assurance to users of the protocol.

## Core Unit Name
Protocol Engineering Core Unit

## Proposed Core Unit Facilitator
@Derek 

## Team Structure

The Protocol Engineering Core Unit will have a flat management structure led by the facilitator who answers to the community of MKR holders. This Core Unit is being proposed as a single team. In the future, sub-teams will be defined to give greater transparency to their specific tasks, as championed by the team facilitator.

This will evolve into focus areas including; execution & implementation, innovation (initially Optimism & L2), and safety/security sub-teams. This is important because:

* Measuring success is different for innovation vs implementation vs research
* Specialisations build focus, reduce context switching and lead to better planning
* Knowledge sharing and code-review opportunities across sub-teams helps to upskill individuals and reduce errors
* We need to increase team throughput by building up parallel teams

All work will be included in weekly updates, objectives and key results, and a pipeline to show future priorities.

## Team Credentials

Engineers on this team come with a background in software architecture and/or software engineering with a comprehensive understanding of blockchain fundamentals, security architecture, consensus algorithms, formal modeling and verification, and smart contract Solidity/Ethereum development experience.

## Working Philosophy

*DeFi is an experimental landscape where change is constant and the cost of failure is very high.*

This team works on a variety of projects, everything from new collateral adapters, to emergency spells, as well as various core and non-core modules. This means that as a team we embrace the notion of paired programming, and asynchronous peer reviews to deliver space-grade code. As part of our day-to-day, we:

* Maintain an open forum for discussion, collaboration and learning
* Are unafraid to voice concerns, risks or limitations when discussing enhancements or changes
* Adhere to industry standards such as ensuring passing unit tests before deploying any code
* Modularize code to keep contracts simple and the attack surfaces small
* Maintain active relationships with auditors and support community bug bounties
* Keep a tight coupling with the Risk Team and the community to manage protocol risk exposure
* Open source our code for broader adoption and to promote ecosystem growth
* Aim to constantly raise the bar for safety and correctness, setting the standard for excellence in protocol design and implementation

## Ways of Working & Team Rituals

The Protocol Engineering Team operates on a two week sprint cadence allowing us to be responsive to community votes and market changes. Our commitment to clarity and transparency shall be accomplished with the following:

* **Weekly Protocol Engineering Team update:** a Governance and Risk call presentation covering progress, including; achievements, challenges, roadblocks.
* **Quarterly Objectives and Key Results:** Document team priorities to help drive focus and alignment with other domain teams.

* **Maintenance of an Innovation Pipeline:** as a mechanism to communicate what we are working on and clearly demonstrate team priorities.

The intention is that through these recurring rituals our stakeholders will be well informed with respect to what this team has achieved, what they are currently working on as well as any upcoming initiatives.

## Core Unit Mandate

The following items categorise the scope of the Protocol Engineering Team and the problems we solve. Please note that this is not a prioritization, but rather an expression of the scope that we focus on.

### Security and Safety

*Ensuring the safety and robustness of the Maker protocol necessitates a comprehensive approach to code security.*

* Review and vet all internal and community code to ensure it is safe
* Provide immediate responses to security incidents via pager duties
* Maintain a list of pre-written spells in the event of an emergency
* Undertake timely risk assessments of smart contract issues
* Testing, including formal verification and code reviews for all additions to the protocol
* Validate all authorizations on contracts and protocol elements
* Work with external auditors to audit and verify the safety of new code
* Identify and mitigating against security attacks
* Review technical proposals for completeness and safety
* Set standards, design processes, and select, provide training for, and make available tools to achieve safety and correctness

### Community Involvement

*Engaging with and aiding the community and outside developers to understand and grow the Maker protocol.*

* Educate community members in understanding the protocol
* Train community contributors to take on tasks themselves
* Develop tooling for community developers
* Promote integration with other protocols
* Review community proposals
* Advocate for technical changes in the community
* Make contract integrations more human friendly

### Collateral Onboarding

*Evaluating, auditing and onboarding new collateral types to the Maker protocol.*

* Audit collateral tokens and onboard them to the system to safely increase Dai supply
* Support new collateral types through research and technical assessment
* Explore experimental collateral to support risk assessments and 3rd party engagements
* Build innovative collateral adapters to support new collateral types (including NFTs and other novel collateral types)

### Protocol Evolution

*Developing new smart contracts is essential to extend protocol features and functionality.*

* Upgrade existing MCD functionality inline with industry best practice
* Explore deployment of the Maker protocol on other L1 chains
* Design new Instant Access Modules to reduce the Governance burden
* Design new core modules to enhance and grow protocol functionality
* Develop new smart contracts that interact with emergent protocols, yield farms or tools
* Redesign core contracts to be more focused on gas optimizations and using newer compilers
* Explore future initiatives, including; extend MCD to other EUR, GBP, CHF deployments, cross-chain Dai payment rails, credit delegation solutions, flash minting solutions, Governance incentives & voter privacy, surplus buffer investment strategies, the addition of new synthetic assets, as well as vaults with in-built yield strategies.

### Layer2 Development
* Evolve Maker into the primary off-ramp for Optimistic rollups in the Ethereum ecosystem
* Research fast, trustless and decentralized Layer2 solutions beyond OR implementation
* Identify and audit current and future ecosystem liquidity flows between protocols
* Integrate with other teams and individuals covering Protocol Evolution and R&D 

### Research & Development

*Engaging in experimental efforts by creating new knowledge, and synthesising existing knowledge.*

* Stay up to date on changes in the Ethereum ecosystem
* Explore inter-shard designs and impacts upon MakerDao
* Contribute to broader Ethereum roadmap and developer efforts
* Extend formal specification languages such as Act, with system properties including nonlinear equations, liveness properties, game theoretic properties, and automate the refinement of these all the way down to bytecode.

### Protocol Maintenance

*Ongoing risk parameter management aligning to Governance needs as well as upgrades and bug fixes.*

* Address on-chain operational needs through executive spell creation
* Understand and communicate risks to the protocol
* Understand and document the protocol on a deep level
* Adapt to sudden risks in the protocol, e.g., flashloans by engaging with Governance
* Develop tools to fix bugs
* Document code changes and maintain useful libraries

### Tooling/Automation/Infrastructure

*Developing computer aided governance and decision support systems to automate common tasks and enhance the developer experience*

* Building automation and decision assistance tooling & infrastructure for smart contract tasks
* Building and enhancing developer tools for those that engage with smart contracts
