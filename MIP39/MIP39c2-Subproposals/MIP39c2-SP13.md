# MIP39c2-SP13: Adding Oracles Core Unit

## Preamble

```
MIP39c2-SP#: 13
Author(s): Niklas Kunkel
Contributors:
Tags: core-unit, cu-ora-001, mandate
Status: Accepted
Date Applied: 2021-05-12
Date Ratified: 2021-06-28
```

## Sentence Summary

Add an Oracles Core Unit to handle all of the Oracle needs of the Maker Protocol and build out an Oracle business.

## Paragraph Summary

The Oracle Core Unit (OCU) is responsible for developing and administrating the Oracle Protocol. Oracles are a critical component of securing the Maker Protocol to ensure positions are sufficiently collateralized. The OCU is essential to ensure the Oracles can adapt rapidly to scale the Maker Protocol in a responsible manner. A key focus of the OCU is to monetize the Oracle Protocol and build out a business around it. This enables the DAO to subsidize its own Oracle expenditures, and ultimately turn Oracles from a cost-center into a profit-generating arm of MakerDAO. Real World Assets (RWA) in particular, are a highly promising vertical the business side of the Oracle is targeting.

## Specification

### Mission

> The most decentralized, secure, scalable, resilient, and transparent Oracle protocol. Purpose-built for MakerDAO, available to everyone.

## Motivation

The Maker Oracles are a critical dependency of the Maker Protocol that regulate Dai generation, Vault liquidations, and protect the solvency of the system.

MakerDAO needs proprietary Oracles for a multitude of reasons:
1. Security
2. Cost-Regulation
3. Flexibility
4. Oracles as a Service (OaaS)

### Security

The Maker Protocol ought to minimize external dependencies to reduce the attack surface and maximize resiliency of the system. This is especially true for Oracles, as manipulation of the Oracles can result in printing of unbacked Dai and mass-liquidations. Outsourcing the security of the Maker Protocol to an external Oracle protocol is extremely risky. Therefore, it is vital for the DAO to maintain control of this critical infrastructure to ensure the security of the Maker Protocol.

### Cost-Regulation

As the Maker Protocol scales it will require more and more Oracles. The DAO is incentivized to invest in its own Oracles to enable economies of scale and reduce marginal costs. Failing to do so would put the DAO in the undesirable position of being at the mercy of a monopolistic vendor with no recourse. By maintaining the ability to control the sensitivity of each Oracle, the DAO can further fine-tune costs to its particular requirements.

### Flexibility

An in-house Oracle team gives the DAO an enormous amount of flexibility and agility relative to using an external Oracle solution. Oracles can be tailored specifically to the requirements of the Maker Protocol. Development and deployment of new Oracles isn't prone to the conflicting prioritizations of an external vendor and can be further optimized through tightly coupled coordination with other Core Units. In-house Oracles facilitate faster time-to-market for collateral onboarding which may drive substantive benefits in the rate of market-share and stability fee accrual.

### Oracles as a Service (OaaS)

The DAO has a unique opportunity to become a major player in the Oracle industry. A MakerDAO Oracle product has strategic advantages over competing Oracle providers.

**Economies of Scale**
Since the Maker Protocol has the largest TVL in all of DeFi and should continue that trend going forward, an Oracle Protocol embedded in the Maker Ecosystem achieves immediate economies of scale that competitors will find difficult to challenge.

**Subsidize DAO Overhead through Revenue**
Revenue from Oracle access extended to third parties can also subsidize overhead costs incurred by the DAO and reduce the marginal cost of the Oracles making them even more competitive.

**Credibility**
The Maker Protocol as the de facto leader in DeFi has a brand that signifies technical excellence, security, and integrity. An Oracle Protocol used in the Maker Protocol, generates instant credibility due to the established expectations of the quality of MakerDAO. This credibility can be monetized to the extent that clients may even be willing to pay a premium.

**Evolving Attitudes Around Risk Opens New Opportunities**
Currently DeFi protocols are in their infancy, and established traditional finance companies are just educating themselves and have yet to really enter the market. This will change. Both as DeFi begins to mature, and more sophisticated institutions enter the ecosystem, attention will shift towards risk management and security. One area that will be heavily scrutinized is Oracles. As Oracles are the root of trust, the Achilles Heel, of most DeFi protocols, demand for decentralized secure and resilient Oracles is expected to grow.

DeFi protocols or institutional-grade applications may even get to the point where a single Oracle solution is not enough to give them the security and resiliency guarantees they require. It's conceivable that clients may duplicate Oracle services from different providers, creating an opportunity to gain marketshare from incumbent Oracle protocols.

**Real World Assets are the Future**
MakerDAO has been a trailblazer in connecting TradFi to DeFi through the introduction of Real World Assets. The Maker Protocol is perfectly positioned to be leveraged as a credit facility for a whole swath of non-digitally-native assets. Multiple private entities such as 6S Capital and Centrifuge. are lining up to onboard Real World Assets into the Maker Protocol. Demand from asset originators waiting on the sidelines is in the hundreds of millions of Dai. It is abundantly clear this sector will experience an enormous amount of growth in the coming years. Maker with its nonexistent cost of capital, is best positioned to seize it.

Asset originators profit directly from securitization, sometimes with fat margins. Rather than Oracles being a cost borne by the Maker Protocol, these costs could be passed on to asset originators. In this configuration, purchasing Oracle services from the Maker Protocol could be framed as a prerequisite to being onboarded as collateral. For the asset originator paying for Oracles to get onboarded into the Maker Protocol is just a cost of doing business that eats into their securitization margin.

While there are certainly significant costs involved in coming up with an offchain system for verifying the price (and other related data) of an RWA including 3rd party auditors, the on-chain gas-costs should be quite minimal for something so illiquid whose price changes infrequently. This implies Oracle margins for RWAs have the potential to be substantial if a scalable solution is developed for the offchain component.

