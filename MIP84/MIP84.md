# MIP84: Activate Protocol-Owned Vault Emulation

## Preamble

```
MIP#: 84
Title: Activate Protocol-Owned Vault Emulation
Author(s): @rune
Contributors: @juan, @retro
Tags: template
Type: MIP Type
Status: RFC
Date Proposed: 2022-09-07
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: n/a
Forum URL: https://forum.makerdao.com/t/mipxx-activate-protocol-owned-vault-emulation/17713
```

## Sentence Summary

This MIP activates the preliminary implementation of the Protocol-Owned Vault.

## Paragraph Summary

This MIP activates the preliminary implementation of the Protocol-Owned Vault, using the Protocol-Owned Vault Emulation (POVE) approach which uses a non-standard configuration of the existing Maker Protocol to achieve the effects of a Protocol-Owned Vault.

## Component Summary

**MIP84c1: Protocol-Owned Vault Emulation Definitions**
Defines elements of the POVE.

**MIP84c2: Protocol-Owned Vault Administrative Mandate**
Defines the powers of the administrative team(s) on the POVE.

**MIP84c3: Protocol-Owned Vault Acceptable Collateral**
Defines acceptable collateral and their use within the POVE.

**MIP84c4: Protocol-Owned Vault Starting Collateral**
Defines how the POVE collateral is to be bootstrapped.

**MIP84c5: The Collateralization Ratio of the Protocol-Owned Vault Emulation**
Defines the POVE Debt Ceiling calculation.

**MIP84c6: Modify the Collateralization Ratio of the Protocol-Owned Vault Emulation**
Defines the ability to modify the POVE Debt Ceiling calculation.

**MIP84c7: Daily Collateral Purchase Rate** Defines the daily rate at which the protocol will purchase POVE collateral.

**MIP84c8: Modify Daily Collateral Purchase Rate**
Defines the ability to modify the Daily Collateral Purchase Rate.

**MIP84c9: Protocol Surplus and the Emulated Surplus Buffer Upper Limit** Defines the relationship between the protocol's surplus and the POVE's buffer.

**MIP84c10: Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling**
Defines a virtual maximum for collateral assets in the POVE.

**MIP84c11: Modify Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling**
Defines the ability to modify the POVEC's Virtual Price Ceiling.

## Motivation

The Protocol-Owned Vault is a key element of the Endgame Plan that helps achieve real resilience and decentralization by increasing the amount of Dai backed by Staked ETH. The Protocol-Owned Vault Emulation is an approach to emulate the outcome of operating a Protocol-Owned Vault, but only using existing features of the Maker Protocol as it exists today. This is achieved by using the ability to set a negative lower limit to the surplus buffer in order to emulate a vault with an available debt ceiling, and using the Pause Proxy and dss-kiln to accumulate collateral assets.

## Specification / Proposal Details

### MIP84c1: Protocol-Owned Vault Emulation Definitions

This MIP will activate the Protocol-Owned Vault Emulation (POVE). It is an approach to emulate the outcome of operating a Protocol-Owned Vault, but only using existing features of the Maker Protocol as it exists today. This is achieved by using the ability to set a negative lower limit to the surplus buffer in order to emulate a vault with an available debt ceiling, and using the Pause Proxy and dss-kiln to accumulate collateral assets.

**Protocol-Owned Vault Emulation Collateral (POVEC)** is any Lido Staked ETH, EtherDai, Dai or LDO held in the Pause Proxy. It is used to calculate the amount of Dai Maker can use to accumulate more POVEC.

**Protocol-Owned Vault Emulation Debt Ceiling (POVEDC)** is the amount of debt that Maker can incur based on the value of the POVEC and the target overcollateralization defined in this MIP. The lower limit of the Surplus Buffer is set to be equal to the POVEDC, allowing Maker to draw Dai from the Surplus Buffer in the same way as a vault user can draw Dai from a Maker Vault with available Debt Ceiling.

**Emulated Surplus Buffer Upper Limit** is a quantity of Dai above the current surplus buffer lower limit.

**Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling** is a set price for the POVE's Collateral, used to determine the POVEDC.

### MIP84c2: Protocol-Owned Vault Administrative Mandate

