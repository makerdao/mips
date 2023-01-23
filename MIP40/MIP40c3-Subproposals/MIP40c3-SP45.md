# MIP40c3-SP45: Modify Core Unit Budget, ORA-001 (Oracle Gas Costs)

## Preamble

```
MIP40c3-SP#: 45
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Tags: core-unit, cu-ora-001, budget
Status: Obsolete
Date Proposed: 2021-11-09
Date Ratified: 2022-01-24
Forum URL:https://forum.makerdao.com/t/mip40c3-sp45-modify-core-unit-budget-ora-001-oracle-gas-costs/
Ratification Poll URL: https://vote.makerdao.com/polling/QmRT9363
```

## Sentence Summary

MIP40c3-SP45 appends Maker Oracle gas costs to the Oracle Core Unit ORA-001 budget for August 1 2021 through end of March 2022.

## Paragraph Summary

MIP40c3-SP45 appends Maker Oracle gas costs to the Oracle Core Unit ORA-001 budget for August 1 2021 through end of March 2022. The Maker Oracle gas cost budget is separate from the general operations budget of the Oracle Core Unit. Unlike the Operations budget, which is renewed annually, the Oracle gas costs budget will be renewed every three months. This first subproposal instance of the Oracle gas cost funding requests also includes one-time payments to fund an emergency multi-sig as well as a repayment to the Maker Foundation for fronting Oracle gas costs since August 1st, 2021.

## Specification

### Motivation

To finalize the transition of the Oracle Core Unit from the Maker Foundation, the DAO must shoulder the Ethereum network transaction costs consumed by the Maker Oracles.

Constructing a fixed budget for Oracle gas costs is difficult due to the multivariable nature of the problem, and the consequences should the budget be insufficient.

This MIP details quantitive observations with respect to historic costs. It introduces a multitude of factors that determine realized costs. Finally, it presents an implementation of a comprehensive framework to deduce a budget proposal for the Maker Governance community to consider.

### Core Unit ID

ORA-001

### Background

