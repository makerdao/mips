# MIP10c3-SP17: Subproposal to Onboard the RenBTC/USD Oracle

## Preamble
```
MIP10c3-SP#: 17
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-11-27
Date Ratified:
```
## Sentence Summary
MIP10c3-SP17 onboards the RenBTC/USD Oracle.

## Specification

### Introduction

This Oracle would provide the RenBTC/USD price as part of the collateral onboarding process for RenBTC.

### Oracle Data Model 

 **BTC/USD (canonical)**

|    Source     |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :---: | :---------: | :----------: | 
|   Bitstamp    |    BTC/USD    |   13  |   Median    |    Median    |
|   Bittrex     |    BTC/USD    |
|   Coinbase    |    BTC/USD    |
|   Gemini      |    BTC/USD    |
|   Kraken      |    BTC/USD    |


### Oracle Supporting Data Model(s)

N/A

### Oracle Address
- Medianizer - Mainnet - [0xe0F30cb149fAADC7247E953746Be9BbBB6B5751f](https://etherscan.io/address/0xe0F30cb149fAADC7247E953746Be9BbBB6B5751f)
- Oracle Security Module (OSM) - Mainnet - [0xf185d0682d50819263941e5f4EacC763CC5C6C42](https://etherscan.io/address/0xf185d0682d50819263941e5f4EacC763CC5C6C42)
    
### Supported Tools
- Setzer - 987efb1706090f05c5a8f086da04bb85e48733a7 - [Added support for BTC/USD](https://github.com/makerdao/setzer-mcd/commit/ee89b1835f170eaf0ef585a4ae9f897bb6dfef8d)
- Omnia - 55d81d36fd30183c71ce43797c09e0de88102995 - [Added support for BTC/USD](https://github.com/makerdao/oracles-v2/commit/03c42aed8bbdc4097df771648213c7f3de99ad61)
- Kovan - BTC/USD Medianizer - [0xf8A9Faa25186B14EbF02e7Cd16e39152b85aEEcd](https://kovan.etherscan.io/address/0xf8A9Faa25186B14EbF02e7Cd16e39152b85aEEcd)

### Remaining Work

N/A

### Summary

There are two assumptions being made for the Oracle assessment of RenBTC. The first is that RenBTC can only be minted through locking up Bitcoin in RenVM. The second is that RenVM is secure and the collateral can't be stolen by an attacker. The second assumption is important as Ren's consensus during "sub-zero" is based off of Greycore, [a group of node's run and maintained exclusively by Ren core team](https://medium.com/renproject/renvm-and-the-road-to-decentralisation-72213c3bee3a). This means the Ren Team could mint an infinite number of RenBTC tokens and essentially create unbacked Dai up to the RenBTC debt ceiling. Ultimately Maker Governance needs to assertain they trust the Ren core team when decided whether to onboard RenBTC as collateral in the Maker Protocol.

If MakerDAO chooses to go ahead with collateral onboarding of RenBTC the Oracle Domain Team suggests the following Oracle composition. RenBTC itself is not traded on very many exchanges. Apart from Curve, and Uniswap, the exchanges it does trade on have very low volume. This makes it difficult to construct a secure Oracle as prices on orderbooks lacking liquidity could easily be manipulated. Instead the Oracle Team recommends to use the same Data Model, and in practice the same Oracle smart contract, as Bitcoin. This is exactly the same method the Maker Protocol currently utilizes to price Wrapped-Bitcoin. Since RenBTC is redeemable for actual Bitcoin, market movements of renBTC that deviate from the price of Bitcoin itself don't really matter from a system collateralization perspective. One could even assert that it is preferable to not liquidate RenBTC if the price were to fall relative to Bitcoin due to the DAO being able to recover the more valuable underlying Bitcoin.