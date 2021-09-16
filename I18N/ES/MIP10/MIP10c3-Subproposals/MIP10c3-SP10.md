# MIP10c3-SP10: Subproposal to Onboard Oracle

## Preamble
```
MIP10c3-SP#: 10
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-09-17
Date Ratified:
```

## Sentence Summary
MIP10c3-SP10 onboards the YFI/USD Oracle.

## Specification

### Introduction

This Oracle would provide the YFI/USD price as part of the collateral onboarding process for YFI.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |    YFI/USDT  |   13  |    Median   |    Median    |
    |    Coinbase  |    YFI/USD   | 
    |      FTX     |    YFI/USD   |
    |     Gemini   |
    |     Huobi    |    YFI/USDT  |
    |    Uniswap   |    YFI/ETH   |


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
- Setzer - aaabab1cee2676a522782d87b48ea907aa18ecc8 - [Added support for YFI/USD](https://github.com/makerdao/setzer-mcd/commit/aaabab1cee2676a522782d87b48ea907aa18ecc8)
- Omnia - 6289cf329e85902379fd6ed6b692802d590677a6 - [Added support for YFI/USD](https://github.com/makerdao/oracles-v2/commit/6289cf329e85902379fd6ed6b692802d590677a6)
- YFI/USD Medianizer on Kovan Testnet - [0x67e681d202cf86287bb088902b89cc66f1a075d4](https://kovan.etherscan.io/address/0x67e681d202cf86287bb088902b89cc66f1a075d4)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Coordinate Feeds to upgrade to latest release candidate
- Push new relayer configuration with YFI/USD mainnet Medianizer smart contract address

### Summary

The addition of YFI as a collateral type is quite conducive to the synergy between the Maker Protocol and Yearn Finance. Similar to MKR, as a governance token YFI is susceptible to a governance attack if enough liquidity is built up on lending protocols such as Aave or Compound. As Maker does not lend collateral deposited by users, it becomes the ideal platform for YFI holders to utilize to tap into the equity in their YFI without impacting the security of YFI governance. Furthermore, YFI as a collateral type enables the creation of yYFI Vaults which facilitate YFI holders to accumulate additional YFI in a secure manner due to the one hour liquidation delay afforded by the Oracle Security Module in contrast to Compound and Aave.

YFI has in the most rapid fashion asserted itself as one of the top DeFi primitives in the ecosystem. In its thus far short lifespan it has been listed on an assortment of tier-1 exchanges that facilitate creating a robust Oracle. In particular it benefits from a couple of direct to USD pairs, supplemented by a pair of USDT pairs, and rounded out with a hard-to-manipulte Uniswap pair against ETH. This creates a YFI Oracle that is resilient to a USDT failure, while still accounting for a fair weighting of its highest quote by volume.