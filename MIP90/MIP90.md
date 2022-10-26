# MIP90: Liquid AAA Structured Credit & Money Market Fund

## Preamble

```
MIP#: 90
Title: Liquid AAA Structured Credit & Money Market Fund
Author(s): @BlockTower
Contributors: 
Type: Technical
Status: RFC
Date Proposed: 2022-10-19
Date Ratified: XX
Dependencies: MIP21
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip90-liquid-aaa-structured-credit-money-market-fund/18428
Ratification Poll URL: XX
```

## References

* [BlockTower Credit - Introduction & Arranger Proposal](https://forum.makerdao.com/t/blocktower-credit-introduction-arranger-proposal/16535/1)
* [MIP65: Monetalis Clydesdale: Liquid Bond Strategy & Execution](https://forum.makerdao.com/t/mip65-monetalis-clydesdale-liquid-bond-strategy-execution/13148/1)
* [Spring Cluster Introduction and Proposal](https://forum.makerdao.com/t/spring-cluster-introduction-and-proposal/18398)
* [The ABCs of Asset-Backed Securities (ABS)](https://www.guggenheiminvestments.com/perspectives/portfolio-strategy/asset-backed-securities-abs)

## Sentence Summary

MIP90 will (i) onboard and activate a DAI 600MM RWA vault for the purpose of acquiring USDC via the PSM, and (ii) approve the future purchase of USD 600MM of diversified, AAA (or equivalent) rated Structured Credit and Money Market Funds.

## Paragraph Summary

MIP90 onboards a DAI 600MM RWA vault that will acquire USDC via the PSM and acquire USD 600MM of diversified, AAA (or equivalent) rated Structured Credit and Money Market Funds. All investments will be sourced on the open market in arms-length, competitive processes through investment banks and/or broker-dealers.

At the end of every quarter, the vault will remit collected interest proceeds to MakerDAO to provide current cash flow to bolster the Surplus Buffer. Principal proceeds generated from AAA Structured Credit positions will be reinvested, until Maker governance has passed an executive vote to trigger a liquidation of the portfolio. The portfolio will maintain an opportunistic balance of short duration fixed rate Structured Credit, floating rate Structured Credit, and Money Market Funds to ensure that the collective portfolio strikes the right balance of yield generation and liquidity. 

## Component Summary

**MIP90c1: Summary of Terms & Transaction Details**
**MIP90c2: Collateral Overview**
**MIP90c3: Legal & Transactional Structure**
**MIP90c4: Technical & Onboarding Considerations**

## Motivation

MIP90 achieves the following goals for Maker:
* Generates interest income and principal gains to grow Maker’s Surplus Buffer.
* Provide a liquid, diversified investment profile well aligned with Maker’s liquidity needs.
* Diversify Maker’s existing base of fixed income holdings with floating and fixed rate Structured Credit. 
* Establish the operational and legal infrastructure required to successfully integrate with the liquid fixed income ecosystem.

## BlockTower Credit
BlockTower Credit (“BT”) is an institutional investment fund, applying the skills of professional underwriting, structuring and investing at the intersection of real-world credit (a strong but anachronistic traditional industry) and crypto. BlockTower Credit is the credit franchise of BlockTower Capital, an SEC-registered digital asset and blockchain investment firm founded in 2017 by Ari Paul (CIO) and Matthew Goetz (CEO). The firm manages well over half a billion dollars and draws from decades of combined experience across professional investing and trading, early-stage venture capital, and credit.

BlockTower Credit principals, Kevin Miao and Jack Carlisle, have a deep history of investing in Structured Credit. Kevin ran a Structured Credit trading division as a Vice President at Citigroup, managing a ~$2bn combined book across all asset classes. Jack previously covered secondary trading in Asset Backed Securities, CLOs, Agency CMBS securities, and Legacy CDOs as a Senior Investment Analyst and Trader at Hildene Capital Management. Together with BlockTower, we bring decades worth of experience in Structured Credit markets.

## Specification / Proposal Details

#### **MIP90c1: Summary of Terms & Transaction Details**


| Term                            | Details                                                                                                                                                                                                                                                                                                                                                                       |
|---------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Issuance Details:               | • Maker Commitment: 600mm DAI <br>• Seniority (Structured Credit): AAA (or equivalent) <br>• AAA Structured Credit: 70% or less of portfolio (exact limit up for vote during polling) <br>• Money Market Funds: 30% or more of portfolio (exact limit up for vote during polling)                                                                                             |
| Indicative Return Profile:      | Return profile will be informed by secondary market pricing for AAA Structured Credit and Money Market Fund returns. <br> <br> In today’s market we expect the following return profile: <br> • AAA Structured Credit: Target 6% gross return <br> • Money Market Fund: Target 3% gross return <br><br> (See Indicative Structured Credit AAA Return Profile for more detail) |
| Portfolio Concentration Limits: | • Avg. Expected WAL of AAA Structured Credit: 4 years or less <br>• Single Position Structured Credit Concentration Limit: 10% of portfolio                                                                                                                                                                                                                                   |
| Execution Timeline:             | Expected timeline to acquire Money Market Funds is one month following the approval of this MIP. AAA Structured Credit to be invested one month thereafter.                                                                                                                                                                                                                   |
| Transaction Parties:            | • [RWAF] <br>• BlockTower <br>• Investment Banks <br>• Broker-dealers <br>• Exchange Agent                                                                                                                                                                                                                                                                                    |
| Maker Sacred Rights:            | • Pass executive vote to instruct liquidation of portfolio. (Money Market Fund to be liquidated within 7 days and Structured Credit to be liquidated within 14 days of notice) <br>• Replacement of BlockTower as servicer<br>• Ability to appoint independent trust director<br>• Ability to amend Concentration Limits with 30 days notice                                  |
| Transaction Fees:               | 1.00% of AUM, paid quarterly alongside interest distributions                                                                                                                                                                                                                                                                                                                 |

### MIP90c2: Collateral Overview

For the ease of communication, the Collateral Overview section will be broken out into two independent sub sections: (1) The Structured Credit and (2) Money Market Funds.

#### MIP90c2.1: Structured Credit

The total outstanding size of the Structured Finance Market is $13.8 trillion today. Structured Credit represents the slice of the pie that sits away from government sponsored entities.

![](https://github.com/makerdao/mips/blob/master/MIP90/structure.png)

*SIFMA

##### MIP90c2.1.1: Structured Credit - AAA Overview

Structured Credit creates the financial backbone for the consumer, residential mortgage, commercial mortgage, and sub-investment grade corporate finance industries. Unlike a Fortune 500 business, a single consumer loan or mortgage is hard to analyze and exposed to certain binary risks. A large pool of loans, however, creates diversification benefits that eliminate binary risks and allows for statistical analysis. Structured products leverage the predictability that comes with scale and create debt tranches that distill the loan pool into different risk / reward slices to meet the wants and needs of various capital market participants (banks, insurance companies, hedge funds, etc.). Simply put, Structured Credit takes raw loans with no liquidity, combines them into a vehicle with bespoke risk tranching, and creates new securities with greater liquidity than the original underlying loans. 

Each corner of Structured Credit has different nuances and loss protections tailored to effectively insulate the AAA, and other senior tranches, from potential losses. As a rule, though, cashflows generated by underlying assets are applied sequentially (paying down the most senior tranches first) and losses are borne in reverse sequential order (bottom tranches take losses first).

![](https://github.com/makerdao/mips/blob/master/MIP90/tranches.png)

For a slightly deeper dive on the allocation of cashflows, the following are key protections available for the benefit of senior tranches:

* Overcollateralization: Junior tranches provide first-loss protection for underlying credit losses.
* Excess Spread: The interest proceeds generated by loans is typically more than what is needed to pay the interest on debt tranches in a securitization. The spread between the two is used to repay principal on the AAA tranche in the event of underlying loan deterioration.
* Liquidation: If underlying performance deteriorates beyond a structure’s pre-determined loss limits, a senior tranche maintains the right to liquidate the underlying loans and sell them on the open market. Proceeds from the loan sales are used to redeem the AAA position.

Existing protections have been tested through multiple cycles and have consistently offered ample buffer to downside scenarios. CLOs, for instance, first entered the market in the 1990’s and no CLO AAA has ever taken a principal loss.

Indicative Structured Credit AAA Return Profile:
Below are spreads and all in yields observed in recent market conditions:

![](https://github.com/makerdao/mips/blob/master/MIP90/tables.png)

Source: Bloomberg, TRACE a/o 10/13/22

**Liquidity Profile:** AAA Structured Credit 
Roughly ~$430bn (FINRA, TRACE) Structured Credit bonds trade on the secondary market every year. The total outstanding amount of Structured Credit bonds today is roughly ~$2.9tln (SIMFA). The AAA segment of the capital structure is the most liquid part of the capital structure with a wide range of market participants (banks, insurance companies, asset managers, etc.) actively buying and selling risk. The short duration risk remote nature of AAA securities provides relative insulation from mark-to-market volatility; investors have appetite for this risk profile across different market conditions.

##### MIP90c2.1.2: Example Structured Credit Investment - CLO AAA

CLOs, short for Collateralized Loan Obligations, are Structured Credit vehicles that pool together senior secured loans issued by sub-investment grade American corporations. CLOs were first issued in 1994; there has have been over $500 billion in total issuance volume since inception. Of the total issuance to date, less than 1% of all deals have ever entered an Event of Default. A differentiating feature of CLOs is that they are actively managed vehicles. Teams of professional asset managers oversee the underlying loan portfolio and actively trade underlying loans to protect the interests of investors. 

Both underlying loans and rated AAA tranches are floating rate, which significantly limits interest rate risk and mark-to-market risk for investors. Should interest rates rise, so too does the monthly interest rate that an investor receives on his/her position. Please see [here](https://www.pinebridge.com/en/insights/clo-beyond-the-complexity) to read more about CLOs.

For an in-depth example of CLO AAA investments, see [here](https://drive.google.com/file/d/1cT4FnKquq_o4pWn98pVFwBbmE1q_ouHb/view?usp=sharing).

##### MIP90c2.1.3: Example Structured Credit Investment – Prime Auto ABS AAA

Prime Auto ABS securitizations pool together consumer auto loans backed by high quality, prime credit American consumers. The typical auto loan is five years in term, fully amortizing, and collateralized by an automobile. Unlike CLOs, Auto ABS deals are unmanaged and there is no option to trade underlying loans or reinvest loan proceeds upon repayment. This profile makes for short duration, fully amortizing AAA positions.

For an in-depth example of Prime Auto ABS AAA investments, see [here](https://drive.google.com/file/d/13h1nPFnndP0QGRuU2T-Mj7MWhXmZ9Om2/view?usp=sharing).

#### MIP90c2.2: Money Market Funds

Money Market Funds are fixed income mutual funds that invest in short duration debt securities with minimal credit risk. Money Market Funds typically invest in a mix of US treasuries, Certificates of Deposit, Commercial Paper, Banker’s Acceptances, and Repurchase Agreements. Money Market Funds are risk remote with minimal mark-to-market volatility. Today, most Money Market funds yield between 2.5% and 3.25%.

### MIP90c3: Legal & Transactional Structure

BlockTower as an arranger has engaged seasoned and trustworthy legal counsel and Maker core contributors to understand the regulatory landscape and establish legal structure to enable and protect Maker in real-world asset transactions. We will also be leveraging lessons from our Arranger proposals and existing deals, like [MIP65: Monetalis Clydesdale](https://forum.makerdao.com/t/mip65-monetalis-clydesdale-liquid-bond-strategy-execution/13148/1) and [MIP6: Huntingdon Valley Bank](https://forum.makerdao.com/t/mip6-huntingdon-valley-bank-loan-syndication-collateral-onboarding-application/14219), in finalizing our legal structure. The exact legal structure to implement MIP90 will be determined and shared after the initial approval of this MIP.  
 
### MIP90c4: Technical & Onboarding Considerations

The technical implementation will follow specifications defined in MIP21. The smart contracts have been used in prior transactions. We will work with Collateral Engineering Services (CES-001) and the community to ensure best practices around wallet security and separation, transparency, and auditability are followed in the implementation of MIP90. 

---

DISCLAIMERS

INVESTMENT STRATEGY
The description herein of the approach of BlockTower Capital Advisors LP (the “Adviser”) and/or BlockTower Credit GP, LP (the “General Partner”) and the targeted characteristics of its strategies and investments is based on current expectations and should not be considered definitive or a guarantee that the approaches, strategies, and investment portfolio of BlockTower Credit Partners, LP and BlockTower Credit Partners Offshore, LP’s (each a “Fund”, and together the “Funds”) will, in fact, possess these characteristics.  In addition, the description herein of the risk management strategies of the Adviser is based on current expectations and should not be considered definitive or a guarantee that such strategies will reduce all risk.  These descriptions are based on information available as of the date of preparation of this document, and the description may change over time.  Past performance of these strategies is not necessarily indicative of future results.  There is the possibility of loss and all investment involves risk including the loss of principal.
 
FORWARD LOOKING STATEMENTS/PROJECTIONS
Any projections, forecasts and estimates contained in this document are necessarily speculative in nature and are based upon certain assumptions.  In addition, matters they describe are subject to known (and unknown) risks, uncertainties and other unpredictable factors, many of which are beyond the Funds’ control.  No representations or warranties are made as to the accuracy of such forward-looking statements.  It can be expected that some or all of such forward-looking assumptions will not materialize or will vary significantly from actual results.  Accordingly, any projections are only estimates and actual results will differ and may vary substantially from the projections or estimates shown.
 
NO OFFER OR RECOMMENDATION
The description herein of the approach of the Adviser and/or the General Partner with respect to the Funds and the targeted characteristics of its strategies and investments is based on current expectations and should not be considered definitive or a guarantee that the approaches, strategies, and investment portfolio will, in fact, possess these characteristics.  In addition, the description herein of the risk management strategies of the Adviser is based on current expectations and should not be considered definitive or a guarantee that such strategies will reduce all risk.  These descriptions are based on information available as of the date of preparation of this document, and the description may change over time.  Past performance of these strategies is not necessarily indicative of future results.  There is the possibility of loss and all investment involves risk including the loss of principal.
  
SPECULATIVE AND RISKY INVESTMENT
Investing in newer and smaller asset classes such as cryptocurrencies is speculative, risky and unsuitable for some investors even when representing only a portion of a broader investment program.  Some of the specific risks to which an investment in the cryptocurrency sector may be subject include (without limitation): (i) high levels of volatility; (ii) illiquidity; (iii) uncertain valuations; (iv) dynamics which may be adverse to the investment (i.e., broad market movement, instrument-specific factors, sector-specific factors, and geography-specific factors); (v) investments may be based on flawed, incomplete or misunderstood premises; (vi) investments may be mistimed or otherwise ineffectively executed; (vii) exchanges and wallets may close, become regulated, be hacked, etc.; (viii) over the counter trading and counterparty risks; (ix) limited and rapidly changing regulations; (x) potential illegality of various assets and activities; (xi) conflicts of interest and fraud; (xii) litigation; (xiii) operational challenges and risks, including underdeveloped and untested asset custody practices; (xiv) limitations in market infrastructure, which is developing and incomplete; (xv) transfers of cryptocurrency assets are generally irrevocable; (xvi) lost or stolen private keys, malware, hacks, other cyberattacks; (xvii) blockchain protocol amendments (malicious or otherwise); (xviii) startup and untested technologies and companies, technology; (xix) market changes, redundancy; and (xx) obsolescence risks.  These materials presume that the reader is an experienced and sophisticated investor who is willing to bear substantial risks and losses.
 
GRAPHS AND CHARTS
Any graphs, charts and other visual aids provided herein are for informational purposes only.  None of such graphs, charts or visual aids can in and of themselves be used to make investment decisions.  No representation is made that these will assist any person in making investment decisions and no graph, chart or other visual aid can capture all factors and variables required in making such decisions.

LINKS TO THIRD PARTY WEBSITES
Certain links, including links to other websites which may be maintained or controlled by the Adviser, the General Partner or their affiliates, are provided in this document.  These links are provided as a convenience and do not imply the Adviser and/or General Partner’s sponsorship or approval of any third-party websites or their content.  Although certain websites may be maintained or controlled by the Adviser and/or the General Partner or their affiliates, the Adviser and the General Partner have no control over or responsibility for other websites that may be accessible from this website, the contents thereof, their security or privacy policies, or any products/services that may be offered by them.  If you access any third-party website through this document or because it is referred to in this document, you do so at your own risk.  Links to or from this document do not constitute an endorsement by the Adviser and/or the General Partner or the parties or businesses which are so linked, nor do they necessarily indicate any affiliation between the Adviser and/or the General Partner and such parties or businesses. 
 
FUND TERMS AND CONDITIONS
The summary provided herein of the Adviser’s terms and conditions does not purport to be complete. The applicable Confidential Private Placement Memorandum and Amended and Restated Exempted Limited Partnership of the Funds (each as amended, supplemented, restated or otherwise modified from time to time) should be read in their entirety prior to an investment.
 
CONFIDENTIALITY AND TAX
The information contained herein is confidential information and is intended for use by the intended recipient only.   By accepting such information, you agree that you will, and you will cause your directors, partners, officers, employees, affiliates, agents and representatives to, use such information only to evaluate your potential interest in the matters described herein and for no other purpose, and you will not provide or divulge any such information to any other party or summarize or otherwise refer to such information.   You further agree to return these materials promptly upon request. Notwithstanding the foregoing, you (and each of your employees, representatives or other agents) may disclose to any and all persons, without limitation of any kind, the tax treatment and tax structure of the investment strategies contemplated by these materials and all materials of any kind (including opinions or other tax analyses) that are provided to you relating to such tax treatment and structure.   For this purpose, the tax treatment of a transaction is the purported or claimed U.S. federal income tax treatment of the transaction and the tax structure of a transaction is any fact that may be relevant to understanding the purported or claimed U.S. federal income tax treatment of the transaction.
 
REGULATORY STATUS
The Adviser is a registered investment advisor (SEC File Number: 801-121922) with the U.S. Securities and Exchange Commission (“SEC”); registration with the SEC does not imply that the SEC has reviewed the materials provided herein nor does it denote any level of qualification pertaining to the Adviser’s investment vehicles.