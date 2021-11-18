# MIP39c2-SP25: Adding Sidestream Auction Services Core Unit - SAS-001

## Preamble

```
MIP39c2-SP#: 25
Author(s): @danik
Contributors: @BracketJohn , @lukass , @builderman, @wouter, @juan, @Petru_Catana, @lollike, @Njoku_Emmanuel
Tags: core-unit, cu-sas-001, mandate
Status: Formal Submission
Date Applied: <2021-10-06>
Date Ratified: <yyyy-mm-dd>
Ratification Poll URL: https://vote.makerdao.com/polling/QmPnAkS4
Forum URL: https://forum.makerdao.com/t/mip39c2-sp25-adding-sidestream-auction-services-core-unit-sas-001/10796/10
```

## Sentence Summary

MIP39c2-SP25 adds SAS-001: Sidestream Auction Services Core Unit.

## Specification

### Motivation

Liquidations and auctions are important security mechanisms to keep the Maker protocol free of debt. A healthy auction ecosystem helps to operate the protocol sustainably and therefore increases trust. Besides, a healthy auction ecosystem helps with better outcomes for vault owners in cases of liquidations, which can increase user satisfaction. These factors are the motivation for having a dedicated Auction Services Core Unit.

### Core Unit ID

SAS-001

### Core Unit Name

Sidestream Auction Services

### Core Unit Mandate

#### Mission

Improve security, transparency and accessibility of the Maker Protocol by providing and maintaining auction services through open-source development.

#### Vision

To provide and maintain systems on top of the auction mechanism that contribute to security and growth of the Maker Protocol.

Those systems:

1. Visualize auction data to increase **transparency** and generate **insights**
2. Provide intuitive UIs and well-maintained APIs for **interaction** with the auction mechanism (to increase accessibility and adoption)
3. Help ensure that there is always sufficient auction participation, even in extreme circumstances such as
   * Protocol upgrades (e.g. new collateral types)
   * Inefficient market conditions

#### Strategy

Sidestream Auction Services CU’s strategy is centered around **solving the anticipated challenges** of the selected problem space in order to execute the mission and vision.

The following describes a selection of anticipated challenges. Afterwards, we discuss different aspects of the strategy that pave the way to overcome those challenges.

##### Anticipated Challenges

![Anticipated Challenges](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP25/anticipated_challenges.png)

*1. Fail-Safety*

As Black Thursday has shown, it is necessary that the auctions system is extremely fail-safe.

Therefore,

1. We have to understand the consequences of auction mechanisms failure and how to mitigate them
2. We have to ensure that our solutions work in emergencies
3. We have to create trust that our solutions are fail-safe

*2. Informed Decision-Making*

