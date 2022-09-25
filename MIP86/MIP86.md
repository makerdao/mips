# MIP86: CoinShares USDC Institutional Rewards

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

## References

* https://coinshares.com/
* [https://mips.makerdao.com/mips/details/MIP13c3SP12](https://mips.makerdao.com/mips/details/MIP13c3SP12#context-and-motivation)
* https://forum.makerdao.com/t/mip81-coinbase-usdc-institutional-rewards/17703
* https://forum.makerdao.com/t/investing-our-liquidity-in-short-term-etf-managing-psms-exposures/10891
* https://forum.makerdao.com/t/mip81-coinbase-usdc-institutional-rewards/17703
* https://forum.makerdao.com/t/sg-forge-socgen-risk-assessment/15638
* https://real-time-attest.trustexplorer.io/coinshares/physical
* https://real-time-attest.trustexplorer.io/coinshares/xbt-provider
* https://www.prnewswire.co.uk/news-releases/komainu-to-support-uk-law-enforcement-in-the-fight-against-crime-involving-digital-assets-803987511.html
* https://www.flowbank.com/en/pr/flowbanks-investor-coinshares-increases-its-stake
* https://www.etfstream.com/news/invesco-enters-crypto-etp-space-with-bitcoin-launch
* https://www.newyorkfed.org/markets/reference-rates/sofr


## Sentence Summary

MIP86 will establish a secured and flexible first collaboration between CoinShares and MakerDAO to deploy USDC 500m (13%) of PSM’s with CoinShares. Details are available below.

## Paragraph Summary

Under MIP86, a portion of the PSM's USDCs will be managed by CoinShares, which will invest on behalf of MakerDAO the funds in various traditional finance assets according to [MIP13c3-SP12](https://mips.makerdao.com/mips/details/MIP13c3SP12). CoinShares aims to provide a variable APY of the SOFR interest rate (2.28% as of September 12 2022) in USDC to MakerDAO accruing daily and payable monthly in arrears in USDC or any other digital asset preferred by MakerDAO at the time of payment. This MIP describes the architecture of the project.

## Motivation

This MIP is based on the ratified Declaration of Intent to Invest in Short-Term Bonds ([MIP13c3-SP12](https://mips.makerdao.com/mips/details/MIP13c3SP12)) whereby MakerDAO notes that approximately 60% of MakerDAO's balance sheet is in a stablecoin that does not provide revenue while maintaining counterparty risk on Circle. [MIP13c3-SP12](https://mips.makerdao.com/mips/details/MIP13c3SP12) details high standards that are consistent with CoinShares' well-established position in the institutional space (partnering up with top financial institutions like Nomura and Invesco, or a significant investor in one of the most advanced and innovative trading Swiss Banks based in Geneva and Zurich: FlowBank) as well as offering a mature legal and custody structure that allows secure access to many traditional financial assets. Our motivation is reinforced by the fact that since 2022, traditional financial assets offer a higher APY than DeFi on the USD, which should create an innovative collaboration between, for example, MakerDAO and CoinShares, to generate interest on MakerDAO's balance sheet.

## Component Summary

**MIP86c1: Presentation of CoinShares**  
**MIP86c2: Investment Program**  
**MIP86c3: Interests Distribution Terms**  
**MIP86c4: Terms for Adding and Withdrawing Liquidity**  
**MIP86c5: Transparency and Monitoring**  
**MIP86c6: Proposed Legal Structure**  
**MIP86c7: Custody**  
**MIP86c8: Technical Structure**  
**MIP86c9: Our View on the MIP81 from Coinbase**  

## Specification

### MIP86c1: Presentation of CoinShares

​​CoinShares is a leading full-service digital asset investment and trading group that delivers a broad range of financial services across investment management, trading, securities, and consumer products to a wide array of clients that includes corporations, financial institutions, and individuals. Pivoting towards crypto in 2013, the firm is headquartered in Jersey, with offices in London, Paris, and New York. CoinShares is regulated in Jersey by the Jersey Financial Services Commission, in France by the Autorité des Marchés Financiers, and in the US by the Financial Industry Regulatory Authority. CoinShares is publicly listed on the Nasdaq First North Growth Market under the ticker CS and the OTCQX under the ticker CNSRF and preparing for an up-listing to the Nasdaq Sweden Main Market by the end of the year.

CoinShares is Europe’s largest and leading digital asset investment and trading group, managing billions of assets on behalf of a global client base. Our mission is to expand investment into digital assets with our trusted, regulated, best-in-class product suite that provides investors with trust and transparency when accessing cryptocurrencies.

In 2018, CoinShares built ---along with Nomura and Ledger--- Komainu, one of the European leading institutional-grade digital asset custodians. Komainu is leveraging Ledger Enterprise Solutions to custody digital assets. Komainu was established to fill a gap in the marketplace and provide institutions with a secure and compliant custody service for investment in digital assets. Launched in June 2020, Komainu currently holds several billions of dollars in assets under custody from asset managers, financial institutions, corporations, governments, and their agencies.

### MIP86c2: Investment Program

#### Objective

This MIP aims to capture a high and steady income by investing in government and corporate bonds whilst maintaining capital within the investment policy below. The investment objective aims to yield an annual return in excess of its benchmark, the SOFR, capitalised daily over the investment period. The SOFR (Secured Overnight Financing Rate) is the reference rate for the US dollar (USD) interbank market. It is calculated by the New York Federal Reserve.

#### Philosophy

A buy-and-hold and bottom-up driven investment approach. Invest in national champions and government-backed issuers. The portfolio is actively managed and directly invested in debt securities.

#### Process

Research-intensive four-steps investment approach to select issuers, debt securities, construct the portfolio, and manage risks.

**Planned investment policy**

* The portfolio recognises and attempts to capture the current dislocation in global bond markets. The portfolio actively seeks out highly credit-worthy bonds with limited interest rate sensitivity trading below par.
* Strong credit quality: Minimum of 70% of issuers are Investment Grade rated.
* Low sensitivity to interest rates: More than 50% of securities will be fixed-to-floaters & floating-rate-notes.
* Credit risk: Government-backed names reduce credit risk. Financial debt instruments will be included to benefit from higher interest rates.
* This approach enables the portfolio to benefit from ‘pull to par’ as it invests in government-backed issuers or national champions representing little credit risk over the next 36 months. The portfolio is comfortable holding all the securities until maturity or until they are called and will reinvest proceeds of redemptions depending on market conditions.
* Liquidity is a key consideration for this solution although this isn’t cash; we are aiming to provide similar core characteristics. One of them is the ability to add funds or withdraw them easily and quickly. Withdrawals can be made within 7 working days under normal market conditions. We are able to enable this as we focus only on bonds with large issue sizes with high demand and deep markets that are widely covered by brokers. The acquisition or disposal of bonds or debt securities is based on an analysis of the issuer's credit risk.

***Example portfolio - CoinShares DAO Treasury Management Portfolio***

![example](https://github.com/makerdao/mips/blob/master/MIP86/example.png)

***Portfolio construction focused on gradual allocation to build Trust and Transparency***

With an initial ceiling of USD 500 million, we propose a gradual increase in the funds transferred by MakerDAO to CoinShares, in order to monitor the proper execution of the operation. The rate conditions at which the different tranches will be lent will remain the same. The increases would follow this schedule:

1. 02/01/2023: $25m aggregated value $25m
2. 06/02/2023: $50m aggregated value $75m
3. 06/03/2023: $100m aggregated value $175m
4. 03/04/2023: $150m aggregated value $325m
5. 02/05/2023: S175m aggregated value $500m

***Portfolio estimated returns***

The portfolio's outperformance (hypothetical and non-binding) against SOFR capitalised daily over the investment period, will be divided as follows: 1/3 for Maker, 1/3 for CoinShares, and the last 1/3 for CoinShares to acquire Maker tokens exclusively.

CoinShares wants to align with Maker's interests and make a long-term commitment to governance, both for the success of the operation and for Maker's potential to be a pioneer in the collaboration between DeFi and TradFi.

Based on these statements, our projections below would generate, at the end of 2025:

* 36,151,111$ to MakerDAO
* 4,611,111$ to CoinShares
* 6,495 MKR tokens (worth 4,611,111$ as of 09/13/22) to CoinShares

![return](https://github.com/makerdao/mips/blob/master/MIP86/return.png)

### MIP86c3: Interests Distribution Terms

#### Interests distribution terms: Interest payment

CoinShares will pay interests in the form of USDC within the first 2 UK business days of the following month. Rewards will be paid to MakerDAO governance in USDC or any other digital asset upon MakerDAO request and priced at the time of the transfer against USDC.

#### Interests distribution terms: Interest rate

Given the current markets, CoinShares considers an interest rate of the Secured Overnight Financing Rate (SOFR) to be appropriate. This gives MakerDAO the capacity to be flexible against any FOMC decision. The large markets to which CoinShares has access allow a wider range of opportunities to generate the maximum return while remaining within the scope of [MIP13c3-SP12](https://mips.makerdao.com/mips/details/MIP13c3SP12).

The SOFR (Secured Overnight Financing Rate) is the reference rate for the US dollar (USD) interbank market. It is calculated by the New York Federal Reserve. For more information about SOFR, please refer to this [link](https://www.newyorkfed.org/markets/reference-rates/sofr). Below are the SOFR interest rates, according to Bloomberg.

![distribution](https://github.com/makerdao/mips/blob/master/MIP86/distribution.png)

### MIP86c4: Terms for Adding and Withdrawing Liquidity

As specified in [MIP13c3-SP12](https://mips.makerdao.com/mips/details/MIP13c3SP12), the investment should have the capacity to be wound down within two weeks. The nature of the assets in which CoinShares plans to invest will allow quick scalability both in terms of deployment and recall.

The investment will allow for being unwound within seven (7) business days under normal market circumstances (following a MakerDAO executive vote).

The investment would ---with a high degree of likelihood--- be unwidable under stressed market situations within fourteen (14) business days --- this scenario may generate losses for MakerDAO.

The contract continues until revoked by either party.

### MIP86c5: Transparency and Monitoring

CoinShares plans to allow full transparency of investments made with MakerDAO USDC's through dedicated tools accessible to everyone. Although originally from the traditional financial industry, CoinShares decided in 2013 to devote fully to digital assets because those new protocols allow for unparalleled transparency in transactions, contracts, and operation of protocols. With this in mind, CoinShares has partnered with Armanino LLP to provide investors with real-time transparency of CoinShares' XBT Provider assets under management, and CoinShares Digital Asset Securities through [Trust Explorer Real Time Asset](https://www.armaninollp.com/press-releases/armanino-provides-real-time-attest-digital-asset-investment-firm-coinshares/).

We want to be able to report back to the MakerDAO community in real-time through a similar setup by giving in real time the volume of assets invested.

In addition, similar to what we provide to our investors, we propose to provide the community with a quarterly report on the status of the volume of assets managed by CoinShares.

Finally, because we are convinced that regular communication is the key to such a partnership, we suggest creating a dedicated channel where you can regularly ask our Capital Markets team questions.

### MIP86c6: Proposed Legal Structure

MakerDAO Assets will be segregated from CoinShares’ proprietary account in a Sub-Account held at our Custodian Komainu and/or at one of our traditional prime brokers. All conversion from fiat to USDC and USDC to fiat will be ensured by CoinShares Capital Markets (Jersey) Limited and its direct relationship with Circle.

We are not expecting any regulatory challenges in this relationship and are taking a lot of comfort from the achievement of Forge and their team.

### MIP86c7: Custody

Komainu as a joint venture between CoinShares, Nomura, and Ledger is an excellent custodian using military-grade security. Komainu is leveraging Ledger Vault which is the most secure solution in the industry thanks to hardware security. Ledger Vault mixes the most advanced security features through its Personal Security Device (a Ledger Nano X upgrade), a dedicated Hardware Security Module, and Ledger proprietary software. Ledger Vault is SOC 2 Type 2 certified.

MakerDAO Governance will vote and approve CoinShares with custody provided by Komainu Jersey Limited regulated by the Jersey Financial Services Commission as a Custodian under Fund Service Business and registered as Virtual Asset Service Provider under schedule 2. Komainu's principal shareholder is Nomura Holdings International, followed by Ledger, CoinShares, Alan Howard, Galaxy Digital, and Nomura Research Institute. Komainu has been audited by government bodies such as the [UK NPCC Cybercrime Program](https://www.prnewswire.co.uk/news-releases/komainu-to-support-uk-law-enforcement-in-the-fight-against-crime-involving-digital-assets-803987511.html).

With regards to the custody and securities held on behalf of MakerDAO they will be under the custody of Tier 1 Financial Services Institutions.

### MIP86c8: Investment Technical Structure

![investment](https://github.com/makerdao/mips/blob/master/MIP86/investment.png)

The investment will be carried out by the CoinShares team and infrastructure that benefit from experienced traders bringing knowledge from traditional fixed income markets, crypto, and DeFi markets. The core business activities are built on our proprietary trading platform, Galata, built by the Capital Markets team. Galata acts as an Operating System for the whole company. Galata is a bridge between traditional finance and decentralised finance. It enables the proper execution of orders, our investment strategies, and our product distribution. It links different exchange platforms and different services that are today crucial to the success of our business.

The current DeFi infrastructure does not allow strong bridges between DeFi and TradFi, but CoinShares remains open to discussions in this regard. Accordingly, CoinShares does not plan to include an on-chain component in the early day of the program. In addition, it allows for flexibility, reduces initial implementation complexity, and mitigates the risks associated with smart contracts, but comes with a greater risk of centralization.

Once USDC tokens are transferred by MakerDAO to a MakerDAO Sub-Account at Komainu on Ethereum, USDC will be controlled by a combination of the following users:

1. CoinShares Capital Markets
2. Komainu
3. MakerDAO
4. Any other party that MakerDAO think is necessary (optional - to be defined further in the legal agreement)

Various N of M options are available, but at the very least it will be two of three.

### MIP86c9: Our View on the MIP81 from Coinbase

CoinShares noticed and acknowledged the legitimate proposal ([MIP81](https://forum.makerdao.com/t/mip81-coinbase-usdc-institutional-rewards/17703)) from Coinbase. CoinShares is not making this application against Coinbase and considers Coinbase as one of its legacy and most reputable counterparties. However, CoinShares considers that it is in the interest of MakerDAO's governance and community to diversify the USDC allocation of the PSM vault, mitigating financial and centralisation risks between different contributors. Segregation and diversification are essential to mitigate risk.

CoinShares invites the MakerDAO community to comment on this proposal, knowing that the modalities remain entirely negotiable. We strongly believe that mass adoption of DeFi will be possible through such bridges between DeFi and TradFi, which will reduce the friction between both. We are pleased to share with the community our first collaboration proposal.

As the MakerDAO forum team and the community discuss the CoinShares proposal, we will compile the questions and answer them in batches to keep the process as clean and effective as possible. Based on feedback we will aim at completing the proposal and offer an AMA.

Please feel free to ask any questions you may have.

The CoinShares Team

![logo](https://github.com/makerdao/mips/blob/master/MIP86/logo.jpeg)

### Legal Disclaimer:

*The information contained in this document is for general information only. Nothing in this document should be interpreted as constituting an offer of (or any solicitation in connection with) any investment products or services by any member of the CoinShares Group where it may be illegal to do so. Access to any investment products or services of the CoinShares Group is in all cases subject to the applicable laws and regulations relating thereto.*

*Although produced with reasonable care and skill, no representation should be taken as having been given that this document is an exhaustive analysis of all of the considerations which its subject matter may give rise to. This document fairly represents the opinions and sentiments of CoinShares as of the date of its issuance, but it should be noted that such opinions and sentiments may be revised from time to time, for example in light of experience and further developments, and this document may not necessarily be updated to reflect the same.*

*The information presented in this document has been developed internally and/or obtained from sources believed to be reliable; however, CoinShares does not guarantee the accuracy, adequacy, or completeness of such information. Predictions, opinions, and other information contained in this document are subject to change continually and without notice of any kind and may no longer be true after the date indicated. Third-party data providers make no warranties or representation of any kind in relation to the use of any of their data in this document. CoinShares does not accept any liability whatsoever for any direct, indirect, or consequential loss arising from any use of this document or its contents.*

*Any forward-looking statements speak only as of the date they are made, and CoinShares assumes no duty to, and does not undertake, to update forward-looking statements. Forward-looking statements are subject to numerous assumptions, risks, and uncertainties, which change over time. Nothing within this document constitutes (or should be construed as being) investment, legal, tax, or other advice. This document should not be used as the basis for any investment decision(s) that a reader thereof may be considering. Any potential investor in digital assets, even if experienced and affluent, is strongly recommended to seek independent financial advice upon the merits of the same in the context of their own unique circumstances.*

*This content is not directed at nor intended for use by the MakerDAO community (“MakerDAO”), and may not under any circumstances be relied upon when making an investment decision. The digital assets referenced herein currently face an uncertain regulatory landscape in not only the United States but also in many foreign jurisdictions, including but not limited to the UK, European Union, Singapore, Korea, Japan, and China. For guidance regarding the possibility of said risks, one should consult with his or her own appropriate legal and/or regulatory counsel. Charts and graphs provided within are for informational purposes solely and should not be relied upon when making any decision. The content speaks only as of the date indicated. Any projections, estimates, forecasts, targets, prospects, and/or opinions expressed in these materials are subject to change without notice and may differ or be contrary to opinions expressed by others.*

*The proposed service is subject to risks, including the risk of capital loss, discretionary management risk, credit risk, counterparty risk, currency risk, and liquidity risk.*
