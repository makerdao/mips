# MIP94: Implement the feature to refund people who lost money sending DAI to the DAI contract address 

## Preamble
```
MIP#: 94
Title: Implement the feature to refund people who lost money sending DAI to the DAI contract address 
Author(s): @tradergalax
Contributors:
Tags: governance  
Type: General 
Status: RFC
Date Proposed: 2022-12-20
Date Ratified: xx
Dependencies: None
Replaces: None
```
## References

- None

## Sentence Summary

- The mip proposes that people who passively and permanently lock dai in the contract have the ability to get their funds back

## Paragraph Summary

- None

## Component Summary

- None

## Motivation

- implement the feature to refund people who lost money sending DAI to the DAI address.Many people, such as me, have lost money on dai, because it was transferred to the dai contract address by mistake, which means it was permanently destroyed
- The dai contract has the function of additional issuance. The customer’s dai is transferred to the contract itself and it is destroyed, so the recovery itself is a kind of balance of funds, and the funds will not be less or less. will be more

## Specification / Proposal Details

- If people transfer their dai to the contract address, and the contract address has the characteristic of being permanently non-transferable, then we regard it as permanently destroyed
- When the dai is regarded as permanently destroyed, it will be issued to the transferor through the mint function on the smart contract
- Maker should offer some kind of support for DAI sent to the contract. Maybe with a 10% penalty to discourage abuse.
