# MIP39c2-SP18: Adding Development & UX Core Unit - DUX-001

## Preamble

```
MIP39c2-SP#: 18
Author(s): @rafinskipg, @tiago, @adamgoth, @tyler, @philip, @0xdeniz
Contributors: @wouter, @juanjuan
Tags: core-unit, cu-dux-001, mandate
Status: RFC
Date Applied: 2021-08-11
Date Ratified: YYYY-MM-DD
```

## Sentence Summary

MIP adds Core Unit DUX-001: Development and UX Core Unit

## Specification

### Core Unit ID

DUX-001

### Core Unit Name

Development & UX

### Core Unit Facilitator

Philip Bain

### Core Unit Mandate

### Mission

Enabling the best-in-class decentralized decision making for the Maker Protocol by providing a meaningful user experience for all governance participants.

### Vision

Our vision is to provide the best governance user experience following key governing principles such as **accessibility**, **neutrality**, and **transparency**. We want to do so by:
- Facilitating an optimal decision-making process, allowing routine decisions to be executed in a fast and frictionless manner, while complex or controversial decisions are thoughtfully deliberated.
  - Providing easy access to information for governance users by helping them find what they need, when they need it by creating informative data analytics, uncovering insights, and highlighting the impact of voter's decisions.
  - Surfacing the available options by facilitating discussion and collaboration.
  - Creating a frictionless user experience with simple, fast, available, and intuitive user interfaces.
- Ensuring security not just for the user and their assets, but most importantly, security for the protocol, avoiding governance manipulation and attacks.
  - Ensuring availability of the governance UIs and the required blockchain data.
  - Real-time monitoring of the health and safety of the system.
  - Encouraging safe behavior through the user experience.
  - Encouraging participation to secure the majority of MKR tokens.
- Bringing governance within the industry forward by nurturing a community of Maker enthusiasts and inspiring the broader DeFi space.

## Strategy

In a continuous iterative looping process, putting the community at the heart of what we do, we will work through five stages:

1. Discover
2. Define
3. Design & Develop
4. Deliver
5. Analyse & Reflect

This process allows us to diverge when uncovering problems to solve and discovering new opportunities, and to converge when implementing a possible solution.

![DUX_Strategy_Diagram](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP18/dux_strategy_diagram.png)

## 1. Discover

The core unit will pro-actively research, ideate, and continuously gather insights from different internal and external sources such as:

**Internal Sources:**

Quantitative Research
- Analyzing user metrics data
- Running surveys

Qualitative Research
- Internal meetings with a focus on feature discovery
- 1:1 interviews with MKR Holders

**External Sources:**

- Trends and developments happening in the DeFi space at large
- Feedback from MakerDAO's forum
- Direct input from governance facilitators, and other core unit members
- Feedback collected through public communication channels such as Discord or Rocket Chat
- Input from other existing governance solutions both within and outside of the crypto industry

**Ideation**
- Internal & External Ideation workshops using FigJam
- Rapid Prototyping
- Visual explorations

