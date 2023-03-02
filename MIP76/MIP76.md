# MIP76: Makershire Redux

## Preamble

```
MIP#: 76
Title: Makershire Redux
Author(s):  @Aes, @adcv, @SebVentures, @juanbug
Contributors: @luca_pro, @MakerMan 
Tags:
Status: Obsolete
Date Proposed: 2022-07-06
Date Ratified: 2022-08-22
Forum URL: https://forum.makerdao.com/t/mip76-makershire-redux/16400
Ratification Poll URL: https://vote.makerdao.com/polling/QmTYQskE
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## Sentence Summary

Makershire Redux is a 10M pool allocated across Liquidity Pools to support DAI liquidity/utility and earn yield.

## Paragraph Summary

Makershire Redux is a 10M pool allocated across Liquidity Pools to support DAI liquidity/utility and earn yield.

## Component Summary

**MIP76c1: Scope**
Describes the scope of the utilization of the pool.

**MIP76c2: Risk Profile**
Describes the risk profile of the strategies and allocations.

**MIP76c3: Operating Guidelines**
Lists the operating guidelines of the pool.

**MIP76c4: Funding Breakdown**
Quantifies the aggregate amount to be deployed through this pool.

**MIP76c5: Fund Allocation**
Specifies how the pool will be allocated, dictated by community feedback.

## Motivation

The Maker Protocol holds approximately $5.2B in stablecoins effectively earning zero yield. There are multiple efforts underway (off-chain and on-chain short-term bonds) to invest the majority of stablecoin exposure. 

Our aim is to begin generating yield on balance sheet assets and support DAI liquidity/utility, creating a new revenue stream for the protocol. We believe the future of finance and treasury management is on-chain and that now is the time to start formally researching, investigating, and implementing DeFi-native yield-generation strategies. Once we have the engineering bandwidth and performed the necessary level of due diligence, we will propose a method to quantify the desired level of exposure and an automation solution (e.g., D3M for Stable LPs, DSSKiln & G-UNI, etc).

The [first iteration of this proposal](https://forum.makerdao.com/t/mip55c3-sp4-adding-a-special-purpose-fund-makershire-hathaway/14643) raised the following concerns in the community:

- Usage of MIP47 protocol-owned multi-sig wallet considered inadequate.
- Flexibility of the SPF to re-allocate capital without explicit community approval.

After discussing with the Protocol Engineering Core Unit (PE-001) how this pool could be managed, it was confirmed that a protocol-owned smart contract solution could be used to avoid requiring a multisig. This could be functional for both L1 and L2 chains, depending on the needs of the community. Because of the assets that this contract would control, PE-001 recommends an audit.

## Specification

### MIP76c1: Scope

The 10M pool called Makershire Redux is employed to invest protocol capital to support DAI liquidity, utility, and diversify MakerDAO revenue streams:

- **Improve DAI liquidity/utility.**
  - E.g., bootstrap liquidity of DAI on L2s and other networks by providing liquidity and participating in DAI yield farms.
- **Providing Liquidity on DEXs for DAI/USDC, DAI/ETH, MKR/ETH, DAI/MKR etc.**
  - Experiment with strategies with the goal of automating them later.

#### Key Information

- Official Contact or Group Name: Makershire Redux
- Total Amount: 10M DAI
- Wallet Address: DS-Pause Proxy

### MIP76c2: Risk Profile

The Makershire Redux strategies are limited to DAI, USDC, USDP, MKR, and ETH (+stETH).

The allocations will be limited to ETH Mainnet, Arbitrum, Optimism, and potentially Polygon and Avalanche if the community desires.

The positions may require high concentration in situations where we seek to bootstrap liquidity

### MIP76c3: Operating Guidelines

- The MakerDAO community will determine the initial and ongoing allocation pool.
- Investment strategies will be implemented fully on-chain for maximum transparency.
- A real-time Dune dashboard will provide insight to the extent possible into the performance of the fund.
- Further improvements will be made on an ongoing basis to reporting quality and to increase the frequency of information availability.
- Monthly reporting will provide liquidity and yield metrics.
- Asset allocation changes can be made through Signal Requests followed by a three day on-chain vote ratification

### MIP76c4: Funding Breakdown

Makershire Redux is a 10m DAI pool. The total funding will be done in one step when this proposal is ratified. Twelve months following the ratification, all funds will be returned to the Surplus Buffer and a full post-mortem will be posted for the community to evaluate and decide if the project is worth expanding, maintaining, or shutting down.

### MIP76c5: Fund Allocation

The community [has voted](https://forum.makerdao.com/t/mip76-makershire-redux/16400/2) to support the Stable LP Allocation rather than the Volatile LP Allocation. A comparison of the two options is listed below for reference. 

**Stable LP Allocation as of 7.1.22**

![Stable](https://github.com/makerdao/mips/blob/master/MIP76/stable_lp.png)

> * Arbitrum fees are estimated as allocations would bootstrap liquidity
>   Yields estimated using Uniswap, yield aggregators (e.g., Coindix), and various Dune dashboards.

#### Comparing the Two Options

**Stable Only**

- Yield less correlated to market conditions
- Lower yields and de minimis risk of impermanent loss
- Less liquidity pools to choose from

**Stable & Volatile:** 

- Yield more correlated to market conditions
- Higher yields than Stable Only in a sideways or upward market. Will underperform in a downward trending market
- More liquidity pools to choose from

### Addendum

The Stable LP allocation [has received the majority of the community's support](https://forum.makerdao.com/t/mip76-makershire-redux/16400/2), therefore the Volatile LP Allocation has been moved to the addendum for reference. 

**Volatile LP Allocation as of 7.1.22**

![volatile](https://github.com/makerdao/mips/blob/master/MIP76/volatile_lp.png)

> * Arbitrum fees are estimated as allocations would bootstrap liquidity
>   Yields estimated using Uniswap, yield aggregators (e.g., Coindix), and various Dune dashboards.
