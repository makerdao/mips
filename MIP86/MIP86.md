# MIP86: CoinShares Active Treasury Management

## Preamble

```
MIP#: 86
Title: CoinShares USDC Institutional Rewards
Author(s): @CoinSharesCo
Contributors: @jmmognetti
Tags: PSM
Type:
Status: RFC
Date Proposed: 2022-09-13
Date Ratified:
Dependencies: MIP13c3-SP12, MIP81
Forum URL: https://forum.makerdao.com/t/mip86-coinshares-usdc-institutional-rewards/17900
```

## Sentence Summary

In MIP86 CoinShares proposes a portfolio management strategy for a portion of MakerDAO’s PSM following the RWA pivot made by the community. CoinShares could deploy this investment strategy for capital ranging from $100 million to $500 million. It is important to ignore the amount of money invested for the vote, we believe that this should be decided and voted on at a later stage by the community.  
We would propose that the exact amount of the program (100m-500m) will be sized in accordance with MakerDao's ALM strategy prior to execution of this MIP through a signal request that factors in the optimal amount of the program based on MakerDAO's ALM strategy at the time we are ready for execution.

## Paragraph Summary

Under MIP86, a portion (from $100M to $500M) of the PSM’s USDCs will be managed by CoinShares, which will invest on behalf of MakerDAO the funds in various traditional financial assets according to [MIP13c3-SP12 3](https://mips.makerdao.com/mips/details/MIP13c3SP12). CoinShares aims to provide a variable APY above the SOFR interest rate (3.01% as of October 26, 2022) in the community’s preferred currency (DAI, USDC, USD…) to MakerDAO and that can be withdrawn on-chain. This MIP describes the architecture of the project.

## Motivation

This MIP is based on the ratified Declaration of Intent to Invest in Short-Term Bonds ([MIP13c3-SP12 3](https://mips.makerdao.com/mips/details/MIP13c3SP12)) whereby MakerDAO notes that approximately 60% of MakerDAO’s balance sheet is in a stablecoin that does not provide revenue while maintaining counterparty risk on Circle. [MIP13c3-SP12 3](https://mips.makerdao.com/mips/details/MIP13c3SP12) details high standards that are consistent with CoinShares’ well-established position in the institutional space (partnering up with top financial institutions like Nomura and Invesco, or a significant investor in one of the most advanced and innovative trading Swiss Banks based in Geneva and Zurich: FlowBank) as well as offering a mature legal and custody structure that allows secure access to many traditional financial assets. Our motivation is reinforced by the fact that since 2022, traditional financial assets have offered a higher APY than DeFi on the USD, which should create an innovative collaboration between, for example, MakerDAO and CoinShares, to generate interest on MakerDAO’s balance sheet.

MakerDAO has paved the way for the institutionalisation of DeFi through the professionalism of its teams and the governance of the DAO and above all by promoting collaboration with financial institutions through the RWA program. CoinShares, as a historical player in the digital asset industry and an asset manager since 1998 (formerly Global Advisors), is probably one of the most capable financial institutions to collaborate with DAOs by playing this bridging role between TradFi and DeFi. CoinShares has also developed strong relationships with DeFi protocols. As one of the most DeFi-friendly financial institutions, it is only a natural step for us to offer our services to MakerDAO, the institutional-grade DeFi protocol by excellence.

## Resources

[Know Your MIP #14 | MIP86 | CoinShares Treasury Investment Proposal](https://www.youtube.com/watch?v=2rTpyLEq6yg)
[10/22 - MIP86 - CoinShares Proposal](https://docs.google.com/presentation/d/1dQih700zoCmv3G_KrlYVt0IsZxGFMq92IH2V29-UwDk/edit?usp=sharing)
[CoinShares MIP86 - Interests model](https://docs.google.com/spreadsheets/d/1Tp1r8wfgQW1_LXqfzg4jFumafgUjdF11-XSgEiqRIw8/edit?usp=sharing)
[FAQ - MIP86](https://docs.google.com/document/d/1UTGMh_CpLiIg04x_XcvKn72etp6tTew2pU0GfQhKu-c/edit?usp=sharing)

## Component Summary

**MIP86c1: Presentation of CoinShares**
In this section, we present CoinShares business activities.

**MIP86c2: The opportunity – A word of our investment manager**
Our investment manager will explain to the MakerDAO community why investing in bonds right now is an amazing opportunity.

**MIP86c3: Investment Program**
In this section, we explain more thoroughly what is our portfolio strategy for MakerDAO.

**MIP86c4: Terms for Adding and Withdrawing Liquidity**
We describe the structure of the collaboration and what would be the process and ways of working.

**MIP86c5: Transparency and Monitoring**
We describe how we would like to maximise transparency and ease of use for the MakerDAO community through TrustExplorer and regular AMA and reports.

**MIP86c6: Proposed Legal Structure**
We describe a low intermediary, smart-contract enabled, bankruptcy remote structuring for our partnership.

**MIP86c7: Custody**
We explain what Komainu is, our regulated custody solution, a joint venture with CoinShares, Ledger & Nomura, to custody digital assets.

**MIP86c8: Internal Organisation**
We describe the team that would manage MakerDAO’s assets, with a dedicated part about our investment manager.

**MIP86c9: Legal Structure & Collateral Onboarding**
We explain how CoinShares will actively participate in the Legal Structure & Collateral Onboarding Verification and Assessment process, in total cooperation with the relevant Core Units or community members. 

**MIP86c10: What makes us different from the other MIPs to manage MakerDAO’s PSM?**
It’s a summary of the benefits of our proposal compared to the other recent MIPs made to the MakerDAO community.

## Specification

### MIP86c1: Presentation of CoinShares

CoinShares is a leading full-service digital asset investment and trading group that delivers a broad range of financial services across investment management, trading, securities, and consumer products to a wide array of clients that includes corporations, financial institutions, and individuals. Pivoting towards crypto in 2013, the firm is headquartered in Jersey, with offices in London, Paris, and New York. CoinShares is regulated in Jersey by the Jersey Financial Services Commission, in France by the Autorité des Marchés Financiers, and in the US by the Financial Industry Regulatory Authority. CoinShares is publicly listed on the Nasdaq First North Growth Market under the ticker CS and the OTCQX under the ticker CNSRF and preparing for an up-listing to the Nasdaq Sweden Main Market by the end of the year.

CoinShares is Europe’s largest and leading digital asset investment and trading group, managing billions of assets on behalf of a global client base. Our mission is to expand investment into digital assets with our trusted, regulated, best-in-class product suite that provides investors with trust and transparency when accessing cryptocurrencies.

In 2018, CoinShares built — along with Nomura and Ledger — Komainu, one of the leading European institutional-grade digital asset custodians. Komainu is leveraging Ledger Enterprise Solutions to custody digital assets. Komainu was established to fill a gap in the marketplace and provide institutions with a secure and compliant custody service for investment in digital assets. Launched in June 2020, Komainu currently holds several billions of dollars in assets under custody from asset managers, financial institutions, corporations, governments, and agencies.

### MIP86c2: The Opportunity

The macro backdrop remains challenging. However, the bond market has already priced in much of this news and possibly too much. As a result, we are currently at some of the widest levels we have seen in a decade. This is even though financial issuers remain in a strong position, as reflected by their capital and excess capital. Moreover, asset quality remains solid as non-performing loan ratios of European banks are currently extremely low at 1.8%.

Despite the negative performance of significant bond markets year-to-date, our outlook is positive for the next 24 months as credit quality, especially within the solution we have constructed, remains strong. This ensures visibility of the path to high income with yields often double-digit. For example, Swiss Re 4% has a yield to the next call in 2024 of c.13%; the bond is A-rated, while the parent company is rated AA- (very strong).

Overall, the strategy portfolio has a yield-to-maturity of 6.77%, utilising national champions that are imperative to their national economies, for example, Bank of America is 6.25% in 2024, which is trading at 97.76%, meaning that as the bond matures at par (100%), it will appreciate 2.16% in capital and an additional 12.5% in coupon payments (2023 and 2024) creating a positive cash flow of 14.6% over the next two years. This represents an exceptional opportunity to deploy capital into such names. We blend this approach by investing in government-related issuers (36% of the portfolio) that typically avoid 'hot money' flows and are less volatile than traditional government bonds. For example, we prefer the 'AA-rated’ UAE government-backed Mubadala Investment Company (MDGH). The UAE is a wealthy nation with little external debt and retains a net foreign asset position of c. 250%. Net Foreign Assets (NFA) refer to the net amount of foreign assets a country owns or the total value of a country's foreign assets minus the total value of assets within a country that foreigners own. They indicate whether a country is a net creditor or a net debtor. We prefer creditor nations. Using the same method as previously stated, the MDGH 2.5% 2024 provides investors with the potential to achieve a return of 10% over the next two years.

The strategy maintains a low duration of just over a year, meaning it actively manages interest rate risk. Indeed many of the instruments in the strategy can actively benefit as rates rise; we currently have c.50% exposure to floating and variable rate notes; these reset to the underlying reference rate and the coupon is adjusted to reflect any increase in rates. An excellent example is A-rated HSBC 2024; the bond currently has a floating coupon of 5.98%. If rates continue to rise, then the coupon will increase.

Our approach reduces risk as we invest c. 50% in fixed-rate bonds, meaning they will 'pull-to-par' over the coming couple of years; these issues are trading at heavy discounts and will benefit holders as they mature. At the same time, the remaining element is invested in issuers that will benefit from higher rates. If the prospects of rate hikes diminish, we reallocate capital to bonds that reflect the prevailing conditions of the market.

Global authorities are on a tightrope. They need to signal they are willing to fight inflation with higher rates, but at the same time, they need to protect households and businesses as such significant rises from this juncture are somewhat muted.

This creates a great opportunity for MakerDAO as a bond investor.

#### MIP86c3: Investment Program

##### Benchmark

The investment objective is to generate income and capital growth over the short term by investing primarily in quality corporate bonds and to yield an annual return in excess of the SOFR, capitalised daily over the investment period.

The SOFR (Secured Overnight Financing Rate) is a dynamic reference rate for the US dollar (USD) interbank market. It is calculated by the New York Federal Reserve.

![|624x441](http://github.com/makerdao/mips/mip86/1.png)

Source: Bloomberg, as of October 18, 2022

##### Objective

To capture a high and steady income by investing in bonds from strong issuers

The primary aim is to preserve capital whilst providing returns that are 2.25% in excess of SOFR on a rolling 36-month basis

Currently, the positive yield differential is 3.79%.

##### Philosophy

A predominately buy-and-hold and bottom-up driven investment approach that is actively managed through tactical tilts.

Invest in national champions and government-backed issuers

##### Solution

The portfolio recognises and attempts to capture the current dislocation in global bond markets. The portfolio actively seeks out highly creditworthy bonds with limited interest rate sensitivity (low duration) that are trading below par (91% of the portfolio). This approach enables the portfolio to benefit from ‘pull to par’ as it invests in government-backed issuers or national champions representing little credit risk over the next 36 months.

The salient features of the portfolio are as follows:

![|592x58](http://github.com/makerdao/mips/mip86/2.png)

Given the dislocation in bond markets, the net cash flow is a useful tool to help assess what your client can expect to receive over the two years. Net cash flow is the collection of income and net proceeds of bonds purchased at discounted less any management fees.

##### Approach

Over the course of 2022, the macroeconomic climate has been very challenging. This challenging outlook has already been priced into many bonds which have sold off this year. We are of the view that the damage has been done and there is little downside remaining especially with assets that are due to mature or be called in the next couple of years. The bond market is currently offering compelling opportunities. We feel that these can be exploited to the benefit of the community using a low-risk approach.

The portfolio invests in highly creditworthy issuers from national champions and government-backed issuers. We actively seek out dislocations in the bond market to provide attractive total returns from income and capital. In addition, we invest in a range of instruments across the bond market to protect and grow capital in a reasonably simple way.

Fixed-rate bonds represent c.50% of the portfolio. We actively seek out names that are trading below par or that have an attractive coupon, thus providing a solid income for the next couple of years.

All of the fixed-rate bonds are trading below par, an average of 94.5thus providing the opportunity for capital appreciation over two years or more.

Floating and variable rate bonds represent c. 50% of the portfolio; their coupons reset quarterly to reflect changes in LIBOR /SOFR coupled with a spread, e.g. +0.2%. This protects the portfolio in the event of further increases in interest rates. Rather than hold cash deposits, floating rate notes offer a secure way of benefiting from increasing rates.

##### Process
Research-intensive investment approach to select issuers, debt securities, construct the portfolio, and manage risks.

*Investment policy*

* The portfolio recognises and attempts to capture the current dislocation in global bond markets. The portfolio actively seeks out highly credit-worthy bonds with limited interest rate sensitivity trading below par.
* Strong credit quality: Minimum of 70% of issuers are Investment Grade rated.
* Low sensitivity to interest rates: More than 50% of securities will be fixed-to-floaters & floating-rate-notes.
* Credit risk: Government-backed names reduce credit risk. Financial debt instruments will be included to benefit from higher interest rates.
* Liquidity is a key consideration for this solution although this isn’t cash; we are aiming to provide similar core characteristics. One of them is the ability to add funds or withdraw them easily and quickly. Withdrawals can be made within 7 working days under normal market conditions. We are able to enable this as we focus only on bonds with large issue sizes with high demand and deep markets that are widely covered by brokers. The acquisition or disposal of bonds or debt securities is based on an analysis of the issuer’s credit risk.

*Constraints*

Portfolio construction proposed constraints are aligned with typical institutional portfolio allocation:

* Weighting range between 0.75 and 3%.
* No more than 5% to a single issue (corporate).
* No more than 5% of any outstanding issue (fairly unlikely).
* Government-backed debt you can have up to 10% per issue (we didn’t in the case of our portfolio use such a high concentration).
* Average rating must be at least ‘A’.
* Average duration no more than 3 years (our portfolio is currently 1.5%).
* No more than 50% to one sector (unless government).

Example portfolio - CoinShares Alpha Liquidity

![|602x363](http://github.com/makerdao/mips/mip86/3.png)

Portfolio construction focused on gradual allocation to build Trust and Transparency

* **Performance of the CoinShares Alpha Liquidity Strategy since 2014**

![|602x281](http://github.com/makerdao/mips/mip86/4.png)

* **Fees**

![|602x335](http://github.com/makerdao/mips/mip86/5.png)

It is important for CoinShares to be aligned with the community. That's why we offer performance-based compensation only.

While maintaining the quality of the portfolio and keeping the risk/return ratio consistent with the management objective, CoinShares will receive 66% of the portfolio's outperformance against its benchmark, and 50% of the income received by CoinShares will then be used to purchase the MKR token, which CoinShares will hold for at least 2 years from the date of purchase in a totally transparent way and will be used so as CoinShares can be involved in the stewardship of the protocol along with the other delegates.

* **Why this compensation model?**

CoinShares wants to align with Maker’s interests and make a long-term commitment to governance, both for the operation's success and for Maker’s potential to be a pioneer in the collaboration between DeFi and TradFi.

You can see the theoretical results of the investment in the shared document [CoinShares MIP86 - Interests model](https://docs.google.com/spreadsheets/d/1Tp1r8wfgQW1_LXqfzg4jFumafgUjdF11-XSgEiqRIw8/edit?usp=sharing). You can play with the document if you wish.

![image|517x271](http://github.com/makerdao/mips/mip86/6.png)



### MIP86c4: Terms for Adding and Withdrawing Liquidity 

We propose to implement a set of smart contracts accessible only by authorised persons at MakerDAO, which will simplify the process and eliminate possible intermediaries and fees between CoinShares and MakerDAO.

This set of smart contracts will be used to perform fund transfers between MakerDAO and CoinShares, as well as transfer the interest to MakerDAO. The smart contract architecture is currently being developed and tested. Later, it will be shared with the community and audited.

With regard to the transfer of interests, CoinShares will automatically convert the proceeds of its management (100% up to SOFR and 33% above SOFR) into stablecoins of MakerDAO's choice, which will be deposited in the smart contract.

This smart contract will be executable by MakerDAO, which will be able to recover the necessary amounts on demand.

Here is our summary of the implementation of the different steps, from the USDC PSM vault to the investment by CoinShares.

![|612x267](http://github.com/makerdao/mips/mip86/7.png)

### MIP86c5: Transparency and Monitoring

Although originally from the traditional financial industry, CoinShares decided in 2013 to devote fully to digital assets because those new protocols allow for unparalleled transparency in transactions, contracts, and operation of protocols. With this in mind, CoinShares has partnered with Armanino LLP to provide investors with real-time transparency of CoinShares’ XBT Provider assets under management, and CoinShares Digital Asset Securities through [Trust Explorer Real Time Asset 1](https://www.armaninollp.com/press-releases/armanino-provides-real-time-attest-digital-asset-investment-firm-coinshares/). We want to be able to report back to the MakerDAO community in real-time through a similar setup by giving in real-time the value of assets invested.

In addition, similar to what we provide to our investors, we propose to provide the community with a quarterly report on the status of the volume of assets managed by CoinShares.

Finally, because we are convinced that regular communication is the key to such a partnership, we suggest creating a dedicated channel where you can regularly ask questions to our Asset Management team.

### MIP86c6: Proposed Legal Structure

* **Low intermediation of service and structuring**

Unlike other proposals and previous programmes, we propose to concentrate nearly every service at CoinShares, MakerDAO's direct counterparty, with the exception of asset custody, which must be external. We believe that MakerDAO's RWA strategy should not be at the expense of disintermediation driven by the digital asset revolution. It seems to us that our proposal is the only one that presents a certain level of disintermediation.

* **Creation of a dedicated smart contract to limit the use of intermediaries**

This desire for disintermediation and a direct relationship between the Community and CoinShares is also reflected in the establishment of a smart contract serving as a receptacle for funds and the ability for MakerDAO to recover its on-chain funds.

* **Bankruptcy remote scheme**

MakerDAO Assets will be segregated from CoinShares’ proprietary account in a Sub-Account held at our Custodian Komainu and/or at one of our traditional prime brokers in a way to isolate financial risk (SPV or segregated account).

* **Fiat/Stablecoin conversion**

All conversions from fiat to stablecoins and USDC stablecoins to fiat will be ensured by CoinShares Capital Markets (Jersey) Limited following our Best Execution Policy.

![|602x245](http://github.com/makerdao/mips/mip86/8.png)

### MIP86c7: Custody

Komainu as a joint venture between CoinShares, Nomura, and Ledger is an excellent custodian using military-grade security. Komainu is leveraging Ledger Vault which is the most secure solution in the industry thanks to hardware security. Ledger Vault mixes the most advanced security features through its Personal Security Device (a Ledger Nano X upgrade), a dedicated Hardware Security Module, and Ledger proprietary software. Ledger Vault is SOC 2 Type 2 certified.

MakerDAO Governance will vote and approve CoinShares with custody provided by Komainu Jersey Limited regulated by the Jersey Financial Services Commission as a Custodian under Fund Service Business and registered as Virtual Asset Service Provider under schedule 2. Komainu’s principal shareholder is Nomura Holdings International, followed by Ledger, CoinShares, Alan Howard, Galaxy Digital, and Nomura Research Institute. Komainu has been audited by government bodies such as the [UK NPCC Cybercrime Program](https://www.prnewswire.co.uk/news-releases/komainu-to-support-uk-law-enforcement-in-the-fight-against-crime-involving-digital-assets-803987511.html).

With regards to the custody and securities held on behalf of MakerDAO, they will be under the custody of Tier 1 Financial Services Institutions.

### MIP86c8: Internal Organisation

CoinShares aims to be a bridge between TradFi, CeFi, and DeFi.This is where our proposal differs fundamentally from the other ones. We want to participate in Maker's asset exposure strategies to Real World Assets while trying to keep as much as possible on-chain infrastructure.

The investment will be carried out by the CoinShares team and infrastructure that benefit from experienced traders & portfolio managers bringing knowledge from traditional finance. Our Fixed Income strategist who would oversee MakerDAO’s assets currently oversees $450M (outside CoinShares - he is in the process of joining the team full-time to help us accelerate our in-house treasury management solutions. His contribution to our treasury management has been significant, spread over several fixed-income strategies. He has been an expert in fixed income for 20 years with particular expertise in macroeconomics, bonds, and alternatives.

The core business activities are built on our proprietary trading platform, Galata, built by the Capital Markets team. Galata acts as an Operating System for the whole company. Galata is a bridge between traditional finance and decentralised finance. It enables the proper execution of orders, our investment strategies, and our product distribution. It links different exchange platforms and services that are today crucial to the success of our business.

![|360x360](http://github.com/makerdao/mips/mip86/9.png)

The current DeFi infrastructure does not allow strong bridges between DeFi and TradFi, but CoinShares remains open to discussions in this regard.

### MIP86c9: Legal Structure & Collateral Onboarding

* **Legal Structure**

CoinShares will put in place a legal trust structure, and governance framework, with the necessary contractual relationships and legal protections to protect the interests of MakerDAO and CoinShares. CoinShares has an experienced team that will be able to provide direct discussion with MakerDAO relevant Core Units.

This includes, but is not limited to:

* The establishment of an Investment Management Agreement (“IMA”) highlighting CoinShares' fiduciary duty to manage the portfolio in the primary interest of MakerDAO. The IMA will include restrictions to ensure that the portfolio is managed in accordance with the MIP and within a framework that mitigates risk.
* No ability by third parties to the IMA to access the funds or change the terms of the legal structure;
* No ability for third parties to the IMA to block the ability of MakerDAO to make decisions or modify the structure;
* There must be no apparent weak links or edge cases that allow funds to get misappropriated or stuck;
* The correct segregation of the portfolio of CoinShares' balance sheet assets;
* MakerDAO will have the ability to trigger subscriptions and redemptions through a smart contract;
* This above-established structure will set up a relationship with CoinShares Capital Markets (Jersey) Ltd which is a regulated crypto broker, and a dedicated Ethereum address (multi-signature) will be used to interact with the deployed smart contract in relation with MIP86c4.


* **Collateral Onboarding: Assessments**

As part of our commitment to full transparency and cooperation with the MarkerDAO Community and Cores Units, CoinShares will create a dedicated page (that could be named “MIP86: Documentation & Assessments Repository”) on the MakerDAO Forum (“Collateral Onboarding” section) which will contain the Risk, Compliance and Legal assessments as well as the Legal and Regulatory documentation on CoinShares and the MIP86.

Our teams will fully cooperate and provide MarkerDAO community members with all the necessary information to carry out their own independent assessments on the followings topics:

* Legal Assessment
* Counterparties Assessment
* Compliance Assessment
* Technical Assessment

CoinShares is committed to engaging all relevant internal teams to enable due diligence by the Community and Core Units to be completed and this Active Treasury Management program to be effectively deployed within a very short timeframe while maintaining the trust and control of the MakerDAO community members.

* **Collateral Onboarding: Legal & Governance Verification**

At least one community member, with legal credentials, must, through a public forum post, validated by at least one Facilitator, verify the legal and governance structure appropriateness for holding a large amount of low-risk real-world asset collateral for Maker, actively managed by CoinShares.

* **Collateral Onboarding: Investment Program Verification**

The Strategic Finance Core Unit facilitator/member must, also through a public forum post, verify, with regard to MIP86c3: Investment Program, that the tools put in place by CoinShares ensure solid guarantees on low-risk real assets and the quality of the management service, actively managed by CoinShares for MakerDAO

As stated in the MIP, CoinShares is available to the MakerDAO teams and the community to build and provide relevant and timely portfolio data.

* **Collateral Onboarding: Technical Verification**

The Collateral Engineering Services Core Unit facilitator must, again through a public forum post, provide a Verification of the technical appropriateness in relation to MIP86c5.

A test transaction will take place to ensure the receiving address is correct prior to any release of funds.

If the Collateral Engineering Services Core Unit facilitator is not satisfied with the security of the assets transfer, the deal would be halted until these concerns were rectified.

### MIP86c10: What makes us different from the other MIPs to manage MakerDAO’s PSM?

Discretionary, Independent, Active & Professional portfolio management

**Discretionary**: Unlike other proposals and previous programmes, CoinShares will be the manager of the PSM/MakerDAO AND the entity in charge of managing the portfolio.

**Independent**: The portfolio management will be discretionary in the sense that the management will not use (i) intermediaries or (ii) third-party delegates to manage the portfolio, and this is the only proposal ever presented at MakerDAO.

Active: Unlike other proposals and previous programmes, our proposition is based on active portfolio management in order to provide a (i) personalised service (ii) free from the passive management of ETFs without added value.

**Professional**: CoinShares is the most regulated group in the crypto ecosystem with :

1. Its holding company listed on Nasdaq First North Growth Market.
2. Two of its entities licensed as regulated Asset Management Companies (in Jersey by the JFSC & in France by the AMF).
3. One entity registered as Digital Asset Services Providers (in Jersey by the JFSC) and one in the process of registration (France).
4. One Appointed Representative (United Kingdom) entity.
5. Products listed on the main European marketplaces (SIX, Xetra, Euronext, etc.).

Licences that can be obtained on request, especially on the European continent, reflect human, technological and control resources that are evaluated and monitored by regulators.

**Low intermediation of service and structuring:**

Unlike other proposals and previous programmes, we propose to concentrate nearly every service at CoinShares, MakerDAO's direct counterparty, with the exception of asset custody, which must be external. We believe that MakerDAO's RWA strategy should not be at the expense of disintermediation driven by the digital asset revolution. It seems to us that our proposal is the only one that presents a certain level of disintermediation.

CoinShares will be your service provider, your counterpart, and your portfolio manager. It differentiates us from other highly intermediated and outsourced MIPs and seems, to us, to be a good compromise between the use of RWAs and the need to remain decentralised.

**Finally, CoinShares has a decade of experience in regulatory and legal issues when it comes to financial and crypto projects. We created the first regulated Bitcoin fund, and we assist many foundations in their regulatory issues. Therefore, our experienced legal team is ready to assist MakerDAO with the legal set-up and the establishment of the corporate structure. We are well aware of the difficulties that DAOs or Foundations have in organising themselves and setting up projects of this magnitude. CoinShares is ready to help you, acting as an advisor to the Core Strategic Unit. You are receiving more and more MIPs and it is imperative that you put in place proper due diligence. We would be delighted to assist you in this regard, in the most neutral way possible, of course.** 

Please feel free to ask any questions you may have.

The CoinShares Team

![image|345x181](http://github.com/makerdao/mips/mip86/10.png)

## References

* [https://coinshares.com/ ](https://coinshares.com/)
* [https://mips.makerdao.com/mips/details/MIP13c3SP12](https://mips.makerdao.com/mips/details/MIP13c3SP12#context-and-motivation)
* [Investing our liquidity in short-term ETF, managing PSMs exposures](https://forum.makerdao.com/t/investing-our-liquidity-in-short-term-etf-managing-psms-exposures/10891)
* [TrustExplorer by Armanino: Real-Time Attest for CoinShares Physical](https://real-time-attest.trustexplorer.io/coinshares/physical)
* [TrustExplorer by Armanino: Real-Time Attest for CoinShares XBT Provider](https://real-time-attest.trustexplorer.io/coinshares/xbt-provider)
* [Komainu to Support UK Law Enforcement in the Fight Against Crime Involving Digital Assets](https://www.prnewswire.co.uk/news-releases/komainu-to-support-uk-law-enforcement-in-the-fight-against-crime-involving-digital-assets-803987511.html)
* [FlowBank’s investor CoinShares increases its stake](https://www.flowbank.com/en/pr/flowbanks-investor-coinshares-increases-its-stake)
* [Invesco enters crypto ETP space with bitcoin launch](https://www.etfstream.com/news/invesco-enters-crypto-etp-space-with-bitcoin-launch)
* [Secured Overnight Financing Rate Data - FEDERAL RESERVE BANK of NEW YORK](https://www.newyorkfed.org/markets/reference-rates/sofr)

### Legal Disclaimer:

The information contained in this document is for general information only. Nothing in this document should be interpreted as constituting an offer of (or any solicitation in connection with) any investment products or services by any member of the CoinShares Group where it may be illegal to do so. Access to any investment products or services of the CoinShares Group is in all cases subject to the applicable laws and regulations relating thereto.

Although produced with reasonable care and skill, no representation should be taken as having been given that this document is an exhaustive analysis of all of the considerations which its subject matter may give rise to. This document fairly represents the opinions and sentiments of CoinShares as of the date of its issuance, but it should be noted that such opinions and sentiments may be revised from time to time, for example in light of experience and further developments, and this document may not necessarily be updated to reflect the same.

The information presented in this document has been developed internally and/or obtained from sources believed to be reliable; however, CoinShares does not guarantee the accuracy, adequacy, or completeness of such information. Predictions, opinions, and other information contained in this document are subject to change continually and without notice of any kind and may no longer be true after the date indicated. Third-party data providers make no warranties or representation of any kind in relation to the use of any of their data in this document. CoinShares does not accept any liability whatsoever for any direct, indirect, or consequential loss arising from any use of this document or its contents.

Any forward-looking statements speak only as of the date they are made, and CoinShares assumes no duty to update forward-looking statements and does not undertake any. Forward-looking statements are subject to numerous assumptions, risks, and uncertainties, which change over time. Nothing within this document constitutes (or should be construed as being) investment, legal, tax, or other advice. This document should not be used as the basis for any investment decision(s) that a reader thereof may be considering. Any potential investor in digital assets, even if experienced and affluent, is strongly recommended to seek independent financial advice upon the merits of the same in the context of their own unique circumstances.

This content is not directed at nor intended for use by the MakerDAO community (“MakerDAO”), and may not under any circumstances be relied upon when making an investment decision. The digital assets referenced herein currently face an uncertain regulatory landscape in not only the United States but also in many foreign jurisdictions, including but not limited to the UK, European Union, Singapore, Korea, Japan, and China. For guidance regarding the possibility of said risks, one should consult with his or her own appropriate legal and/or regulatory counsel. Charts and graphs provided within are for informational purposes solely and should not be relied upon when making any decision. The content speaks only as of the date indicated. Any projections, estimates, forecasts, targets, prospects, and/or opinions expressed in these materials are subject to change without notice and may differ or be contrary to opinions expressed by others.

The proposed service is subject to risks, including the risk of capital loss, discretionary management risk, credit risk, counterparty risk, currency risk, and liquidity risk.