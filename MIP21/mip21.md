# MIP21: Real World Assets - Off-Chain Asset Backed Lender

## Preamble

```
MIP#: 21
Title: Real World Assets - Off-Chain Asset Backed Lender
Author(s):  Matthew V Rabinowitz (@mrabino1 or mr@6s.capital)
Contributors: Lev Livnev (@equivrel) & Christopher Mooney (@cmooney)
Tags: technical, real-world-finance, module, smart-contracts
Type: Technical
Status: Accepted
Date Proposed: 2020-09-01
Date Ratified: 2020-10-27
Dependencies: MIP13c3-SP4 (Declaration of Intent - Off-Chain Asset Backed Lender to Onboard Real World Assets as Collateral for a DAI loan)
Replaces: n/a
License: n/a
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-october-2020-governance-cycle-bundle-october-26-2020?network=mainnet#proposal-detail
Forum URL: https://forum.makerdao.com/t/mip21-real-world-assets-off-chain-asset-backed-lender/3917
```

## References

- MIP13c3-SP4 - Declaration of Intent [Link](https://forum.makerdao.com/t/mip13c3-sp4-declaration-of-intent-commercial-points-off-chain-asset-backed-lender-to-onboard-real-world-assets-as-collateral-for-a-dai-loan/3914)
- [prototype source code](https://github.com/livnev/rwa-example)

## Sentence Summary

This proposal defines a MakerDAO Module implementation for DAI borrowing with Real World Asset Backed Lenders.

## Paragraph Summary

With the proposed on-boarding of Real World Assets as collateral into the Maker protocol, we will be requesting a technical MIP as we need to trailblaze a new way to engage the “real-world” while still having an umbilical to the blockchain. This will require some technical modifications to how the system handles collateral / liquidations etc. as well as adding some smart contracts (as outlined below) to handle the minting and repayment process. This Technical MIP is being submitted in parallel (with the Declaration of Intent) for MKR governance consideration.

## Component Summary

**MIP21c1: Collateral Parameters**
_Where the per-collateral asset parameters are defined_

**MIP21c2: Smart Contract Components**
_Where the contracts novel to this proposal are listed and described_

**MIP21c3: Liquidation Oracle**
_Where the details of the liquidation oracle contract are described_

**MIP21c4: Write-offs**
_Where the process for writing off losses is described_

**MIP21c5: Proposed Code**
_Where the proposed code is linked_

**MIP21c6: Test Cases**
_Where the test cases are listed_

**MIP21c7: Security Considerations**

**MIP21c8: Auditor Information and Report**

## Motivation

See paragraph summary above.

## Specification

### MIP21c1: Collateral Parameters

- **Liquidation remediation period** (`tau`):
- **Asset document hash** (`doc`):

### MIP21c2: Smart Contract Components

Inserting real world assets via an off-chain asset backed lender, where the liquidations are handled by a third-party requires certain changes to how a module would interact with the Maker protocol. Specifically,

- Minting
- Repayments
- Liquidations
- Write-offs

The above said, many items remain un-changed from the current mechanism:

- Debt computation
- Interest Rates
- Debt Ceiling Constraint

The smart contracts implementing the new functionality are as follows:

- `RwaLiquidationOracle`: which acts as a liquidation beacon for an off-chain enforcer.
- `RwaFlipper`: which acts as a dummy liquidation module in the event of write-offs.
- `RwaUrn`: which facilitates borrowing of DAI, delivering to a designated account.

Administrative items to be completed prior to implementation

- `RwaDeploySpell`: which deploys and authorizes the components for RWA collateral types.
- `RwaInitSpell`: which activates a new RWA collateral type.
- Auxiliary wallet contracts for handling disbursement and repayment of DAI.
- `RwaLiquidateSpell`: which allows MakerDAO governance to initiate liquidation proceedings.
- `RwaRemedySpell`:  which allows MakerDAO governance to dismiss liquidation proceedings.
- `RwaWriteoffSpell`:  which allows MakerDAO governance to write off a loan which was in liquidation.

### MIP21c3: Liquidation Oracle

Instead of performing liquidations via on-chain public auctions, triggered by a continuously updated price feed, liquidation is triggered manually by MakerDAO governance and is enforced off-chain by a third party. The standard oracle and auction infrastructure are replaced by a "liquidation oracle" contract. MakerDAO governance can initiate liquidation proceedings, when they deem it necessary, by calling `tell()` on the `RwaLiquidationOracle`. This starts the countdown, and after the remediation period has passed the oracle will start to report that the position is under liquidation. If the cause for triggering liquidation has been remedied, or if the original liquidation trigger was illegitimate, during the remediation period, or after, MakerDAO governance can dismiss the liquidation proceedings by calling `cure()`.

An off-chain enforcer (such as a trustee, etc.) can periodically check the liquidation status of the position by calling `good()`. `good()` will report that the position is in liquidation if and only if MakerDAO governance has triggered liquidation with `tell()` and the remediation period has passed without `cure()` being called.

### MIP21c4: Write-offs

If at the end of the liquidation process there is still debt remaining on the position, and MakerDAO governance believes that the debt will not be paid off, it can trigger a write-off by calling `cull()`. Write-off works by setting the system's collateral value to zero, which will cause the position to proceed to on-chain liquidation via `bite()`, etc. Unlike the liquidation modules for existing collateral types, the specialized liquidation module `RwaFlipper` does not attempt a sale of the underlying collateral and instead just marks the loss on the system's balance sheet by allowing system debt to be created.

### MIP21c5: Proposed Code (WIP)

[Real World Assets Example](https://github.com/livnev/rwa-example)

### MIP21c6: Test Cases

- Add Real World Asset Module
- Mint DAI
- Repay DAI
- Modify Annual Interest Rate
- Emergency Shutdown
- Liquidate Vault
- Write-off any associated losses

### MIP21c7: Security Considerations

The framework surrounding minting and repaying DAI is rather battle-hardened. Further, the computation on interest rate calculations and debt ceilings is equally hardened.

Counterintuitively, the majority of the functionality related to liquidations will be completed by real world people that are using legal documents to govern their actions. Thus many of the features that might otherwise cause security vulnerability may be disabled as they are effectively outsourced to a Trust company or the legal system in general.

Prior to any executive vote, the smart contracts domain team shall determine if formal verification is necessary.

### MIP21c8: Auditor Information and Report

The code has not been audited.

Prior to any executive vote, the smart contracts domain team shall determine if an audit and bug bounty program is necessary.

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

3. LendCo may then borrow DAI / USD (1*) from the Trust.

      1. The LendCo recipient target ETH address is changeable by MKR Governance.
      2. LendCo’s ETH address shall be a confirmed / validated, constant address for a registered broker-dealer OTC desk FBO of LendCo. (Note: based on (1*), it might be the Trust or Trustee that has the broker-dealer OTC desk account.)

The above process removes the custody risk for the DAI and inserts a process for accounting to track that DAI was minted into existence to a TFE, then moved from TFE to a jurisdiction specific “trust” account (or its equivalent). From there, the DAI is borrowed from the Trust when it is called upon by LendCo.

In reverse,

1. LendCo sends fiat wire to the broker-dealer OTC desk. (1*)
2. OTC desk converts fiat to DAI.
3. OTC desk orders the transfer of DAI to a previously validated ETH address (which is a smart contract) which was requested by LendCo
4. That Smart contract address is and represents the “Trust.”
5. Thereafter anyone that has MKR can cause that DAI to be transferred to the TFE ETH address.
6. Finally anyone can cause the TFE ETH address to pay down the Vault balance.
    - The above said, the underlying functionality will always exist that will allow anyone to pay down this vault.

(Note: based on (1*), it might be the Trust or Trustee that has the broker-dealer OTC desk account, not LendCo.)

**Note:** None of the addresses above are “owned” or controlled by LendCo. The addresses are Always with MKR governance. Important add-on: it is important for the DAI to have a source of origination; a stop in TFE; another stop in the Trust;. and then to its final destination. In all cases, LendCo / the Trust / TFE need a paper trail for accounting and regulatory compliance. The reasons for the gating of DAI minting and movements is that DAI loans may not be caused from minting to LendCo without the explicit assistance from someone else in the MKR community.)

**Operational Security**

Given the size and centralization of an off-chain asset backed lender, OpSec is a critical component to be hardened prior to any material debt ceiling being allocated. To that end, it is presently contemplated that LendCo will have its Vault adapter be modified away from the default (where DAI is returned to the originating ETH address) since we are planning to implement the above minting and repayment process.

The foregoing serves three purposes:

1. To minimize the attack surface to as little as possible on the minting of DAI
2. To allow for LendCo to clear a financial audit, as Broker / Dealer will issue account statements that outline the arrival of DAI and the sales/purchase price.
3. The Broker / Dealer has already completed KYC / AML on all of the cash that is used in exchange for the DAI (in both directions).

---

## Footnotes

1*  - At present, it is unknown if the Trustee will require direct engagement to provide the loans from the Trust to LendCo to facilitate each closing or not. Further, it is unknown if the Trustee will allow the conversion of DAI to USD to be done at LendCo or if they will require that they do the conversion with an account that is in their name F/B/O the Trust. This MIP is giving latitude for adjustment surrounding the flow of DAI / USD to meet the requirements of the Trust Company to be willing to serve as the Trustee of the Trust.
