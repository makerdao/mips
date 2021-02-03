## Preamble
```
MIP10c3-SP#: 8
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-09-08
Date Ratified: <yyyy-mm-dd>
```

## Specification

### Introduction

This Oracle would provide the LINK/USD price as part of the collateral onboarding process for LINK.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    LINK/BTC   |   13  |    Median   |    Median    |
    |   Coinbase   |    LINK/USD   | 
    |     FTX      |    LINK/USD   |
    |    Gemini    |    LINK/USD   |
    |     Huobi    |    LINK/USDT  |
    |    Kraken    |    LINK/USD   |


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

### Oracle Address
- Medianizer - Mainnet TBD
- Oracle Security Module (OSM) - Mainnet TBD
    
### Supported Tools
- Setzer - da31fc37584d925d3b4a2efaffec27a372239396 - [Added support for LINK/USD](https://github.com/makerdao/setzer-mcd/commit/da31fc37584d925d3b4a2efaffec27a372239396)
- Omnia - dc15687c2b63f120313fe6fb54e44f3b69b116ae - [Added support for LINK/USD](https://github.com/makerdao/oracles-v2/commit/dc15687c2b63f120313fe6fb54e44f3b69b116ae)
- LINK/USD Medianizer on Kovan Testnet - [0x7cb395DF9f1534cF528470e2F1AE2D1867d6253f](https://kovan.etherscan.io/address/0x7cb395df9f1534cf528470e2f1ae2d1867d6253f)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate
- Push new relayer configuration with LINK/USD Medianizer smart contract address

### Summary

From a data model perspective LINK is exceptionally simple to price relative to USD because of the numerous exchanges which denominate high volume USD pairs against it including Coinbase, Kraken, Gemini, and FTX. While Binance LINK/USDT trading volume is higher than BTC/USDT, the BTC pair was chosen to lower USDT exposure. This allows the LINK data model to safely utilize the BTC pair and USDT pair on Binance and Huobi respectively without taking on significant BTC and USDT risk.