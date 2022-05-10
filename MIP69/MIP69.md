# MIP69: L2 to L1 Fast Withdrawals

## Preamble

```
MIP#: 69
Title: L2 to L1 Fast Withdrawals
Author(s): Protocol Engineering Core Unit (PE-001)
Type: Technical
Status: Formal Submission
Date Proposed: 2022-03-17
Date Ratified:
Forum URL: https://forum.makerdao.com/t/mip69-l2-to-l1-fast-withdrawals/14041
Ratification Poll URL: https://vote.makerdao.com/polling/QmWZvSpa
```

## References

* [Github](https://github.com/makerdao/dss-wormhole#readme) with code, further technical detail and examples.
* Introducing Maker Wormhole [Forum Post](https://forum.makerdao.com/t/introducing-maker-wormhole/11550)
* A Multichain Strategy and Roadmap for Maker [Forum Post](https://forum.makerdao.com/t/a-multichain-strategy-and-roadmap-for-maker/8380)

## Sentence Summary

This MIP formalises technical work completed to deliver Fast Withdrawals on Layer2.

## Paragraph Summary

Teleporting DAI from L2 to L1 is known as a “Fast Withdrawal”. To complete a fast withdrawal, DAI is burnt on L2, minted on L1, and sent to the user as soon as the L2 transaction is confirmed.

This MIP focuses on the above L2 to L1 transaction. L2 to L2 transactions will be defined in a future MIP when the full Wormhole functionality is ready to be launched.

## Component Summary

TBD

## Motivation

Increase user adoption by allowing users to withdraw L2 funds near instantly by avoiding the need to wait for fraud proofs.

## Specification

### Definitions

* A “Domain” represents a chain such as Ethereum, Optimism, Arbitrum, etc.
* A “Gateway” is a generic term for either side of a bridge or wormhole adapter that connects Domains together.
* A “Wormhole Router” keeps track of each Domain’s Gateway and routes `requestMint()` or `settle()` requests to the appropriate contracts.

**Contract Interaction Details:**

* Each Domain connected to an L1 requires a Gateway contract supporting `requestMint()` and `settle()` operations to set the amount of DAI.

### Fast Withdrawal Fees

* PECU is proposing to set the Fast Withdrawal fee to 0.

**Additional Details:**

The fee, if Governance chooses to apply it, is currently an absolute amount, and is levied per Domain. This could be upgraded in the future if the need arises. This fee is only applied to fast withdrawals. The slow withdrawal bridge, which requires a 7 day wait will continue to function without fees even if fees are introduced for Fast Withdrawals.

### Roles

* **Initiator** - person initiating DAI transfer by calling `initiateWormhole` . They can optionally specify Operator and Receiver
* **Operator** - person (or specified third party) responsible for initiating minting process on destination Domain by providing (in the fast path) Oracle attestations. Can call `requestMint` on `WormholeOracleAuth`
* **Receiver** - person receiving minted DAI on a destination Domain

### Architecture
Referencing previously shared information from our [Introducing Maker Wormhole](https://forum.makerdao.com/t/introducing-maker-wormhole/11550) post, the following diagram details interactions where 3 users seek to make DAI withdrawals to L1.

![](https://github.com/makerdao/mips/blob/master/MIP69/architecture.png)

Instead of the current approach of initiating an L2 → L1 message, the system will emit an event on L2 of the user’s intent. The L2 DAI will be burnt, and a storage slot will be marked for the Checkpoint Slow Fallback contract. The Maker Oracle Network will attest to the finality and validity of the L2 transaction and operators will watch to provide signed attestations. Users will be able to query for these attestations and provide them to the Oracle Fast Withdrawal contract for authentication.

Where authentication is successful, the new DAI will be minted and sent to the user, assuming the Wormhole adapter has enough Debt Ceiling available. In the event that the oracle network is not available for any reason, it will be necessary to provide an on-chain fallback by relying on the slow withdrawal fraud proof. Both of these scenarios have been broken out into further detail below.

### Normal (fast) path

To fast withdraw DAI from L2, user:

* Calls `l2bridge.initiateWormhole()` - this burns DAI on L2 and sends `finalizeRegisterWormhole()` L2 -> L1 message to withdraw DAI from L2 bridge. This message, in normal circumstances, will never be relayed and it will eventually expire in L1 message queue
* Waits for withdrawal attestations to be available and obtains them via Oracle API
* Calls `WormholeOracleAuth.requestMint(WormholeGUID wormholeGUID, bytes signatures, uint256 maxFeePercentage, uint256 operatorFee)` which will:
  * Check if `sender` is `operator` or `receiver`
  *   Check if enough valid attestations (sigs) are provided
  *   Call `WormholeJoin.requestMint(wormholeGUID, maxfeePercentage, operatorFee)` which will
        * Check if this wormhole hasn't been used before
        * Check if the Debt Ceiling hasn't been reached
        * Check the current fee via `WormholeFees`
        * `vat.slip`, `vat.frob`, `daiJoin.exit`

### Settlement

Settlement process moves DAI from L1 Bridge to WormholeJoin to clear the debt that accumulates there. It is triggered by keepers.

* On L2 keeper calls `l2bridge.flush()`
* L2 -> L1 message `finalizeFlush()` is sent to `L1Bridge` and relayed by a keeper
* `L1Bridge` upon receiving `finalizeFlush()` calls `WormholeRouter.settle()` which will
    * Transfer `DAI` from bridges' escrow to `WormholeJoin`
    * Call `WormholeJoin.settle()` which will use transferred DAI to clear any outstanding debt by calling `daiJoin.join`, `vat.frob`, `vat.slip`

### Slow (emergency) path

If attestations cannot be obtained (Oracles down or censoring), user needs to wait so that L2 message is confirmed on L1 (on Optimistic Rollups that typically is seven days, on zkRollups it can be anything between a few hours to a day). Once L2->L1 message can be relayed, user:

* Relays `finalizeRegisterWormhole()`  message to `L1Bridge`
* `L1Bridge` upon receiving `finalizeRegisterWormhole()` will call `requestMint()` on `WormholeRouter` which will:
    * Call `WormholeJoin.requestMint(wormholeGUID, maxfeePercentage, operatorFee)` which will
        * Check if this Wormhole hasn't been used before
        * Check if the debt ceiling hasn't been reached
        * Check the current fee via `WormholeFees`
        * `vat.slip`, `vat.frob`, `daiJoin.exit`

## Authorization

Authorizations over the following functions are detailed below:

* `WormholeOracleAuth`
  * `requestMint` - operator or receiver (set by the user initiating wormhole)
  * `rely`, `deny`, `file`, `addSigners`, `removeSigners` - auth (Governance)
* `WormholeRouter`
  * `rely`, `deny`, `file` - auth (Governance)
  * `requestMint` - L1 Bridge
  * `settle` - L1 Bridge
* `WormholeJoin`
  * `rely`, `deny`, `file` - auth (Governance)
  * `requestMint` - auth (`WormholeRouter`, `WormholeOracleAuth`)
  * `mintPending` - operator or receiver
  * `settle` - anyone (typically keeper)
* `L1WormholeBridge`
  * `finalizeFlush()` - L2 bridge
  * `finalizeRegisterWormhole()` - L2 bridge
* `L2DAIWormholeBridge`
  * `initalizeWormhole` - anyone (typically user)
  * `flush` - anyone (typically keeper)

## L2 Domains

The initial deployment of fast withdrawals will include the following Domains:
* Optimism
* Arbitrum

There is current work underway for StarkWare and other Zk rollups to join this ecosystem when ready as well.

## Debt Ceiling Parameters

For the initial deployment, PECU is proposing the following debt ceiling parameters:

* Optimism debt ceiling: 1 million DAI
* Arbitrum debt ceiling: 1 million DAI
