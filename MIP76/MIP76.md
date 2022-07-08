# MIP76: Makershire Redux

## Preamble

```
MIP: 76
Author(s):  @Aes, @adcv, @SebVentures, @juanbug
Contributors: @luca_pro, @MakerMan 
Tags:
Status: RFC
Date Proposed: 2022-07-06
Date Ratified: N/A
Amount Requested: 10M DAI
Recipient Address: DS-Pause Proxy
Forum URL:
```

## Sentence Summary
Makershire Redux will be a 10M pool allocated across Liquidity Pools to support DAI liquidity/utility and earn yield. 

## Motivation
The Maker Protocol holds approximately $5.2B in stablecoins effectively earning zero yield. There are multiple efforts underway (off-chain and on-chain short-term bonds) to invest the majority of stablecoin exposure. 

Our aim is to begin generating yield on balance sheet assets and support DAI liquidity/utility, creating a new revenue stream for the protocol. We believe the future of finance and treasury management is on-chain and that now is the time to start formally researching, investigating, and implementing DeFi-native yield-generation strategies. Once we have the engineering bandwidth and performed the necessary level of due diligence, we will propose a method to quantify the desired level of exposure and an automation solution (i.e. D3M for Stable LPs, DSSKiln & G-UNI, etc).

## Scope 

Invest protocol capital to support DAI liquidity, utility, and diversify MakerDAO revenue streams.

- Improve DAI liquidity/utility. For example:
    - Bootstrap liquidity of DAI on L2s and other networks by providing liquidity and participating in DAI yield farms
- Providing Liquidity on DEXs for DAI/USDC, DAI/ETH, MKR/ETH, DAI/MKR etc.
    - Experiment with strategies with the goal of automating them later.

### Risk profile
- Strategies are limited to DAI, USDC, USDP, MKR, and ETH (+stETH).
- Positions may require high concentration in situations where we seek to bootstrap liquidity
- Allocations will be limited to ETH Mainnet, Arbitrum, Optimism, and potentially Polygon and Avalanche if the community desires

### Operating Guidelines
- MakerDAO community will determine the initial and ongoing allocation pool
- Investment strategies will be implemented fully on-chain for maximum transparency
- A real-time Dune dashboard will provide insight to the extent possible into the performance of the fund
- Further improvements will be made on an ongoing basis to reporting quality and to increase the frequency of information availability
- Monthly reporting will provide liquidity and yield metrics

## Funding Breakdown
- The total funding will be done in one step when this proposal is approved
- 12 months following the approval of the proposal, all funds will be returned to the Surplus Buffer and a full post-mortem will be posted for the community to evaluate and decide if the project is worth expanding, maintaining, or shutting down.

```
Official Contact or Group Name: Makershire Redux
Contact Email/Handle: N/A
Multisignature Wallet Management: N/A
Date Added: 2022-07-06
Total Amount: 10M DAI
Wallet Address: DS-Pause Proxy
Comptroller signers: N/A
Ratification Poll URL:
Reference: [Adding a Special Purpose Fund Makershire Hathaway](https://forum.makerdao.com/t/mip55c3-sp4-adding-a-special-purpose-fund-makershire-hathaway/14643)
```

### Prior Makershire Hathaway SPF Concerns:
- Usage of MIP47 protocol-owned multi-sig wallet considered inadequate
- Flexibility of the SPF to re-allocate capital without explicit community approval


After discussing how this pool could be managed with @PECU, it was confirmed that a protocol-owned smart contract solution could be used to avoid requiring a multisig. This could be functional for both L1 and L2 chains depending on the needs of the community. Because of the assets that this contract would control, PECU recommends an audit.  


### SPF Allocation

The two options for providing liquidty are stable LPs and volatile LPs. After feedback from various community members, we are proposing the below two options as initial allocations that can be adjusted, if necessary, based on further community input. 

### Stable LP Allocation as of 7.1.22

![](https://github.com/makerdao/mips/blob/master/MIP76/stable_lp.png)

### Volatile LP Allocation as of 7.1.22

![](https://github.com/makerdao/mips/blob/master/MIP76/volatile_lp.png)

*Arbitrum fees are estimated as allocations would bootstrap liquidity
Yields estimated using Uniswap, yield aggregators (i.e. Coindix), and various Dune dashboards.

### Comparing the two options:

**Stable Only:**
- Yield less correlated to market conditions
- Lower yields and de minimis risk of impermanent loss
- Less liquidity pools to choose from

**Stable & Volatile:** 
- Yield more correlated to market conditions
- Higher yields than Stable Only in a sideways or upward market. Will underperform in a downward trending market
- More liquidity pools to choose from

If this MIP is approved, the strategy and allocation will be voted on at a future date prior to implementation. We look forward to an engaging RFC period and continued community feedback on the revised Makershire proposal. Thank you.
