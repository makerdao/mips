# MIP10c7-SP2: Modify Data Models for BTC/USD, LINK/USD, MANA/USD, USDT/USD, YFI/USD Data Model

## Preamble

```
MIP10c7-SP#: 2
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Status: Obsolete
Date Proposed: 2022-05-17
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip10c7-sp1-modify-data-models-for-btc-usd-link-usd-mana-usd-usdt-usd-yfi-usd-data-model/15235
Extra: This subproposal has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1).
```

## Specification
***

### Abstract

This proposal, if ratified, would update the Oracle Data Models for BTC/USD, LINK/USD, MANA/USD, USDT/USD, and YFIUSD.

### Introduction

***

An Oracles susceptibility to market manipulation is linked to the quality of its Data Model. As markets and liquidity profiles evolve, it is important to periodically revisit Data Models for collateral assets to ensure they accurately reflect a comprehensive view of a token’s market. These changes seek to strengthen Oracle Data Models by removing data sources whose influence has waned, and replacing them with alternative sources with superior volume, liquidity, and preferred quote pairings.

### **Oracle Data Model(s)**
***

**BTC/USD Data Model**

| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| Binance US | BTC/USD | 13 | Median | Median |
| Bitstamp | BTC/USD |  |  |  |
| Coinbase | BTC/USD |  |  |  |
| FTX | BTC/USD |  |  |  |
| Gemini | BTC/USD |  |  |  |
| Kraken | BTC/USD |  |  |  |

**LINK/USD Data Model**.

| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| Binance | LINK/USDT | 13 | Median | Median |
| Bitstamp | LINK/USD |  |  |  |
| Coinbase | LINK/USD |  |  |  |
| FTX | LINK/USD |  |  |  |
| Gemini | LINK/USD |  |  |  |
| Kraken | LINK/USD |  |  |  |
| Uniswap V3 (ETH)  (0.3%) 0xa6cc3c2531fdaa6ae1a3ca84c2855806728693e8 | LINK/ETH |  |  |  |

**MANA/USD Data Model**

| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| Binance | MANA/USDT |  |  |  |
| Binance US | MANA/USD | 13 | Median | Median |
| Coinbase | MANA/USD |  |  |  |
| FTX | MANA/USD |  |  |  |
| OKX | MANA/USDT |  |  |  |
| Kraken | MANA/USD |  |  |  |
| Upbit | MANA/KRW |  |  |  |

**USDT/USD Data Model**

| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| Binance | BTC/USDT | 13 | Median | Median |
| BitFinex | USDT/USD |  |  |  |
| Coinbase | USDT/USD |  |  |  |
| FTX | USDT/USD |  |  |  |
| Kraken | USDT/USD |  |  |  |
| OKX | BTC/USDT |  |  |  |

**YFI/USD Data Model**

| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| Balancer V2 (ETH) 0x186084ff790c65088ba694df11758fae4943ee9e | YFI/WETH | 13 | Median | Median |
| Binance | YFI/USDT |  |  |  |
| Coinbase | YFI/USD |  |  |  |
| FTX | YFI/USD |  |  |  |
| Kraken | YFI/USD |  |  |  |
| OKX | YFI/USDT |  |  |  |
| Sushiswap V3 (ETH) 0x088ee5007c98a9677165d78dd2109ae4a3d04d0c | YFI/WETH |  |  |  |

### **Oracle Supporting Data Model(s)**
***
**ETH/USD Data Model**
| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| Binance | ETH/BTC |  |  |  |
| Bitstamp | ETH/USD | 13 | Median | Median |
| Coinbase | ETH/USD |  |  |  |
| FTX | ETH/USD |  |  |  |
| Gemini | ETH/USD |  |  |  |
| Kraken | ETH/USD |  |  |  |
| Uniswap V3 (ETH) (0.05%) 0x88e6a0c2ddd26feeb64f039a2c41296fcb3f5640 | ETH/USDC |  |  |  |

**WETH/USD Data Model**

| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| 1 | WETH/ETH |  | N/A | N/A |


**USDC/USD Data Model**

| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| 1 | USDC/USD |  | N/A | N/A |


**KRW/USD Data Model**

