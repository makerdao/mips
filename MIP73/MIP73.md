# MIP73: Pando Investment Grade Climate Assets Collateral Onboarding

## Preamble
```
MIP#: 73
Title: Pando Investment Grade Climate Assets Collateral Onboarding
Transaction: Loan to Pando Solar 1 (SPV) to acquire rated solar loans from Mosaic Solar, Inc.
Author(s): Pando Climate Inc. (http://www.pandoclimate.co/), a firm of highly experienced energy investors and operators that enables protocols like Maker to benefit from real world climate assets
Contributors: Dori Rutkevitz, Dan Rosen, Peter O’Rourke, Morgan Wright
Tags:
Type: Proposal
Initial Debt Ceiling: $210 Million
12 month goal: >$1 Billion (This goal is informational with no binding force)
Status: Withdrawn
Date Proposed: <2022-04-06>
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP21
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip73-pando-investment-grade-climate-assets-collateral-onboarding/14484
```

## References

* [The Case for Clean Money](https://forum.makerdao.com/t/the-case-for-clean-money/10684)
* [Mosaic Surpasses $6 Billion in Loans](https://www.prnewswire.com/news-releases/mosaic-surpasses-6-billion-in-loans-funded-for-residential-solar-and-sustainable-home-improvements-301433308.html)
* [MIP21: Real World Assets - Off-Chain Asset Backed Lender](https://mips.makerdao.com/mips/details/MIP21#sentence-summary)
* [Project Real World Sandbox](https://drive.google.com/file/d/1LQp55V26UabzanzR5hFefw-EdfbraC1U/view)
* [MIP13c3-SP4](https://forum.makerdao.com/t/mip13c3-sp4-declaration-of-intent-commercial-points-off-chain-asset-backed-lender-to-onboard-real-world-assets-as-collateral-for-a-dai-loan/3914)
* [KBRA Global Rating Methodology](https://www.kbra.com/documents/report/184/abs-general-global-rating-methodology-for-asset-backed-securities)
* [KBRA Structured Finance Counterparty Methodology](https://www.kbra.com/documents/report/9141/structured-finance-global-structured-finance-counterparty-methodology)
* [KBRA ESG Global Rating Methodology](https://www.kbra.com/documents/report/47746/esg-global-rating-methodology)
* [SES Project Real-World Sandbox](https://forum.makerdao.com/t/ses-project-real-world-sandbox/10910)
* [IPCC Sixth Assessment Report](https://www.ipcc.ch/report/ar6/wg2/)

## Sentence Summary

MIP73: Pando Climate Inc. (“Pando”) is offering Investment Grade climate assets to MakerDAO which will allow Maker to promote DAI as “clean money” by backing it with climate positive collateral, bringing stable financial returns to Maker while simultaneously enabling the reduction of greenhouse gas emissions.


## Paragraph Summary

MIP73. Pando enables protocols like Maker to collateralize their protocol with climate assets. While many climate assets are more “greenwashed” than effective, Pando enables protocols to earn a yield while meaningfully preventing greenhouse emissions. The first clean energy asset that Pando is offering to Maker is a $210M pool of rated solar loans (the “Transaction”). The climate assets supporting the Maker loan are cash flows from PV Solar installations on residential rooftops. The Transaction is highly structured, and the pool of solar loans will be rated Investment Grade by a US Credit Rating agency ([Kroll Bond Rating Agency](https://www.kbra.com/), or KBRA). As a result of this Transaction the company originating the loans will be able to increase their deployment of solar. Also, the Transaction provides Maker with an opportunity to demonstrate how cryptocurrencies can pioneer innovative, lower cost financing structures in clean energy.

Of note, Maker is in the senior secured position ahead of Pando, providing significant protection in any downside scenarios. Maker will fund the full $210m as part of a single Tranche at closing for the Transaction. Principal and interest payments made to Maker on the full amount will commence directly after closing. Last, this Transaction will not tokenize the solar loans, and as a result Pando will coordinate with the Real World Assets Team on a MIP21.

This MIP, importantly, also details strict conditions for the setup of the underlying legal and governance structure and attestation requirements.

## Motivation

* The team members of Pando have been helping to finance climate solutions for decades. When we read “The Case for Clean Money”, we realized that there is a deep mission-alignment between ourselves and the Maker community.
* We believe there is a profound opportunity to use DeFi to accelerate climate solutions. We think DeFi investors can both earn a good risk-adjusted return and support the deployment of renewable energy projects that prevent greenhouse gas emissions. The assets in this Transaction enable individual homeowners to go solar, meaningfully changing their relationship with their own energy generation and the climate.
* These rated assets are investment grade that provide the stability and risk profile that the Maker community has signaled a preference for in the past.
* This Transaction places Maker among blue-chip financial institutions that currently lend to the same type of assets from the same Originator. These institutions include BNP Paribas, New York Life, Royal Bank of Canada, TIAA, PIMCO, Credit Suisse and Deutsche Bank, among others.
* The Pando team is uniquely qualified to invest in, structure, and manage these assets for Maker, and collectively Pando has more than seventy years of experience in renewable project finance across more than $70B of projects.
* This Transaction will enable Maker to diversify its reserves from non-yielding assets to cash flow generating green assets.
* Maker can capture the momentum of the White House, SEC, the UN, and others to dramatically advance the clean energy economy.
  * “President Biden knows that we need to move even faster to combat climate change…reaching 100% carbon pollution-free electricity by 2035 ”
    * White House, February 28, 2022
  * “The SEC Will Regulate Climate”
    * Bloomberg News, March 22, 2022

## Component Summary

**MIP73c1: Background of the Borrower (Pando)**
This component details the background of the Borrower, Pando.

**MIP73c2: Rating Agency and Borrower Underwriting Processes**
This component details the underwriting process of both the Rating Agency (Kroll) and the Borrower (Pando).

**MIP73c3: Background of the Originator (Mosaic)**
This component details the background of the Originator, Mosaic.

**MIP73c4: Benefits to Maker from the Transaction**
This component details some of the benefits that will accrue to Maker from the Transaction.

**MIP73c5: Process Optimization**
This component sets out a mechanism to ensure prioritization on this collateral onboarding.

**MIP73c6: Legal and Approval Structure Verification**
This component details the legal and approval structures of the Transaction.

**MIP73c7: The Transaction and Transaction Restriction Verification**
This component details the Transaction.

**MIP73c8: Technical Conditions of the Collateral Onboarding and Technical Verification**
This component contains the technical requirements for unambiguous technical execution of the collateral onboarding.

**MIP73c9: Specification of Executive Vote**
This component contains executive vote specifications and conditions.

**MIP73c10: Collateral Onboarding Cancellation Procedure**
This component sets out how this onboarding can be canceled by the Maker community.

**MIP73c11: Unilateral Instant Collateral Onboarding Withdrawal**
This component sets out how this onboarding can be canceled by Pando.

## Specification / Proposal Details

### MIP73c1: Background of the Borrower (Pando)

(This component is informational)

Demand for solar energy has been increasing exponentially as the cost to install solar continues to drop. According to a recent [UN study, we need to deploy $2 trillion annually](https://www.ipcc.ch/assessment-report/ar6/) to meet climate targets by the end of the decade. While climate technology has been proven to work and the demand is there, traditional financial institutions are not responsive enough to keep up with the growing demand. Pando believes MakerDAO and other crypto protocols can be a critical player in accelerating the adoption of climate solutions globally while earning a stable return.

Pando was created by the founder and CEO of [Solar Mosaic, Inc.](https://joinmosaic.com/) (Mosaic) and the former product lead at Mosaic, which has financed more than $7B of solar loans and issued several billion (USD) in rated solar debt instruments. Pando’s four principals have decades of combined experience in energy finance and have collectively structured or participated in more than $70B of renewable projects.

Highlights of Pando’s Principals include:

* Founding team of Mosaic, [Navajo Power](https://navajopower.com/)
* Senior leadership at US Department of Energy’s [Loan Programs Office](https://www.energy.gov/lpo/loan-programs-office)
  * $60B in total energy loans across wind, solar, geothermal, EVs, and nuclear
  * $465M [loan to Tesla](https://www.energy.gov/lpo/tesla), the catalyst for the Model S
  * $2.6B [distributed generation project](https://www.energy.gov/articles/energy-department-finalizes-loan-guarantee-transformational-rooftop-solar-project), first ever for Bank of America and a leading Real Estate Investment Trust
* Created, deployed, and managed a ~$500M, SEC-registered solar tax equity Investment Advisory firm
* Senior leadership at New Energy Nexus, Core Capital, Sparkfund, and other leading energy/finance companies
* More info on the team at [PandoClimate.Co](https://www.pandoclimate.co/)




The Pando principals are supported by world class Advisors, including KPMG (tax), Perkins Coie, and Morrison & Foerster (legal). Pando’s mission is to radically accelerate the flow of capital into climate solutions by bringing high quality climate assets to crypto protocols.

### MIP73c2: Rating Agency and Borrower Underwriting Processes
(This component is informational)

Both Mosaic and Pando have best-in-class underwriting processes. For example, Mosaic spent years establishing a public rating methodology with Kroll Bond Rating Agency. An Investment Grade rating signifies the risk of default in the underlying assets is extremely unlikely. Also, Pando utilizes a Risk Underwriting Model against which the Principals have developed and deployed billions of dollars. The Pando model has been reviewed by public accounting firms and institutional investors - all of whom have declared it best-in-class.

KBRA will analyze the pool of solar loans in the Transaction using the [General Global Rating Methodology for Asset-Backed Securities](https://www.kbra.com/documents/report/184/abs-general-global-rating-methodology-for-asset-backed-securities) and the [Consumer Loan ABS Global Rating Methodology](https://www.kbra.com/documents/report/6363/abs-consumer-loan-abs-global-rating-methodology), as well as its [Global Structured Finance Counterparty Methodology](https://www.kbra.com/documents/report/9141/structured-finance-global-structured-finance-counterparty-methodology) and [ESG Global Rating Methodology](https://www.kbra.com/documents/report/47746/esg-global-rating-methodology). The Transaction falls within the “Category 1 – Financial Assets” categorization noted within the Global General Rating Methodology for Asset-Backed Securities, which typically relates to transactions that are backed by pools of consumer or commercial financial obligations owed by diverse obligors.

![Mosaic](https://github.com/makerdao/mips/blob/master/MIP73/Mosaic.png) *Example: Kroll Rating for Mosaic Solar Loans*

In applying these methodologies, KBRA analyzes the Transaction’s data and the underlying collateral pool and analyzes the capital structure using stressed cash flow assumptions. Pando and its legal counsel also will review operative agreements and legal opinions prior to closing.

The following table provides a summary description of the underwriting criteria that Pando uses to evaluate distributed generation assets like the Transaction. Each category has multiple subcategories and percentage valuations, and scores are assigned for each subcategory in order to comprehensively evaluate the creditworthiness of the project.

![pandorisk](https://github.com/makerdao/mips/blob/master/MIP73/pandorisk.png)

### MIP73c3: Background of the Originator (Mosaic)
(This component is informational)


The pool of solar loans that comprise the Transaction are originated by Mosaic, one of the most respected climate finance companies in the world. Mosaic has originated more than $7 billion in loans since June 2014. It is a California-based specialist finance company that enables homeowners to go solar by providing them a loan to cover the cost of solar installation. Often, homeowners save money because their monthly solar loan payments are cheaper than their previous utility bills.

This Investment Grade Solar Transaction represents a diversified portfolio of loans (across thousands of U.S. homeowners), all enabling decentralized renewable energy generation. If this proposal is approved, this capital will allow Mosaic to deploy even more residential solar in the U.S. Mosaic originates loans to mostly prime credit quality homeowners through its partnerships with more than 700 approved solar system installers/dealers.

Mosaic disburses funds directly to installers, equal to the system cost minus installer discounts. This discount depends on the loan term and dealer agreements and is generally netted out proportionately with each disbursement to the installer/dealer.

Mosaic directly originates loans in 48 states and the District of Columbia through its state lending licenses where required, and across all 50 states and the District of Columbia through lending partnerships with financial institutions. The following bullets detail additional information about Mosaic:

* Mosaic has issued loans to partners like Tesla, SunRun and SunPower.
* Current loan purchasers are publicly traded financial institutions (e.g., BNP Paribas, New York Life, Royal Bank of Canada, TIAA, PIMCO, Credit Suisse, Deutsche Bank, etc.). Pando & Maker will lend similarly like these institutions.
* Mosaic finances residential solar installations by lending directly to creditworthy homeowners
* Homeowners usually save money by installing solar
* Homeowner owns/maintains system and makes payments against the loan
* Mosaic pools loans into a ‘warehouse’ facility; those pools are then formed into tranches that receive a Kroll rating based on an established underwriting methodology
* Mosaic bundles and sells solar loans to financial institutions
* This is an efficient, cost-effective way to capitalize Mosaic loans. Selling to these institutions allows Mosaic to deploy even more solar.

### MIP73c4: Benefits to Maker from the Transaction

(This component is informational)

The following bullets provide some of the benefits that will accrue to Maker from the Transaction.

* The Transaction will generate a stable return to Maker from climate-focused, highly-structured, rated cash flowing assets.
* The Transaction is novel as it will be the first funded by a cryptocurrency, solidifying MakerDAO as the pioneer of a new financing structure for renewable energy.
* This structure allows DAI to be backed by “clean”, stable cash flows from renewable assets.
* The technology used for the solar systems is commercial grade with substantial warranties for design, workmanship, and installation. The Transaction poses no technology risk for Maker.
* The Pando team is deeply experienced in sourcing, diligencing, structuring, and managing similar assets to the Transaction.
* The structure of the Transaction is repeatable, and significant demand exists for similar transactions. The Pando principals are confident they can structure several billions in similar transactions once the template is complete with this Transaction.
* While the Transaction will have a private rating of Investment Grade, there may be an ability to increase the returns from projects with different risk profiles in future transactions.
* This Transaction will capture the momentum of the White House, SEC, and other regulators and influencers as they push to dramatically advance the clean energy economy.
  * “Today, the Biden-Harris Administration is making major leaps forward on wind, solar, transmission, and other clean energy projects … to deliver affordable, carbon pollution-free electricity across the country… that demonstrate the Administration’s unwavering commitment to creating cleaner and cheaper energy”
    * White House, January 12, 2022



### MIP73c5: Process Optimization

This proposal is a self-contained collateral onboarding proposal of a RWA collateral construct that is in its final stage and ready for immediate execution upon voter approval, using its own optimized assessment and verification processes.

If this MIP is approved, the collateral onboarding is immediately moved to step 5 of the Collateral Onboarding Process https://collateral.makerdao.com/introduction-to-collateral-onboarding/high-level-overview-of-the-collateral-onboarding-process#high-level-overview-of-the-collateral-onboarding-process

However, the standard assessments described in the Collateral Onboarding guide do not apply to MIP73, as they are not relevant for an RWA onboarding of this type. Instead, a process providing equivalent protections to the spirit of those assessments is done as specified in MIP73c6 and MIP73c7, and these assessments take the place of the standard assessments and allow it to move forward in the process.


### MIP73c6: Legal and Approval Structure Verification

This proposal is based on the precedents set by the 6S Trust structure approved by the community in MIP13c3-SP4, as well MIP21, which has been active for more than half a year. These precedents have successfully demonstrated the ability to securely interoperate between the Maker protocol and Real World Assets, as evidenced by more than $9.4 million of real world assets financed.

The legal structure is designed to include these characteristics:

* This is a single Transaction, not a series of transactions. Therefore there is no ability to change the terms once the Transaction is complete.
* Principal (the borrowed amount) and interest will be paid to Maker on a monthly basis. Interest will be paid to the Maker Protocol surplus buffer, while Principal will be returned to the Maker vault.
* Third parties will not have access to the funds or be able to change the terms or legal structure.
* It should not be possible for a third party to block Maker Governance’s ability to make decisions or modify the structure.
* There must be no ability for funds to be misappropriated or get stuck.
* Details on how to deal with an Emergency Shutdown will be developed and incorporated during the RFC phase of this MIP.

This above established structure must set up a relationship with a regulated crypto broker, and an immutable ETH address must be emitted that can be used to construct the smart contracts necessary to complete the technical step of the onboarding process specified in MIP73c8.

The following slides demonstrate the detailed flow of funds (DAI and USD), as well as the legal entities and approvals. Pando will work with the Real World Asset Team to ensure the Transaction remains consistent with the 6S Trust Structure, and that the protections for Maker are clear and strong.

A high level summary of the transaction is below.

![[structureflow](https://github.com/makerdao/mips/blob/master/MIP73/structureflow.png)

The following section summarizes the responsibilities of the primary parties to the Transaction:

![structureapproval](https://github.com/makerdao/mips/blob/master/MIP73/structureapprovals.png)

**Maker Trustee**

* Delaware (DE) Statutory Trust - (for example, Wilmington Trust)
* Independent, 3rd party
* Ensures all capital flows are approved and accurate
* The Maker Trustee confirms that the Transaction meets all requirements and that all Conditions Precedent (CPs) have been satisfied prior to execution.
* The Maker Trustee also provides irrevocable instructions to Pando on whether and when to fund the Transaction.

**Maker Foundation Company:**

* Entity that will be the conduit for funds from Maker Vault through to the Delaware Statutory Trust.
* Exact entity structure (e.g., Trust, or Foundation, etc.) will be confirmed and established in conversation with the Maker Real World Assets Team.

**Pando**

* Serves as Administrative Agent and Lender to Mosaic
* Structures, approves, and manages the Transaction.
* Confirms all Conditions Precedent have been met prior to funding Mosaic loan.
* Manages the Servicer, oversees all loans, and remedies any issues.
* Ensures the entire structure is compliant with tax and accounting regulations.

**Verification**

After this MIP has been approved, in order to allow the MIP73 collateral onboarding to occur as described in MIP73c8, the Real World Finance Facilitator and the “in SES incubation” Facilitator of Legal and Transactions Services must, through a public forum post, provide a Verification of the de facto implemented legal and approval structure’s appropriateness for holding a large amount of real world asset collateral for Maker.

Pando vault will not be granted a debt ceiling until these verifications have occurred.

## MIP73c7: The Transaction and Transaction Restriction Verification

As outlined in the legal structure and flow of funds in MIP73c6, Pando will enter into a Loan Agreement with the Maker Delaware Statutory Trust that restricts Pando’s use of Maker funds to the uses described in this Transaction, specifically only for Pando’s acquisition of Mosaic Solar Loans.

Pando proposes borrowing DAI from MakerDAO to acquire $210M of Solar Loans from Mosaic. The following bullets provide details on the Transaction:

* The Transaction is collateralized by real world climate assets, specifically loans for PV Solar installations on residential rooftops. These solar assets generate electricity, reducing demand from the grid and greenhouse gas emissions.
* Mosaic will pool the solar loans into one tranche that is highly structured and rated by a US Credit Rating agency, KBRA. The solar loans are packaged and structured so that the total pool of loans when taken together will be rated as Investment Grade.
* The Transaction will represent 6,000-7,000 US residences, and the homeowners will have a weighted average FICO score of 700 or greater.
  * Given the assets are Investment Grade, the Transaction yield will typically be 1.25% with ROIs ranging from 1.04x-1.08x, depending on the underlying tenor of the loans.
  * The weighted average life of the Transaction will be 5-6 years.
* Mosaic will service the loans, and Pando will direct/manage Mosaic as the Administrative Agent. In the event Mosaic is unable to perform, there is a contracted back-up servicer that can seamlessly step into their role.

Maker is lending against contracted cash flows from residential loans, not against the installed solar equipment.

* Maker has the most senior credit position in the waterfall against the cash flows.
* Additional credit enhancements include:
  * Maker is in a senior, over-collateralized position within the cash flows.
  * Maker is entitled to approximately 90% of the cash flows from the Transaction, ahead of all third party fees and Pando’s junior position within the waterfall.
  * In addition, a reserve account - sized and funded at closing - will cover any potential consumer defaults.
    * Historically, Investment Grade rated entities default at an annual rate of 0.03%-0.3%.
    * The Transaction’s base case underwriting model will assume a 1% annual and cumulative 7.5% default rate.
    * Historically Mosaic has achieved recoveries on default of 20-30%.
  * If the reserve account is depleted and Mosaic’s position is depleted, then Pando’s Administrative Agent fees and junior cash flows will be used to service Maker debt.
* In the event of a homeowner default, the Servicer will access the Reserve Account to ensure timely payments of Principal and Interest.
  * A sample Solar Loan is $75,000, with a monthly payment of approximately $3,750.
  * The Reserve Account is sized at 1% of the initial Transaction value.
    * The Servicer would attempt to get the homeowner paying again, and if they are unable they will recover an average of 20-30% of the system cost.
  * However, if we assume $0 in recovered capital from defaulted homeowners, more than 530 homeowners (out of approximately 7,000) would need to simultaneously default to deplete the entire Reserve Account.
    * As a reminder, Investment Grade assets typically default at 0.03%-0.3% annually, or up to 20 homeowner defaults annually.
  * In addition, Maker will stand in front of Pando and other service providers in any downside scenario, meaning the Reserve Account is not the only protection available to Maker.
  * If the entire Reserve Account is depleted, it would take another 200-300 simultaneous homeowner defaults to occur before Maker’s Interest payments would be impacted. In total, 700-800 homeowners would need to default to impact interest payments to Maker.
  * However, it is important to note that in the event Maker’s interest payments are compromised from homeowner defaults, any unpaid interest will be accrued and paid from future cash flows. **In other words, substantial, unforeseen homeowner defaults could delay, but will not erase Maker’s return.**
* In summary, for Maker's interest payments to be delayed, homeowners would need to simultaneously default at **25x-35x** the typical Investment Grade annual default rate.


So the Transaction waterfall looks like:

1. Maker DAO
2. Servicer (Mosaic Solar)
3. Administrative Agent (Pando Climate Inc.)
4. Pando Solar 1 (SPV)
5. Cash Reserves (pre-funded)


The Transaction will be structured by Pando and Mosaic, with support from Societe Generale (the “Structuring Agent”).

**Verification**

After this MIP has been approved, in order to allow the MIP73 collateral onboarding to occur as described in MIP73c8, the Real World Finance Facilitator must, through a public forum post, provide a Verification that the Transaction restrictions of the de facto implemented Legal Structure guarantee that it will execute a transaction with terms as described in this component.

### MIP73c8: Technical Conditions of the Collateral Onboarding and Technical Verification

The Collateral Engineering Services Core Unit will, with support from the Protocol Engineering Core Unit and any other relevant Core Units, deploy smart contracts that hard code the ETH Address emitted by the legal structure specified in MIP73c6, and follow the MIP21 framework.

These smart contracts must only allow for the generation of DAI through a vault that is sent to the ETH address of the legal structure as its ultimate destination, and it must not be technically possible to send the DAI elsewhere, in accordance with MIP21.

There must also not be any additional technical features or complexity that goes beyond the minimum necessary smart contracts and dummy constructs to enable the generation of DAI and its transfer to the ETH Address emitted by the legal structure.

The ability to initiate the generation of DAI from the vault and trigger their transfer to the immutable ETH Address emitted by the legal structure is given to an Ethereum address controlled by Pando, which is specified through a public forum post by a Pando representative. This address must have no ability to access the funds.

**Verification**

In order to allow the MIP73 collateral onboarding to occur as described in this MIP73c8, the Collateral Onboading Services Facilitator must, through a public forum post, provide a Verification that the technical implementation of the Vault are in accordance with MIP21 and is technically secure enough to receive a large debt ceiling.

### MIP73c9: Specification of Executive Vote

When the collateral onboarding process for MIP73 has progressed to step 7, and with the conditions specified in MIP73c6, MIP73c7 and MIP73c8 met, an executive vote must be created (or code must be bundled into a broader executive vote) that activates all permissions for the vault to be onboarded based on the smart contracts specified in MIP73c8.

The Vault must provide:

* Debt ceiling of DAI 210 million
* Stability fee of 0% (surplus is paid manually through the legal structure, as specified in MIP73c6)
* All other parameters must be set to ensure they have no functional impact.


### MIP73c10: Collateral Onboarding Cancellation Procedure

The collateral onboarding can be canceled at any time by the community through a standard or urgent signal request process.

This will remove the block on onboarding collateral through non-MIP processes as specified in MIP73c5, nullify the permission to create the executive vote, or bundle its code into another executive, as specified in MIP73c9, and formally remove MIP73 from the Collateral Onboarding process.

The goal is that this option should never be necessary, as the combination of collaboration/coordination and already undertaken efforts, in and around this subject, should allow the collateral onboarding to happen swiftly after the approval of the MIP.

If it becomes necessary to use the cancellation feature regardless, this would be considered a significant failure of protocol coordination and execution, and in most cases the proposer of this MIP should expect to lose their trust and reputation in the community. This risk helps ensure that only the most serious proposals by the most competent proposers will be willing to use this process.

### MIP73c11: Unilateral Instant Collateral Onboarding Withdrawal

After this MIP has been approved, Pando can at any time through a public forum post, unilaterally withdraw the Collateral Onboarding application. This nullifies all aspects of MIP73c5, MIP73c6, MIP73c7, and MIP73c8, and instantly removes the Collateral Onboarding block specified MIP73c5, and formally removes MIP73 from the Collateral Onboarding process.

This option allows the proposer to prevent their reputation from being damaged by forcing the community to spend time and energy on performing a MIP73c10 cancellation procedure, if some unforeseen issue should arise after the approval of the MIP.

Pando is committed to immediately use the unilateral instant collateral onboarding withdrawal should any kind of legitimate issue arise that would complicate or slow down the verifications necessary to enable the collateral onboarding.
