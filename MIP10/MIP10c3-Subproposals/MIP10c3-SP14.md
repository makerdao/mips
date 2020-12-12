## Preamble
```
MIP10c3-SP#: 14
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-11-27
Date Ratified: <yyyy-mm-dd>
```

## Specification

### Introduction

This Oracle would provide the AAVE/USD price as part of the collateral onboarding process for AAVE.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Balancer  |   AAVE/USD    |   13  |    Median   |    Median    |
    |    Binance   |   AAVE/BTC    | 
    |     Gemini   |   AAVE/USD    |
    |     Huobi    |   AAVE/USDT   |
    |      OKEx    |   AAVE/USDT   |
    |    Uniswap   |   AAVE/ETH    |


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
- Setzer - de5dc7819172d440485f521e37fd812b70e31036 - [Added support for AAVE/USD](https://github.com/makerdao/setzer-mcd/commit/de5dc7819172d440485f521e37fd812b70e31036)
- Omnia - 55d81d36fd30183c71ce43797c09e0de88102995 - [Added support for AAVE/USD](https://github.com/makerdao/oracles-v2/commit/55d81d36fd30183c71ce43797c09e0de88102995)
- Kovan - AAVE/USD Medianizer - [0xad0421CE93652857fB0f75c8eB3e7DDB8C8AFAaa](https://kovan.etherscan.io/address/0xad0421CE93652857fB0f75c8eB3e7DDB8C8AFAaa)
- Kovan - AAVE/USD Oracle Security Module - [0xd2d9B1355Ea96567E7D6C7A6945f5c7ec8150Cc9](https://kovan.etherscan.io/address/0xd2d9B1355Ea96567E7D6C7A6945f5c7ec8150Cc9)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Push new relayer configuration with AAVE/USD Mainnet Medianizer smart contract address

### Summary

Having completed its migration from LEND to AAVE alongside the vast majority of liquidity, it is now safe to create a Data Model for the AAVE token. This particular configuration was chosen to get a mix of USD, USDT, BTC, and ETH exposure while covering the largest swaths of AAVE liquidity. DEXes like Uniswap and Balancer are also included through the use of subgraphs. Limiting exposure to subgraphs to two out of six sources is still highly desirable as subgraphs tend to fail quite frequently. While the trading pairs on Huobi and OKEx exhibit significant amounts of wash-trading, their estimated real volume is still significant enough to warrant using them as sources. The Oracle Domain team will monitor the listing of AAVE on US-based exchanges such as Coinbase and Kraken which tend to have stricter regulatory scrutiny. The inclusion of these exchanges would increase confidence in the AAVE Data Model.