The original [Oracle Core Unit budget](https://mips.makerdao.com/mips/details/MIP40c3SP15) filed in May 2021 explicitly stated:

> It should be noted that the gas costs for operating Oracles are not included in this budget and will be requested in a later subproposal. These costs scale linearly with the gas-price of the Ethereum Network and are significant, variable, and difficult to model.

At the time, the Oracle Core Unit lacked sophisticated tooling to achieve effective granularity for tracking Oracle costs. This made it difficult to estimate a sufficient gas cost budget which wouldn't put the Oracles, and in turn the Maker Protocol, at risk of freezing up.

The Maker Foundation, despite its wind-down activities, very generously offered to front the Oracle gas costs to give the Oracle Core Unit sufficient time to compose a more sophisticated funding proposal to the Maker Governance community.

This agreement between the Maker Foundation and the Oracle Core Unit became effective in August 2021 and continues to this day.

---

### Factors which Affect Oracle Costs

#### Ethereum Gas Costs

The gas cost of the Ethereum network corresponds directly with the demand to transact on the Ethereum network. More transactions lead to more competition to get into a block.

This is expressed in a combination of a maximum base fee and a priority fee. The base fee is modulated by the Ethereum protocol to calibrate the amount of transactions in a block. If blocks are full, the base fee increases. If blocks are empty the base fee decreases. All transactions mined in a block regardless of their selected maximum base fee pay the base fee determined by the protocol. Unlike base fees which are burned, priority fees go to miners to serve as a bribe for inclusion in the block at the expense of other transactions that have a sufficient base fee but a lesser priority fee.

**Trading**

New users tend to become attracted to crypto when prices are rising as they have been the past year. This has led to an enormous increase in transaction demand on Ethereum (as well as other blockchains). Decentralized exchange activity has seen enormous growth and accounts for ~25% of daily gas on Ethereum at time of publishing.

**NFTs**

In particular the boom and mainstream adoption of NFTs has led to significant gas price spikes. When new NFTs are released, users who 'mint' can earn many multiples in profit. This leads to a race condition where every user is competing to get as many NFTs minted before they run out. Due to the high profit potential, users are willing to pay thousands of dollars in transaction costs. Operating Oracles during these intervals of time can quickly cost in an hour what is typically spent on Oracles in a day. Even outside of the gas spikes created by NFT minting events, NFTs as a baseline represent ~5% of daily gas at time of publishing. 

**Rollups**

While rollup activity has been fairly muted thus far, rapid adoption of rollup chains such as Optimism and Arbitrum could lead to upward pressure on Ethereum L1 gas costs as calldata for every L2 transaction must be recorded on L1.

#### Number of Oracles

The number of Oracles that need to be in operation scales linearly with the cumulative gas consumed. Key to creating a budget for Oracle gas costs will require forecasting what number of Oracles will be created in the future. This could come in the form of collateral onboarding or creating Oracles for customers and partners. Underestimating the amount of new collateral types that will be onboarded would lead to the Oracle Core Unit having to throttle collateral onboarding until additional budget could be ratified by Maker Governance.

#### The Number of Feeds for Quorum

Oracle Medianizers are configured with a parameter `bar` which is the number of Feeds necessary to reach consensus on a new canonical price. Increasing this threshold would increase the security of the Oracles by raising the bar for the number of Feeds that would need to be malicious. However, increasing the threshold for quorum also increases the amount of gas consumed as more calldata needs to be sent to and processed by the Medianizer smart contract.

This is different from the total number of Feeds, which has no effect by itself on the gas consumed by an Oracle.

#### Oracle Type

Collateral assets fall into different categories depending on their design. There is no one-size fits all Oracle solution for every asset. The Oracle Core Unit has designed different Oracle solutions to fill the DAOs demand to on-board different kinds of assets. 

These different Oracle solutions all have different costs, and even instances of a solution may have varying costs depending on the configuration and the asset in question.

In the majority of cases, a Feed-based Oracle consisting of a Medianizer smart contract, Oracle Security Module smart contract, and Spotter smart contract is applied. See the *Oracle Parameters* section below for a description of how different instances of this Oracle type may have different costs.

In the case of Uniswap V2 LP tokens, a bespoke Oracle was created which exclusively uses on-chain reserve data from the pools rather than sourcing it from the Feeds. This is more decentralized and slightly cheaper than a Feed-based Oracle.

A forthcoming Curve V2 LP Oracle currently being designed by Protocol Engineering Core Unit will add an additional Oracle solution to the mix with its own unique gas cost profile.


#### Oracle Parameters

Relayers can configured to update Medianizers under specific conditions. One of these conditions is a `spread` parameter. The spread is the percentage difference between the current value in the Oracle Medianizer smart contract and the fair market value of the asset the Oracle represents. 

Assets that the Maker Protocol has high risk-exposure to, such as ETH and BTC, tend to have lower spread parameters, while assets with lower risk-exposure tend to have higher spread parameters. Risk in this instance is typically viewed as a combination of debt ceiling and collateralization ratio, but may include other factors depending on the particular collateral asset in question.

An Oracle with a lower spread tends to update more frequently than one with a higher spread. This is not absolute due to different volatility profiles of assets, but is generally true. More frequent updates leads to a more expensive Oracles.

Another parameter is the `expiration`. This is how long an Oracle Medianizer isn't updated due to the spread condition not triggering. The `expiration` parameter exists to serve as a heartbeat for an Oracle. It is the way a smart contract on-chain can deduce whether an Oracle is online or offline. Lower expiration times may lead to more frequent Oracle updates, which increases Oracle costs.

### Quantitative Observations

The gas costs for Oracles can be deconstructed into four separate components:

1. Medianizer
2. Oracle Security Module
3. Uniswap V2 LP Oracle
4. Spotter

**The Medianizer** is the real-time price Oracle. It updates continuously and is triggered by a spread (price deviation between Medianizer and market price).

**The Oracle Security Module** consumes the Medianizer price and enacts a one-hour delay. It is updated at the top of every hour.

**The Uniswap V2 LP Oracle** is a bespoke Oracle which utilizes Uniswap pool reserves as well as Medianizers to price those reserves in order to compute the price of an LP token. Similar to the Oracle Security Module, it has a built-in hour-long delay function and is updated at the top of every hour.

**The Spotter** is part of the core Maker Protocol and reads prices from the Oracle Security Module and Uniswap LP Oracle so that they can be utilized by the Maker Protocol. They are typically poked in unison with the Oracle Security Module, but do not have to be.

##### Medianizer Gas Costs

**Medianizer Cumulative Gas Costs**

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP45/medianizer_cumulative_gas_costs.png)

