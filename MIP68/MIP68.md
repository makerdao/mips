# MIP68: Monetalis Vault V2

## Preamble

```
MIP#: 68
Title: Monetalis Vault V2
Author(s): @Allan_Pedersen
Contributors:
Type: Technical
Status: RFC
Date Proposed: 2022-09-03
Date Ratified: n/a
Dependencies: n/a
Replaces: n/a
Forum URL: https://forum.makerdao.com/t/mip68-monetalis-vault-v2/13789
```
## References

* [Monetalis MIP6](https://forum.makerdao.com/t/mip6-collateral-onboarding-application-monetalis-wholesale-green-economy-senior-secure-sme-funding/11223?u=allan_pedersen)
* [Greenlight Vote](https://vote.makerdao.com/polling/QmS52AtS?network=mainnet#poll-detail)
* [RWF Risk Eval](https://forum.makerdao.com/t/monetalis-mip6-collateral-onboarding-risk-evaluation/13658)

## Sentence Summary

MIP68 is a self-contained collateral onboarding MIP that will onboard and activate a RWA vault backed by the assets of a trust arranged by Monetalis.

## Paragraph Summary

MIP68 onboards a RWA Vault backed by the assets of a trust arranged by Monetalis. It brings about a RWA structure that can onboard a specific Green Economy SME lending strategy in the UK, but designed to be flexible enough to start as platform for Arranging and executing other lending collateral strategies efficiently.

## Component Summary

**MIP68c1: Specification of the proposed structure and contemplated collateral assets**
This component describes the details of the structure that Monetalis proposes to onboard as collateral, and the details of the collateral Monetalis will acquire.

**MIP68c2: Vault Financial terms and parameters**
This component outlines the key financial terms of the vault and legal structure hereof.

**MIP68c3: Technical Details**
This component contains the data and instructions necessary for the unambigous technical execution of the collateral onboarding

**MIP68c4: Debt Ceiling gradual increase mechanism**
This component describes an automatic process that increases the debt ceiling of the vault further once the first portion of debt has been used.

## Motivation

Monetalis submitted a MIP6 proposal late October 2021 and received a positive Greenlight vote in late November 2021.

Based upon recently received feedback, work done within Monetalis in this period and thinking around the Arranger model, our vault proposal has been redesigned to what is proposed under this MIP.

The intention of Monetalis to support Maker's aspiration along a broad number of dimensions remains:

* Help the continued professionalization of RWA operations and integration between TradFi/Maker
* Contribute to scalable growth of diversified, high-quality RWA collateral
* Operationalize the Clean Money vision
* Operationalize the Arranger Model

## Specification / Proposal Details

### MIP68c1: Specification of the proposed structure and contemplated collateral asset

#### Structure

The following legal structure will be used. It is a feedback adjusted version of the previous proposal. It continues to be a simple, plain vanilla, UK traditional securitization structure for this Asset class.

![structure1](https://github.com/makerdao/mips/blob/master/MIP68/structure1.png)

This structure is functionally separated as follows and parameterized in the following sections.

![structure2](https://github.com/makerdao/mips/blob/master/MIP68/structure2.png)

The final documents underpinning the proposed structure will be finally designed and agreed in collaboration with an external legal counsel appointed by Maker.

**Arranging Alpha Structure**
This structure, beyond allowing Monetalis to start our Green Economy SME wholesale Lending business, is flexible enough to start Monetalis doing Arranging in practice:
* We can sponsor/incubate new, potentially more innovative, underwriting teams focused on Maker relevant lending segments. These could be implement simply via signalled changes to Strategic Credit Guidelines and, potentially, Vault increases - a capability easily extendable to include the EU market.
* We can reuse/clone our TradFi/Maker integration point (BVI trust/trustees/Governance package/Bank/Auditor/Accountant etc) to support execution efforts such as Project Clydesdale (executing liquid Bond strategy) and other potential arranged collateral.
* Over time, with multiple collateral types and situations tested against this structure - and continued improvements of the structure - components/processes that can beneficially be moved on-chain will naturally reveal themselves and be executed upon.

#### Collateral Assets

**1. UK Bond STRUCTURE**

| Category | Parameters/Terms |
|---|---|
| Instrument | Bond issued by independent orphan UK SPV (Monetalis Green Growth Limited - “MGG”) conforming to market standards for private securitisations in the UK. |
| Financial Terms | USD denominated<br>Fixed 2% interest p.a.<br>Annual Profit-share: 80% |
| Repayment | Interest paid monthly (retained until listing) <br>Profit-share paid annually <br> Principal paid at liquidation or end of term |
| Duration | 50 years |
| Liquidation/termination | On-demand |
| Service Fee | Fixed 1% p.a.<br>Annual Profit-share: 20% |
| Servicer Co-funding | 90% of managements profit-share is reinvested on par until this equates to 1% of the principal funding provided by the BVI Trust |
| Min Collateralization Ratio | 105% |
| Collateral Valuation | Sum of the aggregate Outstanding Principal<br>Amount and accrued interest and fees with respect to each Eligible Acquired Receivable, which is not currently a Defaulted Receivable and all cash standing to the credit of the Payment Account; |
| Covenants | The UK SPV will give the following covenants:<br>Compliance with laws<br>Use of proceeds<br>Financial statements<br>Tax compliance<br>Enforcement of assets<br>Centre of main interests<br>Negative pledge<br>No indebtedness<br>No disposals<br>No subsidiaries<br>No employees |
| Collections Waterfall | 1.Cost of Security Trustee<br>2.Expenses (agents, audits etc)<br>3.Servicer fee<br>4.Interest and Principal <br>5.Profit share |
| Underlying collateral | Senior loans secured on portfolios of secured loans to SMEs with the originator or Junior fund holding the junior tranche conforming to the Strategic Credit Guidelines. (“eligible receivables”) |
| Credit Committee | The Credit Committee will consist of Three individuals. Two Monetalis employees and one independent party. Monetalis will propose the independent party and Maker (via MGB) has the right to accept or reject. |
| Security Trustee | The underlying collateral will be held by an independent security trustee for the Bond holder - i.e. MGB<br>Appointment: [Mulvaney] |
| Compliance audit | The Attestor/an entity appointed by Attestor/Maker will carry out annual checks to ensure that the underlying collateral complies with the agreed eligibility criteria |
| Servicer, Facility Agent and Cash Administrator | Monetalis Services Ltd |
| Corporate Services Provider and Registrar | [Mulvaney] |
| Reporting for Oracle | Detailed per loan and per portfolio reporting and valuation on a monthly basis - provided by Monetalis Services Lrd. |
| Hedging GBP/USD | Hedging instruments acquired to ensure Collateralization ratio remains at, or above, 105% on a USD basis. |
| Other services | Auditor : TBD<br>Bank : [Bank Sygnum, CH] |
| Opinions | English law opinions on enforceability of Bond documents and Trust documents<br>UK tax opinion<br>English capacity opinion on UK SPV and Servicer<br>BVI capacity opinion on BVI trustee |
| Market Listing|Pursue technical listing to be accomplished within 12 months  |

**Key parties:**

* [Mulvaney](https://mulvaney.co/)
* [Monetalis](https://monetalis.io/)

**Key Design Choices in Bond**

The Bond is, very importantly, **On-demand**. This means that Maker (via MGB) can ask for the Bond to be run-off at any time and for whatever reason. This means the usual complex covenant rules, allowing the buyer of the Bond to redeem the Bond for certain breaches, are not needed. It puts all power in the hands of Maker and transaction costs (particularly exchange rates).

The funding provided under the Bond is **strictly constrained by the Strategic Credit Guidelines**, which can be adjusted from time to time in agreement between Maker and Monetalis via a signal.

This Bond constructs, under current UK and BVI, a situation of zero withholding tax on the PIK interest at the outset. Over this year we will complete a listing of the Bond, at which point all payments from the Bond will be on a **zero withholding tax basis**, in line with UK securitization standards for non-UK institutional investors. This means interest will accrue in the Bond until the above listing is accomplished and monthly interest payments can resume.

In calculation of collateral value, defaults are deducted. Defaulted receivables are defined as follows:
>“...any Receivable which becomes 90 days or more overdue from its original due date; and in respect of which the related Debtor is in liquidation, administration, receivership or bankruptcy (or analogous proceedings), or legal proceedings have been commenced for its recovery or which have been written off as uncollectible in accordance with the Credit and Collection Policies….”

The Attestor/Attestor Committee appointed in MGB will have **information and Audit rights** on the Bond instrument.

The Credit Committee, which approves all credit taken on to the Bond, will require a unanimous yes for an approval. Three persons will be on this Committee, one of which will be an independent industry party. MGB (i.e. the Attestor) will have the **right to approve/reject this independent credit committee member** as he/she is proposed by Monetalis.


**2. STRATEGIC CREDIT GUIDELINES FOR COLLATERAL**
Our principal credit strategy and market remains from our original MIP6, but have adjusted our guidelines slightly except for Green Economy. We now expect 100% of lenders to participate in our Green Economy Program that is explained [here](https://forum.makerdao.com/t/mip6-collateral-onboarding-application-monetalis-wholesale-green-economy-senior-secure-sme-funding/11223/27?u=allan_pedersen)


| Gross Return Target |4% - 5% |
|---|---|
| Risk | Seek lowest possible risk profile to accomplish return target. <br>Key requirements:<br>- Senior positions only<br>- Funding max 85% of End-Loan Amount<br>- All End-loans secured by underlying security/asset<br>- Clear and proven liquidation of security/asset must exist<br>- Max Loan-to-Value of security/asset of End-loan 85%<br>- E(loss) of any lender portfolio  < 1%<br>- Only Lenders with proven portfolios, management and operations with commensurate long-term results (i.e. E(loss) <1% loss achieved consistently)<br>- Keep standard conservative industry exclusion list |
| Duration | - Min 50% of portfolio with less than 24 months of duration. <br>- Max duration on loan of 48 months. |
| Green Economy | Only work with Lenders willing to participate in our Green Economy Program (100% participation). |
| Diversification (UK only) |- Max 40% of a lenders portfolio for loans over 24 months<br>- Max 30% of total Vault allocation per lender portfolio (calculated with DAI 100M as total Vault Allocation)<br>- Max 60% Average portfolio maturity for refinance<br>- Max allocation per Asset Class: Clean Transportation Assets: 40%, Property-backed, non-amortizing: only less than 12 months and only for renewal: 15%, Property-backed, amortizing: 25%, Equipment and others: 20%, Soft assets: 5%, Others: 10%<br>- Max allocation per geography: 15% Wales, 90% England<br>- Max 20% allocation per allowed industry for non-specialised lenders |


**3. EXTERNAL REVIEWS & COMMENTARIES ON CREDIT, MARKET & MONETALIS OPERATIONS**

EXTERNAL REVIEWS/COMMENTARIES ARE ON THEIR WAY AND WILL BE PUT HERE AS THEY ARRIVE.

Reed Smith / [Legal structure Review](https://github.com/makerdao/mips/blob/master/MIP68/aggregatecommentary.png)

**4. MONETALIS UPDATES**

A NUMBER OF THESE ARE ON THEIR WAY AND WILL BE PUT HERE WHEN READY.


### MIP68c2: Vault Financial terms and parameters

The yield, i.e., interest and profit-share, of the collateral is paid directly to the buffer by the following BVI trust.

The legal representation of Maker will be via BVI trust with the following parameters:

| Category | Parameters/Terms |
|---|---|
| Name | Maker Green Bond Trustee Limited (“MGB”) |
| Legal Structure | BVI-based English law trust with control over all material decisions given to the Beneficiaries through the MakerDAO resolution mechanism |
| Beneficiaries | MKR holders |
| Scope of Trust & Operations | The scope of the activities are strictly limited to the following main components:<br>Buy and hold Eligible Bond from Monetalis<br>Mint DAI from Vault and convert to fiat to fund Bond <br>Convert to DAI all proceeds of the Bond and pay to Vault<br>Otherwise as directed by MakerDAO resolution |
| Trustee | [SHRM Group, BVI] |
| Scope of Trustee Instructions | The Trustee is not given any material discretions and will expect to be directed by the Beneficiaries |
| Governance outside of Trustee instructions | MKR holder resolution mechanism. An Attestor can be appointed by Maker to oversee the activities of the Trustee. |
| Services to Trust | Admin Services: [SHRM Group, BVI]<br>Bank/Custodian: [Bank Sygnum, CH] |
| Reporting | [SHRM Group, BVI] |
| Auditor | TBD |

**Key Parties:**
* [SHRM](https://shrmgroup.com/)
* [Bank Sygnum](https://www.sygnum.com/)

The “Maker Off-chain Governance Package” (instructions to Trustee, Attestor/Attestor Committee role and Maker Vote) will be set to conform with the practice in development within the RWF CU team and for community decision. It will be adjusted over time via Maker Resolutions/Signals as it evolves into better practices.


### MIP68c3: Technical Details
This Vault is implemented using the MIP21 standard with the following parameters at launch

Collateral Adapter address: [xyz]

Conduit address: [xyz]

Initial Debt Ceiling: 50 million

Stability Fee: 0% (Yield is paid manually to the buffer directly by the trust)

All other risk parameters are not applicable.

### MIP68c4: Debt Ceiling gradual increase mechanism

This MIP includes a mechanism for increasing the Debt Ceiling further to improve scale and throughput of the onboarding process, while reducing risk.

Once the MIP68 vault has surpassed 40 million debt and maintained at least 40 million in outstanding debt for 30 consecutive days, a Debt Ceiling raise to 100 million is included in the next executive votes until it is executed.

This mechanism can be deactivated to prevent the automatic increase of the debt ceiling. Deactivation occurs if a valid signal request that specifically mentions deactivating MIP68c4 passes the on-chain poll stage.
