# MIP13c3-SP2: Declaration of Intent - Dai Flash Mint Module

## Preamble
```
MIP13c3-SP#: 2
Author(s): Sam MacPherson (@hexonaut)
Contributors: n/a
Status: Accepted
Date Proposed: 2020-08-11
Date Ratified: 2020-09-30
---
Declaration Statement: Add support for flash-minting Dai.
Declaration to Replace: n/a
```

## Sentence Summary

MIP13c3-SP2 is the Declaration of Intent for adding support for flash-minting Dai.

## Specification

### Context and Motivation

Flash mints allow anyone to mint as much Dai as they need with the one condition that they pay it all back in the same transaction with a fee. This allows anyone to exploit arbitrage opportunities in the DeFi space without having to commit upfront capital.

A flash mint module will provide the following benefits:

 * Improves market efficiencies for Dai.
 * Democratization of arbitrage - anyone can participate.
 * Exploits requiring a large amount of capital will be found quicker which makes the DeFi space safer overall.
 * Fees provide an income source for the protocol.

### Declaration Detail

MakerDAO Governance requests a Dai Flash Mint module be built and integrated with the Maker system. This module should include both an optional fee parameter as well as an optional debt ceiling which MakerDAO Governance can adjust after deployment via executive vote.

This implementation is flexible beyond the core criteria of adding a Flash Mint Module with an optional fee and debt ceiling.

### Relevant Links
    
 * https://forum.makerdao.com/t/signal-request-add-a-dai-flash-mint-module/3598
