# MIP10c3-SP16: Subproposal to Onboard the PAXG/USD Oracle

## Preamble
```
MIP10c3-SP#: 16
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Tags: oracle-onboarding, oracles
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-11-27
Date Ratified:
```

## Sentence Summary
MIP10c3-SP16 onboards the PAXG/USD Oracle.

## Specification

### Introduction

This Oracle would provide the PAXG/USD price as part of the collateral onboarding process for PAXG.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |    Binance   |   PAXG/USDT   |   13  |    Median   |    Median    |
    |    Bitthumb  |   PAXG/USDT   | 
    |     Gemini   |    PAXG/USD   |
    |     Kraken   |    PAXG/USD   |
    |    Uniswap   |    PAXG/ETH   |


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

### Oracle Address
- Medianizer - Mainnet TBD
- Oracle Security Module (OSM) - Mainnet TBD
    
### Supported Tools
- Setzer - 8d03ca51265e9372716ba89e7063d062b146a85b - [Added support for PAXG/USD](https://github.com/makerdao/setzer-mcd/commit/8d03ca51265e9372716ba89e7063d062b146a85b)
- Omnia - 55d81d36fd30183c71ce43797c09e0de88102995 - [Added support for PAXG/USD](https://github.com/makerdao/oracles-v2/commit/55d81d36fd30183c71ce43797c09e0de88102995)
- Kovan - PAXG/USD Medianizer - [0x921232466447816628f09E657B2Ab6d1D8A92BE8](https://kovan.etherscan.io/address/0x921232466447816628f09E657B2Ab6d1D8A92BE8)
- Kovan - PAXG/USD Oracle Security Module - [0x31CceDBc45179f17CfD34967680C6560b6509C1A](https://kovan.etherscan.io/address/0x31CceDBc45179f17CfD34967680C6560b6509C1A)

### Remaining Work

- Deploy and configure Medianizer and Oracle Security Module smart contracts to Mainnet
- Push new relayer configuration with PAXG/USD Mainnet Medianizer smart contract address

### Summary

The chosen Data Model utilizes a mix of USDT, ETH, and direct-to-USD pairings to limit exposure to quote manipulation.

The PAXG token is a little bit problematic from an Oracle risk perspective, and this should be accounted for in the debt ceiling if it is onboarded. The issue stems from the volume being exceedingly small. The usual method of protecting from market manipulation is sample a diverse array of exchanges. However, in the case of PAXG, since the liquidity is so low, it becomes much more feasible for an attacker to manipulate enough markets at the same time to execute an Oracle attack. Therefore if Maker Governance insists on adding PAXG as a collateral-type the Oracle Team recommends an initial debt ceiling of not more than 1,000,000 in order to cap losses from a potential Oracle attack.