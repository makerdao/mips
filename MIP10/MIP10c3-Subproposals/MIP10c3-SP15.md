# MIP10c3-SP15: Subproposal to Onboard the UNI/USD Oracle

## Preamble
```
MIP10c3-SP#: 15
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: Obsolete
Date Proposed: 2020-11-27
Date Ratified:
Extra: This subproposal has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1).
```

## Sentence Summary
MIP10c3-SP15 onboards the UNI/USD Oracle.

## Specification

### Introduction

This Oracle would provide the UNI/USD price as part of the collateral onboarding process for UNI.

### Oracle Data Model

|    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
| :----------- | :------------ | :---: | :---------: | :----------: |
|    Binance   |    UNI/BTC    |   13  |    Median   |    Median    |
|    Coinbase  |    UNI/USD    |
|      FTX     |    UNI/USD    |
|     Huobi    |    UNI/USDT   |
|      OKEx    |    UNI/USDT   |
|    Uniswap   |    UNI/ETH    |


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

**USDT/USD (canonical)**

|    Source     |  Asset Pair   |  Feed Model  |
| :------------ | :------------ | :----------: |
|   Binance     |    BTC/USDT   |    Median    |
|   BitFinex    |    USDT/USD   |              |
|   FTX         |    ETH/USDT   |              |
|   Huobi       |    ETH/USDT   |              |
|   Kraken      |    USDT/USD   |              |
|   OKEx        |    BTC/USDT   |              |

### Oracle Address
- Medianizer - Mainnet TBD
- Oracle Security Module (OSM) - Mainnet TBD

### Supported Tools
- Setzer - 987efb1706090f05c5a8f086da04bb85e48733a7 - [Added support for UNI/USD](https://github.com/makerdao/setzer-mcd/commit/987efb1706090f05c5a8f086da04bb85e48733a7)
- Omnia - 55d81d36fd30183c71ce43797c09e0de88102995 - [Added support for UNI/USD](https://github.com/makerdao/oracles-v2/commit/55d81d36fd30183c71ce43797c09e0de88102995)
- Kovan - UNI/USD Medianizer - [0x8Bc53b706D5e20Ee3d8b9B68DE326B1953b11cC1](https://kovan.etherscan.io/address/0x8Bc53b706D5e20Ee3d8b9B68DE326B1953b11cC1)
- Kovan - UNI/USD Oracle Security Module - [0xe573a75BF4827658F6D600FD26C205a3fe34ee28](https://kovan.etherscan.io/address/0xe573a75BF4827658F6D600FD26C205a3fe34ee28)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Push new relayer configuration with UNI/USD Mainnet Medianizer smart contract address

### Summary

The UNI token has been listed on a multitude of high quality exchanges, with especially attractive USD fiat pairings (Coinbase Pro, Kraken, Gemini, FTX, Binance US.) These types of pairs are highly desirable as they aren't susceptible to manipulation of the dollar value of their quotes. That said, apart from Coinbase Pro and Binance US, the volumes on these USD is quite insignificant relative to non-USD quotes such as ETH on Uniswap and BTC/USDT Binance.
The ownership of Binance US by Binance also makes Binance US undesirable to included in the Data Model as it would give too much exposure to the controlling interest of Binance. High trading volumes on HUobi and OKEx though highly wash traded have significant levels of real volume. Huboi and OKex exclusively these high volumes against USDT. This means to reduce exposure to USDT we utilize the lower volume Binance BTC pair rather than USDT pair. This gives us a balanced Data Model with exposure to USDT, BTC, ETH, and direct-to-usd pairs.
