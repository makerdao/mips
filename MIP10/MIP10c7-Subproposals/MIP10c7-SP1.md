# MIP10c7-SP1: Subproposal to Update Oracle Data Model

## Preamble
```
MIP10c7-SP#: 1
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Oracle Team Name: Green
Status: Formal Submission
Date Proposed: 2020-09-12
Date Ratified:
``` 

## Sentence Summary
MIP10c7-SP1 adds FTX and Uniswap as price sources and removes Bitfinex.

## Specification

### Introduction

As markets and liquidity profiles evolve, it is important to revisit Data Models for collateral assets to ensure they accurately reflect the new normal. 

*This proposal adds FTX (ETH/USD) and Uniswap (ETH/USDC) as price sources for the ETH/USD Oracle and removes Bitfinex (ETH/USDT).*


### Oracle Data Model 

|    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :----: | :---------: | :----------: |
|   Binance     |    ETH/BTC    |   13   |    Median   |    Median    |
|   Bitstamp    |    ETH/USD    |
|   Coinbase    |    ETH/USD    |
|      FTX      |    ETH/USD    |
|   Gemini      |    ETH/USD    |
|   Kraken      |    ETH/USD    |
|   Uniswap     |    ETH/USDC   |


### Oracle Supporting Data Model(s)

### BTC/USD Data Model

|    Source     |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :---: | :---------: | :----------: |
|   Bitstamp    |    BTC/USD    |   13  |    Median   |    Median    |
|   Bittrex     |    BTC/USD    | 
|   Coinbase    |    BTC/USD    |
|   Gemini      |    BTC/USD    |
|   Kraken      |    BTC/USD    |


### USDC/USD    
|      Source     |  Asset Pair   |  Feed Model  |
| :-------------- | :------------ | :----------: |
|        1        |       N/A     |      N/A     |

 
### Supporting Evidence

DeFi has grown exponentially and Uniswap now does significant volume rivaling many centralized exchanges. Similarly, FTX has experienced remarkable growth and now boasts a significant Ethereum volume against USD. Meanwhile there is continued uncertainty over Tether's backing.


- What is better about the new Data Model?
This proposal would remove any dependency on USDT from the ETH/USD Data Model.
It also adds Uniswap as a source which as an AMM is very expensive for an attacker to manipulate. 
 
### Oracle Address
- Medianizer
- Oracle Security Module (OSM)
    
### Supported Tools
- Setzer -3adfa65dfb926f41a451ee2ce60d48432e7ff69f - [Added FTX/Uniswap & Removed BitFinex](https://github.com/makerdao/setzer-mcd/commit/3adfa65dfb926f41a451ee2ce60d48432e7ff69f)