Currently, it is hard to make data-driven decisions regarding auctions and liquidations. This needs to change in the long term. For that, governance needs to know how auctions and liquidations are performing. ([First attempt to empirically evaluate auctions and liquidations performance.](https://arxiv.org/pdf/2106.06389.pdf))

Things governance needs to know:

1. Is participation healthy?
2. How many people are using the UIs, and how is usage changing over time?
3. How healthy is the current keeper ecosystem?

*3. Prioritization*

As we are not building a closed system, we have ensured that our efforts and choices are integrated into the big picture of the protocol.

Therefore, we need to answer the following questions:

1. How do we ensure that we build **the right things** in **the right order**?
2. How do we ensure that we don’t block other core units while following the defined mission?
3. How do we balance long-term plans of our roadmap vs. new requirements in a fast-changing environment (e.g. onboarding of new collateral types)?

*4. Intricacies of Emergency Infrastructure:*

A part of this CU’s problem space (e.g. “ensuring an efficient keeper ecosystem") is hopefully never needed, but if needed it needs to work flawlessly. The emergency aspects lead to the following challenges:

1. How do we maximize the likelihood that fire escapes work in case of a real fire?
2. How do we consistently keep the quality high? Unexpected failures can have a tremendous negative impact on the protocol itself.
3. How do we ensure that the auctions infrastructure scales with the rest of the protocol (e.g. more users and more liquidations, new collateral types)?

*5. Building For A Heterogeneous User Base:*

The auction mechanism is used by a heterogeneous user base of 1. technical and non-technical, 2. experienced and new, 3. protocol interest aligned and unaligned users, leading to the following challenges:

1. How do we ensure that the auction mechanism is accessible for new users?
2. How do we ensure that the auction mechanism stays relevant for existing users?
3. How do we measure the accessibility of the auctions mechanism?

#### Strategies to overcome the challenges

The team has worked out a number of mitigation strategies for the anticipated challenges, grounded in solid software development and product management principles. The team has worked together for several years and rigorously refined its practices.

*1. Simulation of Failure Modes*

The following strategies help us to overcome the challenges when building tools for emergency scenarios:

1. **Modelling the risks**: During the incubation program, we have become familiar with different failure modes that are related to the auctions mechanism (e.g. DAI to USD peg lost, protocol accumulates more debt than it can cover). Detailed theoretical knowledge of risks and solutions ensures that we build the right emergency solutions.
2. **Conducting regular fire drills**: Fire drills shall increase the likelihood that our solutions mitigate the risks and that our implementations are flawless. Therefore, we will simulate different emergency scenarios (e.g. inefficient market conditions, market crashes) and test edge cases (e.g. transactions with a loss, vaults that are immediately liquidated) to remove any unknowns and have the closest guarantee that our solutions work as intended under those extreme conditions.
3. **Providing transparency on emergency prevention**: We will document, record, and publish all thoughts, models, and simulations on failure modes. This will ensure that all stakeholders are informed about the auction mechanism’s state of security. Therefore, the community’s trust and our core unit’s accountability to the community are maximized.

*2. Emphasis on Product Management*

A number of the challenges that we identified can be mitigated by ensuring that the team is following solid product management practices. Three elements we want to highlight:

1. **Leverage our learning curve**: We can leverage our learning curve, as we are quite new to the Maker system. In the beginning, we will prioritize being a community-informed core unit. Over time, we will rely more on our expertise while still keep gathering input from the community. An edge that we leverage in the beginning is our outsider perspective: While learning about Maker and the auctions mechanisms, we thoroughly documented our struggles and started to build applications that are more accessible to outsiders.
2. **Involve a wide range of stakeholders for requirements gathering**: We will dedicate a significant amount of time to gather the requirements of all stakeholders. That’s important as auctions are relevant for several core units (e.g. smart contracts CU, oracles CU and testing infrastructure CU) and different types of community members (e.g. keepers, developers, liquidity providers). Once we have established better monitoring and visualization tools, we hope to become more data-driven in our decision-making. We will also advocate for our opinion when other core units make relevant decisions.
3. **Agile Practice**: We will execute in bi-weekly sprints and release cycles. Mostly we will follow the roadmap, still the agility ensures that we can easily adjust our execution when circumstances change. Every sprint ends with a screen-recording of the implementations that is publicly accessible.

*3. Review- and Metric-Driven Development Process*

Many of the challenges centre around ensuring maximum possible implementation quality, which we will ensure through our rigorous development process

1. **Functional reviews**: Functional reviews are done early in the implementation process already - modular development and tools (e.g. Storybook) help to ensure that the desired functionality and UX of every developed component are in place.
2. **Code reviews**: No code is merged before receiving at least one thorough code review, transparent to everyone inside the pull request.
3. **Quality metrics**: To ensure that the development is objectively good, we will have metrics in place that track relevant facets (e.g. deviations from release dates, time till new collateral type was integrated, test coverage).

*4. Shorten Time-to-Market through Automation and Standardization*

While our development process focuses on quality, we will still ensure that our execution speed keeps up with the fast-changing environment through automation and standardization.

1. **Development Automation**: We use continuous integration (CI) and continuous deployment (CD) pipelines that run on every commit and are integrated into our code review process. This ensures that we don't merge any broken code and increase reproducibility.
2. **Modularity**: Our product management and development is very modular to ensure that as much as possible can be reused. Especially features that are often extended will be developed in that way (e.g. onboarding of new collateral types).
3. **Standard Operating Procedures (SOPs)**: To increase efficiency and accessibility, we work with SOPs, guides, and checklists as much as possible. There will be SOPs on different abstraction levels, for technical and non-technical processes (e.g. Scaffolds for new projects, how to submit a Pull Request, Steps to onboard a new collateral type).

*5. Transparency and Reporting*

To maximize trust inside the DAO we will have a high emphasis on making all our actions and deliverables as transparent as possible.

1. **Open-source software**: All software that we develop for the auction mechanism is open-source. This shall lead to more trust among all stakeholders, easier contribution, and better accessibility for technical users.
2. **Monitoring systems**: We will build systems to monitor auctions and our solutions (e.g. data visualizations of current and past auctions, GitHub Status like system for our solutions) to increase trust and to help to derive conclusions on the overall auction system's performance and health and to inform future developments.
3. **Technical Reporting**: To increase accessibility to our work, we will document all discussions and decisions in our web presence, Core Unit Twitter account, a public Notion space, and our GitHub repositories (README, Kanban board, and Issues).

#### Team

The team is composed of 5 permanent members (3.5 FTE)

* 1 Facilitator (Daniel - 0.5 FTE)
* 1 Designer & Product Manager (Lukas - 1 FTE)
* 3 Full-stack Software Engineers (incl. DevOps) (Valentin - 1 FTE, Nils - 0.5 FTE, Ben - 0.5 FTE)

The team has completed a variety of end-to-end software development projects including specifications, design, frontend, backend and infrastructure. The team consists of the founders and core team of the software development agency [SIDESTREAM](https://sidestream.tech/) that is known for high-quality software development. You can find our portfolio [here](https://www.sidestream.tech/en/reference-projects-software-development). The core unit will be a separate business unit of the company.

#### Work in Progress

Since joining the SES Incubation Program in June 2021, the team has already been working to deliver value to the community. We hope to hit the ground running as a new core unit and are looking to have a first release around the time our MIP is formally submitted. The first release is a MVP of a new, unified Auctions UI. The MVP enables participation in flip auctions. 

- You can find the release [here](https://auctions.makerdao.network/). 
- The code is Open Source and can be found [here](https://github.com/sidestream-tech/unified-auctions-ui).

The core features of the MVP are explained below:

**One-click arbitrage through flash lending**: It is the first UI in the Maker ecosystem that leverages flash lending of collateral. This means a user can engage in one-click arbitrage opportunities without the need for any DAI funds. With this new possibility, a higher number of keepers can participate in flip auctions, which leads to increased security of the Maker Protocol in case of inefficient market conditions and a high number of liquidations. In the case of inefficient programmatic keepers, the UI can also be seen as a backstop solution.

**Two Interaction modes for different user groups**: Following our mission to increase the accessibility and trust of auction services, we built two interaction modes for the UI. A narrative-based approach explains the functionalities and the usage of the UI to inexperienced users and leads them through the whole auction participation process from start to end. For experienced users, we built an expert mode that disables the explanations and shows only the most relevant information. It is possible to switch between those two interaction modes anytime.

#### Future Enhancements/Roadmap/Next Steps

In our next steps, we continue to take over and adjust auctions-related tools and services that require a permanent owner in the post-foundation area.

**Unified Auctions User Interface**

The goal is to unify monitoring and participation in different types of auctions in a unified User Interface.

* For the **monitoring** part of the UI, there will be overviews of vaults at risk of a liquidation, overviews of active auctions and data about past auctions and their participation.
* The **participation** part of the Unified UI shall be fully based on liquidations 2.0 (inc. Flash Lending functionality for all auction types). As some auction types weren't migrated to liquidations 2.0 yet, there will be temporary solutions for the time being.
* The functionality around auctions shall be **further extended**, e.g., with limits, notifications and **Twitter Bots**.

**Keepers**

Next to the user interfaces, we are planning to take over, maintain and run all auction-related keepers. Currently, capital is required for pre-liquidations 2.0 keepers, so running will be possible after migration.

**Support New Protocol Upgrades**

We will adjust auction services to follow protocol engineering’s efforts to scale the reach of Maker. For example, this includes onboarding new collateral type and extension to L2s in the future.
