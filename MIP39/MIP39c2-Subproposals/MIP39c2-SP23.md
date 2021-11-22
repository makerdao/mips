# MIP39c2-SP23: Adding the Deco Fixed Rate Core Unit 

## Preamble

```
MIP39c2-SP#: 23
Author(s): Vamsi Alluri @Vamsi
Contributors: @juanjuan, @Wouter, @NikKunkel
Tags: core-unit, fixed-rate, cu-deco-001, mandate, active
Status: Accepted
Date Proposed: 2021-09-08
Date Ratified: 2021-11-21
Resubmission: First formally submitted for October's Governance Cycle (https://vote.makerdao.com/polling/QmZyjR4t)
Ratification Poll URL: https://vote.makerdao.com/polling/QmPPvUhN
Forum URL: https://forum.makerdao.com/t/mip39c2-sp23-adding-the-deco-fixed-rate-core-unit/10224
```

## Sentence Summary

MIP39c2-SP23 establishes a Deco Fixed Rate Core Unit for the integration and maintenance of the Deco protocol facilitating Fixed Rate Vaults. For more information about the history of this MIP, which was originally posted on 5 August 2021, please see [here](https://forum.makerdao.com/t/fixed-rate-vaults-proposal-with-deco-protocol/9707).

## Specification 
### Motivation

This post presents a protocol designed to bring a new revenue generating and user retention feature to MakerDAO: Fixed Rate Vaults; the proposal also provides for a fully staffed core unit to support the protocol. The Deco Protocol operates to decouple Yield-Bearing Assets into Fixed Rate and Pure Yield instruments thus providing a hedge against rate volatility for all yield bearing assets. Using the Deco fixed rate protocol, Maker will be able to issue tokens that permit Vault owners to hedge the stability fee for a fixed duration and for a specific collateral type. The proposed Deco and Maker integration uses a market driven solution to make it possible for vault owners of all sizes to hedge stability fees for any desired duration. The integration of Deco will enhance rate stability, achieve a predictable and stable revenue flow for Maker, boost DAI supply, and enhance vault owner retention. The Deco protocol is ready for immediate integration. The Deco instance for Maker has been built and deployed so that it is controlled by MakerDAO governance, and thus removes the governance risk typically present in such external protocols.

Upon completion of the integration of the Deco Protocol, the administrative, operational and maintenance obligations, including legal, will be assumed by a separate legal entity, DecoM, which will function in alignment with Maker policies and procedures.

### Problem: Rate Volatility and MakerDAO

Stability fee volatility means that vault owners are unable to accurately predict their exposure to future fees which in turn limits the MakerDAO’s user base and in turn the DAI supply. Rate volatility constrains the market for Maker vaults by eliminating the participants who require stable rates. At the same time, stability fee variance means Maker is unable to accurately predict its own cashflow. In a bear market, the inability to predict revenue and control cash may prove problematic to the DAO. MakerDAO needs a vehicle to retain vault owners, expanding Dai supply, and provide a stable cash flow to support DAO operations. Deco is already developed and provides these features to Maker.

The Deco protocol, in collaboration with MakerDAO, can offer fixed-rate vaults to Maker vault users. By using fixed rates, Maker may smooth out its revenue and achieve some predictability in its cash flow. This proposed integration brings the following immediate benefits to the MakerDAO ecosystem:

*	Boost supply of DAI.
*	Develop an immediate and reliable revenue stream for MakerDAO.
*	Attract MakerDAO prospective users who may be intolerant of rate volatility.
*	Provide a novel product for the Growth Core Unit.
*	Enhance vault owner capital and operational efficiency.
*	Improve vault owner retention and discourage vault migration.
*	Introduce rate-predictability.
*	Allow stability fees to be discovered by the market through auctions.
*	Maker may now lock in vault owners and be able to reliably cover its fixed operating costs through the upfront sale of Fee tokens.

This proposal is for the creation of the Deco Fixed Core Unit and the addition of a new product for MakerDAO by the integration of the [Deco Protocol](https://deco.money/): Fixed Rate Vaults via Deco Protocol. 

### Core Unit ID

DECO-001

### Core Unit Name

Deco Fixed Rate Core Unit.

## Core Unit Mandate

### Mission

Integrate, manage, and maintain the Deco fixed rate protocol.

### Deco Protocol 

The Deco protocol is a fixed rate protocol designed to be flexible and safe. Its design anticipated that its first and most effective initial application may be on Maker. The core protocol is outlined in the [whitepaper](https://deco.money/whitepaper) and in the [technical documentation](https://docs.deco.money/). Codebase repo of the base protocol implementation can be found on [Github](https://github.com/deco-protocol/deco-base).
The Deco protocol, in collaboration with MakerDAO, can offer fixed-rate vaults to Maker vault users. The Deco user experience is simple: vault owner purchases a pure-yield token which earns a yield that offsets the entire stability fee on the vault. A vault need not migrate to an external protocol, either before or after the fixed rate expires, which makes it possible for the Maker protocol to retain its core business and not lose stability fees. Vault owners are not required to change any of their own vault management processes; users may continue to use the same UI or smart contract to manage the vault. The vault itself remains fully independent, and within the Maker Protocol. Fixed rate token issuance on Deco is controlled and maintained by Maker governance, allowing MakerDAO to control the fixed rates without relying on external governance.

### Deco Protocol Retains Vaults and Captures Revenue for MakerDAO

Deco protocol decouples a yield bearing asset into a pure-yield and zero-yield component. Through an integration with the Maker protocol, Deco makes it possible for MakerDAO to issue a token that tracks the stability fee for a certain collateral type over a fixed duration, a FEE-CLAIM token. For the user to get a fixed rate on their vault, all they need to do is buy the FEE-CLAIM token and hold it. The token will accrue yield to offset the fees accrued by the stability fee for the fixed duration.

Deco optimizes the Maker protocol and vault owner user experience. Vaults need not migrate to an external protocol before or after the fixed rate expires. Vault owners are not required to change any of their own vault management processes. The UI or smart contract already used to manage a vault may continue to be used. Even after the expiration of the fixed term token, vaults are left “as is.” Since the rate fix is performed outside of the vault infrastructure and contracts, vaults are never touched. This design is secure and means that the Maker protocol retains its core business even after the expiration of the fixed rate term. The vault itself remains fully independent and within the Maker Protocol.

### Deco is the Safest, Most Flexible Fixed Rate Protocol.
Deco is designed to avoid typical protocol risks by reducing the number of assumptions to a minimal level. For example, Deco’s core operations do not assume that yield protocols will always be solvent, or that redemptions will always succeed even when they are solvent. Deco is built on the premise that fixed-maturity asset lockups should quickly change when going through a phase of instability and may require yield token holders to redeem; Deco has a built-in mechanism to ensure that swift and early redemptions are possible.
Deco works exactly to the specifications of the Maker protocol, and addresses edge cases in its design that may in time be forgotten at the institutional level. The Deco instance has been built and deployed so that it is controlled by MakerDAO governance, and thus removes the governance risk typically present in such external protocols.
Deco is designed to use minimal smart contract infrastructure to issue a token that tracks the stability fee for a fixed term, and for a specific collateral type. It ensures that sensitive FEE tokens issued by MakerDAO are automatically removed from circulation at or by the maturity date, or in an emergency shutdown. Vault owners simply hold a token, enabling an offset of the stability fees.
By keeping regular vaults virtually untouched throughout the process, we ensure a liquidation infrastructure, and assure that service providers do not have to update their systems to deal with a special fixed-rate vault type. Deco does not add complication to the liquidation process, and makes the yield from FEE tokens collectable on-demand. Deco ensures that the collateralization ratios are not affected by stability fee accrual. Vault owners do not lose the excess stability fees they have paid upfront. If their vault is liquidated, CLAIM-FEE tokens are held separately and can be sold on the market at any time to collect the residual value.

The benefits of integration to vault owners and the MakerDAO, include:

1.	**Fixed Stability Fee**: Once purchased, the token issued by Deco and MakerDAO will offset the stability fee with limit to any increase as there is no upper limit.
2.	**No Vault Management Changes**: Vault owners do not have to make any changes to their vault ownership or management.
3.	**New Revenue Stream**: This protocol provides a stable and predictable income stream in the form of fixed-rate risk premiums for MakerDAO and gives it the ability to upsell new products to the largest vault owners, and future RWA vaults which also tend to borrow at scale.
4.	**Vault Owner Retention**: Vault owner stickiness is vastly improved, especially for the largest vaults, since the stability fees have been prepaid and locked into a fixed term.
5.	**Integration with Gnosis Auction Protocol V2**: Discovery of rates permitting the performance of large sales competitively and transparently.
6.	**Compatible with Asymmetric Demand**: There is no requirement to find buyers for Zeros or to be able to sell Claims.

### High Level Integration Design

The Deco protocol integration has been thoughtfully designed to work with Maker and allows the DAO complete control over its own fixed rate infrastructure, while mitigating any underlying risks which are inherent in other fixed rate protocols. Figure 1 below demonstrates how the integration functions.

![deco-maker-final|666x500](![deco-maker-final|666x500](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP23/diagram.jpeg))
**Figure 1.** Fixed Rate Vaults: Deco on MakerDAO

Technical documents and usage steps are available at [technical docs](https://docs.deco.money/#/integrations/maker-vaults) for more details about the components in this integration proposal.

### Deco Core Unit Responsibilities	

Fixed rates promise to be a significant product offering for MakerDAO. A fixed rate product lends itself to a self-supporting and independent core unit. The core unit will be staffed to support the Maker integration and work with the growth core unit and governance to achieve Maker’s objectives, while providing for minimal burden to the protocol engineering and risk core units. The core unit is designed to be efficient and performance focused, with the principal objective to support MakerDAO and be a profit generating cost center for Maker. The core unit will manage the integration and serve MakerDAO and its various stakeholders in the required functions.

The core unit will perform the following responsibilities:

1.	Deploy new FEE token and Deco instances for collateral types as needed.
2.	Develop Spells necessary to issue and manage CLAIM-FEE token issuances and the ZERO-A collateral type.
3.	Incorporate timely fraction snapshot captures as part of weekly spells.
4.	Perform data analysis to discover optimum fixed-rate premiums for various collateral types, and help the DAO sell the issued CLAIM-FEE tokens.
5.	Assist Growth team in product development and ongoing Deco operations, including providing integration support and working with integration partners who wish to incorporate this feature seamlessly into their smart contracts or user interfaces.
6.	Assist the DAO in ZERO-FEE token sales if the need arises.
7.	Assist the DAO in setting the Dai Savings Rate if the need ever arises.

## Future Directions

Deco on Maker is a flexible toolset. Not only can Deco be applied to fixed rate vaults, but there are other avenues for potential exploration. The Deco protocol promises to add feature sets to Maker. With Deco, Maker can support surplus buffer health and help mitigate flop auctions and stop new MKR issuance by sourcing the needed Dai through fixed-rate future stability fee sales in the form of CLAIM-FEE tokens.

### Links

[Website](https://deco.money/)
[Github](https://github.com/deco-protocol)
[Blog](https://deco-protocol.ghost.io/)
[Technical Docs](https://docs.deco.money/)
[Twitter](https://twitter.com/decoprotocol)
