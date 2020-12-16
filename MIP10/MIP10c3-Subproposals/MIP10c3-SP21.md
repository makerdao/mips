## Preamble
```
MIP10c3-SP#: 13
Author(s): Marc-André Dumas (@marcandu)
Contributors:
Type: Process Component
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-12-16
Date Ratified: <yyyy-mm-dd>
```

## Specification

### Introduction

These Oracles would provide the several price of several cryptoassets for the use of dYdX on Starkware. 

dYdX does not require an oracle on Ethereum, and as such no medianizer and OSM smart contracts will be deployed on Ethereum.

### Oracle Data Model 

DOT

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    DOT/USDT   |   13  |   Median    |   Median     |
    |    Kraken    |    DOT/USD    |       |             |              |
    |    Huobi     |    DOT/USDT   |       |             |              |
    |    Bitfinex  |    DOT/USD    |       |             |              |
    |    OKEX      |    DOT/USDT   |       |             |              |
    |    Uniswap   |    BAL/ETH    |       |             |              |

SNX

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    SNX/USDT   |   13  |   Median    |   Median     |
    |    Uniswap   |    SNX/ETH    |       |             |              |
    |    SushiSwap |    SNX/ETH    |       |             |              | *
    |    Huobi     |    SNX/USDT   |       |             |              |
    |    OKEX      |    SNX/USDT   |       |             |              |
    |    Coinbase  |    SNX/USD    |       |             |              |

FIL

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    FIL/USDT   |   13  |   Median    |   Median     |
    |    Coinbase  |    FIL/USD    |       |             |              |
    |    Gemini    |    FIL/USD    |       |             |              |
    |    Huobi     |    FIL/USDT   |       |             |              |
    |    Kraken    |    FIL/USD    |       |             |              |
    |    OKEx      |    FIL/USDT   |       |             |              |


ZEC

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    ZEC/USDT   |   13  |   Median    |   Median     |
    |    Bitfinex  |    ZEC/USD    |       |             |              |
    |    Kraken    |    ZEC/USD    |       |             |              |
    |    Coinbase  |    ZEC/USD    |       |             |              |
    |    OKEx      |    ZEC/USDT   |       |             |              |
    |    Gemini    |    ZEC/USD    |       |             |              |

CRV 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    CRV/USDT   |   13  |   Median    |   Median     |
    |    Huobi     |    CRV/USDT   |       |             |              |
    |    Kraken    |    CRV/USD    |       |             |              |
    |    Uniswap   |    CRV/ETH    |       |             |              |
    |    Gemini    |    CRV/USD    |       |             |              |
    |    Sushiswap |    CRV/ETH    |       |             |              |

WNXM

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    WNXM/USDT  |   13  |   Median    |   Median     |
    |    Uniswap   |    WNXM/ETH   |       |             |              |
    |    Balancer  |    WNXM/ETH   |       |             |              |
    |    Huobi     |    WNXM/USDT  |       |             |              |
    |    Gate.io   |    WNXM/USDT  |       |             |              |


XRP

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    XRP/USDT   |   13  |   Median    |   Median     |
    |    Coinbase  |    XRP/USD    |       |             |              |
    |    Bitfinex  |    XRP/USD    |       |             |              |
    |    Huobi     |    XRP/USDT   |       |             |              |
    |    Kraken    |    XRP/USD    |       |             |              |
    |    HitBTC    |    XRP/BTC    |       |             |              |

SOL

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    SOL/USDT   |   13  |   Median    |   Median     |
    |    OKEx      |    SOL/USDT   |       |             |              |
    |    Huobi     |    SOL/BTC    |       |             |              |
    |    Bithumb   |    SOL/BTC    |       |             |              |
    |    Gate.io   |    SOL/USDT   |       |             |              |


AVAX

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    AVAX/BTC   |   13  |   Median    |   Median     |
    |    OKEx      |    AVAX/USDT  |       |             |              |
    |    Huobi     |    AVAX/BTC   |       |             |              |
    |    Gate.io   |    AVAX/USDT  |       |             |              |
    |    Bitfinex  |    AVAX/USD   |       |             |              |

XTZ

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    XTZ/USDT   |   13  |   Median    |   Median     |
    |    Coinbase  |    XTZ/USD    |       |             |              |
    |    Kraken    |    XTZ/USD    |       |             |              |
    |    OKEx      |    XTZ/USDT   |       |             |              |
    |    Bitfinex  |    XTZ/USD    |       |             |              |
    |    HitBTC    |    XTZ/USD    |       |             |              |

### Oracle Supporting Data Model(s)

- USDT
- ETH
- BTC

### Oracle Address
- Medianizer - Mainnet: None
- Oracle Security Module (OSM) - Mainnet: None
- Medianizer - Starkware: TBD
    
### Supported Tools
- Setzer - TBD
- Omnia - TBD

### Remaining Work

- Deploy and configure medianizer smart contracts to Starkware
- Coordinate Feeds to upgrade to latest release candidate

### Summary

dYdX requires the price of several of additional assets for an upcoming project on the Starkware second-layer platform. To do so, `omnia` will generate a separate signature for Starkware that will be relayed on the Cairo platform for use by dYdX. 

The new oracles listed above will be deployed only on Starkware only. Another MIP10c3 subproposal will be required to have medianizer and OSM contracts deployed Ethereum.  