*Range: August 1, 2021 - November 8, 2021
Source: Dune Analytics*

**Medianizer Distribution by Asset Pair**

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP45/medianizer_distribution_by_asset_pair.png)

*Range: August 1, 2021 - November 8, 2021
Source: Dune Analytics*

**Medianizer Cost by Asset Pair**

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP45/medianizer_cost_by_asset_pair.png)

*Range: August 1, 2021 - November 8, 2021
Source: Dune Analytics*

**Daily Gas Consumptions**

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP45/daily_gas_consumptions.png)

*Range: August 1, 2021 - November 8, 2021
Source: Dune Analytics*

##### Oracle Security Module Uniswap LP Oracle + Spotter Gas Costs

This includes cost of the Oracle Security Module, Uniswap V2 LP Oracle, and Spotter.

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP45/osm_uniswap_lp_oracle_spotter_gas_costs.png)

*Range: August 1, 2021 - November 8, 2021
Source: Dune Analytics*

**Daily Gas Consumption**

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP45/daily_gas_consumption.png)

*Range: August 1, 2021 - November 8, 2021
Source: Dune Analytics*

**Gas Distribution of OmegaPoker**

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP45/omegapoker_gas_distribution.png)

### Quantitative Analysis

This analysis uses the observed data and breaks it down into its components. It then reconstitutes the components into meaningful insights to gauge the annual cost per Oracle over a year. This should aid not only in planning how much to budget to maintain operation of the currently active Oracles but also allowing cost forecasting to support collateral onboarding activities.

The gas profile distribution for the OmegaPoker mapped to the observed gas consumed gives us the following information:

```
Oracle Security Modules - $331,019.22
Uniswap LP Oracles - $455,493.38
Spotter - $411,722.248
GUNI - $98,485.056
```

These are likely off by some degree due to the introduction of the MATIC and GUNI tokens during the sampling period. That is to say, the proportions are indicative of what we can expect going forward but may not be entirely accurate with respect to what has occurred since August 1st.

Spread out over 16 Oracle Security Modules, the individual cost of each OSM for time period T [08/01/21 to 11/08/21] is:

```
OSM Cost(T) = $331,019.22 / 16 =  $20,688.70

Extrapolating this over a year:
$20,688.70 * 365/100 
= $75,513.755
```

Uniswap V2 LP Oracle costs can be calculated by utilizing the proportion of the observed OmegaPoker costs that correspond to Uniswap V2 LP Oracles. Although there are currently 8 active LP Pairs, DAI-USDT and ETH-USDT were offboarded but still do factor into the observed costs. We'll use 9 as an approximation for our cost calculation. The cost to operate each Uniswap LP Oracle during the time Period T [08/01/21 to 11/08/21] is:

```
Uniswap V2 LP Oracle (T) = $455,493.38 / 9 = $50,610.3756

Extrapolating this over a year:
$50,610.37 * 365/100 
= $184,727.87
```

The cost per Spotter can be derived in a similar manner. However, in this case every ilk has its own Spotter, so even collateral types which share the same underlying Oracle (WBTC & renBTC) still have the Spotter cost component. Currently there are 26 different ilks. However, MATIC and GUNI were added relatively recently, so we'll use 25 as an approximation. Hence, the Spotter cost for time period T [08/01/21 to 11/08/21] is:

