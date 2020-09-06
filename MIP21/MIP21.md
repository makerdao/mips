# MIP21: Real World Assets - Off-Chain Asset Backed Lender

```
MIP#: 21
Title: Real World Assets - Off-Chain Asset Backed Lender
Author(s):  Matthew V Rabinowitz (@mrabino1)
Contributors: Lev Livnev (@equivrel)
Type: Technical
Status: Conception
Date Proposed: 2020-09-01
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP13c3-SP4 (Declaration of Intent - Off-Chain Asset Backed Lender to Onboard Real World Assets as Collateral for a DAI loan)
Replaces: n/a
License: n/a
```

## References
- MIP13c3-SP4 - Declaration of Intent [Link](https://forum.makerdao.com/t/mip13c3-sp4-declaration-of-intent-commercial-points-off-chain-asset-backed-lender-to-onboard-real-world-assets-as-collateral-for-a-dai-loan/3914)
- [prototype source code](https://github.com/livnev/rwa-example)

## Sentence Summary
This proposal defines a MakerDAO Module implementation for DAI borrowing with Real World Asset Backed Lenders. 

## Paragraph Summary

With the proposed on-boarding of Real World Assets as collateral into the Maker protocol, we will be requesting a technical MIP as we need to trailblaze a new way to engage the “real-world” while still having an umbilical to the blockchain. This will require some technical modifications to how the system handles collateral / liquidations etc. as well as adding some smart contracts (as outlined below) to handle the minting and repayment process. This Technical MIP is being submitted in parallel (with the Declaration of Intent) for MKR governance consideration. 

## Component Summary

- `RwaLiquidationOracle`: which acts as a liquidation beacon for an off-chain enforcer.
- `RwaFlipper`: which acts as a dummy liquidation module in the event of write-offs.
- `RwaUrn`: which facilitates borrowing of DAI, delivering to a designated account.
- `RwaDeploySpell` (TODO): which deploys and authorises the components for RWA collateral types
- `RwaInitSpell` (TODO): which activates a new RWA collateral type
- (TODO) auxiliary wallet contracts for handling disbursement and repayment of DAI.
- `RwaLiquidateSpell` (TODO): which allows MakerDAO governance to initiate liquidation proceedings.
- `RwaRemedySpell` (TODO):  which allows MakerDAO governance to dismiss liquidation proceedings.
- `RwaWriteoffSpell` (TODO):  which allows MakerDAO governance to write off a loan which was in liquidation.

## Motivation
See paragraph summary above.

## Specification
Inserting real world assets via an off-chain asset backed lender, where the liquidations are handled by a third-party requires certain changes to how a module would interact with the Maker protocol. Specifically, 
- Minting
- Repayments
- Liquidations
- Write-offs

The above said, many items remain un-changed from the current interface:
- Debt computation
- Interest Rates
- Debt Ceiling Constraint

### Proposed Code
- [Real World Assets Example](https://github.com/livnev/rwa-example) 

### Test Cases
- Add Real World Asset Module
- Mint DAI
- Repay DAI
- Modify Annual Interest Rate
- Liquidate Vault
- Write-off any associated losses

### Security Considerations
The framework surrounding minting and repaying DAI is rather battle-hardened. Further, the computation on interest rate calculations and debt ceilings is equally hardened.

Counterintuitively, the majority of the functionality related to liquidations will be completed by real world people that are using legal documents to govern their actions. Thus many of the features that might otherwise cause security vulnerability may be disabled as they are effectively outsourced to a Trust company or the legal system in general.

### Auditor Information and Report
The code has not been audited.

## Additional Information

### Mint Process

All smart contracts below are owned by and controlled by MKR Governance, not LendCo.

1. With a smart contract triggered by LendCo and another MKR holder, the DAI created is sent to a “Tax Favorable Entity” (“TFE”) ETH address.

      1. Minting was “gated” by LendCo but not caused by LendCo
      2. DAI is now created and at the TFE
      3. The ETH address for the TFE is controlled and may be subsequently modified by MKR Governance.

2. Anyone with MKR may trigger the smart contract to move the DAI from the TFE to the Trust (w/ one exception. LendCo is specifically excluded as a party that can cause this).

      1. DAI is now being borrowed (from the TFE to the Trust). The DAI is now at the Trust.
      2. The ETH address for the Trust is controlled and may be subsequently modified by MKR Governance.

3. LendCo may then borrow DAI from the Trust.

      1. The LendCo recipient target ETH address is changeable by MKR Governance.
      2. LendCo’s ETH address shall be a confirmed / validated, constant address for a registered broker-dealer OTC desk FBO of LendCo.

The above process removes the custody risk for the DAI and inserts a process for accounting to track that DAI was minted into existence to a TFE, then moved from TFE to a jurisdiction specific “trust” account (or its equivalent). From there, the DAI is borrowed from the Trust when it is called upon by LendCo.

In reverse,

1. LendCo sends fiat wire to the broker-dealer OTC desk.
2. OTC desk converts fiat to DAI.
3. OTC desk orders the transfer of DAI to a previously validated ETH address (which is a smart contract) which was requested by LendCo
4. That Smart contract address is and represents the “Trust.”
5. Thereafter anyone that has MKR can cause that DAI to be transferred to the TFE ETH address.
6. Finally anyone can cause the TFE ETH address to pay down the Vault balance.
    - The above said, the underlying functionality will always exist that will allow anyone to pay down this vault.

**Note:** None of the addresses above are “owned” or controlled by LendCo. The addresses are Always with MKR governance. Important add-on: it is important for the DAI to have a source of origination; a stop in TFE; another stop in the Trust;. and then to its final destination. In all cases, LendCo / the Trust / TFE need a paper trail for accounting and regulatory compliance. The reasons for the gating of DAI minting and movements is that DAI loans may not be caused from minting to LendCo without the explicit assistance from someone else in the MKR community.)

---

### Real World Asset MakerDAO Module Details

* Aggregate Debt Ceiling (means the most amount of DAI that can be borrowed by LendCo) - Same as existing Maker system
  * Operative
    * MKR Governance may amend as a part of its routine cycle
* Risk Premium - Interest Rate - Same as existing Maker system
  * Operative
    * MKR Governance may amend as a part of its routine cycle
    * Change of interest rates mid-month takes effect on the 1st day of the following month.
* Scope
  * Not-Operative (Text Field Blockchain Storage Only)
    * MKR Governance may amend as a part of its routine cycle
    * For use in the revolving credit facility agreement (the “RCFA”) such that LendCo may request and MKR Governance may ratify or reject just an amendment
    * Tech requirement: A text field that outlines the text approved or rejected
* Equity Requirement
  * Not-Operative (Text Field Blockchain Storage Only)
    * MKR Governance may amend as a part of its routine cycle
    * For use in the RCFA such that LendCo may request and MKR Governance may ratify or reject just an amendment
    * Tech requirement: A text field that outlines the text approved or rejected
* Liquidation
  * Operative - Different from the existing system in that the liquidation is performed by a third-party in the real world
    * Informational Status on-chain field:
      * Normal
      * Triggered
      * Cured
      * Liquidated, if not cured within 30 calendar days
        * Liquidation may be triggered for any number of reasons including:
          * MKR no longer wants this collateral type
          * MKR governance attack
          * MKR governance has determined via the Maker Representative that LendCo is in breach of the RCFA and that breach has remained uncured pursuant to the period in the RCFA.
* Oracle (technical)
  * Disabled


**Initial Debt Ceiling:**

The below commercial points outline a Debt Ceiling proposal to start at 15MM as there are two projects that have been identified that are slated to close quite soon after MKR governance approval which will utilize approximately 60% of the 15MM facility thus leaving some room for the next transactions.

**Forward Guidance:**

Thereafter, LendCo will request an increase in the debt ceiling (with interim reporting) and have an objective of ~100MM before the end of 2021 with that number continuing to grow as the community remains comfortable with the performance of LendCo and desirable market conditions remain.

**Interest Rates:**

With the objective of competing head-on with the existing financial institutions, the pricing needs to be both competitive but not grossly below market. Further, as the first mover in this space, favorable pricing is being requested to get started to help offset some of the initial setup costs and legal work for getting this structure in place. This is a win win win. MKR will onboard Real World Assets, LendCo will be able to source its debt at an attractive rate, and the DAI ecosystem will benefit from having DAI deployed in Real World Assets and act as an overflow dampening valve with credit backed projects.

Rather than pricing the interest rate comparative to the Maker “Base Rate,” this proposal contemplates competing directly on terms the financial system uses today which means that we should use the Wall St. Prime Rate as the benchmark with a spread above or below (as LIBOR is in process of retiring).

**Operational Security**

Given the size and centralization of an off-chain asset backed lender, OpSec is a critical component to be hardened prior to any material debt ceiling being allocated. To that end, it is presently contemplated that LendCo will have its Vault adapter be modified away from the default (where DAI is returned to the originating ETH address) since we are planning to implement the above minting and repayment process.

The foregoing serves three purposes:

1.) To minimize the attack surface to as little as possible on the minting of DAI

2.) To allow for LendCo to clear a financial audit, as Broker / Dealer will issue account statements that outline the arrival of DAI and the sales/purchase price.

3.) The Broker / Dealer has already completed KYC / AML on all of the cash that is used in exchange for the DAI (in both directions).

---
