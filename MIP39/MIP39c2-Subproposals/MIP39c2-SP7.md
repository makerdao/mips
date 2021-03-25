# MIP39c2-SP7: Adding Smart Contracts Core Unit

## Preamble

```
MIP39c2-SP#: 7
Author(s): Smart Contract Domain Team
Contributors:
Status: Request For Comments (RFC)
Date Applied: 2021-03-03
Date Ratified:
```

## Sentence Summary
MIP39c2-SP7 adds Smart Contracts Core Unit.

## Specification

## Motivation

Onboarding the Smart Contracts Core Unit secures a wealth of engineering and smart contract experience ensuring that the Maker protocol can safely continue to grow as a DeFi leader.

## Responsibilities
*The Smart Contract Team’s responsibility is to extend the functionality of the Maker protocol, assist with the maintenance and operation of existing smart contracts and ensure the safety and correctness of protocol design and implementation.*

1) **Extending the functionality of the protocol** via the design and implementation of new smart contracts and other censorship-resistant mechanisms. This may include additional smart contract modules as well as expansion to L2 solutions or other L1 blockchains in the future.

2) **Assisting in the maintenance and operation of existing smart contracts** as needed, for example by writing code to implement executive proposals, fixing bugs, or simply providing expert consultation on matters like the risks associated with various parameters or how different parts of the system interact.

3) **Ensuring the safety and correctness of the protocol** at the design and implementation levels, from bytecode to game theory. This includes being a last line of defense for any and all code added to the protocol, and being responsible for setting standards, designing processes, and selecting, providing training for, and making available tools to achieve safety and correctness. It further encompasses the application of formal methods to provide best-in-class assurance to users of the protocol.

## Core Unit Name
Smart Contracts Core Unit

## Proposed Core Unit Facilitator
@Derek 

## Team Structure

The Smart Contracts Team will function as a self-managing entity with a flat management structure. The team, through its Facilitator will answer to the community and MKR holders regarding its directives which shall include any of the mandates mentioned below.

In the future, sub-teams may form to tackle specific mandated tasks, as championed by the Team Facilitator/s and the Governance community to allow greater focus on specific areas (for example; Core Protocol Development, Collateral Development and Security & Core Research). In any such an event, these sub-teams will be recorded as updates to this MIP.

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

The Smart Contract Team operates on a two week sprint cadence allowing us to be responsive to community votes and market changes. Our commitment to clarity and transparency shall be accomplished with the following:

* **Weekly Smart Contract Team update:** a Governance and Risk call presentation covering progress, including; achievements, challenges, roadblocks.
* **Quarterly Objectives and Key Results:** Document team priorities to help drive focus and alignment with other domain teams.

* **Maintenance of an Innovation Pipeline:** as a mechanism to communicate what we are working on and clearly demonstrate team priorities.

The intention is that through these recurring rituals our stakeholders will be well informed with respect to what this team has achieved, what they are currently working on as well as any upcoming initiatives.

## Core Unit Mandate

The following items categorise the scope of the Smart Contracts Core Unit and the problems we solve. Please note that this is not a prioritization, but rather an expression of the scope that we focus on.

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
* Explore future initiatives, including; extend MCD to other EUR, GBP, CHF deployments, Layer2 scaling solutions, cross-chain Dai payment rails, credit delegation solutions, flash minting solutions, Governance incentives & voter privacy, surplus buffer investment strategies, the addition of new synthetic assets, as well as vaults with in-built yield strategies.

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
* Adapt to sudden risks in the protocol e.g. flashloans by engaging with Governance
* Develop tools to fix bugs
* Document code changes and maintain useful libraries

### Tooling/Automation/Infrastructure

*Developing computer aided governance and decision support systems to automate common tasks and enhance the developer experience*

* Building automation and decision assistance tooling & infrastructure for smart contract tasks
* Building and enhancing developer tools for those that engage with smart contracts
