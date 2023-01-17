# MIP95: Simple To Onboard RWA 100M in Cogent Bank Loan Participations

## Preamble

```
MIP#: 95
Title: Simple To Onboard RWA 100M in Cogent Bank Loan Participations
Authors: @maxglass, Kyle Feldman (kfeldman@cogentbank.net)
Contributors:
Tags: RWA
Type: Real World Asset
Status: RFC
Date Proposed: 2023-01-06
Date Ratified: <yyyy-mm-dd>
Dependencies: None
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip95-simple-to-onboard-rwa-100m-in-cogent-bank-loan-participations/19338
Ratification Poll URL:
```

## References

* [HVBank Collateral Onboarding Application](https://forum.makerdao.com/t/mip6-huntingdon-valley-bank-loan-syndication-collateral-onboarding-application/14219)

## Sentence Summary

A simple to onboard RWA, $100M in Cogent Bank loan participations.

## Paragraph Summary

Optimized for simplicity to onboard, Cogent Bank proposes participating $100M of loans to MakerDAO’s existing RWA Master Participation Trust using the same Participation Agreement with the same exact terms as [MakerDAO’s deal with Huntingdon Valley Bank](https://forum.makerdao.com/t/mip6-huntingdon-valley-bank-loan-syndication-collateral-onboarding-application/14219). This is an opportunity for MakerDAO to replicate the HVBank deal with another American commercial bank and reinforce MakerDAO’s strategic value for community banks.

## Component Summary

**SUMMARY TERMS:**

* **Counterparty:** (RWA-XX) Cogent Bank is a state-chartered commercial bank supervised by Florida’s Office of Financial Regulation (OFR) and the Federal Deposit Insurance Corporation (FDIC) (“Cogent”).
* **Legal Entity for the benefit of MakerDAO:** Use the existing RWA Master Participation Trust, a Delaware statutory trust for the benefit of MakerDAO (the “MakerTrustDE”), currently in use with Huntingdon Valley Bank.
* **The Real World Asset(s):** 50% participation(s) in loans originated by Cogent bank that have been assigned a “Pass” rating in accordance with a federal regulatory grading framework.
* **An Initial Debt Ceiling of:** $100M
* **24-month goal:** $250M to $1B
* **Yield Benchmarks (as of January 5th, 2023):** [30-Day Average SOFR](https://www.newyorkfed.org/markets/reference-rates/sofr-averages-and-index) (4.15%) **&** [“Like-Term” US Treasury](https://home.treasury.gov/policy-issues/financing-the-government/interest-rate-statistics) (e.g. 5-year UST 3.85%)
* **Minimum Yield (a spread over benchmarks) to the MakerTrustDE at the time of origination and participation (net of all S,G,&R Fees):**
  * For floating rate loans: 75 basis points over the 30-day average SOFR (implying a minimum floating yield of 4.85% as of January 5th, 2023)
  * For fixed rate loans: 30 basis points over the like-term treasury for fixed rate loans (implying a minimum fixed yield of 4.15% as of January 5th, 2022)
* **Servicing Fee and Fee for Governance & Reporting (S,G,&R):** 125bps on first $10M of each participation, 75bs thereafter
* **Vault stability fee will be set to 0% but a Minimum Yield will be stipulated in the Participation Agreement and all net interest will be sent to the surplus buffer.**
* Uninvested dollars will be invested in short-term treasuries

**Disclaimer:**

*Except for statements of historical fact, certain information set forth in this presentation contains forward-looking information and forward-looking statements.*

*These statements are not guarantees of future performance and undue reliance should not be placed on them. Such forward-looking statements necessarily involve known and unknown risks and uncertainties, which may cause actual performance and financial results in future periods to differ materially from any projections of future performance or result expressed or implied by such forward-looking statements.*

<i>Although forward-looking statements contained in this presentation are based upon what management of the Cogent believes are reasonable assumptions, there can be no assurance that forward-looking statements will prove to be accurate, as actual results and future events could differ materially from those anticipated in such statements. Cogent undertakes no obligation to update forward-looking statements if circumstances or management’s estimates or opinions should change except as required by applicable securities laws. The reader is cautioned not to place undue reliance on forward-looking statements.</i>

*The terms and conditions set forth herein are not intended to, and do not and shall not, constitute a binding agreement, nor an agreement by any party to enter into a binding agreement. Rather, such terms and conditions are intended to serve as the basis for due diligence, and the potential negotiating and drafting one or more definitive agreements on the terms and conditions stated herein (or as such terms may hereinafter be amended during further negotiations), as well as other terms and conditions to be determined. In addition, any terms and conditions of any definitive agreement(s) that may arise out of this proposal or the negotiations surrounding the same are subject to, among other things, the review and approval of Cogent’s Board of Directors, legal advisors, and other appropriate decision makers. Neither party can or shall rely on this proposal as binding on the other, and neither party will be bound unless and until one or more definitive agreement(s) have been fully executed by both parties. Until such time, neither party is bound to continue negotiations, and each party reserves the right to cease negotiations at any time, for any reason or no reason. The terms and conditions herein shall be governed by and construed in accordance with the laws of the State of Florida, without regard to conflict of law principles.*

*No owner, contractor, nor employee of MaxStability LLC holds an equity or debt position in Cogent Bank or Cogent Bancorp, Inc.*

## Motivation:

### **Executive Summary:**

This proposal is submitted by Cogent Bank (“Cogent” or “The Bank” or “Counterparty”), a State Chartered American commercial bank wholly owned by Cogent Bancorp, Inc., a privately held U.S. bank holding company. Cogent Bancorp, Inc. and its subsidiaries are subject to regulatory oversight by the Federal Deposit Insurance Corporation (FDIC) and the Florida Office of Financial Regulation (OFR).

Optimized for simplicity to onboard, Cogent proposes participating $100M of loans to MakerDAO’s existing RWA Master Participation Trust (“MakerTrustDE”) using the same Participation Agreement with the same terms as MakerDAO’s deal with Huntingdon Valley Bank.

**How does MakerDAO benefit from replicating the HVBank deal with Cogent?**

* Replicating the HVBank deal with Cogent reinforces MakerDAO’s strategic value to community banks (an argument for favorable regulatory treatment of MakerDAO)
* Excellent risk-adjusted yield
* Scale real world asset collateral by adding another regulated bank channel partner
* Scale faster with Cogent Bank, which has a $28M legal lending limit vs. HVBank’s $7M
* Diversify MakerDAO’s bank loan participations geographically: Cogent covers the American southeast while HVBank covers the mid-Atlantic

**Cogent’s Track Record:</b>**

Pinnacle Bank was acquired and renamed Cogent Bank on September 13th, 2018. Pinnacle Bank had $72M of assets at the time of acquisition and today, four years later, Cogent Bank has $1.3B of assets. That growth has happened organically (loan origination) from experienced leadership and dependable operations, as evidenced by negligible loan losses of less than 0.01% of assets over the same period.

In 2019, Cogent originated $300M of loans. In 2020, originations grew to $513M. In 2021, volume grew to $873M. In 2022, through the end of August, Cogent had originated $602M. The details of this 2022 activity are broken down by loan category in the following table. Cogent proposes that all loan categories be eligible for participation to MakerTrustDE.

|Type|Through Aug-22 Production|Through Aug-22 Avg. Duration|YTD Avg. Note Rate|
|---|---|---|---|
|Commercial & Industrial|$109,434,740|38|5.05%|
|CRE Land & Development (100 Bucket)|$85,822,364|43|4.59%|
|CRE Non-Owner Occupied|$84,468,067|54|4.93%|
|CRE Owner Occupied|$52,591,358|95|5.72%|
|Life Insurance|$11,664,047|48|6.78%|
|Consumer and Other|$18,337,184|18|5.77%|
|Specialty Lending|$47,629,000|36|7.19%|
|SBA Guaranteed|$49,954,050|34|5.57%|
|Residential Lending|$129,015,917|44|5.12%|
|PPP Lending|$0||0.00%|
|Public Finance|$13,445,580|37|4.18%|
|Total|$602,362,308|29|5.24%|
|||||

**The proposed terms for the Participation Agreement are** (the same as with Huntingdon Valley Bank):

  * Cogent will retain a minimum of fifty percent (50%) ownership in the principal of each Cogent participated loan
  * Cogent and MakerTrustDE shall have a pari-passu relationship in each loan
  * All loans must be assigned a “Pass” credit rating by Cogent Bank
  * For loans that include a fixed rate period, said fixed period shall not exceed five (5) years
  * Cogent shall be the loan servicer

* **Yield Benchmarks (as of January 5th, 2023):** [30-Day Average SOFR](https://www.newyorkfed.org/markets/reference-rates/sofr-averages-and-index) (4.15%) **&** [“Like-Term” US Treasury](https://home.treasury.gov/policy-issues/financing-the-government/interest-rate-statistics) (e.g. 5-year UST 3.85%)
* **Minimum Yield (a spread over benchmarks) to the MakerTrustDE at the time of origination and participation (net of all S,G,&R Fees):**
  * For floating rate loans: 75 basis points over the 30-day average SOFR (implying a minimum floating yield of 4.85% as of January 5th, 2023)
  * For fixed rate loans: 30 basis points over the like-term treasury for fixed rate loans (implying a minimum fixed yield of 4.15% as of January 5th, 2022)

![image|690x197](upload://2cyznHFK0opWhdsUCHZxWAulwQu.png)

**Loan Servicing**: Cogent will perform the loan servicing in accordance with a Servicing Agreement that is the same as the Servicing Agreement with Huntingdon Valley Bank, modified accordingly.

<b>Governance consulting & reporting:</b> MaxStability LLC (“MaxStability”) has helped Cogent Bank prepare this proposal. MaxStability is consulting on MakerDAO governance communications and will help with legal structuring, closing, and onboarding. MaxStability and Cogent Bank will pay MakerDAO’s transaction legal expenses. As part of MaxStability’s Reporting Service, MaxStability will retrieve and deliver the off-chain data about assets relevant to the facility, and distribute this information to the MakerDAO community (unless said data must be permissioned, in which case MaxStability will distribute that data to relevant Core Units or MetaDAO members who are under NDA). MaxStability will not in any way impede communication between any counterparty and any relevant core units or the community.

**S,G,&R Fees:** Fees for the loan servicing by Cogent, for off-chain data reporting by MaxStability, and for governance consulting by MaxStability are collectively the “S,G,&R Fees”.

The total S,G,&R Fees will be equal to one and one-quarter of one percent (1.25%) per annum on the first $10,000,000 participated to the MakerTrustDE of each individual Participated Loan (the “Base Loan Balance”). Over the Base Loan Balance, S,G,&R Fees on amounts participated to the MakerTrustDE out of each Participated Loan shall be three quarters of one percent (0.75%) per annum. For example, if Cogent participates $12M of a loan ($24M total loan size) to the MakerTrustDE, the S,G,&R Fees shall be ($10MM * 1.25%) + ($2M *.75%) = $125,000 + $15,000 = $140,000 per year, reducing proportionately to any amortization of the underlying loan (S,G,&R Fees decline on each participated loan as each loan amortizes).

G&R will be 25 bps (0.25%) paid to MaxStability for that work. MaxStability’s G&R fees are at risk if the guaranteed minimum yield is not achieved.

## Specification / Proposal Details

**The Counterparty: A Regulated Loan Originator and Servicer, Cogent Bank**

Cogent Bank (“Cogent”) is a full service commercial bank chartered by the State of Florida. Cogent operates with regulatory oversight from the Florida Office of Financial Regulation (OFR) and the Federal Deposit Insurance Corp (the “FDIC”). The Bank is wholly owned by Cogent Bancorp, Inc. and headquartered in Orlando, Florida.

Cogent Bank has operated as a full service commercial and retail bank since its inception as Pinnacle Bank in 2001. “Cogent” came into existence in September of 2018 when current bank leadership acquired all the assets, deposits, and substantially all other liabilities from Pinnacle Bank in a transaction referred to as the Pinnacle Acquisition. Since the Pinnacle Acquisition, the Bank has been transformed into a relationship-based, service-driven, diversified community bank.

Cogent Bank’s operations are focused in the state of Florida through relationship management teams and banking centers located in seven Florida counties including Duval, Volusia, Orange, Hillsborough, Pinellas, Collier, and Lee counties as well as statewide lending teams focused on residential lending, small business lending, specialty lending (throughout the southeast), SBA (nation wide), and USDA lending (throughout the southeast).

Cogent Bank offers a broad range of lending, depository, treasury management, mobile banking, and real-time payment services designed to meet the complex and diverse needs of clients while staying focused on the local communities we serve.

Cogent Bank employs about 175 people across departments, specializations, and nearly a dozen offices in Florida.

**The Governance Documents of Cogent:**

* [Bylaws of Cogent Bancorp, Inc.](https://docs.google.com/document/d/17570Wky6BUTWlR9FOw8F9o8RykuhBVMuWDfDGJMsF2Y/edit?usp=sharing)
* [Articles of Incorporation](https://www.dropbox.com/s/igjbcg1o5i1z2bt/Articles%252520of%252520Incorporation%252520as%252520of%2525209.28.2022.pdf?dl=0) for Pinnacle Bank, Cogent’s predecessor
* [Amended Articles of Incorporation](https://www.dropbox.com/s/0qz8gst9ukwcl3v/Articles%252520of%252520Incorporation%252520Name%252520Change%252520to%252520COGENT%252520as%252520of%2525209.28.2022.pdf?dl=0) and name change to Cogent Bank

**Cogent’s Blockchain Initiative:** **We Are Open for Business with Web3**

Cogent wants to serve clients that do business in Web3: investors, infrastructure providers, engineers, startups, and DAOs. Cogent has the ability to service clients nationally and the Bank has physical offices in the crypto hubs Miami and Tampa. Cogent is unique among banks that serve the crypto market because Cogent is a community bank. That means you get personalized service that is high touch. If you would like to explore whether Cogent can be your bank, please email the bank President, Chirag Bhavsar, at cbhavsar@cogentbank.net

**Cogent’s Regulatory Oversight, Legal/Compliance/Audit and Quality Controls, Risk Management, Financial Management, Portfolio Management:**

The bank, across all of its departments, is annually subjected to multiple audits and external reviews from supervisory agencies and audit firms. Some of the key reviews and audits are:

1. Regulatory: Annually the Federal Deposit Insurance Corp (FDIC) and Florida Office of Financial Regulation (OFR) perform a complete audit of the loan portfolio, loan underwriting, appraisals, credit quality, collateral, risk ratings, concentrations, stress testing, and reporting. etc.
2. Financial: **Financial audits** are provided annually by outside auditor Hacker, Johnson & Smith PA (https://www.hackerjohnson.com). Hacker is an independent firm of certified public accountants that has been providing audit and tax services to financial institutions since 1974. **Internal audits** focused on commercial and consumer loans, loan administration, loan operations, and loan servicing are provided by Saltmarsh, Cleaveland & Gund (https://www.saltmarshcpa.com). Saltmarsh is an independent firm of certified public accountants recognized as one of the top 200 accounting and advisory firms in the U.S.
3. Compliance: independent regulatory and compliance oversight is supported by Saltmarsh, Cleaveland & Gund and by Mauldin & Jenkins (https://www.mjcpa.com)
4. Loan Review: the bank’s residential loan portfolio is reviewed monthly by the StoneHill Group (https://www.stonehillgroup.com). StoneHill is an independent loan quality control reviewer with expertise in financial services. Loan Quality Review is currently audited semi-annually by Saltmarsh, Cleaveland & Gund.

**Public Reporting: Call Reports</b>**
Though Cogent Bank is privately owned, quarterly snapshots known as “Call Reports” are published with information about the bank’s balance sheet, income statement, and performance toward regularly accepted ratios.

* [June, 2022 call report](https://www.dropbox.com/s/prukleb77orij8k/June%2525202022.pdf?dl=0)
* [September, 2022 call report](http://September%202022.pdf)

**Comparative Analysis of Florida Banks:**

An investment bank, Hovde Group, performs a quarterly comparative analysis of banks in Florida: [Quarterly Florida Bank Peer Performance Report By Region](https://www.dropbox.com/s/062ofdxsh0dctcz/Hovde%20Florida%20Bank%20Performance%20Report%20-%20Q3%202022.pdf?dl=0) (September 30, 2022) *Cogent is on page 4 of 10*

**Cogent’s Track Record as Lead Bank in Loan Participations:**

Cogent has many existing participations, like the participation(s) contemplated in this proposal, with other State or Federally-chartered banks, and with satisfactory non-chartered financial institutions. The bank will hire additional personnel to support the MakerDAO Loan participation program as needed. Cogent proposes that it be “the Lead” in this participation relationship with MakerTrustDE. When Cogent is “the Lead Bank” in a Participation (i.e. the Originator and Servicer of the loan to be participated), Cogent provides the participating partner institutions (e.g. MakerDAO) a participation certificate equal to the percentage of the loan, the amount of the current draw or payment, and the balance of the participating loan, among other information and documentation. In addition, the Lead Bank provides to its participants all financial documentation collected as a function of the loan approval and issuance.

**Reporting to MakerDAO:** To meet all MakerDAO reporting requirements, Cogent has engaged MaxStability LLC (“MaxStability”). Cogent will provide MaxStability and The Trust Sponsor (RWA Foundation) monthly servicing reports with signed verification that covenants of Master Participation Agreement are met. MaxStability will transmit any confidential data under NDA to relevant MetaDAOs or Core Units (“Confidential Data”). MaxStability will meet all reporting requirements defined by MakerDAO that are within its power and ability to perform.

**Cogent’s Leaders Who Spearhead This Proposal**

* **Chirag Bhavsar, President:** Chirag holds a CPA designation and brings over 25 years of banking experience to the Board of Cogent Bank. He is Co-CEO of CNL Financial Group and CEO of Strategic Capital as of January 2018. During 2017 he served as CFO and COO of Corporate Capital Trust. For over 15 years he served as Chief Financial Officer and Executive Vice President of CNLBancshares and its subsidiary, CNLBank. Chirag was a founding member of Florida Choice Bank where he served as the Executive Vice President, Chief Operating Officer and Chief Financial Officer and from 1992 to 1999, he served as a Senior Audit Manager for Hacker, Johnson, Cohen, and Grieb. He has been an Independent Director at Currency Exchange International Corp. since August 3, 2012 and serves as its Chairman of the Board. Mr. Bhavsar serves as a Director or Treasurer of several community service organizations including Family Services of Metro Orlando, Church Street Investment Properties, Florida Banker's Association, Christian Service Center and Fellowship of Christian Athletes. He holds a Bachelor of Science in Accounting from the University of Florida and a master’s in accounting from University of Florida. He graduated from the banking school at the University of Virginia in 1993.
* **Kyle Feldman, Chief Credit Officer:** Kyle brings over 20 years of banking experience to Cogent Bank. He was a senior lender for Valley National Bank / CNLBank in Orlando from 2018 to 2013. Mr. Feldman served in various credit administration roles for First Southern Bank, Independent Bankers’ Bank and Colonial Bank from 2013 to 2003 as well as various retail banking roles from 1998 to 2000. He attended Warner University in Lake Wales, Florida and Webster University in St. Louis, Missouri.

<b>Cogent’s Business Units, Leadership, and Technology</b>

The executive leadership team at Cogent is led by Chief Executive Officer, Lee Hanna, and President, Chirag Bhavsar, both of whom sit on Cogent’s board. A complete [list of all corporate officers can be viewed here](https://cogentbank.com/leadership-team/) and a [list of the members of the board can be viewed here](https://cogentbank.com/board-of-directors/).

Operations is led by Ms. Suzanne Rodman, EVP / Chief Operating Officer. Ms. Rodman has over 40 years of banking experience and leads a team of 25 individuals. Operations area is defined as Loan Operations (including loan servicing), Deposit / Branch Operations, and Wire Operations.

The Loan Operations Department is managed by Ms. Nancy Shea. Ms. Shea has seven (7) servicing professionals reporting to her. Their daily activities include: posting / reconciling payments, administering insurance (Hazard, Flood and Force Place), cold storage of loan documents, and administration of loan ticklers (financial and document exceptions). Ms. Shea has over twenty-five (25) years of experience within Loan Operations and has worked with Cogent’s Chief Credit Officer for the past seventeen (17) years at three (3) different banks.

Information Technology is led by Mr. Daniel Dean, EVP / Chief Technology Officer. Mr. Dean has over 20 years of banking experience and leads a team of 8 professionals. Mr. Dean has been in similar roles with First Green Bank, SeaCoast Bank and Florida Choice Bank. Cogent utilizes a suite of technology to support the origination and servicing of loans, including a loan accounting core system by FIS ([https://www.fisglobal.com](https://www.fisglobal.com/en.html)), one of the largest global providers of technology services to banks.

Sales is led by Bank President, Mr. Chirag Bhavsar. Cogent’s front line bankers (origination) report to Chirag Bhavsar, while the Credit Administration Department reports to the Chief Credit Officer,[Kyle Feldman](mailto:kfeldman@cogentbank.net). Cogent operates with a 4 to 1 ratio of front line lenders to credit underwriters. Each geographical, business vertical, and specialized unit has its own underwriter in the Credit Department who handles analysis, large borrower reports, and other risk assignments as needed.

**Origination Decision Process, “Approvers”, and “Credit Approval Memorandum”**

Cogent reviews all internally originated loans or identified participations through its Credit Administration Department. Once a loan request has been received or a loan opportunity identified, the following process is generally followed:

1. The loan originator (an employee of Cogent) will collect relevant information on the proposed Loan, Borrower(s), Guarantor(s) (if any), Collateral (as such), and other information pertinent to the adequate review and satisfactory approval of the specific loan request.
2. The loan originator and credit professional will then prepare an internal loan presentation for the loan approvers (the “Approvers”). The Approvers are determined by an Approval Matrix (larger loans require more senior approval) that generally includes the loan originator, the Market President, CCO, the President, and/or the CEO.
3. Once the Approvers, in conjunction with the loan originator and in accordance with credit policy, have determined an appropriate structure for the loan, a term sheet is then issued to the prospective Borrower. Upon acceptance of a term sheet, the loan originator then works with the credit underwriting department and the prospective borrower to evaluate the relevant metrics of the loan, confirm compliance with all rules and regulations, and prepare a Credit Approval Memorandum (CAM) for approval (Please see the section below for additional information of the Credit Approval Process). The credit underwriting department is independent of the loan originator resulting in the end being independent of the origination function.
4. Once a loan is formally approved by the Approvers, the loan originator then works with the Bank’s loan operations departments and outside counsel as needed to prepare documents and ensure that the related file is compliant with any requirements set forth in the loan’s corresponding CAM.
5. Once the loan has been closed and booked, the loan originator will work in tandem with the credit underwriting and loan operations teams for the life of the loan to ensure that the loan is properly managed, reported, monitored, and serviced. The management and servicing includes the ongoing collection of financial documents and metrics, and the evaluation of covenants on a basis set-forth in the loan’s corresponding CAM.

**Process for changing Origination Guidelines and Policies**

All decisions are handled via credit policy. All changes to credit policy, i.e. investment guidelines and policies, are handled by the CCO, President, CEO, and Board of Directors

### Cogent’s Risk Ratings (Credit Ratings)

Every loan in Cogent’s portfolio is subjected to the same grading system, which has nine grades detailed below. Ratings 1 through 5 are “Pass” ratings, and the rest, 6 through 9, are “Cited”.

**Risk Rating 1: High – Normal Risk Level**. Loans in this category are fully secured by certificates of deposit and savings accounts, with appropriate holds placed on the accounts. Collateral for such accounts are accounts with the Bank or accounts at third party institutions with a guarantee of funds from the institution.

**Risk Rating 2: Good – Superior Risk Level**. These are loans to persons or entities with strong financial condition and above-average liquidity who have previously satisfactorily handled their obligations with the Bank. Collateral securing the Bank’s debt is margined in accordance with policy guidelines. Internally generate cash flow covers current maturities of long-term debt more than adequately.

**Risk Rating 3: Moderate Risk Level.** Loans to persons or entities with an above average financial condition, adequate collateral margins as well as adequate cash flow to service long-term debt. Unsecured loans to individuals supported by strong financial statements and on which repayment is satisfactory may be included in this classification.

**Risk Rating 4: Acceptable Risk Level.** Loans to persons or entities with an average financial condition, adequate collateral margins, adequate cash flow to service long- term debt and a net worth comprised mainly of fixed assets are included in this classification. Loans to finance the construction of commercial real estate and other loans requiring significant monitoring with appropriate cash flow cycle(s) or adequate industrial driven cash flow which are self-liquidating, revolving debt obligations should be included in this classification.

**Risk Rating 5: Internal Watch- Management Attention.** These loans are characterized by borrowers who have marginal cash flow, marginal profitability or have experienced an unprofitable year and declining financial condition. The borrower has in the past satisfactorily handled debts with the Bank, but in recent months has either been late, delinquent in making payments, or made sporadic payments. While the bank continues to be adequately secured, margins have decreased or are decreasing, despite the borrower’s continued satisfactory condition. Other characteristics of borrowers in this class include inadequate credit information, weakness of financial statement and repayment capacity but with collateral that appears to limit exposure. This classification includes loans to established borrowers that are reasonably margined by collateral but where potential for improvement in financial capacity in the very near future appears limited. Risk Rating 5 is a transitional rating utilized by Management to identify and further explores potential weaknesses with credits with risk properly mitigated returning to Risk Rating 4 and those with identified weakness subject to further downgrade.

**Risk Rating 6: Special Mention.** Loans in this category have potential weaknesses that deserve Management’s close attention. If left uncorrected, these potential weaknesses may result in deteriorating prospects for the asset or in the Bank’s credit position at some future date. Special Mention loans are not adverse classification.

**Risk Rating 7: Substandard.** Loans classified as Substandard have a well-defined weakness that may jeopardize collection of the debt and are inadequately protected by the sound worth and paying capacity of the borrower or the collateral pledged. Loss potential, while existing in aggregate amount of substandard loans, does not have to exist in individual assets classified as Substandard. All Substandard loans are individually evaluated for potential impairment.

**Risk Rating 8: Doubtful.** Loan classified as Doubtful have all the weaknesses inherent in a loan classified as Substandard, with the added characteristic that the weaknesses make collection or liquidation in full, on the basis of currently existing facts, conditions and values highly questionable and improbable. Loans classified as Doubtful are poor quality loans in which neither collateral, if any, nor the financial condition of the borrower presently ensure collectability of loan principal in full in a reasonable period of time. A specific reserve allowance, typically not less than 50% of the principal balance unless supported by a current appraisal, will be allocated for each loan rated Doubtful.

**Risk Rating 9: Loss.** Loans classified as Loss are considered uncollectible and of such little value that their continuance as bankable asset is not warranted. The Bank takes losses in the period in which they become uncollectible.

**Cogent’s Algorithm For Calculating a Loan’s Risk Rating:** Weighted Asset Risk Evaluation (WARE)

Cogent calculates the risk rating of each loan using a methodology called the Weighted Asset Risk Evaluation (WARE) which is structured to reduce subjectivity from the credit grading process by setting objective rules for choosing a score across criteria categories. There is an algorithm whereby the score for each category is weighted in the final grade calculation. See the table below with the algorithm for risk rating commercial real estate loans.

![image|690x733](upload://zXhYSTYM5u2DoyoBKlJAwmXe2OS.jpeg)

**Cogent’s Historical Performance Across Loan Categories**

Pinnacle Bank was acquired and renamed Cogent Bank on September 13th, 2018. Pinnacle Bank had $72M of assets at the time of acquisition and today, four years later, Cogent Bank has $1.3B of assets. That growth has happened organically (loan origination) from experienced leadership and dependable operations, as evidenced by negligible loan losses of less than 0.01% of assets over the same period.

Cogent currently has a legal lending limit of around twenty eight million dollars ($28M) per borrower relationship. “Legal Lending Limit” is a regulated term and is proportionate to a certain tier of the Bank’s capital. Thus, as the Bank’s capital base grows its Legal Lending Limit proportionately grows. The proposed relationship with MakerDAO and proposed facility will be strategic to Cogent insofar as it supports the continued growth of the Bank’s loan originations to existing and new customers.

In 2019, Cogent originated $300M of loans. In 2020, originations grew to $513M. In 2021, volume grew to $873M. In 2022, through the end of August, Cogent had originated $602M. The details of this activity are broken down by loan category in tables that follow.

|**2019**||||
|---|---|---|---|
|**Type**|**Annual Production**|**Average Duration**|**Average Rate**|
|Commercial|$69,876,587|34|4.99%|
|Owner Occupied CRE|$31,404,415|51|4.66%|
|Commercial Real Estate|$48,843,582|41|5.35%|
|1 to 4 Family Residential|$91,136,507|67|4.76%|
|Specialty Lending|$43,014,000|34|6.11%|
|USDA Lending|$15,390,000|36|5.47%|
|**Total**|$**299,665,091**|**39**|**5.09%**|
|||||
|**2020**||||
|**Type**|**Annual Production**|**Average Duration**|**Average Rate**|
|Commercial|$75,209,501|34|4.05%|
|Owner Occupied CRE|$22,897,495|51|4.15%|
|Commercial Real Estate|$68,407,694|41|4.30%|
|1 to 4 Family Residential|$130,396,152|67|4.20%|
|Specialty Lending|$34,174,041|34|5.10%|
|USDA Lending|$7,817,500|36|5.25%|
|SBA Lending|$5,728,300|34|7.50%|
|PPP Lending|$168,559,770||1.00%|
|**Total**|**$513,190,453**|**39**|**3.77%**|
|||||
|**2021**||||
|**Type**|**Annual Production**|**Average Duration**|**Average Rate**|
|Commercial|$149,602,921|38|4.11%|
|Owner Occupied CRE|$88,022,499|43|4.10%|
|Commercial Real Estate|$176,289,656|54|5.25%|
|1 to 4 Family Residential|$171,222,662|95|3.77%|
|Consumer Lending|$16,846,593|48|3.42%|
|Specialty Lending|$84,690,024|18|4.70%|
|USDA Lending|$10,054,388|36|4.75%|
|SBA Lending|$35,497,050|34|5.25%|
|PPP Lending|$141,021,145||1.00%|
|**Total**|$**873,246,938**|**28**|**4.22%**|
|||||
|**2022 through 9/30/2022**||||
|**Type**|**YTD Production**|**YTD Avg. Duration**|**YTD Avg. Note Rate**|
|Commercial & Industrial|$135,599,740 |38|5.28%|
|CRE Land & Development (100 Bucket)|$109,399,000 |43|4.87%|
|CRE Non-Owner Occupied|$90,993,767 |54|5.06%|
|CRE Owner Occupied|$58,128,170 |95|5.68%|
|Life Insurance|$11,691,647 |48|6.80%|
|Consumer and Other|$23,007,222 |18|6.40%|
|Specialty Lending|$47,629,000 |36|7.80%|
|SBA Guaranteed|$50,174,050 |34|5.67%|
|Residential Lending|$136,672,717 |44|5.16%|
|PPP Lending|$0 ||0.00%|
|Public Finance|$17,130,352 |37|4.00%|
|**Total**|**$680,425,665** |**29**|**5.38%**|

### Non-Performing Loans as of September 30th, 2022

|Type|07/31/2022|08/31/2022|09/30/2022|Non-Accrual Date|
|---|---|---|---|---|
|Commercial & Industrial|$2,995,674 |$2,995,674 |$2,995,674 |01/24/22|
|Owner Occupied CRE|$540,040 |$534,750 |$529,461 |12/10/12|
|Owner Occupied CRE|$407,938 |$405,204 |$402,471 |01/24/22|
|Owner Occupied CRE|$146,331 |$144,899 |$143,467 |12/10/12|
|CRE Investor|$0 |$0 |$0 |03/04/13|
|Total Commercial|$4,089,983 |$4,080,527 |**$4,071,072** ||
||||||
|Consumer|||||
|Total Consumer (including Resi)|$0 |$0 |$0 ||
||||||
|Total Non-Performing Loans (NPAs)|$4,089,983 |$4,080,527 |**$4,071,072** ||
||||||
|Total Loans|$997,863,394|$1,024,021,590|$1,047,958,145||
|Non-Perfoming Assets (NPAs)/ Total Loans|0.410%|0.398%|**0.389%**||
|Other Real Estate Owned|$0|$0|$0||
|Repossessed Collateral|$0|$0|$0||
|Total NPAs|$4,089,983|$4,080,527|**$4,071,072**||
|Total Assets|$1,255,986,168|$1,324,464,890|$1,295,752,410||
|NPA / Total Assets (Excl. TDR)|0.33%|0.31%|**0.31%**||


**Total Cited Annually (OAEM, Substandard or worse / Total Assets):**

![image|690x414](upload://pZCNVvv5srojmb9MhQO47vN6bSY.png)

**Annual ACI Ratio = Substandard or Worse Loans / Banks Tier I Capital + ALLL:**

![image|690x415](upload://oMRdpdy0OvkiEsPy7qAD53UP5aM.png)

**Loan Categories:**

* **Commercial & Industrial:** A commercial and industrial (C&I) loan is a loan made to a business or corporation. Typically, C&I loans are short-term loans with variable interest rates backed by collateral. Commercial and industrial loans provide companies with funds that can be used for working capital or to finance capital expenditures such as purchasing machinery.
* **CRE Land & Development:** A commercial based loan where the activities are building, developing or holding an asset secured by real estate (as well as horizontal improvements) where the primary source of repayment shall be derived from the sale of the asset. The majority of the loans originated have an LTV less than 75%.
* **CRE Non-Owner Occupied:** A commercial based loan where the primary source of repayment is derived from either the lease revenue, sale of units, or a building / structure that is for sale. The majority of the loans originated have an LTV less than 85%.
* **CRE Owner Occupied:** A commercial building where greater than 51% of the lease revenue and/or physical space is leased to an entity who is also related to the borrowing entity. The majority of the loans originated have an LTV less than 85%.
* **Life Insurance:** A commercial based loan where a group or trust has an opportunity to enter a life insurance contract and the bank shall finance short fall of investments within the first two (2) years of collateral gap. This type of financing is done on a selective basis with certain insurance carriers as well as having maturities less than 24 months.
* **Consumer and Other:** Currently the bank offers HELOCS, installment and secured financing on stock accounts (via a tri-party agreement) to commercial customers. This is a complimentary product for existing commercial customers with a commercial relationship.
* **Specialty Lending:** This type of financing consists of accounts receivable, inventory, purchase order financing for various types of commercial and industrial companies. The lending vertical is collateral driven and, from a risk management perspective, Cogent has specialized operating individuals and uses Kadence monitoring system for adequate downside protection.
* **SBA Guaranteed:** This type of financing consists of 7A, 504, and pari-passu financing on a national basis. The bank currently has a PLP (Preferred Lender Program) license in place with the SBA.
* **Residential Lending:** Portfolio loans and agency financing is offered to commercial relationships. Within the portfolio products, the bank has a Construction to Perm product as well as ARM products.
* **Public Finance:** This type of financing consists of municipalities domiciled in the U.S. which also include, but not limited to states on a national basis, local governments (towns, cities, villages, etc..), universities, colleges and certain not for profit entities.

**Fixed vs. Floating Rate**
![image|496x424](upload://gjppH3KBnoiEzmZNa7xl3pFwlWb.png)

**The Proposed Participation Agreement:**

Cogent proposes this transaction use the same HVBank Master Participation Agreement with the same exact terms.

**Loan Eligibility Criteria is** (lifted from Annex I of HVB-MakerDAO Master Participation Agreement):

All Loans shall have been originated or purchased by Cogent (i) in its ordinary course of business and in all factors shall have complied with the Cogent’s credit policy and loan origination guidelines then in effect and (ii) in no way that is more restrictive than the regulatory or supervisory limits that are required by the Cogent’s primary state and federal regulators.

**The proposed terms for the Participation Agreement are** (the same as with Huntingdon Valley Bank):

  * Cogent will retain a minimum of fifty percent (50%) ownership in the principal of the Cogent participated loans
  * Cogent and MakerTrustDE shall have a pari-passu relationship in each participation
  * All loans must be assigned a “Pass” credit rating by Cogent Bank
  * For loans that include a fixed rate period, said fixed period shall not exceed five (5) years
  * Cogent shall be the servicer

**Minimum Yield** (lifted from Annex I of HVB-MakerDAO Master Participation Agreement)**:**

The Loan shall be eligible for purchase if the interest yield, as of the close of business on the Business Day prior to the day Seller sends the Participation Certificate related to such Loan to Buyer and Calculation Agent (“**Participation Send Date**”), meets the following thresholds:

1. For floating rate loans, the minimum interest rate less servicing fees shall be greater than or equal to 75 basis points in excess of the thirty (30) day average Secured Overnight Financing Rate (SOFR) issued by the Federal Reserve Bank of New York as published on the following website: https://www.newyorkfed.org/markets/reference-rates/sofr-averages-and-index; or
2. For fixed rate loans, the minimum interest rate less servicing fees shall be greater than or equal to the like-term US Treasury Par Yield Curve Rate (as published by the US Department of the Treasury on the following website: https://home.treasury.gov/policy-issues/financing-the-government/interest-rate-statistics) plus 30 basis points.

This formula shall be expressed as:

**LOAN RATE – SERVICING FEES >= BENCHMARK + SPREAD**

![image|690x197](upload://2cyznHFK0opWhdsUCHZxWAulwQu.png)

**Preliminary general conditions to be eligible for participation** (lifted from Annex I of HVB-MakerDAO Master Participation Agreement)**:**

1. Loan is currently in good standing with Cogent
2. Loan was made according to Cogent’s approved credit and loan policies
3. Properly collateralized and secured (as evidenced by the customary agreements and filings for the creation of a security interest if collateralized), with collateralization calculated as:

Loan principal / Appraised value < Maximum allowable LTV per asset type

For stabilized commercial real estate loans, non-investment real estate business loans and equipment secured loans, the denominator “Appraised Value” will be the “as is” appraised value.

For construction loans, the denominator “Appraised Value” will be the “as renovated” appraised value.

1. Satisfactory cash flow coverage of loan payments (for new construction, satisfactory payment plan during construction and satisfactory pro forma cash flow based on underwriting of the subject property and market fundamentals following completion), with Cogent providing its methodology for, and its calculation of, Debt Service Coverage for each loan as contemplated for each asset type below.
2. For loans that include a fixed rate period, said fixed period shall not exceed five (5) years (without regard for the overall term of the loan)
3. No events of default are continuing
4. No loans to insiders or other person prohibited by Regulation O
5. All loans meet standard compliance measures and searches.

**Loan Servicing**: Cogent will perform the loan servicing in accordance with a Servicing Agreement that is the same as the Servicing Agreement with Huntingdon Valley Bank. In the event of a Borrower’s Default, Cogent will manage a workout (as “Special Servicer”) and is capable of liquidating the collateral so that loan principal is paid back to MakerTrustDE and Cogent.

**Governance consulting & reporting:** MaxStability LLC (“MaxStability”) has helped Cogent Bank prepare this proposal. MaxStability is consulting on MakerDAO governance communications and will help with legal structuring, closing, and onboarding. As part of MaxStability’s Reporting Service, MaxStability will retrieve and deliver the off-chain data about assets relevant to the facility, and distribute this information to the MakerDAO community (unless said data must be permissioned, in which case MaxStability will distribute that data to relevant Core Units who are under NDA). MaxStability will not in any way impede communication between any counterparty and any relevant core units or the community.

**S,G,&R Fees:** Fees for the loan servicing by Cogent, for off-chain data reporting by MaxStability, and for governance consulting by MaxStability are collectively the “S,G,&R Fees”.

The total S,G,&R Fees will be equal to one and one-quarter of one percent (1.25%) per annum on the first $10,000,000 participated to the MakerTrustDE of each individual Participated Loan (the “Base Loan Balance”). Over the Base Loan Balance, S,G,&R Fees on amounts participated to the MakerTrustDE out of each Participated Loan shall be three quarters of one percent (0.75%) per annum. For example, if Cogent participates $12M of a loan ($24M total loan size) to the MakerTrustDE, the S,G,&R Fees shall be ($10MM * 1.25%) + ($2M *.75%) = $125,000 + $15,000 = $140,000 per year, reducing proportionately to any amortization of the underlying loan (S,G,&R Fees decline on each participated loan as each loan amortizes).

G&R will be 25 bps (0.25%) paid to MaxStability for that work. MaxStability’s G&R fees are at risk if the guaranteed minimum yield is not achieved.

<b>The Loan Participation Process Between MakerTrustDE and The Bank:</b>
MakerDAO and the Trust shall have their own approval process independent of the Cogent approval process.

MakerDAO and the Trust will have entered into all agreements, including all participations, with Cogent representing that, to the best of its knowledge, based on the information provided by its borrowers and based on its underwriting, all loans fall within the collateral guides of the Agreements. A Collateral Management Agent will be hired to make the same representations (likely Ankura Trust). This Collateral Management Agent will make its own independent investigation of each Participated Loan to ensure conformity with the Agreements and to approve each Participation by the MakerTrustDE.

Neither (a) the execution and performance of the agreements contemplated herein and the ownership of Participation Interest(s), nor (b) the sharing in the profits or losses arising from the transactions contemplated by the agreements contemplated herein, is intended to be, nor shall be construed to be, the formation of a partnership or joint venture between Cogent and MakerDAO and the Trust, or any of them.

Cogent makes no representation or warranty to MakerDAO and the Trust regarding (a) the collectibility of the Participated Loan(s); (b) the existing or future financial condition of any borrower, or any other party liable for repayment of the Participated Loan(s); (c) the value or any other condition of any collateral securing the Participated Loan(s); or (d) the accuracy of any information supplied or to be supplied.

Cogent proposes that participations follow the process described in the Master Participation Agreement used in the transaction with Huntingdon Valley Bank. That language is copied word-for-word below:

Seller and Buyer agree that the following procedures shall govern the offering and acceptance for sales of Participations in accordance with this Agreement, subject to the terms hereof:

1. Upon Seller’s internal approval of a Loan satisfying the Loan Eligibility Criteria, Seller may prepare a Participation Certificate for the proposed Participation to be purchased and request the Buyer purchase such Participation by delivering a signed copy of the Participation Certificate to the Buyer (with a copy to the Calculation Agent and the Trust Paying Agent). In connection with any Participation Certificate, Seller shall provide the Buyer and the Calculation Agent with a view- or read-only access to a secured online data room folder which shall contain a copy of the Seller’s underwriting memo and associated loan documents (which may be in draft form for any Loan which has not yet had an initial funding; provided that, in the event the Calculation Agent is required to review any documents in draft form, the Calculation Agent shall only be responsible for reviewing the initial draft delivered, and such determination with respect to such draft shall be conclusive, and the Calculation Agent shall not be responsible in any way for ensuring that any draft documents, once finalized, satisfy the Loan Eligibility Criteria) (“Eligibility Package”).
2. The Buyer shall review the Eligibility Package in reference to the Loan Eligibility Criteria. Buyer shall approve any proposed Participation proposed in a Participation Certificate unless its review determines that an objective criteria included in the Eligibility Package is not satisfied, and Buyer shall counter-sign the Participation Certificate and deliver it to the Seller within five (5) Business Days of receipt of a Participation Certificate and access to the related Eligibility Package.
3. Following receipt of any counter-signed Participation Certificate by the Seller, Buyer and Seller shall cooperate in good faith to consummate the purchase and sale of the related Participation on the date set forth in the related Participation Certificate.
4. For any Loan, to the extent the underwriting memo or associated loan documents provided to the Calculation Agent pursuant to Section 3.3(a) were in draft form, in the event the material terms of the executed copies of such underwriting memo or associated loan documents materially deviate from the terms set forth in such drafts, then Seller shall notify the Buyer and Calculation Agent of the same and the related executed Participation Certificate shall be of no effect, provided however, that a new Participation Certificate may be proposed by Seller for such Loan in accordance with this Agreement.

Monthly as loan payments are received, Cogent will remit to the Trust’s account all monies received and owed to it, less any servicing fees, in accordance with the Participation Agreement. Cogent will remit said funds to the Trust within five (5) business days of receipt and reconciliation. Cogent will remit funds to the Trust via Fedwire in US dollars.

**Cash flow diagram (Dai to USD to Dai)**

![image|690x385](upload://4AoEJS8v0NkSHXcCbAaA4R3XDrK.jpeg)

**Priority of Payments**

Funds are first applied to interest and fees, secondly to principal due, and thereafter to other costs such as Trustee Fees and S,G,&R Fees.

Monthly, as loan payments of principal and interest are received, Cogent will remit to the Trust’s account all monies received and owed to it, less any S,G,&R Fees, in accordance with the Master Participation Agreement. Cogent will remit said funds to the Trust within 5 business days of receipt and reconciliation. Cogent will remit funds to the Trust via Fedwire in US dollars. Recurring transaction expenses, such as Trustee and S,G,&R Fees shall be taken from interest payments from loans owned by the Trust. MaxStability’s G&R fees are at risk if the guaranteed minimum yield is not achieved.

Dai slippage is currently taken from interest payments from loans owned by the Trust (but should be negligible due to the PSM and broker-dealer TWAP).

**Control of the Trust Account with WSFS**

The special purpose vehicle (SPV) proposed is an existing Delaware Statutory Trust for the benefit of MakerDAO, the RWA Master Participation Trust, which is Administered by a regulated corporate Trustee in Delaware, Wilmington Savings Financial Society (WSFS). The Trustee is a bank that is well capitalized and WSFS carries insurance such as Directors and Officers insurance and/or errors and omissions insurance. This Trust is a Directed Trust, and the Trust Sponsor which provides this direction is an entity that seeks its own direction from a committee appointed by MakerDAO. The Trust Sponsor has limited administrative and commercial decision-making power, and material terms in the Masters Participation Agreement cannot be amended without the affirmative vote of MakerDAO - as verified by the Delaware Trustee (acting as the “Verification Agent’').
<b>Transaction Legal and Financial Structure (Replication of HVBank Structure)</b>
Cogent proposes using the same legal structure, legal documents, and financial structure that MakerDAO is now using with Huntingdon Valley Bank.

Using that structure, Cogent will participate loans to the RWA Master Participation Trust (“MakerTrustDE”).

The RWA Master Participation Trust is a Delaware statutory trust for the benefit of MakerDAO. It is a special purpose, bankruptcy-remote entity that has a regulated Trustee (WSFS) and a Verification Agent (WSFS). The Verification Agent’s job is to look at the blockchain to make certain that the Trust acts in accordance with the vote of MKR. MKR votes direct the actions of MakerTrustDE.

The value in replicating the HVBank structure and use the same documents is:

* Replicating what’s been done before minimizes the risk for MakerDAO of doing something new
* In particular, it eliminates MakerDAO’s reliance on anyone to negotiate new agreements
* Further, it makes the proposed transaction simple to close quickly
* Most importantly, replication reinforces a standard model for transactions with American commercial bank counterparties

MaxStability will pay whatever legal fees are needed to prepare the documents, engage service providers, and consummate the transaction. MaxStability paying transaction expenses is a mechanism for MaxStability to have financial skin in the game.

Cogent proposes that MakerDAO and the Trust adequately fund MakerTrustDE with the entire approved debt ceiling up front so that Cogent’s counterparty risk is minimized and it can confidently originate loans for participation to MakerTrustDE.

Cash sitting in MakerTrustDE will be invested into short term treasuries and MakerDAO will receive the interest earned.

<b>How Interests are Aligned in this Structure</b>

There are no known conflicts of interest and all transactions will be arms-length. The proposed relationship will be set up to align interests. All Participated Loans must be “Pass” rated by Cogent (ratings that are strictly audited by regulators). Any syndicated loan purchased by Cogent must fit the credit rating and loan type parameters of the Participation Agreement(s) (eliminating adverse selection risk).

The Trust and Cogent together will always be the most senior debt capital and Cogent will have skin in the game, always retaining a minimum of fifty percent (50%) ownership in each loan participated. The Trust will have a pari passu relationship with Cogent (i.e. level footing between the Parties). As such, any losses MakerDAO sustains with be born proportionally by Cogent. MakerDAO stands to benefit from Cogent’s incentive to maximize the yield of each loan and minimize losses. Additionally, Maker will benefit from the positive effects of Cogent being a regulated bank with a fiduciary responsibility to its shareholders and extensive regulatory oversight.

MaxStability will pay MakerDAO’s legal fees required to structure and complete the transaction so that MaxStability has both a financial and reputational stake in the success of this transaction. MaxStability's fees will be at risk if the Trust does not earn the minimum spreads over the Benchmarks. MaxStability’s Principal holds MKR. MaxStability will meet all reporting requirements defined by any Core Unit that are within its power and ability to perform. MaxStability will not be the Trust Sponsor or a financial intermediary of any kind.

**MakerDAO Specific Issues**

Cogent proposes participating loans to the existing RWA Master Participation Trust. Cogent proposes using all of the same legal documents and structures currently in use for the Huntingdon Valley Bank deal. The counterparty entities for the proposed Trust Structure are as follows:

* Trust Sponsor
  * The Trust Sponsor is currently proposed to be the Cayman Islands Foundation RWA Foundation whose sole legal representative is its Supervisor. The jurisdiction and corporate structure of the Trust Sponsor may be amended on the advice of counsel. The Cayman Foundation, in its capacity as Trust Sponsor will seek instruction from a committee elected and maintained by Maker Governance. It will pass this instruction to the Delaware Trustee when appropriate. It is anticipated that the Trust Sponsor will occasionally be required to weigh in on commercial and managerial issues with the facility. The Trust Agreement itself and any material term (the definition of which will be mutually defined by Cogent and MakerDAO) in the Participation Agreement may only be amended by using a Verification Agent, which checks for the affirmative vote of MakerDAO to corroborate the content of any amendment. The Trust Sponsor will issue irrevocable instructions to the Delaware Trustee and to the broker-dealer in order to ensure the security of cash flows.

* A Delaware Statutory Trust (the existing RWA Master Participation Trust)
  * The Trust is a legal entity which will purchase and custody the assets, or liens over assets. It will be a Delaware Statutory Trust. This entity will enter into a Participation Agreement with Cogent Bank (the “Transaction Documents”). Said Transaction Documents will provide clear rules around the ability of Cogent Bank to participate loans to the Trust. All Transaction Documents pertaining to or entered into by the Trust will require an affirmative vote of MakerDAO, via a Verification Agent, to amend. Any actions deemed “immaterial” in the agreements will be referred to the Trust Sponsor. The Delaware Trustee will have irrevocable instructions from the Trust Sponsor to only transfer USD from its escrow account to the Trust or to the bank account of the broker-dealer.

* Broker-Dealers
  * In order to ensure secure transactions from Dai to USD and vice-versa, the address of a regulated broker-dealer will be encoded into the MIP21 secure conduit. It is only this entity which will ever touch Dai. The broker-dealer has irrevocable instructions from the Trust Sponsor to only exchange Dai for USD and vice-versa based on pre-agreed upon terms and may only send that Dai or USD to the Trust Sponsor’s escrow account with the Trustee’s bank or to the secure conduit. Multiple broker-dealers will be engaged so that there is redundancy in this part of the structure.

**MakerDAO Specific Issues:** **Mandatory and Administrative Decisions**

The terms and the final Agreements for this transaction will be approved by a vote of MKR token holders. Thereafter, decisions by all Parties will be in accordance with those Agreements and if the Agreements are ambiguous then clarifying amendments will be brought to an MKR vote or to a trusted third party appointed by an MKR vote.
