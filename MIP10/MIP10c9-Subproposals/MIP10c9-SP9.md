# MIP10c9-SP9: Subproposal to Whitelist tBTC for ETH/BTC Oracle Access

## Preamble
```
MIP10c9-SP#: 9
Author(s): Matt Luongo
Contributors: Antonio Salazar Cardozo
Tags: oracles
Status: Accepted
Date Proposed: 2020-08-25
Date Ratified: 2020-09-12
```

## Sentence Summary
MIP10c9-SP9 whitelists tBTC for ETH/BTC Oracle Access.

## Specification

### Introduction

This is a proposal to update an existing address for the tBTC system's
`SatWeiPriceFeed` contract, which has already been whitelisted (see [the original
proposal](https://vote.makerdao.com/polling-proposal/qmeymkw5rhenzsevpvnhequj9glvq6n5buzapyrvestcdg)).

The [old address](etherscan.io/address/0x3b995E9f719Cb5F4b106F795B01760a11d083823) can be decommissioned.

### Oracle Name

ETH/BTC

### Customer(s)
- tBTC (matt@thesis.co, antonio@thesis.co)

### Whitelist

- tBTC - `0xA3F68d722FBa26173aB64697B4625d4aD0F4C818` - Medianizer

### Requirements
For each customer address to be whitelisted:

- Is the contract source code verified on etherscan? **yes**
- Is the Oracle data used in a permissioned manner that would prevent parasitic behavior? **yes**
- Is Oracle data written to storage? **no**
- If Oracle data is stored, is it stored in a private variable? n/a
- If Oracle data is stored, is the value accessible on-chain exclusively by the protocol? n/a

### Fee

In accordance with the Responsible Oracle Migration Proposal, fees are waived for the first year and determined by MKR Governance after that.