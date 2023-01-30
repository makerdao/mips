# MIP92c5-SP1: Vault Setting Amendment Subproposal

```
MIP92c5-SP#: 1
Author(s): @Doo_StableNode
Contributors:
Tags: PSM
Status: RFC
Date Proposed: <2023-01-27>
Date Ratified:
Forum URL: https://forum.makerdao.com/t/mip92c5-sp1-vault-setting-amendment-subproposal/19553
```

## Specification
This will be explained in the following Proposed Changes and Motivation

### Proposed Changes
Strategies to Pursue:

* Gen Lender: Supplies USDC to [AAVE 1](https://app.aave.com/home) to generate interest. Earned tokens are harvested, sold for more USDC which is deposited back into the strategy.
* GUNIV3USDC-DAI: Supplies USDC to Maker DAO Peg Stability Module to feelessly get the correct USDC-DAI ratio then it deposits to [Arrakis Finance’s Univ3daiusdc Vault 5](https://beta.arrakis.finance/#/vaults/0xAbDDAfB225e10B90D798bB8A886238Fb835e2053), which autocompounds a Uniswap v3 DAI-USDC position. Afterwards, it uses this Vault token as collateral at [Maker DAO](https://oasis.app/asset/dai#earn). Flashmints are used to mint DAI from [MakerDAO](https://oasis.app/) to flashlend and fold the position, boosting the APY. Earned tokens are harvested and sold for more USDC, which is deposited back into the strategy.
* GenLevComp v3: Supplies and borrows USDC on [Compound Finance](https://app.compound.finance/) simultaneously to earn COMP. Flashmints are used to mint DAI from [MakerDAO](https://oasis.app/) to flashlend and fold the position, boosting the APY. Earned tokens are harvested, sold for more USDC which is deposited back into the strategy.

Deposit Limits:
Each of above strategy should have a deposit limit of 1,000,000 PSM USDC.
Therefore, in total, 3,000,000 PSM USDC limit.

### Motivation
As MIP92: Onboard PSM USDC to Yearn to earn Yield noted “A list of investment strategies that the vault might adopt is proposed. Choices of which strategies to pursue, deposit limits, debt ratios, and corresponding risk profiles are controlled by Maker Governance.”

Considering MIP92 has passed, we believe that such onboarding should take step by step especially with strategies that the Maker protocol already has exposure to and thus can be understood as more “comfortable” to deploy. And Maker already has exposure to both AAVE, Compound Finance, and Uniswap LP.
