# MIP13c3-SP14: Implement a Feature to Refund People who Lost Money Sending Dai to the Dai Contract Address

## Preamble

```
MIP13c3-SP#: 14
Author(s): @tradergalax
Contributors:
Status: Formal Submission
Date Proposed: 2022-12-20
Date Ratified: <yyyy-mm-dd>
---
Declaration Statement: Implement a Feature to Refund People who Lost Money Sending Dai to the Dai Contract Address
Declaration to Replace: N/A
```

## Specification

### Context and Motivation

Many people, such as me, have lost money on DAI because it was transferred to the DAI contract address by mistake --- which means it was permanently destroyed.

The Dai contract has the function of additional minting. The customer’s Dai is transferred to the contract itself and it is destroyed, so the recovery itself is a kind of balance of funds, and the funds will neither be less nor more

### Declaration Detail

This MIP proposes that people who passively and permanently lock Dai in the Dai contract have the ability to get their funds back.

If people transfer their Dai to the contract address, and the contract address has the characteristic of being permanently non-transferable, then we regard it as permanently destroyed.

When the Dai is regarded as permanently destroyed, it will be issued to the transferor through the mint function in the smart contract.

Maker should offer some kind of support for Dai sent to the contract --- maybe with a 10% penalty to discourage abuse.

### Relevant Links

<https://forum.makerdao.com/t/implement-the-feature-to-refund-people-who-lost-money-sending-dai-to-the-dai-address/19223>
