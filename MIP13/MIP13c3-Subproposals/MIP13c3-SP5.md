# MIP13c3-SP5: Maker to commence onboarding work of Centrifuge based Collateral

## Preamble
```
MIP13c3-SP#: 5
Author(s): Lucas Vogelsang (@spin on forum.makerdao.com, lucas@centrifuge.io)
Contributors:
Status: Accepted
Date Proposed: 2020-09-09
Date Ratified: 2020-10-28
---
Declaration Statement: MakerDAO supports Centrifuges effort in developing an onboarding process for their RWA as collateral to MCD.
Declaration to Replace: n/a
```

## Sentence Summary

MIP13c3-SP5 declares that MakerDAO supports Centrifuges effort in developing an onboarding process for their RWA as collateral to MCD.

## Specification

### Context and Motivation

Onboarding Real Wold Assets to Maker is seen as one of the main priorities to scale MakerDAO. This is a goal Centrifuge has been working on for over a year. It requires adapting the current collateral onboarding process as these assets are  different from the current collateral. Centrifuge has worked with both the domain teams as well as the broader community to discuss these differences and come up with solutions such as the MIP22 proposed in this cycle.

Onboarding real world assets to MakerDAO is a unique challenge, that - similar to the migration from SAI to DAI - might seem as an unsourmountable task at first. However, it is only the natural extention of the current MCD building on prior learnings. This declaration outlines a path towards onboarding those assets at a low debt ceiling to gain first experience within the community and kick of the next evolution of Multi-Collateral-Dai towards a diversified asset backed lending protocol.

With this endeavour come many questions that the community hasn't had to address so far. Those need to be diligently answered by setting up a thorough process. This process should MakerDAO can gain valuable experience by experimenting at a small scale slowly growing the amount of DAI that can be generated from these assets as it gains confidence in the system and the system is improved to offer further protection.

This declaration of intent is the first step to developing an onboarding process specific to Centrifuge based RWA applications in MakerDAO.

#### Collateral Overview

Centrifuge has partnered with a number of different asset originators that can be onboarded to Maker ready to add demand for DAI and diversity to the system. These asset originatiors jointly have capital needs of well over DAI 50M and bring a diverse set of crypto-uncorrelated assets to Maker. All of these collateral types have followed the standard MIP6 process and have already been greenlit by the communiy (except KickFurther which is in the current cycle).

The following collateral applications are to be considered for this new process. They are listed with their capital demands and their current cost of capital as a benchmark for the Maker to use as guidance on the opportunity to generate DAI.

