# MIP89: Monetalis - Arrow Andalusian

## Preamble
```
MIP#: 89
Title: Monetalis - Arrow Andalusian
Author(s): @Allan_Pedersen , @Wrongcomma
Contributors: 
Type: General
Status: Formal Submission
Date Proposed: 2022-10-12
Date Ratified: XX
Dependencies: MIP21
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip89-monetalis-arrow-andalusian/18338 
Ratification Poll URL: XX
```

## References
* [MIP65: Monetalis Clydesdale](https://forum.makerdao.com/t/mip65-clydesdale-monetalis-liquid-bond-strategy-execution/13148?u=allan_pedersen)
* [MIP82: Monetalis/Coinbase Appaloosa](https://forum.makerdao.com/t/mip82-monetalis-coinbase-appaloosa/17768)
* [MIP88: Monetalis/Redwood Friesian](https://forum.makerdao.com/t/mip88-monetalis-redwood-friesian/18336)
* [Arrow Global](https://www.arrowglobal.net/en/index.html)

## Sentence Summary

MIP89 will onboard and activate a DAI 300M RWA vault and acquire BlackRock/ishares ETF products allocated in the same manner as MIP65, and, from this asset pool, finance and deploy over 12 months a set of wholesale, senior, secure, staged, Green Economy, Lending facility focused on the UK and the EU together with Arrow Global.

## Paragraph Summary

MIP89 will onboard and activate a DAI 300M RWA vault and acquire BlackRock/ishares ETF products allocated in the same manner as MIP65, and, from this asset pool, finance and deploy over 12 months a set of wholesale, senior, secure, staged, Green Economy, Lending facility focused on the UK and the EU together with Arrow Global.

The legal, structural, and technical setup will be “close cousins” of the structure and technical implementation under MIP65 and proposed under MIP82 and will be executed under a strict verification program.

## Component Summary

**MIP89c1: Collateral Design**
This component contains the proposed loan/collateral counterparties, key terms and legal structure.

**MIP89c2: Verification Conditions for Collateral Onboarding**
This component sets out the verification mechanism and conditions ensuring appropriate collateral is onboarded using an appropriate legal structure and governance framework using an appropriate technical solution.

**MIP89c3: Technical Conditions of the Collateral Onboarding**
This component contains the technical requirements for unambiguous technical execution of the collateral onboarding

## Motivation

With this credit facility, Maker will gain on a number of fronts:
* Operationalize the Clean Money vision in a scalable and credible manner together with an aligned credit counterpart with similar Clean Money/ESG aspirations
* Gain scalable exposure to the UK and the EU private credit markets
* Conduct this business together with a strong and well-established European credit player: Arrow Global
* Access private credit structure yields
* Diversification directly in the exposure (mixed credit portfolios) and indirectly against Maker allocations into US based assets and US Treasuries
* Well-protected Senior Credit exposure and aligned junior capital.

## Specification / Proposal Details
![](https://github.com/makerdao/mips/blob/master/MIP89/andalusian.png)
Andalusian AI’d by nightcafe

### MIP89c1: Collateral Design

#### c1.1 Counterparty: Arrow Global
![](https://github.com/makerdao/mips/blob/master/MIP89/arrow.png)

We here let Arrow present themselves in their own words: 
 
“...Arrow is an established, prominent leader and credit manager in the European market across the U.K., the Netherlands, Ireland, Italy and Portugal. It was originally founded in 2005 by Zach Lewy with SallieMae as a highly differentiated vertically integrated asset manager. Arrow has a rating of BB- from Fitch and B1 from Moody’s with two complementary business lines: 

**Investing:** Arrow Global has invested in excess of €7 billion over the last seventeen years across over a thousand deals in a broad range of European credit and real estate investment opportunities, achieving an 18% gross IRR with consistent performance and attractive diversification.

**Asset servicing:** Vertically-integrated operational platform across the U.K., the Netherlands, Ireland, Italy and Portugal and certain other leading capital markets jurisdictions; manages approximately €70 billion (gross book value) covering approximately ten million accounts of borrowers and approximately 35 million data records, taking advantage of the Arrow Platform’s key European regulatory licences. 

It is the harmonious combination of local market expertise access and origination capability with credit investing know-how across a broad range of opportunities that underpins our vertically integrated model and our profile of results.

Arrow Global’s growth and development reflect its commitment to bring to its capital investment activity in the credit sector not only its deep experience in sourcing, diligencing, pricing and executing with respect to investment transactions, but also its commitment to sophisticated portfolio servicing, including servicing related to bespoke management services in respect of NPLs, non-core banking assets, certain real estate related assets and other assets acquired out of distressed situations, with the attendant benefits of deep portfolio knowledge that supports its opportunistic, analytics-driven portfolio decision-making. 

Arrow Global has an extensive history of investing capital from its own balance sheet, as well as via co-investments with other leading credit investors, into high-value niche Arrow-originated assets and in 2019, Arrow’s first fund, Arrow Credit Opportunities I (“ACO I”), was launched to deliver this strategy to external investors. The final closing of ACO I took place in November 2020 with €1.7 billion of capital commitments, including the Arrow Global commitment, and ACO I was nominated by Preqin as one of the largest Europe-focused private debt funds closed and also one of the largest first-time credit funds raised globally in 2020. 

Arrow Global remains focused on enhancement and evolution of its ownership of portfolio servicing businesses as a world-class, Europe-focused network for sourcing and pricing investment opportunities in a range of attractive markets. The Arrow Platform provides bespoke management services in respect of European investment opportunities. The Arrow Platform represents an attractive channel for deal sourcing that benefits from a range of important relationships conducive to closing on acquisitions of loan portfolios and other credit investment opportunities on attractive terms with leading market participants.

Arrow’s proprietary business model of owning and operating the leading “local” servicers within jurisdictions, which provides Arrow with an exclusive source of Off-Market opportunities, a local knowledge advantage and the ability to assess and select assets from a broad range of credit opportunities. For example, Arrow owns a significant minority of the leading lender in UK living spaces construction sector, Maslow Capital. Maslow operates to the highest of ESG standards, underwriting to UN Sustainable Development Goals.

Arrow, via its large credit servicing business, has a clear direct management and data advantage that allows Arrow to work with smaller portfolios at scale which produce:a better diversified, higher yielding and more stable performance across credit cycles.

For avoidance of doubt, when referring to Arrow, this means any fund, vehicle or investment portfolio established and controlled by Arrow or its affiliates or for which Arrow or its affiliates act as manager or exercise discretionary control over or enjoy economic benefit in respect of, in each case from time to time.

**Arrow Financial Summary:**
* Arrow Global has never had a year below a 10% gross IRR in its history, with a cumulative loss rate of sub 1.5%. 
* Over 80% of the transactions consummated by Arrow were from repeat transaction sources; 
* The current pipeline is trending towards higher volume with consistent returns and similar asset quality.
* Arrow Global has strong financial credentials and the consolidated results for 2021 show free cash flow of £182.1m, adjusted EBITDA of £260.8m and balance sheet collections of £367.4m.

Arrow continues to pursue integration with, and development of, DeFi projects. These initiatives currently include:
* Creating a fully native blockchain financial instrument, which creates new opportunities on how cash flows in collections are rated and delivers efficiencies in recycling of cash
* Further warehousing opportunity with equity type yields that supports the seasoning of newly originated assets
* Distribution of such instruments through regulated markets 
* Distribution of such instruments with Monetalis as a potentially higher yielding product than corporate bond programs

…”
We, Monetalis, believe Arrow has all the hallmarks of a potential cornerstone partner for Maker in private credit for Europe. Following a potential approval of the 400m strategy here, Arrow and Monetalis  will aim to work together to deliver a full roadmap, outlining an ambitious and market changing long-term relationship that intends to bring real change to what are currently very static, rigid, archaic credit markets in Europe. 

#### c1.2 ESG Alignment
Arrow Global adheres to UN PRI principles and is building up reporting and management according to these requirements. As it today routinely onboards capital from some of the largest investors in the world, Arrow meets a common best practice standard already. Arrow has an ongoing continuous improvement program for implementation of ESG practices into its relevant portfolios.

An example of Arrow’s approach to ESG, on a deal level, is how Arrow review each UK residential development loan on their Maslow Capital platform against the UN Sustainable Development Goals, which can be see [here](https://hackmd.io/@allangiraf/arrowesg)

#### c1.3 Structure

Our starting point is the same structure as used with MIP65 and proposed for MIP82 - we add a further separate trust to the structure for this particular facility (“Felix Asset Trust”) as illustrated in green here:
![](https://github.com/makerdao/mips/blob/master/MIP89/structure.png)

In addition, one or more SPV orphan entities (“Lux SPV”) will be set up in Luxembourg, which will act as the lender/buyer of the portfolio(s). The lending capital in Lux SPV will be provided by Arrow and Felix Asset Trust on a Junior(Arrow)/Senior(Felix Asset Trust) basis.

This relationship is structured via an appropriate complex of market standard facility agreements to match with each individual portfolio situation, and fit within one of the two respective Master Facility Framework Agreements and their respective Credit Guidelines.

The structure is designed to be a tax and operational cost optimised for conducting business with portfolios across the EU and the UK.

#### c1.4 Strategy

We have split the overall vault facility into two strategies:

**1. "Arrow Advantage"**
To take full advantage of Arrow’s credit market experience, we focus exclusively on non-bank lenders and facilities that Arrow are fully committed to - i.e.
1. Have positive, long-term credit history with
2. Have credit administration history with
3. Have equity (or equity-like) commitment to the lender
4. Provides 15% Junior capital to
5. Work with the lender on GHG emssions measurements and aligned with a Clean Money vision

This provides substantial security and comfort around Makers senior, secured facility position. We expect, for diversification purposes, to deploy across approximately 3 to 5 portfolios.

**2. "Boost"**
To take advantage of the well-established Senior, Secured, Block Discount market in the UK and the fact that this market has shorter maturities than we'd expect to see in strategy 1, and reasonable yields, we have chosen to include a smaller strategy that has quicker cashflow.

This provides a better overall diversification, cashflow profile and risk character of the total portfolio that comprises both strategies.

#### c.1.5 "Arrow Advantage" / Key Terms

##### c.1.5.1 Master Facility Framework "Arrow Advantage"

| Component | Key Terms | 
| -------- | -------- | 
| Parties     | <li>James Asset PTC Limited, BVI (Trustee) for Felix  Asset Trust (Trust)</li><li>Arrow Global</li><li>Monetalis</li> | 
|Amount|250M|
|Use of funding|Wholesale Senior, Secured Lending in UK//EU Markets|
|Deployment|Full deployment over 12 months|
|Collateral|Hard Assets & Properties<br> <br>Examples of collateral would include:<br><li>Granular UK residential development and completed homes</li><li>Irish energy efficient homes (refurbished from old, inefficient housing stock)</li><li>Dutch green office buildings and facilities</li><li>Large scale solar installations</li><li>Social housing projects across UK and Europe</li><li>EV charging stations and battery storage</li><li>Electric vehicle purchasing contracts</li>|
|Lenders| "Arrow Advantage" Lenders only <br>as defined under strategy c.1.4|
|Junior Capital| 15% provided by Arrow across facilities|
|Clean Money| GHG measurement requirements on all lenders (or similar relevant green credential reporting required depending upon the specific asset)|
|Diversification| 3 to 5 portfolios|
|Term|Max weighted average duration of underlying loans on outstanding portfolio: 24 months|
| Currency| Lending in GBP/EUR but hedged to USD|
|Waterfall| 1. 3.5% in USD to James Asset Trust on Senior<br>2. 0.75% in USD to Monetalis on Senior + Junior  <br>3. 15% to Arrow on Junior <br>4. Profit-share of 35% to James Asset Trust/55% to Arrow/10% Monetalis <br> All net of currency hedging and all other cost|
|Capital recycling|Principal payments are recirculated back into their relevant strategy until withdrawal request from Maker. <br>Interest payments - after expenses - are also recirculated until requested paid into Surplus Buffer.|

##### c.1.5.1 Credit Guidelines "Arrow Advantage"
All facilities will need to meet the minimum credit guidelines set out in the table below. 

|**Component**|**Key criteria**|
| --- | --- |
|Facility type|Senior secured only|
|Equity/Junior capital|Arrow Global to provide 15% Junior position across all facilities|
|Security type|* Properties <br> * Property development <br> * Infrastructures <br> * Hard assets + Receivables|
|Security value|Independently valued|
|Loss of capital|Less than 2% over the last five years, or since inception.|
|Cross guarantees|Cross guarantee between strategies|
|Eligible facility types|* Revolving Credit facilities <br> * Loan on loan <br> * Block discounts|
|Existing portfolios|30% or less of the portfolio over 50% maturity|
|Loan types|All loans must be ESG eligible and aligned to Monetalis’ Green Strategy|
|Underlying loan terms|Max weighted average duration of underlying loans on outstanding portfolio across all facilities: 28 months|
|Collateralisation|* Min collateralization on the facility 120% <br>* Min collateralization on security: 145%|
|Min. facility term|12 months|
|Geographic Diversification|* UK and EU only <br> * Less than 50% per country|

#### c1.6 "Boost" / Key Terms

##### c1.6.1 Master Facility Framework "Boost"

| Component | Key Terms | 
| --- | --- | 
| Parties     | <li>James Asset PTC Limited, BVI (Trustee) for Felix  Asset Trust (Trust)</li><li>Monetalis</li><li>Arrow Global</li> | 
|Amount|50M|
|Use of funding|Senior, Secured, Block Purchase UK Market|
|Deployment|Full deployment over 6 months|
|Currency|GBP fully-hedged against USD|
|Target returns to James Asset Trust|5%+ net |
|Senior Block Waterfall| 1. 3.5% in USD to James Asset Trust <br> 2. 1% to Monetalis <br> 3, Profit-share 55% James Asset Trust/35% Monetalis/10% Arrow| 
|Collateral|<li>Properties</li><li>Infrastructures</li><li>Hard assets + Receivables</li>|
|Capital recycling|Principal payments are recirculated back into their relevant strategy until withdrawal request from Maker. <br>Interest payments - after expenses - are also recirculated until requested paid into Surplus Buffer.|

##### c1.6.2 Credit Guidelines "Boost"
All blocks purchased under the “Booster Block Purchase” facility will need to meet the minimum credit guidelines set out in the table below. 

| Component | Key criteria | 
| -------- | -------- | 
| Facility type | Senior secured only   | 
|Equity|The originator will need to demonstrate a robust equity position|
| Security type   | Property or Hard Assets |
| Security value  | Independently valued   |
| Loss of capital   | Less than 1% over the the last five years     |
| First loss capital    | Blocks are purchased at a discounted rate of 85% or less of the outstanding block value. |
| Concentration risk     | Less than 1% on single unit developed / funded|
| Cross guarantees    | Cross guarantee within the strategy   |
| Underlying loan terms   | Max weighted average duration of underlying loans on outstanding portfolio: 24 months  |
|Collateralisation|<li>Min collateralization on the block 125%</li><li>Min collateralization on security: 145%</li>|
|Min. Block term|6 months|
|Geographic Diversification|UK Only:<br><li>80% England and Wales</li><li>20% Scotland and Northern Ireland</li>|

#### c1.7 Key Credit Facility Governance
All proposed facilities will need to be validated and approved to ensure they comply with the Master Facility and Credit Guidelines. The process will following these steps:

1. Opportunity is identified and all associated documents submitted to Monetalis.
2. Monetalis assess that the opportunity aligns to agreed Framework Credit Guidelines and that it delivers the best possible returns.
3. Monetalis approves facility 
4. External legal counsel to verify and validate that the proposed facility aligns to the credit guidelines. The panel of external legal counsels will be 
    1. Addleshaw Goddard
    2. DLA Piper. 
5. Facility approved for disbursal.

#### c1.8 Liquidity Considerations & Market Changes
In the short term, these portfolios will not be liquid assets.

Although there are active participants that are willing to buy or refinance these portfolios, these are not fast processes, and shouldn’t be relied upon for quick liquidity. 

However, this vault is meant to be the start of a longer term strategy of Arrow, Monetalis and Maker - we would suggest - to recreate the private credit market using DeFi/CeFi/TradFi integration to create liquidity in the products.

Significant resource across the Arrow and Monetalis teams are allocated to this project of integration and building markets to facilitate a new state of liquidity for private credit structures.

#### c1.9 Asset Class Comparison & Yield Expectations

| Strategy | Base Rate | Est Ultimate Yield to Maker|
| -------- | :---: | :---: |
| US Treasuries    | 3.50% | 3.50%     |
| US CMBS   | 5.50%  | 5.50%     |
| UK Gilts  | 4.00%  | 4.00%     |
|Arrow UK Resi   | 3.50%     | 5.50%     |
|Arrow UK Resi Dev  | 3.50%   | 7.00%     |
| Arrow Irish Resi  | 3.50%    | 8.50%     |
| Arrow UK EV Credit  | 3.50%    | 8.75%     |

#### c1.10 Examples of Arrow's Underlying portfolios
Underlying asset classes will range depending on markets, but in all instances will provide strong downside protection. For example:

* Irish residential units in Dublin, purchased for EUR 250k, with EUR 50k capital expenditure to significantly improve energy efficiency. Many of these units would have been built decades ago, and will therefore be incredibly energy inefficient. The units will be completely stripped back to their base shell, and refurbished to a very high standard, increasing energy rating by at least 2 levels. In addition, approximately 20% of the units will be taken from existing stock that has not been lived in for 2+ years, bringing isolated housing stock back into use in a local market that has a real undersupply issue, helping to solve for material social detriment.

* UK residential housing developments, built in £10m+ projects. Each project must maintain to Arrow’s local green sustainable scorecard, monitoring items such as:
    * Embodied and operational carbon, to RIBA standards.
    * Minimum waste diversion from landfills
    * Minimum thermal standards for floors, walls, roofs, and air permeability
* Credit agreements to UK Uber drivers to purchase electric vehicles. Working with an existing lender who is on Uber’s current panel of promoted lenders to drivers, we can provide capital to help convert Uber’s London fleet from ICE to EV. Uber has committed to having all of their London fleet electric by end of 2025, and Transport for London currently will only allow newly licensed vehicles to be electric.

#### c1.11 Currency Hedging
At this time we’re still assessing market options for currency hedging, but based on our conversations with a prominent investment bank, our intention would be to enter into cross currency swaps where:

* For GBP floating rate assets, you enter a swap where the SPV pays GBP daily compounded SONIA + spread, and receives USD daily compounded SOFR + spread 

* For EUR floating rate assets, you enter a swap where the SPV pays EURIBOR + spread and receives USD daily compounded SOFR + spread

This would remove much of the FX risk between USD and GBP/EUR, and also allow for protection should we enter into any floating rate facilities. We expect the majority of our positions to be fixed, and therefore we may well be able to simplify this further.

From an operational perspective, we would enter into the hedges on day 1 of any FX exposure, then each month top up based on the updated exposure and expected run off. If the pool ramps as expected, we would have 24 swaps over 2 years. To clean this up at the end of the ramp period, we can restructure these all into just one swap with a weighted average spread over SOFR and FX rate.

Ultimately we will be able to pass a lot of the heavy lifting and execution of this strategy to a 3rd party, and the overall hedging we’re looking to put in place is relatively simple.

### MIP89c2: Verification Conditions for Collateral Onboarding

#### c2.1 Legal Structure and Governance Verification Requirements

At least one community member, with legal credentials, must, through a public forum post, validated by at least one Facilitator, provide a verification of the legal and governance structure appropriateness for holding a large amount of low-risk real-world asset collateral for Maker.

#### c2.2 Lending Arrangement Key Terms Verification Requirements

The Strategic Finance Core Unit Facilitator must, through a public forum post, provide a Verification of the Lending Agreements Business Terms & Risks ensuring the appropriateness of this USDC allocation for Maker and its ALM strategy.

#### c2.3 Technical Verification Requirements

The Collateral Engineering Services Facilitator must, through a public forum post, provide a Verification of the technical appropriateness of the MIP21 designed solution in accordance with the Collateral Onboarding process (“COB”).

Should any one of the above verifications not be forthcoming, for whatever reason, this MIP will not move forward in the COB.

### MIP89c3: Technical Conditions of the Collateral Onboarding

The technical implementation must follow the MIP21 framework. Upon Collateral Engineering Services solution Verification in MIP89c2, the relevant smart contracts must be constructed and deployed. The ETH Address emitted by the legal structure specified in MIP89c1 should only be changeable by MakerDAO Governance, and follow the MIP21 framework.
These smart contracts must only allow for the generation of Dai or USDC through a vault that is sent to the ETH address of the legal structure as its ultimate destination, and it must not be technically possible to send the Dai or USDC elsewhere, in accordance with MIP21.
There must also not be any additional technical features or complexity that goes beyond the minimum necessary smart contracts and dummy constructs to enable the generation of Dai and its transfer to the ETH Address emitted by the legal structure.
The ability to initiate the generation of Dai or USDC from the vault and trigger their transfer to the ETH Address emitted by the legal structure is given to an Ethereum address controlled by Monetalis. This address must have no ability to access the funds.
When the collateral onboarding process for MIP89 has progressed to step 7 in the COB, an executive vote must be created (or code must be bundled into a broader executive vote) that activates all permissions for the vault to be onboarded based on the smart contracts specified in MIP89c3.

The vault must provide:
* Debt Ceiling of DAI 300 million.
* Stability Fee of 0% (surplus is paid manually through the legal structure, as specified in MIP89c1)
* All other parameters must be set to ensure they have no functional impact.

