# MIP39c2-SP19: Adding the StarkNet Engineering Core Unit - SNE-001

## Preamble

```
MIP39c2-SP#: 19
Author(s): Louis Baudoin (@louismerkle), Ohad Barta
Contributors: Derek Flossman, Maciek Kaminsky, Kris Kaczor, Marc-Andre Dumas, Ohad Barta, Louis Baudoind
Tags: core-unit, cu-sne-001, mandate
Status: RFC
Date Applied: <2021-08-09>
Date Ratified: NA
```

## Sentence Summary

In a volatile, high gas cost environment, DeFi protocols are attempting to build bridges to Layer2 protocols to access liquidity and remain competitive. This proposal puts forward a high-level plan for enabling DAI minting on StarkNet. It opens the door to leveraging StarkNet to keep the Maker protocol attractive to users in the ZK-rollup, Layer 2 domain.

## Specification

### Motivation

#### Why do we want to expand the Maker protocol behind Ethereum?

* Defi activity has diverged - Ethereum is still the “Capital” of the DeFi activity, but a growing number of other solutions offer their own unique package of security, scale and functionality. As users are expected to use Ethereum competitors more and more, its crucial for Maker to establish footholds on these platforms - in order to keep DAI highly usable and interchangeable among them.
* [Derek’s post](https://forum.makerdao.com/t/a-multichain-strategy-and-roadmap-for-maker/8380) highlighted the multi-chain strategy for Maker and was widely discussed amongst community members.
* Furthermore, operating on a scaled and fast environment comes with its own set of unique opportunities:
i. This gives the opportunity to inspect improvements to the protocol, which are just too expensive for L1. The ability to mint, trade, liquidate faster brings opportunities for the protocol to improve the user experience (e.g., liquidation experience, collateral ratio ).
ii. Faster transactions would be very attractive for some categories of users (e.g., short-term borrowers, shorter-term traders) who can now mint DAI intrablock and hence open use cases that were not possible before. As other Defi protocols are building bridges to L2, not doing so as well would erode the competitiveness of Maker as a protocol.

#### “What is mean to expand maker”

* Mint: Allow the new environment a new chain or L2 to mint DAI in order to make it easily available. Such minting requires trust in the system, as unregulated minted DAI is devastating to the protocol.
* Build a bridge from L1 to the said new environment. Building a bridge requires a flow of funds adapted to the new environment and a governance process around the upgradability of the bridge.
* Open official bridges between the new platform and other L2 platforms. We need fast finality and a high level of trust for such bridges to be worth it.
* Strategically port over the L2 key functions, contracts, or modules that would benefit from being executed intrablock at a faster timescale.

#### Where is it worthwhile to expand to?

##### Why L2?

L2 solutions are the best place to start from since their state can’t be corrupted unless Ethereum is hacked (plus liveness assumptions in the case of Optimistic Rollups - OR). However, the consensus algorithm of a sidechain doesn’t depend on Ethereum. This introduces a new (and in most cases - larger) risk to the Maker protocol (that currently assumes only Ethereum is well-functioning), making the process of minting DAI there much less appealing.

##### Why Validity proofs?

Maker is already considering such expansion to Optimism. So why bother with Validity proof based systems as well?

* Capital inefficiency: OR have a high finality time (1-2 weeks) which may impose liquidity constraints to users. A solution put forward to the community for fast-withdrawals from optimistic L2 (or similar design) is for the Maker protocol to provide liquidity with locked DAI as collateral. However, this approach puts an implementation risk either on the users (DAI holders) or on the MKR holders (depending on exact design).

* Different security model: OR assumes there is a live, honest observer that would submit fraud proofs if needed. This adds game-theory arguments to their security analysis, and again makes it non-equivalent to Ethereum - exposing Maker to new (even if minor) additional risk. This limits the trust in the system, and thus expected to limit the will to mind large quantities of DAI on it.

##### Why StarkNet and not any other validity proof?

* StarkEx is one of the leading L2 solutions offered today, with many projects and DeFi activities expected to move to StarkNet soon.
* STARK Cairo verifier has been operational for a while. It is the same verifier for all Dapps running on Cairo so trust is built across all deployments.
* StarkNet would be [highly interoperable](https://medium.com/starkware/a-trustless-sidechain-to-starkex-bridge-secured-by-ethereum-61e00f19f7e0) with other platforms. The value of enabling trustless applications to build onto the Maker protocol while leveraging cross-chain interoperability is increasing the volume of DAI minted through scaling partners without compromising on security.
* StarkWare has the experience of taking liquidation-based L1 protocols, namely dYdX, and turning it into a successful L2 protocol: for example, when dYdX’s system migrated to L2 they added cross-margin logic which was too expensive on L1, and still enjoyed a x200 scale factor in their gas consumptions.

#### What benefits can we expect from Maker on StarkNet?

##### Cheaper and faster transactions

On StarkEx, even complex perpetual trading transactions cost as little as [1100 gas](https://twitter.com/StarkWareLtd/status/1399778327561478147?s=20) in ZK-Rollup mode, which is 200x cheaper than an L1 implementation of the same logic. Costs are even less in Validium mode. Numbers in that order of magnitude would encourage users to use the DAI protocol more. Faster minting and closing of positions will allow shorter-term traders to leverage Maker and hence bring additional volume onto the Maker protocol.

##### Real-time oracle feed with better liquidation threshold

Being on a scale system means the oracle price updates will be cheap as well. And being on a validity-based L2 means that we don’t even have to report to L1 the entire signature set and quorum of prices that accompanies the final median price used- hence allowing for more sources to participate. Such optimizations allow, for example, the dYdX system to update the oracle prices multiple time per minute.

We can expect the real-time oracle feed to ultimately enable a reduction of the collateral ratio of the Maker protocol. For example, the dYdX protocol increased its leverage ratio from 10 to 20x after transitioning to Starkex.

##### Bridging to other solutions/platform such as sidechains

While StarkNet is definitely an interesting DeFi platform, it by all means won’t be the only one. Sidechains such as Polygon or Binance Smart Chain are extremely popular, yet they might not be secure enough to mint DAI on. On StarkNet, we can cheaply mint DAI and then have fast, inexpensive and trustless bridges that would move this DAI to other platforms. This is paving the way to cheaper “importing” of DAI to sidechains that is not currently possible.

##### Protocol improvements

Being on a scale system means that we are no longer limited by gas constraints. We will actively look for ways to leverage this. Conditioned on Maker governance approval, this will improve the protocol in more ways that are yet to be revealed.

#### Why use a new core team

* The Protocol Engineering Core Unit (PECU) already handles expanding the Maker protocol to other environments, including Optimism and Arbitrum.
* Having a new core unit handling expansions to StarkNet has the main advantage of specializing in Cairo programming language, which arguably requires undivided attention to assure the expansion is successful. It will also make it easier for the Starkware team to support the core team as they are developing Cairo development skills.
* Other advantages of an independent core team include:
  * Decentralize the power of other teams and reduce bus factor
  * Promoting parallel development and faster delivery
  * Eliminate single points of failure
  
## Core Unit ID

SNE-001.

## Core Unit Name

StarkNet Engineering Core Unit.

## StarkNet Engineering Core Unit (SNE-001) Mandate

### Security and Safety

* Testing, including code reviews to align with Maker testnet-to-mainnet deployment practices.
* Work with PECU and Oracles CU to ensure the implementation correctness.
* Assess StarkNet security risks: including an analysis of different risk metrics and modules. This is to include an assessment from a security standpoint alongside stress-test scenarios that align with Maker’s Risk Framework.

### Protocol Evolution

The main value drivers of Maker on Starknet are: reducing gas fees, enabling more real-time trading for users, and making the protocol more efficient overall resulting in less MKR minted and a better user experience. The deliverables for the team will be sequenced in a way to deliver those value propositions roughly sequentially.

This project is novel in the sense that it is the first time Maker protocol would be brought over to a zk L2. It is also the first time that such a scope is proposed to be ported over a L2. The team will use key guiding principles in doing so:

* Governance on StarkNet’s logic and scope will remain on L1. There could be an argument to reduce gas fees for governance in order to increase governance participation but it is not in the scope of this proposal.

* Increasing efficiency: Any development will be legitimized by one of our three goals of reducing gas fees, increasing transaction speed, and making the system more efficient to ultimately mint less MKR and provide a better user experience.
* Decreasing complexity: Only the necessary contracts and functions of a given module will be ported over in order to reduce the overall system’s gas fees and make the protocol more efficient. Careful thoughts and analysis will be put in defining the precise scope of the logic that will be ported over to maintain DAI peg and the integrity of the protocol.
* Consistent data sources: With the development of L2s and sidechains, the Maker ecosystem is only going to become more complex. Each L2 and sidechain should be using the same data sources for minting and liquidation to maintain the stability of the protocol.

* Netting of system-level risk metrics and system variables: The L2 will expose the necessary information for the L1 to compute the system-level risk metrics and parameters such as the Debt Ceiling and Total Supply.

* Homogeneity of asset-specific risk metrics: Key risk metrics related to a single asset (e.g., liquidation ratio, liquidation penalty) and a single vault have to stay homogeneous and will remain the same on L1 and L2.

**As a disclaimer, the phases proposed below are open for discussion with the community. It is not an exhaustive list. Each function ported over onto Starknet will undergo a risk and interdependency assessment to not put at risk governance, DAI peg, collateral management, collateral, surplus auctions, and emergency shutdown.**

**Phase 1:** DAI bridge to Starknet

The Starknet team is working on building an ERC20 bridge. The team in charge of the project described in this proposal will work closely with the Starknet team to complete the bridge. DAI being an ERC-20, this bridge will enable DAI transfers on the Starknet L2 as well as fast withdrawals from Starknet L2 to L1.

The second part of phase 1 will consist in building upgradability mechanisms to the bridge that will be controlled by the L1 governance.

**Phase 2**: At the end of this phase, users should be able to mint DAI on Starknet

This will require parts of the Core module and Collateral module to be replicated on Starknet. The scope for each module to be replicated onto Starknet will be assessed by the team on a case-by-case basis. The following modules will be partially ported over while respecting the design principles stated above.

* Dai contract (Dai module): Dai contract mints and burns Dai. Dai mint andburnare some core functionalities to be ported over Starknet.

* Vat core vault engine (Core module): If the core vault engine is not replicated on starknet, the collateral deposited on Starknet to mint DAI would need to be systematically transferred to layer 1, hence incurring gas fees.

* Collateral module: Its functionality is to manage the deposit of collateral into the vat, and withdraw DAI from the vat. The collateral module functionality will be ported over Starknet yet its architecture might vary.

* Oracle module: This module would be used at minting and during liquidations. Currently the oracle module is taking input prices from centralized sources, computing its median, and broadcasting the output on the L1 provided that the price change was larger than a threshold. Given that Starknet will enable intrablock minting and later liquidation, the oracle will need to provide intrablock data. The team will consider multiple options but will assure that prices are only coming from a single truth for all L2s.

**Phase 3:** Explore porting over core components to L2

By the time phase 2 would end, this team will be extremely familiar with Maker and StarkNet internal stack, StarkNet will be fully operational on mainnet, and Maker’s protocol would probably have evolving needs. This would make this team an ideal candidate for extending the Maker protocol to StarkEx further, shall need be.

The team will explore porting over core components to L2. However at this stage the team cannot make a decision on the exact scope of phase 3. The team will perform both quantitative and security analysis to define further that scope. For example, the liquidation module would conceptually benefit from being ported over L2. Faster liquidations would mean ultimately less MKR minted, lower collateral ratios, and a better user experience.

### Community involvement

* Reflect StarkNet’s potential security risks and trade-offs in the protocol implementation taken due to them
* Discuss ways to leverage the cheap environment of L2 for improving the core of the Maker protocol
* Discuss the approach and tradeoffs for using a reliable oracle price feed in an environment other than L1
* Discuss recommendations, limitations, and best practices for minting DAI on top of StarkNet (e.g., schedule voted by the governance on Starknet issuance ceilings)
* Discuss potential blockchains to add interoperability with, as well as limitations/capping on interoperability with said blockchains
* Educate community members on understanding the implementation of the protocol on StarkNet

## Funding

StarkWare, the developer of the core StarkNet protocol, is proposing to co-fund this effort alongside the DAO. The budget proposal is currently being worked on and will be finalized in the next few days. Here is the [link to the proposal](https://forum.makerdao.com/t/mip39c2-starknet-core-engineering-budget/9791).  

## Facilitator

[Link to the Facilitator proposal](https://forum.makerdao.com/t/mip39c2-spxx-facilitator-onboarding-for-starknet-engineering-core-unit/9782).
