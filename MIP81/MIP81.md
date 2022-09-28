# MIP81: Coinbase USDC Institutional Rewards

## Preamble

```
MIP#: 81
Title: Coinbase USDC Institutional Rewards
Author(s): @CB_Institutional 
Contributors:
Tags: 
Status: RFC
Date Proposed: 2022-09-06
Date Ratified: 
Forum URL: https://forum.makerdao.com/t/mipxx-coinbase-usdc-institutional-rewards/17703
```

## Sentence Summary

MIP81 will onboard an account representing MakerDAO to Coinbase Prime and transfer 33% / ~1.6B of the PSM’s USDC into custody to earn USDC rewards with Coinbase.

## Paragraph Summary

MIP81 onboards a portion of the PSM’s USDC to Coinbase Prime in order to participate in Coinbase’s USDC Institutional Rewards program. This MIP outlines the terms for reward calculation and the process for payment to MakerDAO through 2022.

## Motivation

This proposal responds to the ratified Declaration of Intent [MIP13c3-SP12: Invest in Short-term Bonds](https://mips.makerdao.com/mips/details/MIP13c3SP12), wherein MakerDAO governance requested that collateral assets be deployed in a manner that incorporates evaluative criteria of: safety, cost structure, and flexibility. Coinbase is uniquely situated to offer a USDC Rewards Program to MakerDAO that meets this evaluative criteria. Specifically, Coinbase is an established, reputable, and regulated company.

- Coinbase has been a longstanding partner of Maker’s, most recently collaborating with the Growth Core Unit (GRO-001) and the Strategic Finance Core Unit (SF-001) to understand what opportunities would be of interest to the broader DAO community.
- Maker’s balance sheet is largely exposed to USDC --- in exchange for zero holding reward.
- Maker believes it is beneficial to safely be rewarded for holding collateral in USDC.
- This MIP outlines a clear path to providing up to 1.5% APY on USDC in the form of USDC Rewards and optimizing liquidity at zero cost to, and industry-leading security for, Maker.

## Component Summary

**MIP81c1: USDC Onboarding Process & Rewards Program Terms**
This component outlines the process for onboarding to Coinbase via an appropriate legal structure and governance framework and the terms of Coinbase’s rewards program. 

**MIP81c2: Legal Verification & Oversight**
This component contains the requirements of legal oversight and disclosure to the Maker community.

## Specification

### MIP81c1: USDC Onboarding Process & Rewards Program Terms

#### USDC Onboarding Process

* If MIP81 is approved, a subsequent Signal Request must be posted by the Strategic Finance Core Unit, CES Core Unit, or Growth Core Unit, and passed to onboard a legal entity approved by Maker Governance.
* A Strategic Finance Core Unit facilitator will seek approval for a specific legal entity (the “arranger”) in the weekly cycle to serve as permissioned actors on the account.
* The legal entity structure, governance framework, and necessary contractual arrangements must be appropriate to act as a large-scale custodian to Maker.
* This includes, but is not limited to:
  * No ability by third parties to access the funds or change the terms of the legal structure.
  * Maker Governance has complete ability to trigger a liquidation with a successful executive vote encoding an instruction to the authorized account users of the legal entity.
  * It should not be possible for a single third party to block the ability of Maker Governance to make decisions or modify the structure.
  * There must be no apparent weak links or edge cases that allow funds to get misappropriated or stuck.
* The arranger is responsible for ensuring all standard KYC and AML due diligence requirements have been met in accordance with Coinbase’s obligation as an entity offering Prime Services.
* Consistent with the standard Coinbase Prime offering, the arranger will be authorized to deposit and withdraw assets between the PSM and Coinbase so long as they’re successfully onboarded and authenticated.
* Their permissions will be limited to the actions described in this proposal: USD <> USDC transactions to and from the PSM.
* In the future, Coinbase and Maker will automate transactions between the PSM and Prime account via smart contract or API.
* Maker Governance’s approval will facilitate onboarding to Coinbase Prime.

#### Coinbase’s USDC Institutional Rewards Program

* Maker will pay zero custody fees on USDC held with Coinbase Prime.
* Maker Governance will be able to freely mint, burn, withdraw, and settle almost instantaneously in USDC (<6 mins), consistent with Coinbase Prime’s standard offering.
* Rewards from the USDC account with Coinbase will be calculated based on the weighted average of assets on the platform each month and paid on the 5th business day of the following month.
* Each month, Coinbase will calculate the weighted average holding of the account.
* Coinbase will pay rewards based on our USDC Institutional Rewards POC program rates:
  * 100bps APY on first 100mm
  * 10bps more APY on each 100mm thereafter
  * Rewards rate will be paid based on the highest tier the client falls into
  * Rewards are not to exceed 150bps APY
* USDC Institutional Rewards POC will be in effect until the end of 2022, and the final payment will be made on the subsequent month.
* Assuming the pilot program continues beyond 2022, Maker will remain enrolled for 2023 and beyond. Terms could become variable, but Coinbase Institutional will provide an update to the Maker Forum at least 30 days prior to any changes.
* Rewards will be paid into the client’s account in USDC.

### MIP81c2: Legal Verification & Oversight

* At least one community member, with legal credentials, must, through a public forum post, verify that the proposed entity is appropriate to onboard to Coinbase Prime.
* A CES facilitator must, again through a public forum post, provide a verification of the technical appropriateness of the MIP81 designated solution. Should the verification not be forthcoming, this MIP will not move forward.
* A member of the CES Core Unit will verify the address destination and the legal entity’s Prime account prior to transfer of funds.
* A test transaction will take place to ensure the receiving address is correct prior to any release of funds. If CES is not satisfied with the security of fund transfer, the deal would be halted until these concerns were rectified.
