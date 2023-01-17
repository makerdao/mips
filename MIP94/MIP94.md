# MIP94: Implement a Feature to Refund People who Lost Money Sending Dai to the Dai Contract Address

## Preamble

```
MIP#: 94
Title: Implement a Feature to Refund People who Lost Money Sending Dai to the Dai Contract Address
Author(s): @tradergalax
Contributors:
Tags: governance  
Type: General
Status: RFC
Date Proposed: 2022-12-20
Date Ratified:
Dependencies: None
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip94-implement-a-feature-to-refund-people-who-lost-money-sending-dai-to-the-dai-contract-address/19227
```

## References

- None

## Sentence Summary

This MIP proposes that people who passively and permanently lock Dai in the Dai contract have the ability to get their funds back.

## Paragraph Summary

TBD

## Component Summary

TBD

## Motivation

Many people, such as me, have lost money on DAI because it was transferred to the DAI contract address by mistake --- which means it was permanently destroyed.

The Dai contract has the function of additional issuance. The customer’s Dai is transferred to the contract itself and it is destroyed, so the recovery itself is a kind of balance of funds, and the funds will neither be less nor more

## Specification / Proposal Details

- If people transfer their Dai to the contract address, and the contract address has the characteristic of being permanently non-transferable, then we regard it as permanently destroyed
- When the Dai is regarded as permanently destroyed, it will be issued to the transferor through the mint function on the smart contract
- Maker should offer some kind of support for Dai sent to the contract. Maybe with a 10% penalty to discourage abuse.
