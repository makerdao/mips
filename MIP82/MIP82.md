# MIP82: Monetalis/Coinbase Appaloosa

## Preamble

```
MIP#: 82
Title: Monetalis/Coinbase Appaloosa
Author(s): @Allan_Pedersen 
Contributors:
Tags:
Status: Obsolete
Date Proposed: 2022-09-07
Date Ratified: 2022-10-24
Dependencies: MIP21
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip82-monetalis-coinbase-appaloosa/17768
Ratification Poll URL: https://vote.makerdao.com/polling/QmRVN2SB
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## References

* [ALM framework for MakerDAO](https://forum.makerdao.com/t/alm-framework-for-makerdao/12994)
* [MIP65: Monetalis Clydesdale: Liquid Bond Strategy & Execution](https://forum.makerdao.com/t/mip65-monetalis-clydesdale-liquid-bond-strategy-execution/13148)

## Sentence Summary

MIP82 will onboard and activate a DAI 500M RWA vault for the purpose of acquiring USDC via the PSM and provide a loan of USDC to Coinbase, expected to be split in thirds on respectively 6, 9 and 12 months terms with ETH or BTC provided as collateral.

## Paragraph Summary

MIP82 onboards a DAI 500M RWA vault that will acquire USDC via the PSM and provide a USDC Loan backed by Eth/Btc to Coinbase. The loan is expected to be split in three terms: 6, 9 and 12. The legal, structural, and technical set-up will be “close cousins” of the structure and technical implementation under [MIP65](https://mips.makerdao.com/mips/details/MIP65) and will be executed under a strict verification program. 

## Component Summary

**MIP82c1: Collateral Design**
This component contains the proposed loan/collateral key terms and legal structure.

**MIP82c2:  Verification Conditions for Collateral Onboarding**
This component sets out the verification mechanism and conditions ensuring appropriate collateral is onboarded using an appropriate legal structure and governance framework using an appropriate technical solution.

**MIP82c3: Final Terms Poll**
This component sets out how the final key terms of the collateral are proposed and approved/denied.

**MIP82c4: Technical Conditions of the Collateral Onboarding**
This component contains the technical requirements for unambiguous technical execution of the collateral onboarding.

## Motivation

* We wish to further activate the holdings of USDC on Maker’s balance sheet.
* In collaboration with Coinbase we have found a solution that:
    * Remains liquid (max 48h to full liquidation).
    * Transaction remains in crypto (USDC Loan w/ Crypto Collateral backing).
    * Brings meaningful yield to Maker.
    * Exchanges USDC underlying counter party risk for a direct Coinbase lending risk that is 125% over-collateralized with Eth/Btc and collateral sit with a third-party custodian.
    * Is scalable

## Specification / Proposal Details

![picture](https://github.com/makerdao/mips/blob/master/MIP82/picture.jpeg)

Picture AI'ed w/nightcafe.studio

### MIP82c1: Collateral Design

**c1.1 Legal structure and Governance** 

Monetalis will reuse the BVI trust and governance structure developed and verified under MIP65, but set up an independent trust (via Deed) within this structure to hold the assets under this MIPXX. The below structure chart set this out with the new component in yellow:  

![picture](https://github.com/makerdao/mips/blob/master/MIP82/legalstructureandgovernance.png)

This above-established structure (Trustee: James Asset PTC Limited) has today a Prime Broker International Account relationship with Coinbase and will be the counterparty for the lending agreement with Coinbase on behalf of the SPV trust for this MIP82 (Moneypenny Asset Trust). 

A separate Coinbase Account wallet ETH address, connected to above structure and lending agreement, must be provided and used to construct the smart contracts necessary to complete the onboarding process specified in MIP82c4.

**c1.2 Lending Arrangement Key Terms**

**c1.2.1 Lending Agreement** 

| Component | Key Terms | 
| :-------- | :-------- |
| Parties|- Coinbase Custody International Limited, IRL as Borrower <br>- James Asset PTC Limited, BVI (Trustee) for Moneypenny Asset Trust (Trust) as Lender|
|Amount|200,000,000.00 to 500,000,000.00 <br><br>*Exact amount to be proposed and approved according to MIP82c3* |
|Use of Funds|Facilitate Coinbase’s financing business activities|
|Currency| USDC|
|Term|Loan expected split into 3 equally sized tranches (⅓) with different lock-up terms: 6, 9 and 12 months. <br> <br> 2 weeks ahead of a term period ending, Coinbase will propose new interest rates for another period - and Maker can accept or liquidate accordingly.<br><br>*Exact tranching and terms to be proposed and approved according to MIP82c3* |
|Liquidation| Any of the term lending tranches can be fully liquidated within 48 hours.|
|Interest| Expected to be within the range of 4.5% to 6% and interest will be paid monthly <br><br>*Exact interest rate to be proposed and approved according to MIP82c3* .|
|Collateral Conditions|- Eth and/or Btc will be used as Collateral <br>- 125% target collateralization ratio with a requirement of collateral top-up when ratio reaches 120% and allowed collateral take-out when ratio reaches 130% <br>- Collateral valued daily and marked-to-market <br>- Collateral will be custodied with a regulated third-party Crypto Custodian provider as agreed by both parties. (Anchorage, Bank Sygnum and other institutional custodians are in the consideration set at this moment) <br><br>*Exact Collateralization terms to be proposed and approved according to MIP82c3*|
|Early Termination Interest Rebasing| In case of early termination, of any of the term tranches, a refund payment must be made to Coinbase, that rebases the interest earned during the term period upto early termination date downwards to an average overnight interest rate.<br> <br> This Interest Rebase Rate is expected to be in the range of 1.5% to 3% <br><br>*Exact interest rebase rate to be proposed and approved according to MIP82c3* |

**c1.2.2 Arrangement Agreement W/Monetalis & Structure Cost estimations**
Fees and costs will be deducted from the loan’s interest income.

| Component | Detail | 
| :-------- | :-------- |
|Monetalis Fees| Exact terms to be proposed and approved according to MIP82c3 |
|Legal Setup, advice and service providers in structure|-“At-cost” basis<br>-Estimated Setup Cost/Fees:  >100K<br>-Estimated Annual Running Cost: ~120K|

**c1.2.3 Expected Monthly Interest Payment Flow**
* Interest paid monthly in USDC to Coinbase Account 
* Immediately converted via PSM to DAI
* DAI Immediately paid into Surplus Buffer

***Monthly Interest Cash flow Estimate:   	500M  x  ~5%  x  ~1/12 	~      	2.1M***

### MIP82c2: Verification Conditions for Collateral Onboarding

**c2.1 Legal Structure and Governance Verification Requirements**
At least one community member, with legal credentials, must, through a public forum post, validated by at least one Facilitator, provide a verification of the legal and governance structure appropriateness for holding a large amount of low-risk real-world asset collateral for Maker. This includes legal review of the loan agreement with Coinbase Custody International Limited, the custodial arrangements for the ETH/BTC collateral, and any other agreements.

**c2.2 Lending Arrangement Key Terms Verification Requirements**
The Strategic Finance Core Unit Facilitator must, through a public forum post, provide a Verification of the Lending Agreements Business Terms & Risks ensuring the appropriateness of this USDC allocation for Maker and its ALM strategy.

**c2.3 Technical Verification Requirements**
The Collateral Engineering Services Facilitator must, through a public forum post, provide a Verification of the technical appropriateness of the MIP21 designed solution in accordance with the Collateral Onboarding process (“COB”).

Should any one of the above verifications not be forthcoming, for whatever reason, this MIP will not move forward in the COB.

### MIP82c3: Final Terms Poll
The week before the executive proposal is slated to be voted on, The Governance facilitators will submit a Final Terms Poll in which key terms from MIP82c1.2, that references MIP82c3, will be finally, exactly, proposed. 

if the Final Terms Poll fails, Monetalis may submit up to 2 further Final Term Sheet Polls following the same structure. 

Should all Final Terms Polls fail, the MIP will not move any further.

### MIP82c4: Technical Conditions of the Collateral Onboarding

The technical implementation must follow the MIP21 framework. Upon Collateral Engineering Services solution Verification in MIP82c2, the relevant smart contracts must be constructed and deployed. The ETH Address emitted by the legal structure specified in MIP82c1 should only be changeable by MakerDAO Governance, and follow the MIP21 framework.

These smart contracts must only allow for the generation of Dai or USDC through a vault that is sent to the ETH address of the legal structure as its ultimate destination, and it must not be technically possible to send the Dai or USDC elsewhere, in accordance with MIP21.

There must also not be any additional technical features or complexity that goes beyond the minimum necessary smart contracts and dummy constructs to enable the generation of Dai and its transfer to the ETH Address emitted by the legal structure.

The ability to initiate the generation of Dai or USDC from the vault and trigger their transfer to the ETH Address emitted by the legal structure is given to an Ethereum address controlled by Monetalis. This address must have no ability to access the funds.

When the collateral onboarding process for MIP82 has progressed to step 7 in the COB, an executive vote must be created (or code must be bundled into a broader executive vote) that activates all permissions for the vault to be onboarded based on the smart contracts specified in MIP82c4.

The vault must provide:
* Debt Ceiling as determined in MIP82c3 .
* Stability Fee of 0% (surplus is paid manually through the legal structure, as specified in MIP82c1)
* All other parameters must be set to ensure they have no functional impact.