The POVE will operate based on manual processes defined in this MIP that are controlled directly by MKR holders using Executive Votes. The Risk Core Unit is mandated with following these pre-defined processes, making parameter adjustment proposals, and is given the emergency powers to de-risk POVE activity if it becomes necessary, including the immediate cessation of additional collateral purchases. This can be done through weekly governance polls, or if necessary be bundled directly into weekly or emergency Executive Votes.

The POVE is exclusively controlled and owned by Maker Governance, and no third-party, individual, multisig or other point of control has any technical access to the POVE or its assets in any way.

### MIP84c3: Protocol-Owned Vault Acceptable Collateral

The POVE is able to use Lido Staked ETH, LDO and EtherDai as collateral assets (POVEC) for the purposes of calculating the Protocol-Owned Vault Emulation Debt Ceiling (POVEDC), which is used to define the lower limit on the Surplus Buffer and determine whether Dai can be transferred from the Surplus Buffer to the Pause Proxy.

Dai that has been transferred to the Pause Proxy from POVEDC or as starting collateral, that has not yet converted to Lido Staked ETH or EtherDai, also counts as POVEC.

Available POVEDC can only be used to accumulate Lido Staked ETH. When EtherDai becomes available, the POVE must convert all of its existing Lido Staked ETH to EtherDai, and from then on can only use its available POVEDC to accumulate more EtherDai.

### MIP84c4: Protocol-Owned Vault Starting Collateral

The POVE will be bootstrapped with 40 million Dai that will be used to acquire the initial Lido Staked ETH collateral. This Dai is directly transferred from the Surplus Buffer to the Pause Proxy.

If [MIP85: LDO to MKR OTC Swap](https://forum.makerdao.com/t/mipxx-ldo-to-mkr-otc-swap/17714) is approved, then the POVE starting collateral will be increased by the market value of the LDO calculated at the time the proposal is passed. This is used to calculate the POVE Debt Ceiling, as described below in MIP84c5.

### MIP84c5: The Collateralization Ratio of the Protocol-Owned Vault Emulation

The collateralization ratio of the POVE is 225%, which results in 1.8x leverage on the collateral. The POVEDC is determined by the equation:
`POVEDC = POVEC * 1.25`

Calculating the POVEDC and modifying the lower limit to the surplus buffer correspondingly is done on a monthly basis by the Risk Core Unit, before calculating the amount of Dai to transfer from the Surplus Buffer to the Pause Proxy (if any) as defined in MIP84c9.

### MIP84c6: Modify the Collateralization Ratio of the Protocol-Owned Vault Emulation

This component enables a monthly Subproposal Process to modify the Collateralization Ratio as defined in MIP84c5 above.

### MIP84c7: Daily Collateral Purchase Rate

Any Dai available in the Pause Proxy, whether from POVEDC or Starting Collateral, is used to accumulate Lido Staked ETH, and later EtherDai, using a dss-kiln implementation sourcing liquidity from a highly liquid DEX.

The rate of accumulation is up to 500,000 Dai per day, if Dai is available.

### MIP84c8: Modify the Daily Collateral Purchase Rate

This component enables a Subproposal Process to modify the Daily Collateral Purchase Rate as defined in MIP84c7.

### MIP84c9: Protocol Surplus and the Emulated Surplus Buffer Upper Limit

All additional income generated by the Maker Protocol is also used to fund the Protocoled Owned Vault, unless Dai has reached 75% collateralization by decentralized assets. To enable this with the POVE, this MIP also defines the concept of the Emulated Surplus Buffer Upper Limit.

The Emulated Surplus Buffer Upper Limit is a quantity of Dai above the current surplus buffer lower limit.

Each month, any Dai accumulated in the Surplus Buffer above the Emulated Surplus Buffer Upper Limit is transferred to the Pause Proxy to be deployed in the POVE.

The initial Emulated Surplus Buffer Upper Limit is set to 20 million Dai.

### MIP84c10: Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling

To prevent overleverage of the POVE due to unsustainable price appreciation of the POVE's collateral assets, this MIP defines virtual price ceilings for POVEC. If the price of the collateral assets are above the POVEC virtual price ceilings, they are only counted as being equal to the virtual price ceilings when calculating the POVEDC.

The POVEC Virtual Price Ceiling of ETH (For Lido Staked ETH or EtherDai): 2000 USD

The POVEC Virtual Price Ceiling of LDO: 3 USD

### MIP84c11: Modify Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling

This component enables a Subproposal Process to modify the POVEC Virtual Price Ceiling defined in MIP84c10.
