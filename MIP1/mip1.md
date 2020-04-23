# MIP1: Maker Governance Paradigms

## Preamble
```
MIP#: 1
Title: Governance Paradigms
Author(s): Rune Christensen (@Rune23) and Charles St.Louis (@CPSTL)
Contributors: @LongForWisdom
Type: Process
Status: Request for Comments (RFC)
Date Proposed: 2020-04-06
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: n/a
```

## References
**[MIP1c4-Subproposal-Template.md](MIP1c4-Subproposal-Template.md)**

## Sentence Summary

MIP1 defines and describes Governance Paradigms and problem spaces.

## Paragraph Summary

A Governance Paradigm is a complete and specific group of MIP Sets that solve an entire problem space. A problem space is defined as a list of issues that must be addressed in order for the Maker Protocol to be able to sustain itself and grow into the future Maker governance.

## Component Summary

**MIP1c1: Definitions**  
Defines what is meant by a problem space and a Governance Paradigm.

**MIP1c2: The Initial Problem Space**  
Defines an initial list of problems that will need to be solved in order for there to be a complete Governance Paradigm.

**MIP1c3: Changing the Governance Paradigm**  
Defines MIPs and MIP Sets as the method used to amend or replace the Governance Paradigm.

**MIP1c4: Changing the Problem Space**  
A process component that provides a method and a template for adjusting the problem space.

## Motivation

The goal of having a defined governance paradigm is to give the community a complete overview of what specific MIPs are used to address specific problems. By having a Governance Paradigm in place, the community can reform and upgrade specific parts of the governance process while complexity and dependency issues are kept in check. At the same time, it also makes it more clear how the community can completely replace and overhaul the governance process, and create something new, while guaranteeing that all the problems that were solved by the old process are also fully solved by the new process.

It is important at all times to have the best possible estimate of what the long-term problem space list will look like. The current list defined within this MIP represents the problems that the Maker Foundation currently believes need to be addressed in order to enable MakerDAO to become self-sustainable. The expectation is that this list will be changed over time as practical experience of the community is gained. After the ratification of this MIP, the Maker community can use the subproposal process to change the list at any time. Therefore, the problem space list is not permanent. The problem space list serves as a best estimate for the problems the Maker community must solve for over the course of the next few years and is expected to change as more information become available. 

## Specification / Proposal Details

### MIP1c1: Definitions 

**Problem Space**

A problem space is the representation of a particular problem or field of problems that must be addressed in order for the Maker Protocol to be able to sustain itself. Examples of problem spaces would be the process of onboarding new collateral types or the Maker governance decision process. Both of these complex problems require their own guidelines and produce their own set of learning experiences.

Note that Problem Spaces do not define any persons or groups working in them, they are theoretical and largely static entities. Problem Spaces exist even if no one is working in that space.

**The Governance Paradigm Problem Space**

A complete list of known major issues, challenges, and opportunities that the Maker Community believes Maker Governance must be able to skillfully address and manage in order to continue to function and grow.

**The Governance Paradigm**

A complete set of processes, implemented through MIPs, that allows Maker Governance to address all of the items in the Governance Paradigm Problem Space.

**MIP Sets**

A MIP Set is a group of several MIPs that are interdependent, in which without the entire set of MIPs existing, one or more MIPs in the Set becomes inconsistent, invalid or nonsensical. The intention is for MIP sets to together describe a single complex behaviour in such a way that allows each individual MIP to be written following the principle of Specificity but work together as a cohesive modular whole. 

---

### MIP1c2: The Initial Problem Space

**Problem Space List**

The current Governance Paradigm Problem Space is defined as follows and is organized in loose order of priority from a risk and complexity perspective:

