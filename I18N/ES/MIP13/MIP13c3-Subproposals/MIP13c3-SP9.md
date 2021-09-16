# MIP13c3-SP9: Onboarding a new collateral type backed by B.Protocol (Declaration of Intent)

## Preamble
```
MIP13c3-SP#: 9
Author(s): Yaron Velner (@yaronvel)
Contributors: n/a
Status: Withdrawn
Date Proposed: 2021-1-05
Date Ratified:
---
Declaration Statement: Onboarding a new collateral type backed by B.Protocol.
Declaration to Replace: n/a
```

## Sentence Summary

MIP13c3-SP9 is the Declaration of Intent for onboarding a new collateral type backed by B.Protocol.

## Specification

### Context and Motivation
* Maker, and the DeFi ecosystem in general, has conservative collateral ratios (CR), in order to mitigate potential failures in the liquidation process. High CRs narrows the potential user base, and the potential profit from stability fees (SF).
* B.Protocol introduces the concept of a backstop made of committed liquidators, who get priority in the liquidation process, in return to their commitment.
* B.Protocol is [live](https://twitter.com/bprotocoleth/status/1321000634804506624) since October 2020, backstopping over $18m of ETH-A collateral and $6m debt. Few successful liquidations were already[ done](https://forum.makerdao.com/t/technical-report-b-protocol-liquidations-during-last-thursday/5389).
* In ETH-A collateral B.Protocol is an opt-in system, where users can decide to manage their Vault with, and give priority to the liquidators. B.Protocol liquidators in return share some of their proceeds with the users who give them the priority. In particular, it requires the user to interact with a new set of smart contracts.
* An experiment is proposed for a native integration between B.Protocol and the MakerDAO system, by on-boarding a new collateral type, namely WBTC-B or ETH-C, with lower CR than WBTC-A or ETH-B (respectively), which will be natively backed by a strong commitment from B.Protocol backstop.

### Committed backstop design
For simplicity we describe a system with a single liquidator. Scaling the system for multiple liquidators, in a permissionless way, will be handled by B.Protocol, and it is not in the scope of this writeup (we presented some ideas on how to achieve fairness [here](https://medium.com/b-protocol/achieving-fairness-in-liquidations-over-b-protocol-7f9ebfd06293)).

We illustrate the protocol with an example of WBTC collateral, $5M ceiling, and 0 liquidation penalty, however, this is only for the sake of illustration, and it is not part of the declaration of intent

Initialization: the liquidator opens a Vault with $0.5M WBTC deposit, and 0 debt. We denote this liquidator’s Vault with lv. Liquidator can withdraw collateral or increase his debt, only if his net position (collateral minus debt) is over $0.5M (according to MakerDAO price feed).

Liquidation: when calling bite to an unsafe Vault `v`, then if `v==lv`, or lv does not have a net position of $0.5M, then `v` is subject to a standard liquidation process (by the `cat` or the `dog`).

Otherwise, the entire position of v is forked and added to `lv`. The user of v is losing all his collateral (which is effectively a maximum of 10% penalty). `lv` get all the user collateral and all of the user debt.

The` bite` function is callable by anyone.

### Declaration Detail
Maker Governance declares its intention to experiment a native integration with B.Protocol. Namely, to on-board a new collateral that gives a priority(*) in liquidations to B.Protocol, in return to an on-chain commitment of B.Protocol backstop liquidators through an on-chain crypto-economic incentive (**), towards successful liquidations.

(*) If B.Protocol fails to liquidate a Vault, then the Vault will be liquidated by the standard Maker keepers, like today.

(**) Liquidators who fail to liquidate, will incur an economical cost.

Further, it is the governance intent that:

1. The development work will be done by the B.Protocol team, to the satisfaction of the Maker’s smart contract team.
2. The collateral oracle will be recommended by the oracle team.
3. The risk parameters, namely, the CR, debt ceiling, and auction parameters (if still applicable) will be recommended by the risk team.
4. Stability fee and liquidation penalty will be discussed again with the community, in the form of signal requests.

### Relevant Links
* https://forum.makerdao.com/t/discussion-wbtc-b-collateral-type-backed-by-b-protocol-with-x10-leverage/5409
* https://forum.makerdao.com/t/informal-poll-would-the-maker-community-want-to-onboard-a-new-collateral-e-g-wbtc-b-backed-by-b-protocol-that-has-lower-cr-with-the-same-sf/5652
* [Collateral Onboarding Community Call by](https://www.youtube.com/watch?v=CaDnKAlCpiM&feature=emb_logo&ab_channel=MakerDAO) @juanjuan
