## Preamble
```
MIP10c3-SP#: 9
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

This Oracle would provide the COMP/USD price as part of the collateral onboarding process for COMP.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    COMP/USDT  |   13  |    Median   |    Median    |
    |    Coinbase  |    COMP/USD   | 
    |    Huobi     |    COMP/USDT  |
    |    Kraken    |    COMP/USD   |
    |    KuCoin    |    COMP/USDT  |
    |    Uniswap   |    COMP/ETH   |


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
- Setzer - a2cc40d9084c93902fd41b4fc642a83ddf635b2f - [Added support for COMP/USD](https://github.com/makerdao/setzer-mcd/commit/a2cc40d9084c93902fd41b4fc642a83ddf635b2f)
- Omnia - 6d5ec1bf492431b1eb118171526ba8c545cdd94d - [Added support for COMP/USD](https://github.com/makerdao/oracles-v2/commit/6d5ec1bf492431b1eb118171526ba8c545cdd94d)
- COMP/USD Medianizer on Kovan Testnet - [0x18746a1ced49ff06432400b8eddcf77876eca6f8](https://kovan.etherscan.io/address/0x18746a1ced49ff06432400b8eddcf77876eca6f8)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate
- Push new relayer configuration with COMP/USD Medianizer smart contract address

### Summary

The COMP token is traded on a wide variety of exchanges. When ranked by wash-trading adjusted volume most of the reputable exchanges trade against USDT. Being overweight in USDT is an undesirable property as it exposes the price model to a potential tether collapse risk. OKEx's COMP/USDT was dropped as a source in favor of Huobi's COMP/USDT as Huobi has more liquidity and as such is more expensive to manipulate. 

Kraken's COMP/USD was chosen due to USD fiat pairs being preferred for price discovery. Despite the low volume on Kraken relative to others in this set, the market-depth is disproportionally deep and bots arbitraging against Coinbase's COMP/USD have abnormally high activity on Kraken.