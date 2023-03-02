# MIP92: Onboard PSM USDC to Yearn to earn Yield

## Preamble

```
MIP#: 92
Title: Onboard PSM USDC to Yearn to earn Yield
Author(s): corn, @omgcorn
Contributors:
Tags: PSM
Type: General
Status: Obsolete
Date Proposed: 2022-11-29
Date Ratified: 2023-01-23
Dependencies: -
Replaces: -
Forum URL: https://forum.makerdao.com/t/mip92-onboard-psm-usdc-to-yearn-to-earn-yield/18971/1
Ratification Poll URL: https://vote.makerdao.com/polling/Qma4jEPY
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## Sentence Summary

MIP92 will onboard a maximum of $100M of PSM USDC into a bespoke non-custodial Yearn vault.

## Paragraph Summary

MIP92 will onboard $100M of PSM USDC into a bespoke non-custodial Yearn Vault. Yearn Vault strategies are risk-adjusted and transparent at all times. Strategy allocation and composition in this bespoke vault are flexible. Assigned Yearn contributors will work closely with the relevant Maker Core Units as proposed in MIP92c5.

## Component Summary

**MIP92c1: Yearn**
What is Yearn?

**MIP92c2: Yearn Vaults and Risk Management**
What are Yearn Vaults and how is risk managed?

**MIP92c3: Bespoke Maker Vault Composition**
What are the proposed strategies?

**MIP92c4: Vault Deployment, Integrations, and Migrations**
Describes deploying new vaults.

**MIP92c5: MIP92 Proposed Vault Controls**
Defines Proposed Vault Controls and describes how they may be amended by Maker Governance.

**MIP92c6: Fees**
Defines Yearn fees.

**MIP92c7: Alignment and Goals**
Light at the end of the tunnel for PSM allocation with the best risk-adjusted returns in DeFi.

## Motivation

MIP92 proposes using Yearn on-chain vaults to earn yield on idle USDC. The recent collapse of centralized entities such as Celsius, BlockFi, and FTX, among others, has made painfully clear the importance of transparency when depositing funds to generate yield—something that DeFi, and specifically Yearn, are well-equipped to provide.

Yearn is uniquely positioned to offer Maker yield-generation opportunities across its USDC reserves while empowering the Maker community to continually audit the exact location and amounts of any and all deposited assets. Yearn is an established and reputable organization that shares Maker’s ideals around decentralization and safety. Yearn’s risk-adjusted vaults are battle-tested (some v2 vaults are nearly 2 years old) and have handled an all-time high of $6.4 billion. Since then, Yearn Vaults have successfully unwound $6 billion with no loss of funds.

[Yearn aligns](https://github.com/yearn/yearn-security/blob/master/SECURITY.md) with Maker's safety-first strategy. Maker’s use of Yearn Vaults will further validate the case for Decentralized Finance where safety and transparency matter most.

Yearn has provided a risk-adjusted [2.16% APY](https://staging.yearn.vision/d/apkUMx6nz/vault-overview?orgId=1&from=1636307831998&to=1668464540570&var-networks=ETH&var-exp=false&var-vaults=yvUSDC%200.4.3&var-address=0xa354F35829Ae975e850e23e9615b11Da1B3dC4DE&var-version=v2) average for the current USDC vault ([deployed](https://etherscan.io/tx/0xf8c6bcb6748b014c31246eb86c5d09886da942e008f738cc0a3e98ec019d8d44) Oct 2021) at the time of this proposal.

## Specification / Proposal Details

### MIP92c1: Yearn

[Yearn is DeFi’s premier yield aggregator](https://world.yearn.finance/) giving individuals, DAOs, and other protocols a way to deposit digital assets and receive yield. Yearn was founded in the Summer of 2020 and quickly became known for the best risk-adjusted returns in DeFi with their core product Yearn Vaults. 

In addition to Yearn Vaults, Yearn contributors have created the DAO management tool Coordinape, the audit firm yAcademy, and assisted with the development of software tools like Ape-Safe, Apeworx, Vyper, Brownie, Gnosis, Robowoofy, ERC-4626, Weiroll-py, Disperse, Allowlist, yPriceMagic, and Serpentor. Yearn has also contributed to funding Gitcoin, LexPunk, and Nomic Labs. 

Yearn has presented on risk management and strategy creation at ETHCC, ETHDenver, ETHDubai, ETHAmsterdam, The Stanford Security Summit, and has been mentioned in research from Messari and Ark Invest.

Yearn is maintained by a team of full-time contributors and is governed by the YFI token.

### MIP92c2: Yearn Vaults and Risk Management

#### Vaults

Yearn Vaults are capital pools that automatically generate yield based on opportunities present in the market. Vaults benefit users by socializing gas costs, automating the yield generation and rebalancing process, and automatically shifting capital as opportunities arise. End users do not need to have proficient knowledge of the underlying protocols involved or DeFi, thus the Vaults represent a passive-investing strategy. In 2021, Yearn Vaults had over $6 billion in contracts. 

Yearn Vaults are comprised of up to 20 strategies and are considered "up-only", as they take no directional risk and have no unhedged exposure to impermanent loss. Additionally, strategies are able to accept large deposits with little slippage and they must pass the [Yearn Risk Framework](https://yearn.watch/risk). 

#### Controls

Yearn Vaults use a [6-of-9 multi-signature wallet](https://docs.yearn.finance/security/multisig), made up predominantly of public figures in the DeFi community, along with two core Yearn team members. Yearn controls are not a requirement for your vault. However, you may want Yearn to have permissions for [Operations Procedures including emergency situations](https://docs.yearn.finance/developers/v2/EMERGENCY). 

#### The Yearn Risk Framework

The Yearn Risk Framework ([explained at the Stanford Security Summit](https://youtu.be/EdH7UaJec3g?t=11331)) is modeled after risk management process in the aviation industry and uses eight key metrics for evaluation: TVL Impact, Third-party Audit Quality, Internal audit, Complexity, Longevity, Protocol Safety, Team Knowledge, and Testing.

Yearn consistently receives top scores from third-party rating organizations like [DeFi Safety](https://www.defisafety.com/app/pqrs/130).

Yearn [core contracts have been audited by multiple third-party firms.](https://docs.yearn.finance/security/) A [full list of Yearn Strategy third-party audits](https://github.com/yearn/yearn-security/tree/master/audits) is also available. Should users desire to verify/audit contracts for themselves, all code is verified on Etherscan or other explorers, GitHub repositories for all production code are public, and Yearn developers are always happy to answer questions as needed. 

Even with Yearn's extensive preparation for hacks and loss of funds [through documentation](https://docs.yearn.finance/developers/v2/EMERGENCY#emergency-checklist) and [war room simulations](https://twitter.com/iearnfinance/status/1514270095052210179), there is always a chance that funds are not recoverable. Yearn does not offer a guarantee on funds of any kind. Yearn is purely on-chain DeFi and risk must be managed accordingly.

### MIP92c3: Bespoke Maker Vault Composition

We propose working together in close communication to maintain vault strategies, allocations, and debt ratios based on Maker's desired risk profile. The Vault will be variable APY and we estimate a yield of ~2% APY or more at $100 million.  

The Maker vault will be unlisted and only able to be accessed by a Guest List defined by Maker. Here's an example of a similar unlisted vault we've created for [Inverse Finance](https://etherscan.io/address/0xD4108Bb1185A5c30eA3f4264Fd7783473018Ce17#tokentxns) with permissions identical to normal Yearn Vaults.

Permissions and Vault Settings are customizable and proposed governance is found in MIP92c5.

#### [Current Strategies](https://vaults.yearn.finance/ethereum/stables) Available in [yvUSDC](https://etherscan.io/address/0xa354F35829Ae975e850e23e9615b11Da1B3dC4DE#code)

- **Gen Lender**: Supplies USDC to [AAVE](https://app.aave.com/home) to generate interest. Earned tokens are harvested, sold for more USDC which is deposited back into the strategy.
- **GUNIV3USDC-DAI**: Supplies USDC to Maker DAO Peg Stability Module to feelessly get the correct USDC-DAI ratio then it deposits to [Arrakis Finance's Univ3daiusdc Vault](https://beta.arrakis.finance/#/vaults/0xAbDDAfB225e10B90D798bB8A886238Fb835e2053), which autocompounds a Uniswap v3 DAI-USDC position. Afterwards, it uses this Vault token as collateral at [Maker DAO](https://oasis.app/asset/dai#earn). Flashmints are used to mint DAI from [MakerDAO](https://oasis.app) to flashlend and fold the position, boosting the APY. Earned tokens are harvested and sold for more USDC, which is deposited back into the strategy.
- **GenLevComp v3**: Supplies and borrows USDC on [Compound Finance](https://app.compound.finance) simultaneously to earn COMP. Flashmints are used to mint DAI from [MakerDAO](https://oasis.app) to flashlend and fold the position, boosting the APY. Earned tokens are harvested, sold for more USDC which is deposited back into the strategy.
- **Notional Reinvest**: Supplies USDC to [Notional Finance](https://notional.finance/lend) for various maturities to earn a fixed-rate yield on USDC. At maturity, earned yield is harvested and deposited back into the strategy.
- **Angle Reinvest**: Supplies USDC to [Angle Protocol](https://app.angle.money/#/slp) as a Standard Liquidity Provider for sanTokens which are staked to earn ANGLE. Earned tokens are harvested, sold for more USDC which is deposited back into the strategy.
- **Stargate USDC**: Supplies USDC to [Stargate Finance](https://stargate.finance/stake) to earn STG. Earned tokens are harvested and sold for more USDC, which is deposited back into the strategy.
- **IdleV2**: Supplies USDC to [Idle Finance](https://idle.finance/) to earn IDLE and COMP. Earned tokens are harvested and sold for more USDC, which is deposited back into the strategy.

Yearn is always on the hunt for high-quality sources of yield. The above list is what's available today within our preferred risk profile. Strategies that will soon be added include Compound v3, Sturdy, and Interest Protocol lenders.

### MIP92c4: Vault Deployment, Integrations, and Migrations

#### Integration

Yearn will collaborate with the Collateral Engineering Services Core Unit (CES-001) or functionally equivalent Core Units on the best technical implementation. Implementation will only occur once a technical assessment has been presented to the community by the relevant Core Units.

#### Vault Migrations and Potential Upgrades

Vault migrations will happen. We will give you plenty of warning for these. When the time comes, we'll work to unwind the desired amount from strategies to make liquid for the migration to the new vault. Liquidity is a top prerequisite when creating strategies. If market conditions allow, strategies are made liquid instantly.

#### Locks

Notional Reinvest mentioned in MIP92c3 is the only strategy with a lock on it. The vault today has a [small allocation](https://yearn.watch/vault/0xa354F35829Ae975e850e23e9615b11Da1B3dC4DE). 

### MIP92c5: MIP92 Proposed Vault Controls

The MIP92 Proposed Vault Controls defines the process to change a Vault Setting. For instance, changing the Deposit Limit, adding a Strategy, or updating the debtRatio for strategies. 

It is proposed that the vault is under the sole control of Maker Governance. There will be no vault control by Yearn Governance. Four methods can be used to change a Vault Setting:

1. A proposal by a Core Unit Facilitator with a relevant mandate.
2. A valid Parameter Proposal Group recommendation to change a Vault Setting.
3. A MIP92c5 subproposal.
4. Urgent or emergency changes may utilize the process defined in MIP24.

MIP92c5 subproposals have the following requirements and may enter the Weekly Governance Cycle.

* Minimum Feedback Period: 2 weeks.
* Minimum Frozen Period: 1 week.

MIP92c5 subproposals must use the [MIP92c5 subproposal template](MIP92c5-Subproposal-Template.md).

### MIP92c6: Fees

Yearn has only a 20% performance fee on each harvest. [Fees are decided on by yRates, governed by YFI](https://snapshot.org/#/ybaby.eth/proposal/0xe4c2c990eaf4bb4a7a8031c461f5db820bae08fd7b81441d56e8cc0378c44afe). Right now there are no future fee changes planned. To get in touch, please contact corn@yearn.finance. 

Vault fees can be checked at any time on [Yearn Watch](https://yearn.watch/vault/0xa354F35829Ae975e850e23e9615b11Da1B3dC4DE). 

### MIP92c7: Alignment and Goals

We understand Maker is very conservative and we align with that perspective. We will work with CES, Risk, Strategic Finance, and any other desired Maker Core Units to clearly define risk exposure and take appropriate action. Our goal for this program above all else is to execute it safely. 

Yearn Vaults are battle-tested and have been in production for over a year. We've developed extensive documentation about [Protocol Risk](https://docs.yearn.finance/resources/risks/protocol-risks), [Risk Scores](https://docs.yearn.finance/resources/risks/risk-score), [Strategy Risk](https://docs.yearn.finance/resources/risks/strategy-risks), [Vault Risk](https://docs.yearn.finance/resources/risks/vault-risks), [Operations](https://docs.yearn.finance/developers/v2/OPERATIONS), and [Emergency Procedures](https://docs.yearn.finance/developers/v2/EMERGENCY). 

We are excited about the possibility of working with Maker to earn yield on funds in the PSM, and being able to do so transparently and on-chain. We see this proposal as a first step toward a long-term partnership between Maker and Yearn.

