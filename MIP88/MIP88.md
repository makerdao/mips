# MIP88: Monetalis - Redwood Friesian

## Preamble

```
MIP#: 88
Title: Monetalis - Redwood Friesian
Author(s): @Allan_Pedersen @Sequoia_RMBS
Contributors: 
Type: General
Status: Accepted
Date Proposed: 2022-10-12
Date Ratified: 2022-11-28
Dependencies: MIP21
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip88-monetalis-redwood-friesian/18336
Ratification Poll URL: https://vote.makerdao.com/polling/QmYsXVSx
```

## References

* [MIP65: Monetalis Clydesdale](https://forum.makerdao.com/t/mip65-clydesdale-monetalis-liquid-bond-strategy-execution/13148?u=allan_pedersen) 
* [MIP82: Monetalis/Coinbase Appaloosa](https://forum.makerdao.com/t/mip82-monetalis-coinbase-appaloosa/17768)
* [Redwood Trust website](https://www.redwoodtrust.com/)
* [Redwood Proposal & Considerations](https://hackmd.io/@allangiraf/Reedwoodconsiderations)
* [Sequoia Counterparties](https://hackmd.io/@allangiraf/RedwoodCounterparties)
* [Sequoia Mortgage Background Material](https://hackmd.io/@allangiraf/RedwoodMortgageBackground)

## Sentence Summary

MIP88 will (i) onboard and activate a DAI 225M RWA vault for the purpose of acquiring USDC via the PSM, and (ii) approve the future purchase of USD 225M of investment-grade residential mortgage-backed securities (“RMBS”) in a bespoke issuance through Redwood’s Sequoia securitization platform (*c4.1*), and (iii) initiate a cashflow reinvestment program.

## Paragraph Summary

MIP88 onboards a DAI 225M RWA vault that will acquire USDC via the PSM and acquire USD 225M of a super senior, front cash flow, AAAsf (or equivalent) rated RMBS on a bespoke basis (see Key Terms below). In addition, the transaction will be structured to provide 15% credit enhancement at closing for the super senior bonds.

To maintain a consistent RMBS investment exposure level, a reinvestment program of cashflows into further Redwood Sequoia issuances on a bi-monthly basis is also activated. This includes operationalising a broader relationship with Redwood, including additional investment opportunities and collaborating with Redwood to develop a Clean Money aligned vision for RMBS.

The legal, structural, and technical setup will be executed under a strict verification program.

## Component Summary

**MIP88c1: Collateral Design**
This component contains the proposed collateral, counterparties, key terms and legal structure.

**MIP88c2: Verification Conditions for Collateral Onboarding**
This component sets out the verification mechanism and conditions ensuring appropriate collateral is onboarded using an appropriate legal structure and governance framework using an appropriate technical solution.

**MIP88c3: Technical Conditions of the Collateral Onboarding**
This component contains the technical requirements for unambiguous technical execution of the collateral onboarding

**MIP88c4: End-Notes**
This component contains a set of end-notes included at the request of Redwood and referred to throughout the components.

## Motivation

This MIP accomplishes the following for Maker:
* Activates Maker USDC holdings and is anticipated to bring meaningful yield to Maker
* Diversifies Maker's base of fixed income holdings beyond US Treasuries to include RMBS in an effort to generate monthly cashflows *(c4.2)* and expected yield greater than comparable U.S. Treasuries while retaining a high degree of “cash-like” liquidity in the secondary markets
* Activates a long-term relationship with a strong and credible US financial services partner with a decades-long track-record
* Provides a mature and fully developed transaction structure and partners with the goal to minimize transaction execution risks
* Allows Maker to deploy an active reinvestment program to continue a consistent level of exposure to this new fixed income asset class.
* Allows Maker to have a real impact together with Redwood by collaborating on the concept of Clean Money in a large  category of housing finance

## Specification / Proposal Details *(c4.3)*
![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/friesian.png)  
Friesian AI'd by nightcafe

### MIP88c1: Collateral Design

#### c1.1 Counterparty: Redwood Trust, Inc ("Redwood")
![](https://github.com/makerdao/mips/blob/master/MIP88/redwood_trust.png)

Here in Redwood's own words, extracted from [this](https://hackmd.io/@allangiraf/Reedwoodconsiderations) more detailed presentation of Redwood:

..."**Redwood Trust, Inc.** (“Redwood”, “we”, or “our”).  Redwood is a specialty finance company focused on housing credit.  Our common stock is publicly traded on the New York Stock Exchange under the ticker “RWT.”  For more information and to review quarterly, annual and other reports filed with the U.S. Securities and Exchange Commission (“SEC”), please visit our website [here](https://www.redwoodtrust.com/).  Redwood’s business is organized into three primary segments: 
* Our **Residential Mortgage Banking** segment is an aggregation platform focused on purchasing primarily prime jumbo residential mortgage loans from a large cohort of mortgage loan originators.  These loans are held for subsequent sale or for securitization through our Sequoia (SEMT) platform, as further described below.  Our Residential Mortgage Banking business is licensed in thirty-three (33) states to carry out its mortgage business.  More information on these licenses may be found on our website here.  Since Redwood’s founding, we have purchased over $70 billion in loans, with $12.8 billion purchased in 2021 alone.   
* Our **Business Purpose Mortgage Banking**, operating as CoreVest American Finance Lender, LLC (“CoreVest”), is one of the nation’s leading direct lenders to single-family and multi-family housing investors.  CoreVest was founded in 2014 and has since funded more than $16 billion in loans representing 125,000 housing units.  CoreVest is the largest issuer of business purpose mortgage-backed securities, having issued over $5.1 billion across 19 securitizations. 
* Our **Investment Portfolio** focuses on mortgage loans and other real estate- related assets sourced through our Residential Mortgage Banking and Business Purpose Mortgage Banking segments and from third parties.   

In carrying out our business, Redwood relies on advanced, technology-enabled solutions to serve our customers accurately, efficiently and at scale, and to provide greater transparency and insight to investors in our securitizations. In 2020, we launched our first app ([available here](https://apps.apple.com/us/app/redwoodlive/id1502628722)) to deliver near real-time data to the mortgage loan originators that sell jumbo mortgage loans to us. Our Residential Mortgage Banking business is currently focused on integrating blockchain technology into all aspects of its operations and, in an industry first, in 2021, we launched a blockchain reporting framework for loans securitized in Sequoia transactions ([available here](https://www.liquidmortgage.io)). 

Redwood’s workforce consists of approximately 350 employees"...

#### C1.1.1: The Sequoia RMBS Issuance Platform 
A further extract from [the](https://hackmd.io/@allangiraf/Reedwoodconsiderations) detailed presentation of Redwood.

..."Since its inception in 1997, Redwood has issued over $60 billion in RMBS across 118 Sequoia (SEMT) securitizations, including ten (10) transactions in the last two years alone.  In fact, in this time our Sequoia platform has become the nation’s largest non-bank sponsored issuance platform for prime jumbo RMBS.  As the table below illustrates, since the RMBS market restarted in 2010, Redwood’s Sequoia platform is, by deal count and issuance, the second largest prime jumbo issuance platform overall, and the largest that is not sponsored by a major bank. 

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/RMBS_issuance.png)  
*Data Calculated as of September 7, 2022 based on information available via Bloomberg and Wells Fargo Securities, LLC.*   

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/performance_summary.png)  
*Data Calculated as of August 2022 based on information available via Bloomberg and Wells Fargo Securities, LLC.*

Strong performance of Sequoia RMBS, such as illustrated above, has helped us attract and retain a base of over 200 institutional investors in Sequoia RMBS transactions, including some of the nation’s largest pension funds, insurance companies and professional asset managers. 

In 2021, the Sequoia platform achieved two major milestones, as the first RMBS prime jumbo platform to integrate blockchain technology and the first such platform to include disclosure on certain ESG topics pursuant to SASB’s Mortgage Finance disclosure framework.  We were honored to be recognized by GlobalCapital as 2021 RMBS issuer of the year, thanks in part to these market-leading innovations and the Redwood team’s commitment to investors in Sequoia RMBS"...

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/redwood_residential.png)

#### c1.2 Structure
The Redwood Friesian MIP legal structure is expected to use the same legal entities used for the Monetalis Clydesdale MIP. James Asset (PTC) Limited (“James PTC”), a company organized in the British Virgin Islands (“BVI”), will create a new trust to hold any SEMT RMBS purchased by it (the “New Trust”). Documentation to establish the New Trust and related/ancillary documentation will be drafted by local BVI counsel to take into consideration applicable U.S. law, as advised by the parties’ U.S. counsels.
 
An investment advisor will be engaged to review any SEMT RMBS transactions proposed from time to time to James PTC, on behalf of the New Trust, and generally provide direction to James PTC on the management of the SEMT RMBS portfolio within its investment mandate. The investment advisor would also confirm that the terms of any proposed SEMT RMBS transaction are consistent with those described in this MIP prior to James PTC, on behalf of the New Trust, purchasing the SEMT RMBS.  
 
Please note that the legal structure is subject to further legal and tax review and final documentation for any individual SEMT RMBS transaction .

#### c1.3 Key Terms

**c1.3.1 Key Terms of the Initial Sequoia RMBS Issuance**

|Aspect|Key Terms|
|---|---|
|Issuance Details <br> *(c4.4)* |Purchase Amount: Max USD 225M <br>Seniority: Super Senior<br> Transaction structure: senior/subordinate, shifting interest<br> Cash flow designation: front cash flow (FCF)<br> Credit enhancement: 15.00%<br> Coupon: 5% <br> Priced to deliver expected yield of 100bps above 3Y US Treasury at transaction time of sale *(c4.5)* <br>Ratings: AAAsf (or equivalent) *(c4.6)* <br>|
|Maturity|Estimated weighted average life: less than 3 years.|
|Transaction Closing Date|Following approval of this MIP, we would expect the subsequent RMBS transaction to close latest within December 2022, with subsequent issuance on a bi-monthly basis.|
|Transaction Parties and Documentation|Standard Sequoia platform Transaction documentation and counterparties will be used. For details on counterparties, please see the description of counterparties available [here](https://hackmd.io/@allangiraf/RedwoodCounterparties)<br><br> Consistent with market standard distribution practices for securities exemption from US SEC registration requirements, such as the Sequoia RMBS, a US registered broker-dealer will function as the initial purchaser of the Sequoia RMBS and then immediately on-sell the securities to James Asset PTC Limited on behalf of the relevant trust. <br><br>For this transaction, Oasis Pro Markets LLC (a registered broker-dealer) will be the initial purchaser.  Oasis also has the ability to facilitate secondary market liquidity for the Sequoia RMBS on its trading platform.|
|Transaction Fees and Expenses|Fees and expenses payable in connection with the issuance  will initially be paid by Redwood and reflected in final pricing. The hypothetical pricing above reflects assumed transaction fees and expenses.|
|Reporting|Standard transaction reporting and daily payment information (via the transaction’s distributed ledger agent) in accordance with established practice on the Sequoia platform. Monetalis will collate and process this information and report as required for Maker reporting|

**c1.3.2 Reinvestment Program**
As this issuance pays down principal and interest on a monthly basis, the cash flows are projected to be substantial *(c4.7)*. To take advantage of this partnership and the attractive economics of this source of fixed income, Monetalis will: 

* immediately invest all cashflows arriving from this instrument into BlackRock ETF products under the approved strategy of MIP65; and
* on a bi-monthly basis, via Signal Request, present the Community with the option for reinvesting the received cash flow from this instrument into a new issuance from Redwood/Sequoia.

The Maker Committee can request the accrued cash flow from the issuances be returned to Vault/Surplus Buffer at any time via Signal Request.

**c1.3.3 Cost & Fees**
Fees & Costs, not included in the above Key Terms section:

|Party|Cost/Fees|
|---|---|
|BVI Trust setup| > USD 75K|
|BVI added Admin| ~ USD 36K p.a.|
|Investment Advisor| ~ USD 100K|
|Monetalis| 15% of Yield|

#### c1.4 Cashflow Waterfall & Credit Enhancement

**c1.4.1 Cashflow Waterfall** *(c4.8)*
The transaction will be structured to allocate payments received from the mortgage loan pool each month according to a cashflow waterfall.  As mortgagors make payments each month, those funds are generally allocated first to the most senior class of bonds by virtue of that class’s higher priority in the cashflow waterfall; only after all payments to which the most senior class is entitled to have been made are excess funds then allocated to the next most senior class, and so on. Shortfalls are generally allocated in reverse order, to the most junior, classes first. The lowest priority class is often referred to as the ‘first loss’ because it is the first to be impacted by any shortfall in monthly payments by mortgagors.   

As is standard in RMBS, detailed rules governing this distribution of funds each month among the various classes of securities issued in that transaction. The hypothetical waterfall below is intended to illustrate this cashflow, at a high level.

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/steps.png)

**c1.4.2 Credit Enhancement** *(c4.9)*
The Sequoia RMBS proposed to be onboarded by Maker will be structured to include several credit enhancement features beneficial to investors:

**Subordination**: the transaction’s capital structure will include senior and subordinate classes of bonds.  As illustrated by the cashflow waterfall diagram above, this feature places the most senior classes of bonds at the top of the cashflow waterfall, and generally allocates any shortfall in payments in reverse order of seniority (i.e., to junior classes first and senior classes last). The Sequoia RMBS proposed to be onboarded by Maker will be senior bonds in the capital structure. 

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/hypothetical_capital_structure.png)

**Shifting interest**: each month, funds will be distributed in accordance with payment priorities described in the transaction’s documents. The transaction will be structured to include a ‘shifting interest’ mechanism so that, for a period of time, unscheduled payments of principal will be directed to front cash flow (or “FCF”) bonds; during this time, subordinate or last cash flow (or “LCF”) bonds will be entitled only to their pro rata share of interest and scheduled principal payments received. This feature helps preserve subordination during the life of the deal, reducing senior classes’ risk of exposure to losses occurring later in the life of the deal. The tables below demonstrate hypothetical monthly payments over the life of FCF and LCF bonds *(c4.10)*

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/cash_flow.png)

**Structural credit enhancement**: as an additional measure of protection for senior classes of bonds, the transaction will include credit support levels designed to redirect scheduled principal payments to senior classes in the event delinquencies or payment shortfalls exceed certain levels. The credit enhancement level for the Sequoia RMBS proposed to be onboarded by Maker is expected to be 15.00% at closing.

#### c1.5 Liquidity, Spread & Stress test
To appropriately qualify the collateral, the following subjects deserve consideration.

**c1.5.1 Liquidity**
The secondary market for RMBS is well-established, with major broker-dealers regularly involved in market making activities (e.g., providing quotes, facilitating secondary market sales and purchases by investors). 

The following table shows, for illustrative purposes, secondary market trading activity in RMBS (like the proposed Sequoia RMBS) to date in 2022, on both a yearly and weekly average basis, including detail for requests by bank customers to buy or sell RMBS and among dealers themselves.

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/finra.png)

While exact timeframes may vary based on idiosyncrasies of a particular trade, secondary market sales of RMBS such as the Sequoia RMBS could occur in as little as two (2) business days after a prospective RMBS seller contacts a broker-dealer to request a quote for a desired sale.

For this purpose, Monetalis, will establish accounts with one or more broker-dealers active in the secondary market for RMBS in advance to ensure as rapid a liquidation as possible is available to Maker.

Pricing for secondary market sales of RMBS is dependent on market conditions at the time of a desired sale, and may vary from the cashflow adjusted price paid by the investor at the time of purchase.

**c1.5.2 Spread**
An RMBS private offering, as the one here contemplated, provides a spread above US Treasuries and MBS ETF products. The table below shows status as of October 11, 2022.*(c4.11)* 

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/yield_comps.png)

**c1.5.3 Stress Scenarios**
In stressed economic environments, historical Sequoia transactions have performed well, maintaining low delinquency levels. As the table below shows, during the most recent period of economic stress triggered by the onset of the COVID-19 pandemic, delinquency levels for the pre-COVID Sequoia transactions listed below remained under 5% and so never touched upon the Super Senior tranches. 

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/semt.png)

#### c1.6 Underlying Mortgage Pool Example
This is an example of the type of potential mortgage loan pool that would be underlying the Sequoia RMBS issuance.*(c4.12)*

![](https://github.com/makerdao/mips/blob/247f11f556ad5b2be78525c7fa6c9966da76ecec/MIP88/sequoia_RMBS.png)

### MIP88c2: Verification Conditions for Collateral Onboarding

#### c2.1 Legal Structure and Governance Verification Requirements
At least one community member, with legal credentials, must, through a public forum post, validated by at least one Facilitator, provide a verification of the legal and governance structure appropriateness for holding a large amount of low-risk real-world asset collateral for Maker.

#### c2.2 Key Terms Verification Requirements
The Strategic Finance Core Unit Facilitator must, through a public forum post, provide a Verification of the Key Terms & Risks ensuring the appropriateness of this USDC allocation for Maker and its ALM strategy.

#### c2.3 Technical Verification Requirements
The Collateral Engineering Services Facilitator must, through a public forum post, provide a Verification of the technical appropriateness of the MIP21 designed solution in accordance with the Collateral Onboarding process (“COB”).

Should any one of the c2.1, c2.2 and c2.3 verifications not be forthcoming, for whatever reason, this MIP will not move forward in the COB. 

#### c2.4 Closing & Execution Verification Requirements
Prior to any purchase of SEMT RMBS by James PTC, on behalf of the New Trust, (i) the investment advisor will confirm that the terms of any SEMT RMBS are consistent with those described in this MIP and will have directed James PTC, on behalf of the New Trust, to purchase the SEMT RMBS and (ii) external legal counsel for Maker and/or a legal facilitator will have finalized the transaction, trust and related/ancillary documentation with the other relevant parties.

### MIP88c3: Technical Conditions of the Collateral Onboarding

The technical implementation must follow the MIP21 framework. Upon Collateral Engineering Services solution Verification in MIP88c2, the relevant smart contracts must be constructed and deployed. The ETH Address emitted by the legal structure specified in MIP88c1 should only be changeable by MakerDAO Governance, and follow the MIP21 framework.

These smart contracts must only allow for the generation of Dai or USDC through a vault that is sent to the ETH address of the legal structure as its ultimate destination, and it must not be technically possible to send the Dai or USDC elsewhere, in accordance with MIP21.

There must also not be any additional technical features or complexity that goes beyond the minimum necessary smart contracts and dummy constructs to enable the generation of Dai and its transfer to the ETH Address emitted by the legal structure.

The ability to initiate the generation of Dai or USDC from the vault and trigger their transfer to the ETH Address emitted by the legal structure is given to an Ethereum address controlled by Monetalis. This address must have no ability to access the funds.

When the collateral onboarding process for MIP88 has progressed to step 7 in the COB, an executive vote must be created (or code must be bundled into a broader executive vote) that activates all permissions for the vault to be onboarded based on the smart contracts specified in MIP88c3.

The vault must provide:

* Debt Ceiling of DAI 225 million.
* Stability Fee of 0% (surplus is paid manually through the legal structure, as specified in MIP88c1)
* All other parameters must be set to ensure they have no functional impact.

### MIP88c4 End-Notes

**c4.1** These materials are provided solely for informational purposes to determine preliminary interest in investing in a transaction with the general characteristics described in these responses and are not intended as, and should not be interpreted or construed as, an offer to sell or a solicitation of an offer to buy any securities that may be issued by Redwood or in any Sequoia securitization transaction.  If any offer of securities is made, it will be made pursuant to a Preliminary Offering Memorandum and a Final Offering Memorandum in the future, prepared by or on behalf of an issuing entity which will contain material information not contained herein and which will supersede, as to any securities offered, the information provided herein in its entirety. Any decision to invest in the future in any securities offered in the future should be made after reviewing the Final Offering Memorandum, conducting such investigations as Maker as an investor deems necessary and consulting the investor’s own legal, accounting, and tax advisors in order to make an independent determination of the suitability and consequences of an investment in the securities. 

**c4.2** Payments on Sequoia RMBS will be subject to, and determined in accordance with, the transaction’s priority of payments as described in the Preliminary Offering Memorandum and Final Offering Memorandum prepared in connection with the issuance of any such Sequoia RMBS. 

**c4.3** **LEGAL DISCLAIMER** The information contained herein is provided solely for informational purposes to determine preliminary interest in investing in a transaction with the general characteristics described in these responses and is not an offer to buy or sell or a solicitation of an offer to buy or sell any security or to participate in any trading strategy. If any offer of securities is made, it will be made pursuant to a preliminary offering memorandum (the “Preliminary Offering Memorandum”) and a final offering memorandum (the “Final Offering Memorandum”) in the future, prepared by or on behalf of an issuing entity which will contain material information not contained herein and which will supersede, as to any securities offered, the information provided herein in its entirety. Any decision to invest in the future in any securities offered in the future should be made after reviewing the Final Offering Memorandum, conducting such investigations as the Maker community as an investor deems necessary and consulting the investor’s own legal, accounting, and tax advisors in order to make an independent determination of the suitability and consequences of an investment in the securities. 
 
We note that (i) any transaction in securities is subject to a risk of loss, and possibly total loss, of principal, (ii) the information contained herein and risks described herein do not purport to identify every possible risk (direct or indirect) or other material considerations, which may be associated with Maker community’s entering into a transaction in the future for the purchase of securities and (iii) any securities offered in the future will not have been and will not be registered under the Securities Act of 1933, as amended (the “Securities Act”) or the securities laws of any state or foreign jurisdiction and may not be offered, sold or otherwise transferred unless an exemption from registration under the Securities Act and all other applicable securities laws is available. 
 
We note, furthermore, that our responses contain information accurate as of the date of this document. While we welcome comments from and dialogue with the community as our proposal is evaluated, information in this response generally will not be updated and therefore may not reflect the most current information about the subject matter discussed herein. 
 
These materials contain statements that are not purely historical in nature, but are “forward-looking statements.” These include, among other things, projections, forecasts, estimates of income, yield or return, future performance targets, sample or pro forma portfolio structures or portfolio composition, scenario analysis, specific investment strategies and proposed or pro forma levels of diversification or sector investment. These forward-looking statements are based upon certain assumptions. Actual events are difficult to predict and will be beyond the control of the issuer of any securities that may in the future be offered. Actual events may differ from those assumed. All forward-looking statements included are based on information available on the date hereof and neither Redwood nor any other party assumes any duty to update any forward-looking statement. Some important factors which could cause actual results to differ materially from those in any forward-looking statements include the actual composition of the collateral, the price at which the collateral is actually purchased by the issuer, any defaults on the collateral, the timing of any defaults and subsequent recoveries, changes in interest rates and any weakening of the specific credits included in the collateral, among others. Other risk factors are also expected to be described in the preliminary offering memorandum and final offering memorandum to be provided in connection with any issuance of securities. Accordingly, there can be no assurance that estimated returns or projections can be realized, that forward-looking statements will materialize or that actual results will not be materially lower than those presented herein. 

Past performance is no guarantee of future results.

**c4.4** Hypothetical details based on a hypothetical mortgage loan pool and not a specific Sequoia RMBS offering; terms are presented to give an idea of the types of general characteristics the mortgage loans and future Sequoia RMBS are expected to have (all of which may change materially). Terms for a future transaction will be updated to reflect final mortgage loan pool and current market pricing and will be set forth in the Preliminary Offering Memorandum and Final Offering Memorandum prepared in connection with the issuance of any Sequoia RMBS. 

The Sequoia RMBS described in this proposal are expected to be issued in book-entry form through the Depository Trust Company (“DTC”). As is typical for recently issued RMBS and for the Sequoia platform, any Sequoia RMBS ultimately onboarded will not have been, and will not be, registered under the Securities Act or qualified under the securities laws of any other jurisdiction, and may not be offered or sold except (a) in the United States, to persons that are “qualified institutional buyers” in reliance on Rule 144A under the Securities Act (“Qualified Institutional Buyers”) and (b) outside the United States, to persons that are not U.S. persons (“Non-U.S. Persons” (as defined in Regulation S under the Securities Act)) in offshore transactions in reliance on Regulation S under the Securities Act. 

For certain information relating to U.S. federal income tax and certain other regulatory matters (including, but not limited to, the Secondary Market Enhancement Act of 1984, as amended (“SMMEA”), the Employee Retirement Income Security Act of 1974 (“ERISA”), the Investment Company Act of 1940, as amended (the “Investment Company Act”), the Securities Act of 1933, as amended (the “Securities Act”) and the U.S. credit risk retention rules promulgated by the SEC under 17 C.F.R. Sections 246.1. – 246.22 to implement Section 941(b) of the Dodd-Frank Wall Street Reform and Consumer Protection Act) applicable to a Sequoia RMBS transaction, please consult the offering materials prepared in connection with a specific transaction. 

**c4.5** Actual price and yield to be determined at the time of sale for an actual transaction. 

**c4.6** Redwood will engage at least one (1) nationally recognized statistical ratings organization to review the transaction, and will structure the transaction to achieve credit ratings in the highest category available for RMBS (i.e., “AAAsf” or equivalent) for the super senior bond described above. 

**c4.7** Payments on Sequoia RMBS will be subject to, and determined in accordance with, the transaction’s priority of payments as described in the Preliminary Offering Memorandum and Final Offering Memorandum prepared in connection with the issuance of any such Sequoia RMBS. 

**c4.8** The information contained in this section is demonstrative only, and is provided solely for informational purposes to determine preliminary interest in approving Sequoia RMBS as an eligible type of collateral to be onboarded by Maker as part of a future transaction with general characteristics to be described in future offering materials, and is not an offer to buy or sell or a solicitation of an offer to buy or sell any security or to participate in any trading strategy. The information contained below is at the initial structuring phase and there may be material changes to the structure prior to any securities being offered. 

**c4.9** Payments on Sequoia RMBS will be subject to, and determined in accordance with, the transaction’s priority of payments as described in the Preliminary Offering Memorandum and Final Offering Memorandum prepared in connection with the issuance of any such Sequoia RMBS. 

**c4.10** Hypothetical cashflow projections have been based on the indicative pricing reflected above, an assumed 15CPR and a hypothetical mortgage loan pool and not a specific Sequoia RMBS offering.  These hypothetical cashflow projections are provided for illustrative purposes only to give an idea of the types of general cashflows future Sequoia RMBS might generate (all of which may change materially). Terms for a future transaction will be updated to reflect final mortgage loan pool and current market pricing and will be set forth in the Preliminary Offering Memorandum and Final Offering Memorandum prepared in connection with the issuance of any Sequoia RMBS. 

**c4.11** The comparative pricing information included in the table titled “MBS ETF Yield Comps” is hypothetical and provided for discussion purposes only.  The values provided in the table titled “MBS ETF Yield Comps” are current as of the date noted, and are not based on any specific pool of mortgage loans or any specific RMBS offering.  Terms for a future transaction will be updated to reflect final mortgage loan pool and current market pricing and will be set forth in the Preliminary Offering Memorandum and Final Offering Memorandum prepared in connection with the issuance of any Sequoia RMBS, and may materially vary from the values provided in the table titled “MBS ETF Yield Comps”. 

**c4.12** The collateral information included in the table titled “Sequoia RMBS – Hypothetical Mortgage Loan Pool” is based on a hypothetical mortgage loan pool and not a specific Sequoia RMBS offering.  The mortgage loan attributes described in this table are provided for illustrative purposes only to give an idea of the types of general collateral characteristics a future Sequoia RMBS mortgage loan pool may have (all of which may change materially). Terms for a future transaction will be updated to reflect a final mortgage loan pool and will be set forth in the Preliminary Offering Memorandum and Final Offering Memorandum prepared in connection with the issuance of any Sequoia RMBS.