Possible Features & Bugs will be collected on this site: [https://makerdao-dux.frill.co/](https://makerdao-dux.frill.co/) where everyone will be able to submit or vote on ideas.

## 2. Define

**Plan**

The research output, ideas generated, and insights collected will be used to create product backlog items. Higher-priority items will be split up and detailed for inclusion in a sprint. More abstract features will be represented in a roadmap as epics.

Analysis of tasks will require studying the state of the art of other governance UIs, understanding different tools and systems that are standard of the web3 technology or that are emerging, drafting technical diagrams, and high-fidelity UI/UX prototypes.

These high-fidelity prototypes will allow us to validate our assumptions with the community. Progress will be shared on Discord accordingly.

**Pivot or persevere**

Solutions will be discarded or tested at this stage.

Once validated by the community and the team is confident with the available solutions at our disposal we will draft the technical specs and the respective user experience flows.

**Prioritize**

We will prioritize tasks that contribute to our mission and vision.

The various factors that determine this may include:
- Impact on the users and user experience
- Feedback from the community & governance facilitators
- Alignment with principles of decentralization

Tasks will be stored in our private task manager, but you can view more about our public roadmap here: [https://makerdao-dux.frill.co/roadmap](https://makerdao-dux.frill.co/roadmap)

## 3. Design & Develop

The DUX Core Unit will work within a streamlined framework of Design & Development.

As a part of our efforts to deliver best-in-class governance applications, the team will design interfaces and develop software using the industry best practices such as:

- Working in a cadence that leverages agile methodologies
- Collaborative, real-time, and online design tools such as Figma
- Following web3 standards for dApps development
- Peer-reviewed code
- Unit and integration testing

## 4. Deliver

New releases will be announced on our [#announcements](https://discord.gg/4uc2tr2q) discord channel and on [our public board](https://makerdao-dux.frill.co/announcements).

Deliverables will be composed of:
- UX & Design improvements
- New features
- Bug fixes
- Documentation

**Automated delivery with continuous integration systems**

In our day-to-day, we introduce unit and integration tests that are automated in our continuous integration pipeline. This includes maintaining and upgrading the automated test suite on the governance portal and tools, ensuring they keep working seamlessly, and providing high uptime and availability of the application.

**User Testing & QA**

The team will generate different staging environments in order to allow the community and users of the governance UIs to perform QA and report feedback on new features.

Coordination and announcements will happen in the team's [Discord channel](https://discord.gg/AhxZJPcf72).

Additionally, the team will keep a list of unresolved bugs visible in our bug tracking system:

[https://makerdao-dux.frill.co/b/6m4kow04/makerdao-governance-uis-featur](https://makerdao-dux.frill.co/b/6m4kow04/makerdao-governance-uis-featur)

**Open Source**

The code will be released as open-source, hosted in the repositories that are already maintained by this core unit. These repositories include but are not limited to:
- [https://github.com/makerdao/governance-portal-v2/](https://github.com/makerdao/governance-portal-v2/)
- [https://github.com/makerdao/dai.js](https://github.com/makerdao/dai.js)
- [https://github.com/makerdao/dai-ui](https://github.com/makerdao/dai-ui)
- [https://github.com/makerdao/testchain](https://github.com/makerdao/testchain)

**Documentation**

The team will commit itself to create and continually improving technical documentation related to Maker governance.

As an example, the team recently created a new diagram to help illustrate how the vote delegation works: [View diagram](https://www.figma.com/proto/OPgqDusS1y7hK9Ojx4aIcC/vote_delegation_Diagram?node-id=699%3A2859&scaling=min-zoom&page-id=699%3A2858)

## 5. Analyse & Reflect

After delivering, we will gather analytics of usage, perform A/B testing of features and collect feedback from the users, finding metrics and OKR's ensuring that our solutions are in line with our mission and vision.

---

## Team

The team is composed of 6 permanent members:
- 4 Senior Software Engineers
- 1 Senior UX/UI Designer
- 1 Product Manager

These team members have a wide range of experience across many different software projects, including frontend, backend, web3, and mobile applications. The majority of the team members have previously worked for the Maker Foundation on various projects including the governance portal, liquidations portal, migration portal, and more.

### Current Efforts

Since joining the SES Incubation Program in June, the team has already delivered a number of new features and functionality for the governance portal and other projects related to it.

Most recently, the team launched the [Vote Delegation UI](https://forum.makerdao.com/t/vote-delegation-ui-release/9646).

Other deliveries also include:
- Polling & Executive creator UIs
- Dark mode
- Dai.js package updates
- Testchain package updates
- ENS name resolver
- Miscellaneous bug fixes

### Future Enhancements

As part of our current work, we have identified several areas of improvement for the current governance portal. These are ideas that still need to be further iterated on according to the framework described above.

- Increasing the availability of the portal and services providing information to it
- Including analytics and meaningful data visualizations in the current governance portal facilitating transparency and information gathering
- Adding more interactions between users, proposals, and opinions
- Improving the accessibility of the current governance portal
- Upgrading the testing infrastructure which will enhance the security and resilience of the portal

All of this will be available on our [public roadmap](https://makerdao-dux.frill.co/roadmap)

![Untitled](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP18/untitled.jpeg)

---

## Related Documents

- [DUX Budget Proposal](https://forum.makerdao.com/t/mip40c3-sp-1-development-ux-core-unit-budget-dux-001/9774)
- [DUX MKR Budget Proposal](https://forum.makerdao.com/t/mip40c3-sp-2-development-ux-core-unit-mkr-budget-dux-001/9777)
- [DUX Facilitator Proposal](https://forum.makerdao.com/t/mip41c4-sp-facilitator-onboarding-development-and-ux-core-unit-dux-001/9779)

---

## Links
- [Notion page](http://dux.makerdao.network/)
- [Discord](https://discord.gg/AhxZJPcf72)