```
Spotter Cost(T) = $411,722.248 / 25 = $16,468.89

Extrapolating this over a year:
$16,468.89 * 365/100
= $60,111.45
```

So now we have all of the individual pieces of data we need to deduce the total Oracle cost of a particular collateral type.

A standard collateral type uses a Medianizer, Oracle Security Module, and Spotter.

Therefore, the standard Oracle cost is:

```
C = C_Medianizer + C_OSM + C_Spotter
```

Medianizer costs vary depending on how volatile an asset is in combination with what the spread sensitivity parameter on the Oracle is set to.

The estimated total annual cost of the ETH Oracle is:

```
C_Medianizer_ETH(T) = $53.529.23
C_Medianizer_ETH(1 year) = $53.529.23 * 365/100
                         = $195,381.69

C_ETH = $195,381.69 + $75,513.75 + $60,111.45
C_ETH = $331,006.89
```

The estimated total annual cost of the YFI Oracle is:

```
C_Medianizer_YFI(T) = $33,756.32
C_Medianizer_YFI(1 year) = $33,756.32 * 365/100
                         = $123,210.57

C_YFI = $123,210.57 + $75,513.75 + $60,111.45
C_YFI = $258,835.77
```

A Uniswap V2 LP collateral type uses a Uniswap V2 LP Oracle and a Spotter.

Therefore the annual Uniswap V2 LP Oracle cost is:

```
C = C_UNIV2LP + C_Spotter

  = $184,727.87 + $60,111.45
  = $244,839.32
```

So far only a single GUNI (Gelato Uniswap V3) vault has been added only very recently, so data is sparse. Preliminary gas profiling of the OmegaPoker shows that GUNI uses 7.2% of the gas per call. This is relative to the 8 Uniswap V2 vaults which collectively use 33.3% of the gas. This means a single Uniswap V2 vault uses 4.16% of the OmegaPoker gas consumption. Comparing those two figures, it becomes clear the GUNI Oracle is significantly more expensive than the Uniswap V2 Oracle. While imprecise, the following should serve as a decent approximation of the annual cost of a GUNI Oracle:

```
$184,727.87 / 4.16 = C_GUNI / 7.2
C_GUNI = $319.721.31 

C = C_GUNI + C_Spotter
  = $319,721.31 + $57,799.46
  = $377,520.77
```

Now that we have an annual breakdown of each Oracle types we can surmise that the following collateral types are currently unprofitable:

```
AAVE, BAL, COMP, renBTC, MANA, UNI, MATIC, WBTC-DAI, DAI-USDC, UNI-ETH, and stETH 

(though the last one is purely due to DC limitations).
```

Estimated total annual Oracle cost:

```
($614,846 + $1,367,848) * 365/100 
= $7,236,833.10
```

However, these estimates are not accounting for gas costs that may rise. In fact, gas costs have risen dramatically over the course of the sampling period.

![](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP45/rising_gas_costs.png)

*Range: August 10, 2021 - November 10, 2021
source YCharts*

The average gas price on 8/10/21 was 65.22.
The average gas price on 11/10/21 was 173.90.

This makes it extremely difficult to predict what Oracle costs may be in the future, as gas prices could rise rapidly.

### Budget Breakdown

It must be internalized that the consequences of running out of funding for Oracle gas costs are the immediate halting of the Maker Oracles, and subsequently the disabling of liquidations and borrowing in the Maker Protocol. This leaves the Maker Protocol vulnerable to price risk of the underlying collateral and in extreme circumstances could threaten the Dai peg.

Therefore, it is vital that a defense-by-layers approach is taken with regards to Oracle funding. Factors that can drive up costs must be assumed with a pessimistic mindset. The penalty for overshooting is merely capital inefficiency while undershooting can have dire consequences.