1.  **Core Governance Framework:** Key governance structures laying the backbone of long-term governance, such as processes detailing how to organize executive votes and other critical processes. This is an important aspect of long-run governance and we need to put a formal structure in place in order to provide a path for all future problems to be addressed efficiently.
2.  **Collateral Onboarding**: A standardized process for adding collateral types to the Maker Protocol as well as a defined process for continuous management. Adding collateral to the Protocol is important for the diversification of the collateral portfolio, which is fundamental to the stability of Dai. Since Collateral onboarding is a core component of the Protocol, the Maker community requires a structured process for it to go smoothly and efficiently. 
3.  **Decentralized Oracle Freeze Module:** Enable MKR holders to easily freeze the oracles in case of an oracle attack.
4.  **Appeals Process:** Enable MKR holders who abuse the Decentralized Oracle Freeze Module or other MKR-deposit based systems to be punished, as well as to appeal that punishment to MKR governance. An appeals process is important for both decentralized security modules and voter incentivization. 
5.  **Dai Stabilization Cycle:** Manages Dai stability and other weekly adjustments. The stabilization cycle is necessary for the long-term formalization of the already existing process in order to improve transparency and accessibility.
6.  **Vote Delegation:** Enable vote delegation and manage the surrounding social processes. Vote delegation is crucial for long-run governance as it empowers all MKR holders to have a say by pooling their MKR to vote. Overall, vote delegation helps promote voting outcomes that more accurately represent the broader community's public discussion. 
7.  **Synthetic Assets:** Onboard new synthetic assets and manage them on an ongoing basis. The onboarding of assets is a core component of the Protocol, thus the Maker community will require a structured process for it to go smoothly. Adding new synthetic asset types to the Maker also makes crypto assets more available to people across the globe.     
8.  **Oracles:** As more collateral assets get onboarded to the Maker Protocol there needs to be a focus on how to scale oracles while maintaining their security. Formalizing the oracle requirements and structuring a formal process for onboarding and offboarding them is crucial to that.
9.  **Emergency Oracles:** Ensure emergency shutdown and oracle freeze will happen on time. Emergency oracles are crucial for keeping prices stable during the event of an emergency shutdown of the Maker Protocol. Creating a formal process for emergency oracles also ultimately helps protect both Dai and Vault owners.
10.  **Dai Stability Adjustment Module:** Automate Dai stability management. In the long-run, Maker governance cannot maintain the current manual process of running executive votes to constantly compute stability management, especially as more assets get onboarded to the Protocol. The DS Adjustment module will enable the continuation of stability management without the need to run executive votes. 
11.  **Website and Social Media:** Operate [makerdao.com](http://makerdao.com/) and all official social media accounts. Communications and marketing are crucial for the brand of Maker and it is important that MKR holders have a say on how the DAO is publicly represented. The social accounts for Maker are currently maintained and run by the Maker Foundation. As we move closer towards the dissolution of the Foundation, these accounts and communication channels will need to be managed by the community and will require a formalized process in order to do so.
12.  **Guardian Entities and Reserves:** Source and manage a diversified reserve infrastructure. Having off-chain reserves improves the resilience of Dai during market crashes, and Guardians and reserves should decrease the risk of MKR dilution. 
13.  **Vote Incentives:** Incentivize voting turnout and create a value-driven delegate ecosystem. Enabling incentive structures that increase voter engagement is beneficial to the broader Maker system because the bigger and more engaged the MKR voter base is, the less likely a governance attack can occur. Adding a formal voter incentive structure also allows the vote delegation mechanism to become self-sufficient in the long-run.
14.  **Revisit Auction Design:** A redesign of the auction mechanisms in the Maker Protocol. The current auctions system design was intended to be a short-term solution, so a redesign of the auctions could increase the efficiency of the system and reduce the probability of unexpected outcomes. 
15.  **Dai Foundation:** Manage and fund the entity that controls legal and centralized assets, such as trademarks and copyrights, that are critical to MakerDAO. This is important for the safeguarding of the assets and preventing any possible misuse. It is critical that the community is able to have a formalized process for funding and interacting with the Dai Foundation.

    
**Important Note**

The problem spaces listed above are not final but rather estimates of the problems the Maker Foundation believes will need to be addressed over the course of the next few years on our path to self-sustainability. Overall, this is a starting point and does not represent a long term commitment. It is expected that it will change over time based on the needs and experience of the Maker community.  

---

### MIP1c3: Changing the Governance Paradigm

**Amending the Governance Paradigm**

A Governance Paradigm can be amended by replacing specific MIPs, or an entire MIP Set, in the Governance Paradigm while maintaining correct interfacing with all other MIPs within the MIP set and wider Governance Paradigm.

**Replacing a Governance Paradigm**

A governance paradigm can be replaced in its entirety by replacing all MIPs in the Governance Paradigm with a complete grouping of new MIPs, contained in MIP Sets that fully address all items in the Governance Paradigm Problem Space

An individual MIP or MIP Set in the active Governance Paradigm cannot be replaced if the replacement doesn't properly interact with the other MIPs in the Governance Paradigm that the replaced MIP is dependent on, or that are dependent on the replaced MIP. Otherwise, the Governance Paradigm as a whole could break and MIPs could stop functioning correctly due to interdependency issues. Thus, you have to either replace an individual MIP or MIP Set in a Governance Paradigm or replace the entire Governance Paradigm with a completely new grouping of MIP Sets that fully address all items in the Governance Paradigm Problem Space.

---

### MIP1c4: Changing the Problem Space

If Maker Governance wishes to change the Governance Paradigm and processes more drastically, they need to alter the Governance Paradigm Problem Space. In most cases, this is done by expanding the Problem Space after practical experience makes it clear there are additional problems, challenges or opportunities that Maker Governance needs a clear predetermined process to deal with. However, it could also be reducing the scope of the Problem Space, or changing the language or logical grouping of some of its aspects.

MIP1c4 is a Process MIP component that allows the creation of subproposals that can add or delete items in the Governance Paradigm Problem Space. MIP1c4 subproposals have the following parameters:
-   **Feedback Period**: 3 months
-   **Frozen Period**: 1 month

MIP1c4 subproposals must use the template located at  **[MIP1c4-Subproposal-Template.md](MIP1c4-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.


---