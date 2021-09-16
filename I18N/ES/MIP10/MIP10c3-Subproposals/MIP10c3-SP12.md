# MIP10c3-SP12: Subproposal to Onboard the BAL/USD Oracle

## Preamble
```
MIP10c3-SP#: 12
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-10-07
Date Ratified:
```
## Sentence Summary
MIP10c3-SP12 onboards the BAL/USD Oracle.

## Specification

### Introduction

This Oracle would provide the BAL/USD price as part of the collateral onboarding process for BAL.

### Oracle Data Model 

|    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
| :----------- | :------------ | :---: | :---------: | :----------: |
|    Balancer  |    BAL/ETH   |   13   |   Median    |   Median     |
|    Binance   |    BAL/BTC   |        |             |              |
|    Coinbase  |    BAL/USD   |        |             |              |
|      OKEx    |    BAL/USDT  |        |             |              |
|     Huobi    |    BAL/USDT  |        |             |              |
|    Uniswap   |    BAL/ETH   |        |             |              |

### Oracle Supporting Data Model(s)

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
- Setzer - 7fd9e7d48f8cc64e61cd8bd1d26da27b692ec4b7 - [Added support for BAL/USD](https://github.com/makerdao/setzer-mcd/commit/7fd9e7d48f8cc64e61cd8bd1d26da27b692ec4b7)
- Omnia - 6289cf329e85902379fd6ed6b692802d590677a6 - [Added support for BAL/USD](https://github.com/makerdao/oracles-v2/commit/6289cf329e85902379fd6ed6b692802d590677a6)
- BAL/USD Medianizer on Kovan Testnet - [0x0C472661dde5B08BEee6a7F8266720ea445830a3](https://kovan.etherscan.io/address/0x0c472661dde5b08beee6a7f8266720ea445830a3)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate
- Push new relayer configuration with BAL/USD mainnet Medianizer smart contract address

### Summary

The Balancer BAL token is listed on a diverse array of exchange against a multitude of quotes including its own AMM exchange, Balancer. While there were several reputable exchanges such as Gemini and FTX with highly desirable USD quotes, the volume was considerably lacking to be included. Nonetheless no quote is used more than twice, and with a total of six sources this removes the risk of a single token's implosion or inaccurate price to affect the median calculation for BAL. 

With the formula for the magnitude of BAL liquidity reward taking into the inclusion of BAL as a component of a Balancer Pool, integrating BAL as a collateral type in the Maker Protocol is the first step towards the inclusion of Balancer Pool Tokens with yield generating potential.