The Oracle Core Unit is recommending that MakerDAO budgets Oracles gas costs on a three-month rolling basis. Costs exhibit more determinism over shorter periods of time.

Based on the observed data, the cost to operate the currently active Oracles for three months is:

```
3-month Oracles Gas Cost = Annual Oracles Gas Cost * 90 days / 365 days
3-month Oracle Gas Cost = $7,236,833.10 * 90/365
3-month Oracle Gas Cost = = $1,784,424.6
```

New Oracles that the Maker Protocol plans to create during that time period as a part of collateral onboarding need to be factored in. Using the previously established values as a guide we will estimate that each Oracle costs $295,000 annually (average of ETH and YFI Oracle cost). Since all new Oracles won't be onboarded all at once but instead continuously through the 3-month period, the costs are halved. Five new Oracles over a 3-month period then cost:

```
Additional 3-month Gas Cost = Annual Gas Cost per Oracle * Estimated Number of New Oracles * 90/365 / 2
Additional 3-month Gas Cost = $295,000 * 5 * 90/365 / 2
Additional 3-month Gas Cost = $181,849.32
```

Making a pessimistic assumption that the Ethereum average gas costs are doubled during that time period leads us to a figure of:

```
Risk-Adjusted 3-month Oracles Gas Cost = (3-month Oracles Gas Cost + Additional 3-month Gas Cost) * 2 
Risk-Adjusted 3-month Oracles Gas Cost = ($1,784,424.60 + $181,849.32) * 2 
Risk-Adjusted 3-month Oracles Gas Cost = $3,932,547.84
```

```
Oracle Emergency Funds = 3-month Oracles Gas Cost + Additional 3-month Gas Cost * 6 weeks / 52 weeks pear year
Oracle Emergency Funds = $1,784,424.60 + $181,849.32 * 6/52
Oracle Emergency Funds = $1,805,407.21
```

This budget is expected to be voted on in December 2021. The Maker Foundation would front Oracle gas costs until the OCU has access to the requested funds. This means the refund would approximately cover the range 08/01/21 to 12/31/21. If the current rate of spending holds, this would be approximately:

```
Maker Foundation Refund = Annual Oracles Gas Cost * Days Since August 1st, 2021 / 365 Days per Year
Maker Foundation Refund = $7,236,833.10 * 153/365
Maker Foundation Refund = ~$3,033,522
```

**Budget Contents:**

- Oracle gas cost funding through end of March 2022
- Funding for 5 additional Oracles to support collateral onboarding activities through end of March 2022.
- Safeguard adjusted for average gas price doubling during that period
- Refund the Maker Foundation for gas costs incurred since August 1, 2021.
- An emergency fund which contains a further 6 weeks worth of Oracle gas costs.


| Item     | Cost |
| -------- | -------- |
| Oracle Gas Cost (01/01/22 - 03/31/22) | $3,932,547.84  |
| Oracle Emergency Fund | $1,805,407.21 |
| Maker Foundation Refund ~(8/1/21 - 12/31/21) | $3,033,522 |
| | |
| Total | $8,771,477.05 |

*The only recurring item of this budget will be the 3-month Oracle Gas Cost. The Foundation refund is a one-time expense, and the Emergency Fund only need to be funded once and topped up if ever utilized. Realized gas costs are likely to be lower than what is budgeted. This is by design.*

### Budget Implementation

#### Multi-Sig Management

Funds will be split up into two multi-sig wallets that are separate from the Oracle Core Unit Operations Multi-sigs and Oracle Core Unit Emergency Multi-sig.

**Multisig #1 = Oracle Gas Costs**

Multisig address = 0x2B6180b413511ce6e3DA967Ec503b2Cc19B78Db6

