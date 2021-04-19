# MIP10c3-SP5: Subproposal to Onboard Oracle

## Preamble
```
MIP10c3-SP#: 5
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: Formal Submission (FS)
Date Proposed: 2020-08-05
Date Ratified:
```
## Sentence Summary
MIP10c3-SP5 onboards the LRC/USD Oracle.

## Specification

### Introduction

This Oracle would provide the LRC/USD price as part of the collateral onboarding process for LRC.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |   Binance    |    LRC/BTC    |   13  |    Median   |    Median    |
    |   Gate.io    |    LRC/USDT   | 
    |   Loopring   |    LRC/ETH    |
    |   OKEx       |    LRC/USDT   |
    |   Uniswap    |    LRC/ETH    |


### Oracle Supporting Data Model(s)

**USDT/USD (canonical)**

    |    Source     |  Asset Pair   |  Feed Model  |
    | :------------ | :------------ | :----------: | 
    |   Binance     |    BTC/USDT   |    Median    |
    |   BitFinex    |    USDT/USD   |              |
    |   FTX         |    ETH/USDT   |              |
    |   Huobi       |    ETH/USDT   |              |
    |   Kraken      |    USDT/USD   |              |
    |   OKEx        |    BTC/USDT   |              |

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
- Setzer - e1944e934f0dae980b3fa14ac4fe2c7047990116 - [Added support for LRC/USD](https://github.com/makerdao/setzer-mcd/blob/e1944e934f0dae980b3fa14ac4fe2c7047990116/libexec/setzer/setzer-price-lrcusd)
- Omnia - 0b73b3f9b9aaa87241d0cc217d0f37d62a40dba3 - [Added support for LRC/USD](https://github.com/makerdao/oracles-v2/commit/0b73b3f9b9aaa87241d0cc217d0f37d62a40dba3)
- LRC/USD Medianizer on Kovan Testnet - [0xffd6F86244d991a88adAFBa28d69bba622F14313](https://kovan.etherscan.io/address/0xffd6f86244d991a88adafba28d69bba622f14313)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate
- Push new relayer configuration with LRC/USD Medianizer smart contract address

### Summary

LRC has a decent distribution of sources over a multitude of different quotes that in combination provide a resilient mechanism for determining a price. That being said, the Oracle Team will continue to monitor new exchange listings and their volume growth in order to potentially append a 6th data source.
