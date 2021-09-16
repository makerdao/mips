# MIP39c2-SP19: Adding the StarkNet Engineering Core Unit, SNE-001

## Preamble

```
MIP39c2-SP#: 19
Author(s): Louis Baudoin (@louismerkle), Ohad Barta
Contributors: Derek Flossman, Maciek Kaminsky, Kris Kaczor, Marc-Andre Dumas, Ohad Barta, Louis Baudoind
Tags: core-unit, cu-sne-001, mandate
Status: Formal Submission
Date Applied: <2021-08-09>
Date Ratified: NA
```

## Sentence Summary

In a volatile, high gas cost environment, DeFi protocols are attempting to build bridges to L2 protocols to access liquidity and remain competitive. This proposal is a plan to build a DAI bridge over Starknet within 3 months (phase I) with a total budget of $420,750, of which $210,325 is requested to Maker in this proposal. A detailed plan and budget to enable minting DAI (phase II) will be the subject of another proposal and governance vote. This project opens the door to leveraging StarkNet to keep the Maker protocol attractive to users in the ZK-rollup, Layer 2 domain.

[This document](https://docs.google.com/document/d/1eh5dBY2NL6cUqgS8C_WvaKmkL4QxsrM7us7WBOLahr8/edit#heading=h.aa74e944zmag) assesses the risk in onboarding StarkNet’s L2 solution using [this proposed L2 Risk Framework](https://forum.makerdao.com/t/a-proposed-l2-risk-framework/9518).

## Motivation

### Why do we want to expand the Maker Protocol beyond Ethereum?

* Defi activity has diverged---Ethereum is still the “Capital” of the DeFi activity, but a growing number of other solutions offer their own unique package of security, scale and functionality. As users are expected to use Ethereum competitors more and more, its crucial for Maker to establish footholds on these platforms - in order to keep DAI highly usable and interchangeable among them
[Derek’s post](https://forum.makerdao.com/t/a-multichain-strategy-and-roadmap-for-maker/8380) highlighted the multi-chain strategy for Maker and was widely discussed amongst community members
* Furthermore, operating on a scaled and fast environment comes with its own set of unique opportunities:
	1. This gives the opportunity to inspect improvements to the protocol, which are just too expensive for L1. The ability to mint, trade, liquidate faster brings opportunities for the users and for the protocol itself.
	2. Increasing transaction speed would be very attractive for some categories of users (e.g., short-term borrowers, shorter-term traders) who can now mint DAI intrablock and hence open use cases that were not possible before. As other Defi protocols are building bridges to L2, not doing so as well would erode the competitiveness of Maker as a protocol.

### What does it mean to expand maker?

* Build a bridge from L1 (scope of this phase I proposal) to the said new environment. Building a bridge requires a flow of funds adapted to the new environment and a governance process around the upgradability of the bridge.
* In later phases, allow the new environment to mint DAI in order to make it easily available.
  * Such minting requires trust in the system, as unregulated minted DAI is devastating to the protocol.
  * Strategically port over the L2 key functions, contracts, or modules that will enable minting
  * Address key risks in adding minting functionality. Both from a security standpoint and a system-level risk standpoint
* In later phases, explore protocol improvements leveraging lower gas feed and transaction speed
* In the future, open official bridges between the new platform and other platforms in order to make the trading experience more seamless for users. We need fast finality and a high level of trust for such bridges to be worth it

### Where is it worthwhile to expand to?

#### Why L2?

L2 solutions are the best place to start from since their state can’t be corrupted unless Ethereum is hacked (plus liveness assumptions in the case of Optimistic Rollups - OR). However, the consensus algorithm of a sidechain doesn’t depend on Ethereum. This introduces a new (and in most cases - larger) risk to the Maker protocol (that currently assumes only Ethereum is well-functioning), making the process of minting DAI there much less appealing.

#### Why validity proofs?

Maker is already considering such expansion to Optimism. So why bother with Validity proof based systems as well?

* Capital inefficiency: OR have a high finality time (1-2 weeks) which may impose liquidity constraints to users. A solution put forward to the community for fast-withdrawals from optimistic L2 (or similar design) is for the Maker protocol to provide liquidity with locked DAI as collateral. However, this approach puts an implementation risk either on the users (DAI holders) or on the MKR holders (depending on exact design).
* Different security model: OR assumes there is a live, honest observer that would submit fraud proofs if needed. This adds game-theory arguments to their security analysis, and again makes it non-equivalent to Ethereum - exposing Maker to new (even if minor) additional risk. This limits the trust in the system, and thus expected to limit the will to mind large quantities of DAI on it.

#### Why StarkNet and not any other validity proof?

* StarkEx is one of the leading L2 solutions offered today, with many projects and DeFi activities expected to move to StarkNet soon.
* STARK Cairo verifier has been operational for a while. It is the same verifier for all Dapps running on Cairo so trust is built across all deployments.
* StarkWare has the experience of taking liquidation-based L1 protocols, namely dYdX, and turning it into a successful L2 protocol: for example, when dYdX’s system migrated to L2 they added cross-margin logic which was too expensive on L1, and still enjoyed a x200 scale factor in their gas consumptions.
* StarkNet would be [highly interoperable](https://medium.com/starkware/a-trustless-sidechain-to-starkex-bridge-secured-by-ethereum-61e00f19f7e0) with other platforms. The value of enabling trustless applications to build onto the Maker protocol while leveraging cross-chain interoperability is increasing the volume of DAI minted through scaling partners without compromising on security.

### What benefits can we expect from Maker on StarkNet?

Projects like Uniswap and Aave have tripled their number of users by moving to L2. Most of this increase can be attributed to lower gas fees and faster transactions, which provides a better user experience for existing users, and attracts new categories of shorter-term traders trading with a higher turnover, and leveraging cross-protocol trading opportunities.

Those types of benefits will not be ripped before phase II. Building the bridge in phase I is the foundation for benefiting from those advantages which will require minting, and potentially later liquidation and oracles to be on L2. By phase II, Starknet is expected to have onboarded other major protocols, hence creating arbitrage opportunities and synergies between the protocols. The intent of the points below is to communicate to the community the value of the Maker over Starknet project beyond phase I. 

**Protocol improvement through cheaper transactions**

The vat since launch has cost 5,697 ETH equivalent in gas fees, 60% of which is due to calls performed for minting. Most calls made to the vat are made by the users who are paying those fees.

As a point of comparison, complex perpetual trading transactions cost [1100 gas](https://twitter.com/StarkWareLtd/status/1399778327561478147?s=20) in ZK-Rollup mode on Starkex, which is 200x cheaper than an L1 implementation of the same logic.

#### Protocol improvements through speed

The avenues for protocol improvement that translate into an organic appreciation of the MKR token are about being attractive for new users, and improving the value proposition for current users.

Better value proposition, or new value proposition in the Maker context will have to do with improving the DSR, reducing the collateral ratio, improving the liquidation experience, reducing minting time, while allowing fast withdrawals.

None of those levers are achievable through a L2 alone. They would require multiple governance votes and the implication of relevant CUs to assess the risk related to those improvements. However, none of those potential improvements would be possible without a solution that would bring increased speed and lower fees.

For example, the dYdX protocol increased its leverage ratio from 10 to 20x after transitioning to Starknet.

#### Bridging to other solutions/platform such as sidechains

While StarkNet is definitely an interesting DeFi platform, it by all means won’t be the only one. Sidechains such as Polygon or Binance Smart Chain are extremely popular, yet they might not be secure enough to mint DAI on. On StarkNet, we can cheaply mint DAI and then have fast, inexpensive and trustless bridges that would move this DAI to other platforms. This is paving the way to cheaper “importing” of DAI to sidechains that is not currently possible.

### Why use a new core team

* The Protocol Engineering Core Unit (PECU) already handles expanding the Maker protocol to other environments, including Optimism and Arbitrum.
* Having a new core unit handling expansions to StarkNet has the main advantage of specializing in Cairo programming language, which arguably requires undivided attention to assure the expansion is successful. It will also make it easier for the Starkware team to support the core team as they are developing Cairo development skills.
* Other advantages of an independent core team include:
  * Decentralize the power of other teams and reduce bus factor
  * Promoting parallel development and faster delivery
  * Eliminate single points of failure

# StarkNet Engineering Core Unit (SECU) Mandate

## Security and Safety

* Testing, including code reviews to align with Maker testnet-to-mainnet deployment practices.
* Work with PECU and Oracles CU to ensure the implementation correctness.
* Assess StarkNet security risks: including an analysis of different risk metrics and modules. This is to include an assessment from a security standpoint alongside stress-test scenarios that align with Maker’s Risk Framework.

## Proposed roadmap

The scope for the budget in this proposal is only for phase I as described below in the chart.

![roadmap](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP19/roadmap.png)

 **Phase 1 deliverable and timelines: DAI bridge to Starknet (3 months)**

* **Product**
  * DAI bridge (month 2):
    * Solidity contract with annotated code
    * Annotated Cairo code
  * Governance
    * Upgradability mechanism (month 3): allows governance to vote on structural or logic changes to the bridge
    * Bridge limit (month 2): during phase I and II, the bridge will be subject to a DAI limit.

* **Governance of the project**. We will have a DAI amount threshold for the bridge, set by governance. Updating this threshold will require governance approval. The intent is to gradually increase the limit to reduce the potential liability on Maker users. We suggest 1000 DAI as an initial limit for the bridge.Testing (month 2-3)

* **Planning ahead** (month 3). Phase II planning including value proposition to MKR holders, roadmap, governance proposal, and budget.

* **Knowledge transfer**: Cairo documentation is already available. The team will make sure that the entire products are thoroughly documented, in a way that is self-contained given knowledge of basic solidity and the existing Cairo documentation. This is crucial to ensure that the DAO receives the input for inspecting the products and decide on their future.

**Phase II ambition: Minting on Starknet**

Phase II budget is not in the scope of this proposal. Phase II will be focused on enabling minting DAI on Starknet. In order to converge to a consensus on the design for phase II, the community and CUs will be involved in discussions on design principles (inspired by the [risk framework](https://docs.google.com/document/d/1agYZTjGajF8QKor09ro4VzQQGIR4Pp5KZsMP16ocVNU/edit#heading=h.5v5lkndh2uwb)) as well as concrete design alternatives. The output of those discussions will be a phase II proposal. 


## Community involvement

* The Maker community will be involved in deciding the DAI limit on the bridge. We suggest to start with a low amount of DAI (e.g., 100 to 1000).
* The Maker community will be involved in discussions around phase II. Those discussions will also require inputs from the different CUs. The output of those discussions will be a proposal submission for phase II.
* The Maker community will be involved in the elaboration of the [L2 risk framework](https://docs.google.com/document/d/1agYZTjGajF8QKor09ro4VzQQGIR4Pp5KZsMP16ocVNU/edit#heading=h.5v5lkndh2uwb). Our team will do its best to contribute to this framework to assure future L2 bridges and developments are successful and risk-controlled.

## Funding

StarkWare, the developer of the core StarkNet protocol, is proposing to co-fund this effort alongside the DAO on a 50/50 basis.
