# MIP10c3-SP11: Subproposal to Onboard the PAXG/USD Oracle

## Preamble
```
MIP10c3-SP#: 11
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: Obsolete
Date Proposed: 2020-09-17
Date Ratified:
Extra: This subproposal has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1).
```

## Sentence Summary
MIP10c3-SP11 onboards the PAXG/USD Oracle.

## Specification

### Introduction

This Oracle would provide the PAXG/USD price as part of the collateral onboarding process for PAXG.

### Oracle Data Model

|    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
| :----------- | :------------ | :---: | :---------: | :----------: |
|    Binance   |    PAXG/USDT  |   13  |    Median   |    Median    |
|    Bitthumb  |    PAXG/USDT  |
|    Gemini    |    PAXG/USD   |
|    Kraken    |    PAXG/USD   |
|    Uniswap   |    PAXG/ETH   |

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
- Setzer - 8d03ca51265e9372716ba89e7063d062b146a85b - [Added support for PAXG/USD](https://github.com/makerdao/setzer-mcd/commit/8d03ca51265e9372716ba89e7063d062b146a85b)
- Omnia - 39b298404a0012d1fdf5097e71adf89004e86c83 - [Added support for PAXG/USD](https://github.com/makerdao/oracles-v2/commit/39b298404a0012d1fdf5097e71adf89004e86c83)
- PAXG/USD Medianizer on Kovan Testnet - [0xe2e348d6f48e51d194f401bad2840ef164d278e2](https://kovan.etherscan.io/address/0xe2e348d6f48e51d194f401bad2840ef164d278e2)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate
- Push new relayer configuration with PAXG/USD mainnet Medianizer smart contract address

### Summary

PAXG which represents a tokenized version of gold represents the first potential instance of a real-world asset in the Maker Protocol. Real-world assets aid in stabilizing Dai by diversifying the collateral portfolio with non-correlated assets. Gold in particular has historically been inversely-correlated to equities / crypto in times of financial stress.

The currently supply and daily trading volume of PAXG is quite small. Although, it won't provide a significant diversification benefit in the immediate future, it has the potential to grow. Meanwhile it serves as an important symbol of the future evolution of the Maker Protocol.

The recent listings of PAXG on Binance and Gemini have enabled the creation of a secure and reliable Oracle for PAXG. There is a healthy distribution of USD, USDT, and ETH pairs such that no single quote can on its own impact the canonical price. The Oracle Domain Team will keep a close eye on the development of the liquidity profile of PAXG over time such that the Oracle Data Model accurately reflects the reality of the market.
