# MIP10c3-SP6: Subproposal to Onboard Oracle

## Preamble
```
MIP10c3-SP#: 6
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: Accepted
Date Proposed: 2020-08-05
Date Ratified: 2020-09-08
```
## Sentence Summary
MIP10c3-SP6 onboards the USDT/USD Oracle.

## Specification

### Introduction

This Oracle would provide the USDT/USD price as part of the collateral onboarding process for USDT.

### Oracle Data Model 

|    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
| :----------- | :------------ | :---: | :---------: | :----------: |
|   Binance    |    BTC/USDT   |   13  |    Median   |    Median    |
|   BitFinex   |    USDT/USD   |
|   FTX        |    ETH/USDT   |
|   Huobi      |    ETH/USDT   |
|   Kraken     |    USDT/USD   |
|   OKEx       |    BTC/USDT   |

### Oracle Supporting Data Model(s)

**BTC/USD (canonical)**

|    Source     |  Asset Pair   |  Feed Model  |
| :------------ | :------------ | :----------: | 
|   Bitstamp    |    BTC/USD    |    Median    |
|   Bittrex     |    BTC/USD    |              |
|   Coinbase    |    BTC/USD    |              |
|   Gemini      |    BTC/USD    |              |
|   Kraken      |    BTC/USD    |              |

**ETH/USD (canonical)**

|    Source     |  Asset Pair   |  Feed Model  |
| :------------ | :------------ | :----------: | 
|   Binance     |    ETH/USD    |    Median    |
|   Bitfinex    |    ETH/USDT   |              |
|   Bitstamp    |    ETH/USD    |              |
|   Coinbase    |    ETH/USD    |              |
|   Gemini      |    ETH/USD    |              |
|   Kraken      |    ETH/USD    |              |
 
### Oracle Address
- Medianizer - Mainnet TBD
- Oracle Security Module (OSM) - Mainnet TBD
    
### Supported Tools
- Setzer - e1944e934f0dae980b3fa14ac4fe2c7047990116 - [Added support for USDT/USD](https://github.com/makerdao/setzer-mcd/blob/e1944e934f0dae980b3fa14ac4fe2c7047990116/libexec/setzer/setzer-price-usdtusd)
- Omnia - 0b73b3f9b9aaa87241d0cc217d0f37d62a40dba3 - [Added support for USDT/USD](https://github.com/makerdao/oracles-v2/commit/0b73b3f9b9aaa87241d0cc217d0f37d62a40dba3)
- USDT/USD Medianizer on Kovan Testnet - [0x074EcAe0CD5c37f59D9b91E2994407418aCe05B7](https://kovan.etherscan.io/address/0x074ecae0cd5c37f59d9b91e2994407418ace05b7)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate
- Push new relayer configuration with USDT/USD Medianizer smart contract address

### Summary

Unlike other regulated fiat-backed stablecoins, Tether stands out due to its unregulated nature and questionable backing. It makes little sense to hard-peg the value of USDT to $1 because there is no guarantee of solvency. This is in contrast to tokens like USDC, TUSD, or PAXOS which have much stronger guarantees. As such, the Oracle Team recommends a floating price USDT Oracle with active liquidations. 

Being one of the most highly traded tokens in the Ethereum ecosystem, there are a plethora of data to choose from. While high volume and liquidity are always high priority items for Data Models, the Oracle Team focused additional attention towards segregating the USDT price from outsized influence to any single pair. Out of the six total sources, two are against BTC, two are against ETH, and two are against USD. This minimizes the impact of price distortions driven exclusively by BTC or ETH though not necessarily a combination of the two. Similarly the Oracle is also resilient to manipulation of lower liquidity fiat pairs on BitFinex and Kraken.
