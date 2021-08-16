# MIP13c3-SP11: Declaration of Intent - Onboarding a new collateral type backed by B.Protocol v2

## Preamble

    MIP13c3-SP#: 11
    Author(s): Yaron Velner (@yaronvel)
    Contributors: n/a
    Status: Formal Submission
    Date Proposed: 2021-6-16
    Date Ratified: <yyyy-mm-dd>
    Declaration Statement: Onboarding a new collateral type backed by B.Protocol v2.
    Declaration to Replace: n/a

## Sentence Summary

MIP13c3-SP11 is the Declaration of Intent to experiment a native integration with B.Protocol's V2. Namely, to on-board a new collateral that gives a priority in liquidations to B.Protocol.

## Specification

### Context and Motivation

* Maker, and the DeFi ecosystem in general, has conservative collateral ratios (CR), in order to mitigate potential failures in the liquidation process. High CRs narrows the potential user base, and the potential profit from stability fees (SF), and reduces capital efficiency in the market.
* B.Protocol introduces the concept of a backstop made of committed liquidators, who get priority in the liquidation process, in return for their commitment to execute liquidations.
* B.Protocol has been [live](https://twitter.com/bprotocoleth/status/1321000634804506624) since October 2020, and few successful liquidations were already[ done ](https://forum.makerdao.com/t/technical-report-b-protocol-liquidations-during-last-thursday/5389).
* B.Protocol’s V1 was designed as an opt-in system, where users can decide to manage their Vault with, and give priority to the backstop liquidators. B.Protocol liquidators in return share some of their proceeds with the users. In particular, it requires MakerDAO users to interact with a new set of smart contracts.
* The V2 of B.Protocol is based on the [B.AMM](https://medium.com/b-protocol/b-amm-efficient-automated-market-maker-for-defi-liquidations-fea7b0fdc0c5). A user based liquidation system, with a novel rebalance algorithm that combines Curve Finance’s stable swap invariant with a price oracle.
* An experiment is proposed for a native integration between B.Protocol v2and the MakerDAO system, by on-boarding a new collateral type, namely WBTC-B or ETH-D, with lower CR than WBTC-A or ETH-B (respectively), which will be natively backed by at least 1M Dai deposits in the B.AMM.
* This proposal replaces proposal [MIP13c3-SP9](https://forum.makerdao.com/t/mip13c3-sp9-onboarding-a-new-collateral-type-backed-by-b-protocol-declaration-of-intent/5920), with the more robust design of the backstop.

### Committed backstop design using B.Protocol V2

The B.AMM will pool DAI deposits from users and will deposit it to the Maker’s DSR system where it will get some yield when the DAI is idle, and not used for liquidations.

Upon liquidation, the flip contract will transfer the WBTC-B collateral to the B.AMM, who will give DAI in return, with a 5% discount over market price. The DAI will be used immediately to repay the undercollateralized vault debt in return for the discounted collateral.

The B.AMM will offer the WBTC-B for sale according to a special formula that is described in the [whitepaper](https://cloudflare-ipfs.com/ipfs/Qmb2ZMk7F48jYSwJczdJeqXJz7CZVh8H4KnfyNdHZSMRG5).

Once the WBTC-B is converted to DAI, it will be deposited back into the DSR.

It is a trivial observation that 1M Dai deposits can trivially handle 1M Dai liquidations. And the experimental results in the whitepaper show that X deposits can cover up to 10X of monthly liquidations.

### Declaration Detail

Maker Governance declares its intention to experiment a native integration with B.Protocol’s V2. Namely, to on-board a new collateral that gives a priority(*) in liquidations to B.Protocol, in return to an on-chain commitment of 1M Dai locked funds for the duration of the experiment, towards successful liquidations.

(*) If B.Protocol fails to liquidate a Vault, then the Vault will be liquidated by the standard Maker keepers, like today.

Further, it is the governance intent that:

1. The development work will be done by the B.Protocol team, to the satisfaction of the protocol engineering core unit.
2. The collateral price oracle will be recommended by the oracle core unit.
3. The risk parameters, namely, the CR, debt ceiling, and auction parameters (if still applicable) will be recommended by the risk core unit.
4. Stability fee and liquidation penalty will be discussed again with the community, in the form of signal requests.

Links:

* [Discussion: WBTC-B collateral type, backed by B.Protocol with x10 leverage 6](https://forum.makerdao.com/t/discussion-wbtc-b-collateral-type-backed-by-b-protocol-with-x10-leverage/5409)
* [[INFORMAL POLL] Would the Maker Community want to onboard a new collateral (e.g., WBTC-B), backed by B.Protocol that has lower CR with the same SF?](https://forum.makerdao.com/t/informal-poll-would-the-maker-community-want-to-onboard-a-new-collateral-e-g-wbtc-b-backed-by-b-protocol-that-has-lower-cr-with-the-same-sf/5652)
* [Collateral Onboarding Community Call by 1](https://www.youtube.com/watch?v=CaDnKAlCpiM&feature=emb_logo&ab_channel=MakerDAO) [@juanjuan](https://forum.makerdao.com/u/juanjuan)
