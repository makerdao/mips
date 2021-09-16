# MIP39c2-SP16: Adding Maker Portfolio Core Unit, MPCU-001

## Preamble

```
MIP39c2-SP#: 16
Author(s): PaperImperium
Contributors:
Tags: core-unit, cu-mpcu-001, mandate
Status: RFC
Date Applied: 2021-06-28
Date Ratified:
```

## Sentence Summary

Add a Maker Portfolio Core Unit to build a portfolio of publicly traded, real-world financial assets that the Maker Protocol can be exposed to with the primary goal of diversifying Maker's dollar-equivalent reserves away from just the PSM.

## Paragraph Summary

The Maker Portfolio Core Unit (MPCU) will be tasked with creating and onboarding partnered legal entities that can provide the Maker Protocol with exposure to securities of its choice as a means of diversifying our dollar-equivalent reserves collected by the PSM. The MPCU's role is to find and implement legal, low-effort workarounds for Maker's inability to join legal agreements or pass KYC requirements of counterparties. The MPCU's primary goal is to be a way to drain/refill the PSM facility to minimize the risks of holding undiversified, zero-yielding proxies for dollars in the form of fiat-backed stablecoins (currency only USDC). Secondary goals are to provide regularly scheduled revenue to the protocol and generate goodwill while we integrate with the real-world financial markets.

## Statement of Problem

Core to Maker's success is its commitment to -- and successful maintenance -- of the fixed exchange rate of 1 DAI for 1 USD. Because this commitment is paired with the free flow of capital into and out of DAI, Maker has little direct control over the size of the DAI supply. When capital inflows are large because DAI is desired, the PSM is currently the main method of keeping the fixed rate of exchange at 1 USD per 1 DAI. 

While this mechanically works very well, the PSM has shown an ability to accumulate enough of a dollar-proxy (currently USDC) that can present credit risks and negative PR. The Maker Portfolio Core Unit (MPCU) will facilitate the diversification of those holdings, so that when the PSM has excess liquidity or so much of a single asset as to present risks to the protocol, those holdings can be deployed into actual dollars instead of just on-chain proxies. Alternatively, if the PSM is in need of an additional liquidity buffer to defend the exchange rate, real-world dollars and dollar-equivalents can be wound down to refill the PSM.

## Strategy

The MPCU will utilize simple legal structures to give Maker exposure to assets it would hold were it a legal entity.

Initially, this will take the form of creating charitable trusts, which will only be allowed to operate in a prescribed manner. These trusts will be a "captive" customer that Maker can create and establish rules for, ensuring that interests are aligned and minimal monitoring is required.

The initial approach is that for each lot of securities, a trust will be formed with a charity named as the beneficiary. That trust will be allowed to borrow from a vault created for a token only that trust will have, or some similar structure. The trust then takes the DAI, converts to USD on the open market, and proceeds to have a broker purchase securities for the trust. The stability fee for the vault will be less than the yield on the security, thereby leaving some profit for the trust, which will then be donated in full to a named charity, removing any tax liability. The trust will be able to pass KYC requirements to purchase securities through standard brokerages, but will not be required to KYC Maker in turn through the characterization of its financing through one of several possible methods (just as Nexo does not need to send Maker a 1099 or perform KYC).

Each trust will only purchase one batch of securities, and proceed to hold them to maturity, providing both Maker and the charity beneficiary with predicable, regularly scheduled income. It should also generate good PR and general goodwill through Maker's charitable givings. Any subsequent desired exposure by Maker -- even to the same securities -- will likely be done through a new trust, as the instructions are unlikely to be alterable after its creation.

This strategy represents only the initial phase of the MPCU, and will evolve as new legal opportunities present themselves ([such as this one in Nebraska](https://nebraskalegislature.gov/FloorDocs/107/PDF/Slip/LB649.pdf)) and as Maker grows confident it can invest in higher-yielding -- but still very safe -- securities.

The issuance and sale of DAI on the open market at scale should exert downward pressure on the peg, thereby indirectly transferring liquidity from the PSM to the securities purchased by Maker's charitable trusts. Even if liquidity is not removed from the PSM, the use of these trusts should lower the amount of liquidity that would have otherwise entered the PSM.

It should be noted that this structure is unlikely meet the needs of the market being addressed by the RWF unit or the RWA Company, which require much more oversight and complexity to both monitor the collaterals, satisfy borrower demand, and minimize tax events for profit-seeking entities. The MPCU will only oversee investments directed at publicly traded securities, and will not include private securities in its mandate. There is no envisioned overlap between MPCU and RWF in terms of universe of investable assets. 

**The primary focus of the MPCU is to reduce risks associated with undiversified reserves holdings, with secondary focus on yield, and tertiary focus on charitable contributions**

## Unit Structure

This team will initially include a single individual (the facilitator). No further full or part-time employees are currently planned. Legal and accounting expertise will be outsourced to full-time practitioners. **This CU will not handle invested funds or control investment decisions, as that would centralize too much control over large sums of money.**

## Core Unit Mandate

**Identify Investments**

The MPCU will identify publicly traded securities that are appropriate, profitable, and possible for Maker to finance. This largely requires reading financial statements, reports, and research relevant to the universe of investable assets (publicly traded securities). Promising collateral will be recommended through the collateral onboarding process, including asking for a standard assessment from the Risk CU. A general summary of risks will also be presented by MPCU at each onboarding proposal, but it is important that a party unconnected to onboarding a collateral provides an assessment to the MakerDAO community.

**Initiate Investments**

The MPCU will ensure that the appropriate structure is used for charitable trusts, including but not limited to ironclad instructions on the trust's purchase and borrowing, naming the charity or charities requested by MakerDAO, aiding the corporate trustee with choosing a custodian for financial assets, and generally making sure documents are drafted and the trust established so that it can buy and hold the desired investment. This is expected to be fairly inexpensive, routine, and outsourced to professional legal experts and managed by professional trustees.

**Monitor and Report**

The MPCU will provide regular updates to MakerDAO on the status of charitable trusts over their expected lifetime. MPCU will also periodically confirm that the appropriate collateral asset is still held in the trust's account. General data and statistics will also be provided whenever possible, so that MakerDAO can track the revenues, TVL, and charitable giving of the charitable trusts it establishes.

## Related Documents
[MIP40c3-SP22: Modify Maker Portfolio Core Unit Budget](https://forum.makerdao.com/t/mip40c3-sp15-modify-maker-portfolio-core-unit-budget/8998)
[MIP41c4-SP17: Facilitator Onboarding, Maker Portfolio Core Unit](https://forum.makerdao.com/t/mip41c4-sp13-facilitator-onboarding-maker-portfolio-core-unit/8997)