```
Signers = 6
Quorum = 3

Signers:
Nik - Oracle Core Unit Faciliator - @NikKunkel
0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c

Marc-Andre - OCU Engineering Team Lead - @marcandu
0xf63EfEE2A663b04cB5a09De6E3EB910d8442131D

Simon - Tech-Ops Core Unit Co-Facilitator - @simonkp
0xA60C77efe539166F1C4a6cE2512F3cBF451fFbc5

Dumitru Zavrotschi - Tech-Ops Core Unit Co-Facilitator - @dumitru
0xcebd4Fa8c2c6014F2F7924De3Ae617BdD42ca25B

Primoz - Risk Core Unit Facilitator - @doopson 
0x5d67d5B1fC7EF4bfF31967bE2D2d7b9323c1521c

PunchIt Inc. - Protocol Engineering Core Contributor - @cmooney
0xEeF3026eF864C9398c008195E65d16D9cb42a512
```

**Multisig #2 = Oracle Emergency Fund**

Multisig Address = 0x1A5B692029b157df517b7d21a32c8490b8692b0f

```
Signers = 3
Quorum = 2

Signers:
Nik - Oracle Core Unit Faciliator - @NikKunkel
0xB4CFf22c0d5a015460Fd503a9328Bf00a24f686c

Marc-Andre - OCU Engineering Team Lead - @marcandu
0xf63EfEE2A663b04cB5a09De6E3EB910d8442131D

Simon - Tech-Ops Core Unit - 
0xA60C77efe539166F1C4a6cE2512F3cBF451fFbc5
```

The emergency multi-sig has a lower signing threshold than the general multi-sig because of the need to ensure that in an emergency funds are available to fuel the Oracles. Unlike people which can convinced with rhetoric that their paychecks will be late, Oracles are smart-contract which are much more resolute. You either pay them, and they do what you want, or you don't pay them and they will do nothing. Therefore, it's imperative that the emergency fund is easy to access and not susceptible to uncommon but high impact scenarios such as "multiple signers: on a plane, asleep, off-the-grid, generally unreachable, bus-factor, etc."

The multi-sigs will be deployed and the smart contract addresses inserted into this MIP after the Maker Governance community has had the chance to give feedback and ratify the proposed configuration in a Polling Vote.

The one-time Maker Foundation refund should be sent to the Oracle Gas Costs multi-sig so an exact amount can be forwarded to the Maker Foundation.

#### Fund Distribution

Unlike core unit operational funds, which are streamed continuously, Oracle gas cost funding should be distributed as a lump-sum payment. This is for several reasons:

1. The Maker Foundation refund needs to be paid in full so the Foundation can close its books as part of its winddown.
2. Gas costs are hyper volatitle, meaning Oracles expense outflows can happen in bursts many times the size of a typical day. Gas costs on short-time intervals are therefore not predictable and only average over long time intervals.

Upon ratification of this subproposal 6,966,069.84 DAI will be transferred to 0x2B6180b413511ce6e3DA967Ec503b2Cc19B78Db6 on 2021-01-28

Upon ratification of this subproposal 1,805,407.21 DAI will be transferred to 0x1A5B692029b157df517b7d21a32c8490b8692b0f on 2021-01-28

#### Fund Management

In order to bound Oracle gas costs and in an effort to make them more deterministic, the Oracle Core Unit will engage in inventory management strategies with its funding. Initially these management strategies will bias towards extreme conservatism until the Oracle Core Unit builds up the necessary expertise to execute on more advanced strategies.

These may include but are not limited to:

- Diversify some or all of the funds into ETH in order to hedge against increases in the price of ETH
- Purchase gas calls/futures when secure liquid markets become available in order to hedge increases in gas
- Purchase ETH calls/futures to hedge against increases in the price of ETH

#### Fund Rollover

Towards the end of the 3-month cycle, the Oracle Core Unit will submit a new budget proposal for the next 3-month cycle. Any leftover funds from the previous cycle will be rolled over and deducted from the budget distribution for the next cycle.

To illustrate the above, if there are $1M worth of assets (combination of DAI and ETH) leftover and the budget for the new 3-month cycle requests $2M, then the Maker Protocol would only distribute $1M Dai. Prices used to value assets should be the Oracle price on the day the Executive Vote is created.

