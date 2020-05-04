# MIP10c8: Subproposal for List of Oracle Data Models

## Glossary

- **Source:** The data source for the Oracle Feed
- **Asset Pair:** The asset pair is a price quote of the exchange rate for two different assets traded on the market.
- **Quorum:** The number of Feeds you need to reach a consensus on a price.
- **Feed Model:**  Model for how a Feed processes all sourced data into a singular price
- **Oracle Model:** Model for how an Oracle processes all Feed data into a singular price

## Template Spec

**Data Model Name:** < name >   
**Data Model Origin:** < link to MIP10c1/MIP10c7 governance vote>   
**Data Model Discussion:** < link to MIP10c1/MIP10c7 forum discussion >   
|      Source     |  Asset Pair   |  Quorum | Feed Model  | Oracle Model |
| :-------------- | :------------ | :-----: | :---------: | :----------: |
| < data source > |   < param >   |  < # >  |  < model >  |  < model >   |


## Oracle Data Model List

**Data Model Name:** BAT/USD Data Model   
**Data Model Origin:** N/A   
**Data Model Discussion** N/A   
|    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :----: | :---------: | :----------: |
|   Binance     |    BAT/BTC    |   13   |    Median   |    Median    |
|   Bittrex     |    BAT/BTC    |
|   Coinbase    |    BAT/USDC   |
|   Upbit       |    BAT/KRW    |

**Data Model Name:** BTC/USD Data Model   
**Data Model Origin:** [Governance Portal](https://vote.makerdao.com/polling-proposal/qmealoapl7e1yzabsobg9wckj3bs8hb8pgquc5jx7r8qpo)   
**Data Model Discussion:** [Maker Forum](https://forum.makerdao.com/t/proposal-btcusd-oracle-set-protocol-dydx/2011/14)   
|    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :----: | :---------: | :----------: |
|   Bitstamp    |    BTC/USD    |   13   |    Median   |    Median    |
|   Bittrex     |    BTC/USD    | 
|   Coinbase    |    BTC/USD    |
|   Gemini      |    BTC/USD    |
|   Kraken      |    BTC/USD    |

**Data Model Name:** ETH/BTC Data Model   
**Data Model Origin:** [Governance Portal](https://vote.makerdao.com/polling-proposal/qmeymkw5rhenzsevpvnhequj9glvq6n5buzapyrvestcdg)   
**Data Model Discussion:** [Maker Forum](https://forum.makerdao.com/t/proposal-ethbtc-oracle-tbtc/2010/10)   
|    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :----: | :---------: | :----------: |
|   Binance     |    ETH/BTC    |   13   |    Median   |    Median    |
|   BitFinex    |    ETH/BTC    |
|   Coinbase    |    ETH/BTC    |
|   Huobi       |    ETH/BTC    |
|   Kraken      |    ETH/BTC    |
|   Poloniex    |    ETH/BTC    | 

**Data Model Name:** ETH/USD Data Model   
**Data Model Origin:** N/A   
**Data Model Discussion:** N/A   
|    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :----: | :---------: | :----------: |
|   Binance     |    ETH/BTC    |   13   |    Median   |    Median    |
|   Bitstamp    |    ETH/USD    |
|   Coinbase    |    ETH/USD    |
|   Gemini      |    ETH/USD    |
|   Kraken      |    ETH/USD    |


**Data Model Name:** USDC/USD Data Model   
**Data Model Origin:** [Maker Governance](https://vote.makerdao.com/executive-proposal/proposal-for-collateral-onboarding-of-usdc)   
**Data Model Discussion:** [Maker Forum](https://forum.makerdao.com/t/proposal-for-collateral-onboarding-of-usdc/1588)   
|    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :------------ | :-----------: | :----: | :---------: | :----------: |
|      1        |      N/A      |   N/A  |     N/A     |      N/A     |