This has numerous benefits in that Oracle revenue would scale linearly with the number of Real World Assets onboarded into the Maker Protocol.

If Maker maintains its position as the leading crypto credit facility for asset originators, then by default the Oracle Protocol can dominate all of that high-margin marketshare. It gives the Oracle Protocol the most exposure to working with RWA, which over time will develop into domain expertise, and ultimately a moat around Oracles services for RWA. This is a niche MakerDAO is well positioned to dominate.

The synergy between the Maker Protocol having its own proprietary Oracle Protocol that also doubles as a lucrative business opportunity with a diversified revenue stream is a no-brainer for the DAO to invest in.

## Core Unit Name

Oracles Core Unit

## Core Unit Facilitator

Niklas Kunkel (@NikKunkel)

## Team Structure

This is a prospective team structure built around the goal of developing an end-to-end ecosystem around the Maker Oracle Protocol.

15.5 Full Time Employees (FTE)

**Core Unit Facilitator - 1**
 * Governance
 * Product Owner
 * Business Strategy

**Engineering - 12 (currently 5)**
Dev Team Lead - 1 (@marcandu)
SCRUM Master - 1
Back-End Developers - 4 (currently 4)
* Build the Oracle client, networking, and tooling layers

Smart Contract Engineers - 2
* Feed-Based Oracle Contracts (Medianizer) (OSM)
* On-Chain Oracle Contracts (LP, Options)
* Bespoke Oracle Contracts (RWA, NFT)

Full-Stack Developers - 3
 * build a marketing site
 * build an Oracle dashboard
 * build analytics & graphs

DevOps Engineer - 1
 * Coordinate with Tech-Ops Core Unit
 * Tech-Ops Provides 24/7 coverage & support
 * Maintain parallel monitoring infrastructure
 * Write documentation for Tech-Ops

**BD / Marketing - 1**

**Operations / Accounting - 1**

**Legal - 0.5**
 * (part-time Lawyer)

**Future Hires**
- Oracle Researcher
- Data Analyst

## Core Unit Mandate (Responsibilities)

**Oracle Protocol**
* Conduct research for next-gen Oracle architectures that optimize for:
   * decentralization
   * scalability
* Improve resiliency through module redundancy
* Seek to mitigate any singular point of failure
* Optimize gas-cost to reduce DAO expenditures
* Explore Layer2 solutions and what different design trade-offs they enable through lower fees
* run and fund relayers on behalf of the DAO
* research relayer incentives

**Collateral Onboarding**
* Publish Oracle Assessments to the community for greenlit collateral types.
* Add support for new collateral types to Oracle stack (setzer, gofer, omnia, ghost)
* Coordinate with the community and the core unit facilitators to onboard collateral assets with the highest potential for growth relative to risk into the Maker Protocol
* Develop bespoke Oracle smart contracts for DeFi native assets

**Oracle Feeds**
* Plan and execute Feed Migrations for new Oracles releases
* Scout and Recruit new Light Feed candidates
* Review Light Feed proposals
* Administer Feed Stipends until the Keg becomes operational
* Assist Feeds with troubleshooting

**Oracle Dashboard**
* Design and Develop a dashboard that clearly displays real-time information in an easy ton consume format about:
  *  Feeds
  *  Medianizers
  *  Oracle Security Modules (OSMs)
  *  LP Oracles
  *  RWA Oracles

**Oracles As a Service**
 * Create clear pricing structure
 * Focus on growth over profit
 * Create incentives for use (token?)
 * Engage with customers to devise optimal tradeoffs between performance, cost, and security.
 * Explore which L2s and sidechains to support

**Centralized-Decentralized Oracle Hybrid**
* Create deployment pipeline for reducing new Oracle turnaround time to a client to less than 48 hours

**RWA Oracle**
 * Generalize on-chain and off-chain processes for trust minimized  RWA Oracles
 * Explore opportunities with external auditors to verify and endorse data provided by asset originators
 * Engage with asset originators and their intermediaries to devise generalize-able solutions

**Oracle Monitoring**
* Internal and external monitoring of Oracle infrastructure
* Monitor:
    * Oracle uptime
    * Feed uptime
    * Latency
    * Feed behavior
    * Relayer behavior
    * Transport layer performance
    * API timeouts
    * Client and tooling performance

**Integration Documentation**
* Write clear documentation for:
   * Oracle integrations
   * Oracle whitelisting
   * Feed application
   * Feed installation and configuration
   * Requesting a new Oracle
   * Oracle pricing
   * Oracle architecture and methodology
   * Oracle security

**Oracle Metrics and Competitor Analysis**
* Identify core Oracle metrics and collect them in real-time
* Adopt a metrics-driven development approach
* Identify performance gaps and core competencies
* Compare and contrast metrics with competitors
* Monitor competitors metrics improvements and investigate how they were achieved

**Oracle Protocol Brand & Marketing**
* Create an independent brand around the Oracle Protocol
* emphasize the brand around security and centralization
* Generate awareness of the Oracle Protocol:
  * marketing integrations with partners on a blog/social media
  * speaking on crypto podcasts
  * presenting at conferences / hackathons
  * sponsoring hackathons and integration prizes
  * integration incentivizes campaign

### Related Documents

[MIP40c3-SP15: Modify Oracles Core Unit Budget](https://forum.makerdao.com/t/mip40c3-sp15-modify-oracles-core-unit-budget/8047)

[MIP41c4-SP13 Facilitator Onboarding, Oracles Core Unit Proposal](https://forum.makerdao.com/t/mip41c4-sp13-facilitator-onboarding-oracles-core-unit/8046)
