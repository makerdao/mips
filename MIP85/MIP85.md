# MIP85: LDO-to-MKR OTC Swap

## Preamble

```
MIP#: 85
Title: LDO-to-MKR OTC Swap
Author(s): @rune
Contributors: @juan, @retro
Tags: endgame
Type:
Status: Withdrawn
Date Proposed: 2022-09-07
Date Ratified: <yyyy-mm-dd>
Dependencies:
Replaces:
Forum URL: https://forum.makerdao.com/t/mipxx-ldo-to-mkr-otc-swap/17714
Ratification Poll URL:
Extra: This MIP has been [withdrawn by its author](https://forum.makerdao.com/t/mip85-ldo-to-mkr-otc-swap/17714/38).
```

## Sentence Summary

MIP85 is an **optional** Endgame Launch Plan MIP that provides the DAO an opportunity to trade MKR for LDO, at a discount, to jumpstart the Protocol Owned Vault Emulation.

## Paragraph Summary

This MIP is completely optional, if it is rejected it doesn’t impact the approval of the Endgame Plan. The proposal is to swap 20 million LDO from Rune's holding company, Calteram Holdings for MKR in the Maker Pause Proxy at a large discount in Maker’s favor. The LDO was originally obtained as early-stage investor in Lido.

## Component Summary

**MIP85c1: OTC Swap Party Definitions**
Defines the parties involved in the OTC swap.

**MIP85c2: OTC Swap Commitment**
Defines the commitment of each party involved in the OTC swap.

**MIP85c3: OTC Swap Process**
Defines the process for the OTC swap.

**MIP85c4: OTC Swap Exchange Rate** Defines how the Exchange Rate will be used in the OTC swap.

**MIP85c5: OTC Swap Exchange Rate Calculation**
Defines how the Exchange Rate will be calculated for the OTC swap.

**MIP85c6: MIP4 Amendment Block Clause & Automatic Depreciation** Blocks any Governance actions from revoking or modifying the terms of the OTC swap if the MIP is ratified.

## Motivation

LDO has 3-5x the liquidity of MKR and is currently one of hottest tokens among smart money, and it is extremely hard to get ahold of large allocations.

Maker owning a large LDO stake helps make the economic dynamics of the early Endgame Plan come full circle by giving Maker exposure to the increased adoption of Lido Staked ETH, and provides the Protocol Owned Vault Emulation a lot of starting collateral to build a larger position, to help increase the decentralization of Dai.

## Specification / Proposal Details

### MIP85c1: OTC Swap Party Definitions

This MIP establishes an OTC deal between MakerDAO and Calteram Holdings.

### MIP85c2: OTC Swap Commitment

If the MIP is approved, MakerDAO Governance commits to send MKR from the Pause Proxy after receiving LDO from Calteram Holdings to a predetermined Ethereum Address.

### MIP85c3: OTC Swap Process

The transfers will be in two rounds, with the first swap of about 75% of the amount to be done immediately following the successful vote, and the second swap of what remains of the 20000000 LDO happening around December 17, 2022 (due to remaining vesting periods).

The exchange rate will be the same in both transactions, and will follow the MIP85c5.

### MIP85c4: OTC Swap Exchange Rate

The exact rate of the swap will be locked at the moment the vote ends successfully. It will be determined based on the formula in MIP85c5 that gives a higher discount to Maker if MKR is lower relative to LDO, and a lower discount if MKR is higher relative to LDO.

### MIP85c5: OTC Swap Exchange Rate Calculation

The exchange rate is calculated by looking at the official exchange rate of LDO per MKR on [Coingecko](https://www.coingecko.com/) at the moment the MIP is approved, and then applying a bonus to the amount of LDO per MKR according to the formula below. The result determines how much MKR Maker Governance must return for LDO received following the passing of this MIP.

* Increase to LDO per MKR exchange rate based on relative exchange rates:
    * MKR/LDO 751+ = +10%
    * MKR/LDO 701-750 = +15%
    * MKR/LDO 651-700 = +20%
    * MKR/LDO 601-650 = +25%
    * MKR/LDO 551-600 = +30%
    * MKR/LDO 501-550 = +35%
    * MKR/LDO 451-500 = +41%
    * MKR/LDO 401-450 = +47%
    * MKR/LDO 351-400 = +53%
    * MKR/LDO 301-350 = +59%
    * MKR/LDO 251-300 = +65%
    * MKR/LDO 201-250 = +71%
    * MKR/LDO 151-200 = +77%
    * MKR/LDO 101-150 = +83%
    * MKR/LDO 51-100 = +90%
    * MKR/LDO 1-50 = +100%
