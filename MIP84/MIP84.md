# MIP84: Activate Protocol-Owned Vault Emulation

## Preamble

```
MIP#: 84
Title: Activate Protocol-Owned Vault Emulation
Author(s): @rune
Contributors: @juan, @retro
Tags: template, endgame, endgame-prelaunch-mip-set
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

**MIP84c7: Dss-kiln parameters**
Defines the dss-kiln parameters used to do recurring purchases of POVE collateral

**MIP84c8: Modify the dss-kiln Parameters**
Defines the ability to modify the dss-kiln parameters

**MIP84c9: Protocol Surplus and the Emulated Surplus Buffer Upper Limit**
Defines the relationship between the protocol's surplus and the POVE's buffer.

**MIP84c10: Modify Emulated Surplus Buffer Upper Limit**
Defines the ability to modify the Emulated Surplus Buffer Upper Limit

**MIP84c10: Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling**
Defines a virtual maximum for collateral assets in the POVE.

**MIP84c11: Modify Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling**
Defines the ability to modify the POVEC's Virtual Price Ceiling.

**MIP84c13: Long-term replacement of the Protocol-Owned Vault Emulation**
Defines how the POVE must eventually be replaced by a smart contract based Protocol Owned Vault

## Motivation

The Protocol-Owned Vault is a key element of the Endgame Plan that helps achieve real resilience and decentralization by increasing the amount of Dai backed by Staked ETH. The Protocol-Owned Vault Emulation is an approach to emulate the outcome of operating a Protocol-Owned Vault, but only using existing features of the Maker Protocol as it exists today. This is achieved by using the ability to set a negative lower limit to the surplus buffer in order to emulate a vault with an available debt ceiling, and using the Pause Proxy and dss-kiln to accumulate collateral assets.

## Specification / Proposal Details

### MIP84c1: Protocol-Owned Vault Emulation Definitions

This MIP will activate the Protocol-Owned Vault Emulation (POVE). It is an approach to emulate the outcome of operating a Protocol-Owned Vault, but only using existing features of the Maker Protocol as it exists today. This is achieved by using the ability to set a negative lower limit to the surplus buffer in order to emulate a vault with an available debt ceiling, and using the Pause Proxy and dss-kiln to accumulate collateral assets.

**Protocol-Owned Vault Emulation Collateral (POVEC)** is any Lido Staked ETH, EtherDai or Dai held in the Pause Proxy. It is used to calculate the amount of Dai that Maker can use to accumulate more POVEC.

**Protocol-Owned Vault Emulation Debt Ceiling (POVEDC)** is the amount of debt that Maker can incur based on the value of the POVEC and the target overcollateralization defined in this MIP. The lower limit of the Surplus Buffer is set to be equal to the POVEDC, allowing Maker to draw Dai from the Surplus Buffer in the same way as a vault user can draw Dai from a Maker Vault with available Debt Ceiling.

**Emulated Surplus Buffer Upper Limit** is a quantity of Dai above the current surplus buffer lower limit.

**Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling** is a set price for the POVE's Collateral, used to determine the POVEDC.

### MIP84c2: Protocol-Owned Vault Administrative Mandate

The POVE will operate based on manual processes defined in this MIP that are controlled directly by MKR holders using Executive Votes. The Risk Core Unit is mandated with following these pre-defined processes, making parameter adjustment proposals, and is given the emergency powers to de-risk POVE activity if it becomes necessary, including the immediate cessation of additional collateral purchases. This can be done through weekly governance polls, or if necessary be bundled directly into weekly or emergency Executive Votes.

The actions that can be proposed by Risk Facilitators to derisk the POVE in a weekly governance poll, or directly into an emergency or weekly executive vote include, but are not limited to:
* Stopping the dss-kiln from purchasing  more collateral
* Installing a new dss-kiln with custom parameters to sell collateral for Dai to wind down the debt of the POVE
* Partially or fully liquidate the vault using a custom method
* Modifying any of the parameters that are relevant for derisking the POVE. Parameters can only be modified this way if it makes them more conservative and reduces risk, it cannot be used to increase risk, such as by lowering the Collateralization Ratio parameter.


The POVE is exclusively controlled and owned by Maker Governance, and no third-party, individual, multisig, or another point of control has any technical access to the POVE or its assets in any way.

### MIP84c3: Protocol-Owned Vault Acceptable Collateral

The POVE is able to use Lido Staked ETH and EtherDai as collateral assets (POVEC) for the purposes of calculating the Protocol-Owned Vault Emulation Debt Ceiling (POVEDC), which is used to define the lower limit on the Surplus Buffer and determine whether Dai can be transferred from the Surplus Buffer to the Pause Proxy.

Dai that has been transferred to the Pause Proxy from POVEDC or as starting collateral, that has not yet converted to Lido Staked ETH or EtherDai, also counts as POVEC.

Available POVEDC can only be used to accumulate Lido Staked ETH. When EtherDai becomes available, the POVE must convert all of its existing Lido Staked ETH to EtherDai, and from then on can only use its available POVEDC to accumulate more EtherDai.

### MIP84c4: Protocol-Owned Vault Starting Collateral

The POVE will be bootstrapped with 20 million Dai that will be used to acquire the initial Lido Staked ETH collateral. This Dai is directly transferred from the Surplus Buffer to the Pause Proxy.

### MIP84c5: The Collateralization Ratio of the Protocol-Owned Vault Emulation

The collateralization ratio of the POVE is `225%`, which results in 1.8x leverage on the collateral. The POVEDC is determined by the equation:
`POVEDC = POVEC / 1.25`

Calculating the POVEDC and modifying the lower limit to the surplus buffer correspondingly is done on a monthly basis by the Risk Core Unit, before calculating the amount of Dai to transfer from the Surplus Buffer to the Pause Proxy (if any) as defined in MIP84c9.

### MIP84c6: Modify the Collateralization Ratio of the Protocol-Owned Vault Emulation

This component enables a monthly Subproposal Process to modify the Collateralization Ratio as defined in MIP84c5 above.

#### Subproposal Parameters and Template

The parameters for MIP84c6 subproposals are:

- **Minimum Feedback Period**: 4 weeks.
- **Minimum Frozen Period**: 1 week.
- **Governance Cycle**: Monthly.

Facilitators with relevant mandates may propose weekly polls to amend the Collateralization Ratio of the Protocol-Owned Vault Emulation when they deem necessary.

MIP84c6 subproposals must use the template located at [MIP84c6-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP84/MIP84c6-Subproposal-Template.md).

### MIP84c7: Dss-kiln parameters

Any Dai available in the Pause Proxy, whether from POVEDC or Starting Collateral, is used to accumulate Lido Staked ETH, and later EtherDai, using a dss-kiln implementation sourcing liquidity from a liquid DEX. After the launch of Elixir, the dss-kiln target will be the Elixir balancer pool.

* `sell`: Dai
* `buy`: stETH
* `hop`: 20 minutes
* `lot`: 7000

### MIP84c8: Modify the Dss-kiln parameters

This component enables a Subproposal Process to modify the Dss-kiln parameters as defined in MIP84c7.

#### Subproposal Parameters and Template

The parameters for MIP84c8 subproposals are:

- **Minimum Feedback Period**: 4 weeks.
- **Minimum Frozen Period**: 1 week.
- **Governance Cycle**: Monthly.

Facilitators with relevant mandates may propose weekly polls to amend the Dss-kiln parameters when they deem necessary.

MIP84c8 subproposals must use the template located at [MIP84c8-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP84/MIP84c8-Subproposal-Template.md).

### MIP84c9: Protocol Surplus and the Emulated Surplus Buffer Upper Limit

All additional income generated by the Maker Protocol is used to fund the POVE, until Maker Governance implements a new burn engine that also draws from the Surplus Buffer alongside the POVE according to the long-term tokenomics defined by the Endgame Plan.

To enable this with the POVE, this MIP also defines the concept of the Emulated Surplus Buffer Upper Limit.

The Emulated Surplus Buffer Upper Limit is a quantity of Dai above the current surplus buffer lower limit.

Each month, any Dai accumulated in the Surplus Buffer above the Emulated Surplus Buffer Upper Limit is transferred to the Pause Proxy to be deployed in the POVE. This is calculated and executed AFTER first calculating and modifying the new POVEDC, if applicable.

The initial Emulated Surplus Buffer Upper Limit is set to 40 million Dai.

### MIP84c10: Modify Emulated Surplus Buffer Upper Limit

This subproposal process enables Maker Governance to modify the Emulated Surplus Buffer Upper Limit as defined in MIP84c9

#### Subproposal Parameters and Template

The parameters for MIP84c10 subproposals are:

- **Minimum Feedback Period**: 4 weeks.
- **Minimum Frozen Period**: 1 week.
- **Governance Cycle**: Monthly.

Facilitators with relevant mandates may propose weekly polls to amend the Protocol Surplus and the Emulated Surplus Buffer Upper Limit when they deem necessary.

MIP84c10 subproposals must use the template located at [MIP84c10-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP84/MIP84c10-Subproposal-Template.md).

### MIP84c11: Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling

To prevent overleverage of the POVE due to unsustainable price appreciation of the POVE's collateral assets, this MIP defines virtual price ceilings for POVEC. If the price of the collateral assets is above the POVEC virtual price ceilings, they are only counted as being equal to the virtual price ceiling when calculating the POVEDC.

The POVEC Virtual Price Ceiling of ETH (For Lido Staked ETH or EtherDai): 1500 USD


### MIP84c12: Modify Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling

This component enables a Subproposal Process to modify the POVEC Virtual Price Ceiling defined in MIP84c11.

#### Subproposal Parameters and Template

The parameters for MIP84c12 subproposals are:

- **Minimum Feedback Period**: 4 weeks.
- **Minimum Frozen Period**: 1 week.
- **Governance Cycle**: Monthly.

Facilitators with relevant mandates may propose weekly polls to amend the Protocol-Owned Vault Emulation Collateral Virtual Price Ceiling when they deem necessary.

MIP84c12 subproposals must use the template located at [MIP84c12-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP84/MIP84c12-Subproposal-Template.md).

# MIP84c13: Long-term replacement of the Protocol-Owned Vault Emulation

The POVE is not meant to be a permanent feature of the Endgame, rather it is a short-term solution that allows Maker to quickly begin accumulating staked ETH, which enables it to be done at a slower rate, reducing risks.

The POVE must eventually be replaced by a fully smart contract based, automated, Protocol-Owned Vault. The Endgame Plan Launch MIPs must contain an Endgame Product MIP for the Protocol-Owned Vault that will eventually replace the POVE.