* **ConsolFreight**, Financing freight invoices, Capital needs in DAI: up to 5M, Current Cost of Capital: they have a bank line of credit at 1.5% for $50k, [MIP6](https://forum.makerdao.com/t/cf-drop-mip6-application-consolfreight-drop-tokenized-freight-shipping-invoices/2214)
* **New Silver**: Financing real estate backed loans, Capital needs in DAI: 15M, Current cost of Capital: NS holds a private fund credit line of $20M with a 3MO LIBOR +4.75%, [MIP6](https://forum.makerdao.com/t/ns-drop-mip6-application-new-silver-drop-real-estate-backed-loans/3477)
* **Paperchain**, Financing music streaming invoices, Capital needs in DAI: 1M, Current cost of capital: sourcing from independent investors and funds at 6-10% range, [MIP6](https://forum.makerdao.com/t/pc-drop-mip6-application-paperchain-drop-tokenized-music-streaming-invoices/2215)
* **KickFurther**, Financing consignment inventory for eCommerce & retail brands, MIP6 application to follow
* **Harbor Trade Credit**, Financing short term trade finance transactions [MIP6](https://forum.makerdao.com/t/htc-drop-mip6-application-harbor-trade-credit-drop-short-term-trade-receivables/3502)

### Declaration Detail

The MakerDAO community declares its intent to onboard Centrifuge's assets according to an onboarding process outlined below. Centrifuge is encouraged to develop and implement this process for its proposed assets resulting in a MIP template that can be used for this category of assets broadly based on the current MIP6-MIP12 process.

Given the proper due dilligence by the Maker community and the domain teams, Centrifuge is encouraged to use the developed MIP with collateral types as soon as they are ready.

#### Scope of this onboarding process

The process is designed to be safe for onboarding assets up to a certain limit. If these limits are hit, governance must decide if the debt ceiling can be increased gradually or how further protection (such as more due dilligence or technical improvements) should be added. Assets onboarding with this process should at the beginning not surpass **4M DAI** in debt ceiling per collateral type. And the total for all collateral types following this process should not surpass **15M DAI** to stay within a bounds that even in the worst case scenario would not endanger the Maker project and DAI.

#### Collateral Onboarding Form (MIP6)

The regular collateral onboarding process used for tokens like 0x, Loopring etc. is an inspiration for this process. And all assets to be considered for onboarding should start out with a MIP6 proposal. In the future a likely adaption of this might be to create multiple variations for MIP6 proposals depending on the collateral type. For now, this is is out of scope and the MIP6 and MIP9 Community Greenlight Poll should be used.

#### Onboarding Process Component 1: Liquidation Process

Real world assets require a different liquidation than using the existing keeper infrastructure. The technical changes are defined in the proposed MIP22. For the collateral type, the application should outline how the portfolio can be liquidated through the mechanism defined in MIP22 listing different offchain lenders. The community must exercise due dilligence on this process ensuring that in fact these assets can be liquidated off chain.

Requirements for onboarding:
- Description of the liquidation process overall
- Detailed model of the expected losses incurred at liquidation as well as the speed of which these assets can be liquidated
- Supporting documentation/evidence of available off-chain refinancing options for the collateral if the loans can't be held to maturity

#### Onboarding Process Component 2: Smart Contracts Work

Like any other collateral added to Maker, the technical integration must be audited prior to onboarding the collateral type. Centrifuge is developing the necessary adapters as well as the executive code (the spell) that can add onboard a Centrifuge-based asset to MCD. As part of the smart contract work that will go into this, Centrifuge will do a full dry run of this with a Kovan-deployment of DSS and work with the smart contracts domain team as well as other developers familiar with the project. In addition, the code will be audited by an audit firm that has performed audits of the Maker codebase before.

The resulting set of contracts that are to be used then only needs to be minimally modified for each new collateral type. Any modifications to the code would require the re-evaluation of the technical onboarding process.

Requirements for onboarding:
- List out any modifications deviating from previously approved versions of collateral adapters.
    - If there are none, no external audit necessary
    - If there are changes, resent a thorough technical review and audit of any modifications

#### Onboarding Process Component 3: Risk Work

The onboarding process for risk will be in conjuction with the risk domain teams as their capacity permits. All asset proposals need to include the usual risk parameters for the system. This includes the parameters below:

* **Stability fee**: fee on Dai that is generated from a RWA Vault should be competitive with the current cost of capital of the asset originator or the industry standard rate of the specific asset.
* **Debt ceiling**: We propose the maximum amount of Dai that can be generated from Vault/RWA should not be higher than 4m in the first itereation. The debt ceiling for RWA as collateral should be determined by the capital need / origination volume of the asset originator.
* **Collateralization ratio**: The ratio between the value of the collateral and the value of the generated Dai for the specific RWA vault.
* **Downside protection / TIN ratio**: The ratio between DROP and TIN (Senior and Junior tranche). This is an additional saftey cushion for any RWA vault. It should be derived from the asset originators historic default rate and/or the asset's historic default rate (e.g., Invoices as an asset type have a historic default rate of less than 1%)
- **Reporting**: Present a Risk Assessment Report co-authored by active Maker community members; either by the current Risk Domain Team or longer term a Domain Team specializing in non-crypto assets.

#### Executive Vote

Following a positive community greenlight (MIP8) and completion of the work outlined in the three components above, the result should be an executive vote on the spell onboarding the asset to the DAO based on the risk parameters. A MIP template will be created for this.

## Relevant links

* [MIP22 Proposal: Centrifuge Direct Liquidation Module](https://forum.makerdao.com/t/mip22-centrifuge-direct-liquidation-module/3930)
* [MIP22 Pre-MIP Discussion: Vault Liquidation Mechanism for Centrifuge Trade Finance Assets](https://forum.makerdao.com/t/vault-liquidation-mechanism-for-centrifuge-trade-finance-assets-a-pre-mip-discussion/3737)
* [Centrifuge: Onboarding RWA Backed Collateral to MCD](com/t/centrifuge-onboarding-rwa-backed-collateral-to-mcd/2721)

### MIP6 Proposals

* [HTC](https://forum.makerdao.com/t/htc-drop-mip6-application-harbor-trade-credit-drop-short-term-trade-receivables/3502)
* [CF](https://forum.makerdao.com/t/cf-drop-mip6-application-consolfreight-drop-tokenized-freight-shipping-invoices/2214)
* [PC](https://forum.makerdao.com/t/pc-drop-mip6-application-paperchain-drop-tokenized-music-streaming-invoices/2215)
* [NS](https://forum.makerdao.com/t/ns-drop-mip6-application-new-silver-drop-real-estate-backed-loans/3477)
* KF (TBC)
