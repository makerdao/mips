# MIP68: Monetalis Lusitano: UK Green Economy SME Wholesale Lending

## Preamble

```
MIP#: 68
Title: Monetalis Lusitano: UK Green Economy SME Wholesale Lending
Author(s): @Allan_Pedersen 
Contributors: @Wrongcomma @Julian_Frede 
Type: Technical
Status: Formal Submission
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
* [MIP65: Monetalis Clydesdale](https://forum.makerdao.com/t/mip65-clydesdale-monetalis-liquid-bond-strategy-execution/13148?u=allan_pedersen) 
* [Monetalis Evolution](https://forum.makerdao.com/t/monetalis-evolution/14811?u=allan_pedersen)

## Sentence Summary

MIP68 is a self-contained collateral onboarding MIP that will onboard and activate a RWA vault backed by the assets of a trust arranged by Monetalis.

## Paragraph Summary

MIP68 onboards a RWA Vault backed by the assets of a trust arranged by Monetalis. It brings about a RWA structure that can onboard a specific Green Economy SME lending strategy in the UK, but designed to be flexible enough to start as platform for adding other underwriting teams and executing other lending collateral strategies efficiently. And share structure oversight and design features with [MIP65](https://forum.makerdao.com/t/mip65-clydesdale-monetalis-liquid-bond-strategy-execution/13148). 

## Component Summary

**MIP68c1: Specification of the Proposed Structure and Contemplated Collateral Assets**
This component describes the details of the structure that Monetalis proposes to onboard as collateral, and the details of the collateral Monetalis will acquire.

**MIP68c2: Vault Financial Terms and Parameters**
This component outlines the key financial terms of the vault and legal structure hereof.

**MIP68c3: Technical Details**
This component contains the data and instructions necessary for the unambigous technical execution of the collateral onboarding.

**MIP68c4: Debt Ceiling Gradual Increase Mechanism**
This component describes an automatic process that increases the Debt Ceiling of the vault further once the first portion of debt has been used.

## Motivation

Monetalis submitted a MIP6 proposal late October 2021 and received a positive Greenlight vote in late November 2021. 

Based upon recently received feedback, work done within Monetalis in this period our vault proposal has been redesigned to what is proposed under this MIP.

The intention of Monetalis to support Maker's aspiration along a broad number of dimensions remains:

* Help the continued professionalization of RWA operations and integration between TradFi/Maker.
* Contribute to scalable growth of diversified, high-quality RWA collateral.
* Operationalize the Clean Money vision.
* Operationalize an entrepreneurial underwriting team Model.
* Create and operationalise a high-quality on-chain/off-chain TradFi/DeFi integration point.

The proposal should be seen as connected with [MIP65](https://forum.makerdao.com/t/mip65-clydesdale-monetalis-liquid-bond-strategy-execution/13148) in accordance the strategy outlined in [Monetalis Evolution](https://forum.makerdao.com/t/monetalis-evolution/14811)

## Specification / Proposal Details

### MIP68c1: Specification of the Proposed Structure and Contemplated Collateral Assets

#### Structure

The following legal structure will be used. It is a feedback adjusted version of the previous proposal. It continues to be a simple, plain vanilla, UK traditional securitization structure for this Asset class. 

![](https://github.com/makerdao/mips/blob/master/MIP68/legal_structure0.png)

This structure is functionally separated as follows and parameterized in the following sections.

![](https://github.com/makerdao/mips/blob/master/MIP68/legal_structure1.png)

The final documents underpinning the proposed structure will be finally designed and agreed in collaboration with an external legal counsel appointed by Maker.

**Structure**

This structure, beyond allowing Monetalis to start our Green Economy SME wholesale Lending business, is flexible enough to allow Monetalis to scale in a number of ways in practice:

* We can sponsor/incubate new, more innovative, underwriting teams focused on Maker relevant lending segments. These could be implement simply via signalled changes to Strategic Credit Guidelines and, potentially, Vault increases - a capability easily extendable to include the EU market.
* We can reuse/clone our TradFi/Maker integration point (BVI trust/trustees/Governance package/Bank/Auditor/Accountant etc) to support execution efforts such [MIP65 Clydesdale](https://forum.makerdao.com/t/mip65-clydesdale-monetalis-liquid-bond-strategy-execution/13148) and other potential arranged collateral.
* Over time, with multiple collateral types and situations tested against this structure ---and continued improvements of the structure---, components/processes that can beneficially be moved on-chain will naturally reveal themselves and be executed upon.

#### Collateral Assets

**1. UK Bond STRUCTURE**

| Category | Parameters/Terms |
|---|---|
| Instrument | Bond issued by independent orphan UK SPV (Monetalis Green Growth Limited - “MGG”) conforming to market standards for private securitisations in the UK. |
| Financial Terms | USD denominated<br>Fixed 2% interest p.a.<br>Annual Profit-share: 80% |
| Repayment | Interest paid monthly (retained until listing) <br>Profit-share paid annually <br> Principal paid at liquidation or end of term |
| Duration | 10 years |
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

The Credit Committee, which approves all credit taken on to the Bond, will require a unanimous yes for an approval. Three persons will be on this Committee, one of which will be an independent industry party. MGB (i.e., the Attestor) will have the **right to approve/reject this independent credit committee member** as he/she is proposed by Monetalis.

**2. STRATEGIC CREDIT GUIDELINES & DEPLOYMENT PATTERN FOR COLLATERAL**

**2a. Strategic Credit Guidelines**
Our principal credit strategy and market remains from our original MIP6, but have adjusted our guidelines slightly to better fit with Maker requirements and feedback. We now expect 100% of lenders to participate in our Green Economy Program that is explained [here](https://forum.makerdao.com/t/mip6-collateral-onboarding-application-monetalis-wholesale-green-economy-senior-secure-sme-funding/11223/27)

|Dimension|Requirement|
|---|---|
| Gross Return Target |4% - 5% |
| Risk | Seek lowest possible risk profile to accomplish return target. <br>Key requirements:<br>- Senior positions only<br>- Funding max 85% of End-Loan Amount<br>- All End-loans secured by underlying security/asset<br>- Clear and proven liquidation of security/asset must exist<br>- Max Loan-to-Value of security/asset of End-loan 85%<br>- E(loss) of any lender portfolio  < 1%<br>- Only Lenders with proven portfolios, management and operations with commensurate long-term results (i.e. E(loss) <1% loss achieved consistently)<br>- Keep standard conservative industry exclusion list |
| Duration | - Min 50% of portfolio with less than 24 months of duration. <br>- Max duration on loan of 48 months. |
| Green Economy | Only work with Lenders willing to participate in our Green Economy Program (100% participation). |
| Diversification (UK only) |- Max 40% of a lenders portfolio for loans over 24 months<br>- Max 30% of total Vault allocation per lender portfolio <br>- Max 60% Average portfolio maturity for refinance<br>- Max allocation per Asset Class: Clean Transportation Assets: 40%, Property-backed, non-amortizing: only less than 18 months: 15%, Property-backed, amortizing: 40%, Equipment and others: 30%, Soft assets: 5%, Others: 10%<br>- Max allocation per geography: 15% Wales, 90% England<br>- Max 20% allocation per allowed industry for non-specialised lenders |

**2b. Deployment Pattern**
To eliminate ramp-up risks, we will employ the following capital deployment pattern:

|Capital Deployment | Requirement|
|---|---|
| - 50M| Only refinance existing, performing portfolios with 50% or less left of duration and meeting the requirements of the Strategic Credit Guidelines. |
|50M -100M| Further refinancing of existing, performing portfolios and add Super Senior facilites with relevant. performing UK Credit funds and Banks with portfolio's meeting the requirements of the Strategic Credit Guidelines.|


**3. EXTERNAL REVIEWS & COMMENTARIES ON CREDIT, MARKET & MONETALIS OPERATIONS**
![](https://github.com/makerdao/mips/blob/master/MIP68/aggregate_commentary.png)

**[Monetalis Aggregate Commentary on RWF Credit Review](https://drive.google.com/file/d/1ql6NXi1CPVAlb52VLFee6ZiV7ZjNMYv4/view?usp=sharing)**
Aggregated Commentary by the **Monetalis Team** 

--
**[Instrument Review & Experiences](https://drive.google.com/file/d/1koJEv7rYknQljT6oxTE54K3UARjxlp7f/view?usp=sharing)**
by **Andrew Maskill**, Partner: Asset Finance & Leasing, Addleshaw Goddard

*From AG website:* Andrew specialises in advising on a variety of asset finance and leasing matters including operating and finance leasing, receivables finance, vendor finance, buying and selling lease books and structuring and tax issues. Andrew advises a variety of lessors and lessees including Bank of America, Natwest, BNP Paribas, Hitachi Capital, Close Brothers Investec Asset Finance, , SG Equipment Finance, and SMBC

--
**[Business Review](https://drive.google.com/file/d/1RERgryN40zwyNYtM5tPxfC0p2aWUk9VN/view?usp=sharing)** 
by  **George S. Ashworth**, Independent Expert
Worked in this industry for over 40 years, of which over 20 in board level roles.
Recent roles:
* Managing Director of Santander Asset Finance plc,
* Managing Director of ABN AMRO Leasing UK Ltd,
* Managing Director of Aldermore Bank Asset Finance,
* Operations Director of Lombard / Royal Bank of Scotland.

Served as:
* Chairman of Asset Finance Board (UK Finance & Leasing Association)
* Board Member of Leaseurope in Brussels
* Chair the Aberystwyth University (AU) Risk & Assurance Committee and Chair of AU Investments Committee.

--
**[Business and Credit Audit](https://drive.google.com/file/d/1X9WZYtct0tmnyzeo32neMmt4knS5cdwd/view?usp=sharing)**
by **Athol Abraham**, Independent Credit Auditor
Recent roles:
* Senior Management, Risk and Compliance, Vive Bank 
* VP of Risk & Compliance, LendInvest Group
* Head of Group Risk & Compliance, Amicus Group
* Head of Risk & Compliance, D&D UK & Canada
* Head of Risk & Compliance, ING
* Head of Lending Operations, Singer & Friedlander Bank
* Head of Operations, Gerling/Atradius

Today Independent Advisor: 
* Provide Advisory to banks and wholesale funders on SME lending, asset finance,
consumer finance etc
* Provide Audits to wholesale funders and banks on lending portfolios and
lenders for acquisition and facility underwriting
* Write/remediate credit policies for lenders at the request of funders
*  FCA applications (bank and lending), manage FCA interventions, including
audits, remediations and VREQ’s

Recent Client List: UK Lending
Goldman Sachs / Merchant Money / Tandem Bank / Nucleus / Carrick Asset Finance / Money Advice & Pensions Service / Pollen Street Capital / Walbrook Asset Finance / FlyNowPaylater /  Bank of London / UK Agricultural Finance / Shawbrook Bank / Quilam Capital / Twinco Capital

--
**[Industry Experience](https://drive.google.com/file/d/1Z6Alg__3zpKy727G1-MRXjJNmF8_8Jss/view?usp=sharing)** & **[Legal structure Review](https://drive.google.com/file/d/13UJyTAJzyW7fWju0xR1wKyUIpNGbxouj/view?usp=sharing)** 
by **Nick Stainthorpe**, Partner, Reed Smith

*From RS Website:* Nick is a finance partner who advises clients on a wide range of structured financings and derivatives. He has significant experience in the following areas:
* Securitisation and warehousing
* Receivables finance and supply chain finance
* Collateralised financing and risk transfer trades
* Financing of specialty finance and fintech platforms
* Preferred equity and junior debt financing of real estate businesses
* Loan portfolio sales
* FX, rates, equity, credit and commodity derivatives
* Repo and stock lending
* Margin loans, collars and other financings of listed equities
* Fund finance including subscription line facilities, GP support facilities and NAV facilities
* Emerging markets
* Islamic finance

He participates actively in industry bodies and speaks regularly at events on matters such as the implications of regulation on the finance sector and specialty finance. He hosts the Alternative Finance Investor Roadshow, which is a leading forum for the non-bank finance sector. Nick is listed as a “Leading Lawyer” by Legal 500 UK 2020 and states that “Nick Stainthorpe consistently excels. He has a strong commercial focus and a thorough understanding of both the law and complex transactional processes. He builds strong client relationships through a very open, two-way communication process.” Legal 500 UK 2019 states that Nick “has very broad experience, is approachable and finds creative solutions to any problems while balancing legal risks”.

### MIP68c2: Vault Financial Terms and Parameters

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

* Collateral Adapter address: [xyz]
* Conduit address: [xyz]
* Initial Debt Ceiling: 50 million
* Stability Fee: 0% (Yield is paid manually to the buffer directly by the trust)

All other risk parameters are not applicable.

### MIP68c4: Debt Ceiling Gradual Increase Mechanism

This MIP includes a mechanism for increasing the Debt Ceiling further to improve scale and throughput of the onboarding process, while reducing risk.

Once the MIP68 vault has surpassed 40 million debt and maintained at least 40 million in outstanding debt for 30 consecutive days, a Debt Ceiling raise to 100 million is included in the next executive votes until it is executed. 

This mechanism can be deactivated to prevent the automatic increase of the debt ceiling. Deactivation occurs if a valid signal request that specifically mentions deactivating MIP68c4 passes the on-chain poll stage.

At least 2 weeks in advance of the executive vote to increase the debt-ceiling, Monetalis will file on the forum an Independent Credit Audit of the Monetalis business. 

Also, at least 2 weeks in advance of the executive vote to increase the debt-ceiling, Monetalis will file a report on the forum clarifying how professional/institutional capital have been/will be included in Monetalis issued non-bank lender facilities on a retro- and prospective basis.