# MIP10c3-SP21: Subproposal to Onboard Oracle

## Preamble
```
MIP10c3-SP#: 21
Author(s): Marc-André Dumas (@marcandu)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: Accepted
Date Proposed: 2021-01-27
Date Ratified: 2021-02-03
```
## Sentence Summary
MIP10c3-SP21 onboards 17 Oracles on Starkware, with dYdX as the customer.

## Specification

### Introduction

This sub-proposal is for the creation of 17 Oracles on Starkware, with dYdX as the customer. Ten of these seventeen Oracles require the creation of new data models. The remaining seven were already defined for use on Ethereum, and for them we apply the same data models.   

dYdX does not require an oracle on Ethereum, and as such no medianizer and OSM smart contracts will be deployed on Ethereum as part of this subproposal.


### Oracle Data Model 

1. DOTUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    DOT/USDT   |   13  |   Median    |   Median     |
    |    Kraken    |    DOT/USD    |       |             |              |
    |    Huobi     |    DOT/USDT   |       |             |              |
    |    Bitfinex  |    DOT/USD    |       |             |              |
    |    OKEX      |    DOT/BTC    |       |             |              |
    |    Kucoin    |    DOT/USDT   |       |             |              |

2. SNXUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    SNX/BTC    |   13  |   Median    |   Median     |
    |    Uniswap   |    SNX/ETH    |       |             |              |
    |    SushiSwap |    SNX/ETH    |       |             |              | *
    |    Huobi     |    SNX/USDT   |       |             |              |
    |    OKEX      |    SNX/USDT   |       |             |              |
    |    Coinbase  |    SNX/USD    |       |             |              |

3. FILUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    FIL/USDT   |   13  |   Median    |   Median     |
    |    Coinbase  |    FIL/USD    |       |             |              |
    |    Gemini    |    FIL/USD    |       |             |              |
    |    Huobi     |    FIL/USDT   |       |             |              |
    |    Kraken    |    FIL/USD    |       |             |              |
    |    OKEx      |    FIL/USDT   |       |             |              |

4. ZECUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    ZEC/USDT   |   13  |   Median    |   Median     |
    |    Bitfinex  |    ZEC/USD    |       |             |              |
    |    Kraken    |    ZEC/USD    |       |             |              |
    |    Coinbase  |    ZEC/USD    |       |             |              |
    |    OKEx      |    ZEC/USDT   |       |             |              |
    |    Gemini    |    ZEC/USD    |       |             |              |

5. CRVUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    CRV/USDT   |   13  |   Median    |   Median     |
    |    Huobi     |    CRV/USDT   |       |             |              |
    |    Kraken    |    CRV/USD    |       |             |              |
    |    Uniswap   |    CRV/ETH    |       |             |              |
    |    Gemini    |    CRV/USD    |       |             |              |
    |    Sushiswap |    CRV/ETH    |       |             |              |

6. WNXMUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    WNXM/USDT  |   13  |   Median    |   Median     |
    |    Uniswap   |    WNXM/ETH   |       |             |              |
    |    Balancer  |    WNXM/ETH   |       |             |              |
    |    Huobi     |    WNXM/USDT  |       |             |              |
    |    Gate.io   |    WNXM/USDT  |       |             |              |

7. XRPUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    XRP/USDT   |   13  |   Median    |   Median     |
    |    OkEx      |    XRP/USDT   |       |             |              |
    |    Bitfinex  |    XRP/USD    |       |             |              |
    |    Huobi     |    XRP/USDT   |       |             |              |
    |    Kraken    |    XRP/USD    |       |             |              |
    |    HitBTC    |    XRP/BTC    |       |             |              |

8. SOLUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    SOL/USDT   |   13  |   Median    |   Median     |
    |    OKEx      |    SOL/USDT   |       |             |              |
    |    Huobi     |    SOL/BTC    |       |             |              |
    |    Bithumb   |    SOL/BTC    |       |             |              |
    |    Gate.io   |    SOL/USDT   |       |             |              |

9. AVAXUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    AVAX/BTC   |   13  |   Median    |   Median     |
    |    OKEx      |    AVAX/USDT  |       |             |              |
    |    Huobi     |    AVAX/BTC   |       |             |              |
    |    Gate.io   |    AVAX/USDT  |       |             |              |
    |    Bitfinex  |    AVAX/USD   |       |             |              |

10. XTZUSD

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    XTZ/USDT   |   13  |   Median    |   Median     |
    |    Coinbase  |    XTZ/USD    |       |             |              |
    |    Kraken    |    XTZ/USD    |       |             |              |
    |    OKEx      |    XTZ/USDT   |       |             |              |
    |    Bitfinex  |    XTZ/USD    |       |             |              |
    |    HitBTC    |    XTZ/USD    |       |             |              |

11. BTCUSD (existing data model)
12. ETHUSD (existing data model)
13. LINKUSD (existing data model)
14. YFIUSD (existing data model)
15. UNIUSD (existing data model)
16. COMPUSD (existing data model)
17. AAVEUSD (existing data model)

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

- Release Starkware-aware oracle software
- Coordinate Feeds to upgrade
- Set up Starkware relayers.

### Summary

dYdX requires the price of several of additional assets for an upcoming project on the Starkware second-layer platform. To do so, `omnia` will generate a separate signature for Starkware that will be relayed on the Cairo platform for use by dYdX. 

The new oracles listed above will be deployed only on Starkware only. Another MIP10c3 subproposal will be required to have medianizer and OSM contracts deployed Ethereum.  