| Source | Asset Pair | Quorum | Feed Model | Oracle Model |
| --- | --- | --- | --- | --- |
| ExchangeRates | KRW/USD |  | N/A | N/A |

### **Supporting Evidence**
***

**BTC/USD**

- Removed Bittrex which is a shadow of its former self with no significant volume / liquidity
- Added FTX and Binance USD pairs
- Maintained entire Data Model against USD quote to avoid recursive definition with USDT and ETH

**LINK/USD**

- Changed Binance to query the USDT pairing which has the highest liquidity / volume market
- Removed Huobi to prevent outsized USDT influence
- Appended Uniswap V3 pairing against ETH with significant volume
- Appended Bitstamp which does decent volume against an attractive USD pairing

**MANA/USD**

- Removed Bittrex as source due to lack of liquidity / volume
- Changed Binance to query the USDT pairing which has superior liquidity / volume
- Changed Coinbase to query USD market
- Replaced Huobi USDT pairing with OKX which has superior liquidity / volume
- Appended USD pairings for Binance US, Kraken, and FTX

**USDT/USD**

- Changed FTX to query USD pairing instead of ETH due to higher liquidity, volume, and direct USD quote benefit
- Appended Coinbase pairing against USD
- Removed Huobi ETH pairing to minimize latency from recursive lookups since USDT is one of the most commonly used quote tokens.
- Avoiding adding Uniswap V3 ETH/USDT for now to minimize latency from recursive lookups since USDT is one of the most commonly used quote tokens.

**YFI/USD**

- Removed Gemini
- Removed Uniswap V3 due to poor liquidity and lack of volume
- Appended Kraken USD pairing
- Appended Balancer V2 YFI/WETH, low volume but high liquidity
- Appended Sushiswap V3 YFI/WETH, low volume but high liquidity

### Summary
***

The changes to the Data Models are centered around the philosophy of:

- maximizing the amount of capital a market manipulator would need to deploy to manipulate a median
- including USDT pairs for price-discovery, while minimizing impact of USDT failure
- preferring USD pairs whenever possible
- no reuse of exchanges in a Data Model to mitigate the impact of a rogue exchange operator
- avoiding inclusion of exchanges with reputation for wash trading unless absolutely necessary
- AMMs with wide-band liquidity provision are more capital intensive and risky for 3rd parties to manipulate
- minimize recursive queries between Data Models as much as possible

### **Oracle Address(es)**
***

BTC/USD Medianizer - [0xe0F30cb149fAADC7247E953746Be9BbBB6B5751f](https://etherscan.io/address/0xe0f30cb149faadc7247e953746be9bbbb6b5751f)

BTC/USD Oracle Security Module - [0xf185d0682d50819263941e5f4EacC763CC5C6C42](https://etherscan.io/address/0xf185d0682d50819263941e5f4eacc763cc5c6c42)

LINK/USD Medianizer - [0xbAd4212d73561B240f10C56F27e6D9608963f17b](https://etherscan.io/address/0xbad4212d73561b240f10c56f27e6d9608963f17b)

LINK/USD Oracle Security Module - [0x9B0C694C6939b5EA9584e9b61C7815E8d97D9cC7](https://etherscan.io/address/0x9b0c694c6939b5ea9584e9b61c7815e8d97d9cc7)

MANA/USD Medianizer - [0x681c4F8f69cF68852BAd092086ffEaB31F5B812c](https://etherscan.io/address/0x681c4f8f69cf68852bad092086ffeab31f5b812c)

MANA/USD Oracle Security Module - [0x8067259EA630601f319FccE477977E55C6078C13](https://etherscan.io/address/0x8067259ea630601f319fcce477977e55c6078c13)

YFI/USD Medianizer - [0x89AC26C0aFCB28EC55B6CD2F6b7DAD867Fa24639](https://etherscan.io/address/0x89ac26c0afcb28ec55b6cd2f6b7dad867fa24639)

YFI/USD Oracle Security Module - [0x5F122465bCf86F45922036970Be6DD7F58820214](https://etherscan.io/address/0x5f122465bcf86f45922036970be6dd7f58820214)

### Changelog
***

- Updated BTC/USD Data Model
- Updated LINK/USD Data Model
- Updated MANA/USD Data Model
- Updated USDT/USD Data Model
- Updated YFI/USD Data Model
