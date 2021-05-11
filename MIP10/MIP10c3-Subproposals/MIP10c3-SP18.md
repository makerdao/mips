# MIP10c3-SP18: Subproposal to Onboard the UNI-V2-DAI-ETH/USD Oracle

## Preamble
```
MIP10c3-SP#: 18
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-12-05
Date Ratified:
```

## Sentence Summary
MIP10c3-SP18 onboards the UNI-V2-DAI-ETH/USD Oracle.

## Specification

### Introduction

This Oracle would provide the UNI-V2-DAI-ETH/USD price as part of the collateral onboarding process for the UNI-V2-DAI-ETH LP token.

### Oracle Data Model 

A smart contract utilizing Uniswap primitives and liquidity reserves to calculate the price of a Uniswap Liquidity Provider (LP) token. 
The reserves of the Uniswap pool, and the supply of the Uniswap LP token are used as inputs to the model. This model utilizes MakerDAO Oracles to price the underlying assets.

This model utilizes the following base assumptions:

(1) `Invariant k = reserve_x * reserve_y`

(2) `reserve_x * price_x = reserve_y * price_y` (only holds true at steady-state)

Combining (1) and (2) allows us to derive the formulas for calculating the "normalized" reserve balances of the underlying assets given the invariant k and prices of the underlying assets.

(3) `reserve_x = sqrt(k * price_y / price_x)`

(4) `reserve_y = sqrt*(k  * price_x / price_y)`

Alternatively given one calculated normalized reserve, one can calculate the other using a mutation of (1).
This is useful for optimizing gas since calculating the square root is an expensive operation.

(5) `reserve_x = k / reserve_y`

(6) `reserve_y = k / reserve_x`

Once the normalized reserve balances have been calculated the price of the LP token can be derived:

(7) `price_lp = ( (reserve_x * price_x) + (reserve_y * price_y) ) / supply_lp`

Substitute of (3), (4) and (7) gives us the following model for calculating the price of a Uniswap V2 LP token:

(8) `price_lp = ( (sqrt(k * price_y / price_x) * price_x) + (sqrt(k * price_x / price_y) * price_y) ) / supply_lp`


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

 **DAI/USD (canonical)**

    |    Source     |  Asset Pair   |  Feed Model  |
    | :------------ | :------------ | :----------: | 
    |      1        |    DAI/USD    |   constant   |


### Oracle Address
- Mainnet - UniV2LpOracle - TBD
    
### Supported Tools
UniV2LpOracle - [Source Code](https://github.com/makerdao/univ2-lp-oracle/blob/master/src/Univ2LpOracle.sol)
UniV2LpOracle - [Tests](https://github.com/makerdao/univ2-lp-oracle/blob/master/src/Univ2LpOracle.t.sol)

### Remaining Work

- Finish internal reviews of smart contract code.
    - Currently pending incomplete PR on `formatting` branch
- Update `MegaPoker` to `poke` UniV2LpOracle

### Summary

This is a bespoke Oracle smart contract for determining the price of a Uniswap V2 LP token. This same contract can be used to generate an Uniswap LP Token Oracle for any Uniswap V2 pair so long as Maker Oracles are provided for the underlying assets in the pool. Deploying any new smart-contract code into production always comes with risk. As we've seen with the majority of DeFi exploits over the past year, Oracles are often heavily targeted. Deploying new Oracle smart contracts into production needs to be approached with an abundance of caution. At the same time, the potential of LP tokens to generate Dai is significant given that they enable Uniswap Liquidity Providers to leverage LP rewards. Therefore the Oracle Domain Team is recommending that we onboard Uniswap LP tokens as collateral using these new Oracle smart contract with the condition that we severely limit the debt ceiling initially. Over time as the community's confidence in the new contract grows the debt ceiling can be steadily increased. Getting an audit of the code would be highly desirable, with the understanding that any green light from an audit would not include the underlying Uniswap Protocol in scope.

The decision on debt ceiling is ultimately up to the Risk Domain Team, but the Oracle Domain Team is recommending an initial debt ceiling of 3M Dai given the enhanced Oracle risk.