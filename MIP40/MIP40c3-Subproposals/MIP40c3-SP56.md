# MIP40c3-SP56: Modify Core Unit Budget, RISK-001

## Preamble

```
MIP40c3-SP#: 56
Author(s): Primož Kordež (@Primoz)
Contributors:
Tags: core-unit, cu-risk-001, budget, dai-budget, active
Status: Accepted
Date Applied: 2022-01-12
Date Ratified: 2022-02-28
Ratification Poll URL: https://vote.makerdao.com/polling/QmfKoMca
Forum URL: https://forum.makerdao.com/t/mip40c3-sp56-modify-core-unit-budget-risk-001/12587
```

## Sentence Summary

MIP40c3-SP56 modifies the DAI budget for Core Unit RISK-001: Risk, replacing [MIP40c3-SP13](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP13.md).

## Paragraph Summary

MIP40c3-SP56 modifies the DAI budget for Core Unit RISK-001: Risk. The proposed monthly budget for the Risk Core Unit is 230,000 DAI per month. The document contains the following: (i) why we are proposing a modified budget, (ii) past work review, (iii) a breakdown of the proposed budget, and (iv) comparing the previous budget to the proposed budget modifications.

## Specification

### Motivation

The proposed budget will be used for the following expenses: (i) compensation for the contributors of the Risk Core Unit, (ii) necessary tooling costs and subscriptions, (iii) operational costs, (iv) contingency funds, and (v) future grant payments.

MIP40c3-SP56 represents a 26% increase (182,000 DAI per month to 230,000 DAI per month) from the previous [MIP40c3-SP13](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP13.md). The Risk Core Unit currently consists of 8 full-time contributors and one grantee. We are planning on increasing our workforce by an additional 3 contributors in the short to medium term.

The Risk Core Unit has been financing Makerburn through a grant program since June 2021. The [Makerburn](https://makerburn.com/#/) website has become a must-have tool for analyzing MakerDAO performance and other on-chain related events. The Risk Core Unit and Makerburn have collaborated on several tasks in the past, and there are a lot of synergies between the [Maker Risk Dashboard](https://maker.blockanalitica.com/) and the [Makerburn](https://makerburn.com/#/) website.

We are now joining forces on a team level with Makerburn, who has been a valuable community member for over two years. We believe that Makerburn’s dedication to MakerDAO should be rewarded by offering him a similar package to what other core MakerDAO contributors currently enjoy. We will also make sure he is incentivised through the Risk Core Unit’s MKR budget.

At present, the Risk Core Unit is composed of two subdivisions, (i) a Development Team, and (ii) a Risk Analyst Team. With Makerburn onboard, the Development Team consists of 4 full-time equivalent Developers and 1 full-time equivalent Data Scientist. This team is maintaining the MakerDAO Risk Dashboard, and from now on, also the Makerburn website. The other part of the Risk Core Unit, the Risk Analyst Team, consists of 3 full-time equivalent Analysts and myself. The Analyst Team covers evaluations and all parameter-related community discussions and proposals. We will soon be looking for one quantitative analyst (job offer coming soon) and one more full-time equivalent Analyst. The Risk Core Unit therefore plans to have 11 full-time equivalent contributors in the short to medium term.

### Core Unit ID

RISK-001

### Work Review

### Our work review for the past few months can be accessed here:

* [Risk Core Unit Month in Review: December 2021](https://forum.makerdao.com/t/risk-core-unit-month-in-review-december-2021/12436)
* [Risk Core Unit Month in Review: November 2021](https://forum.makerdao.com/t/risk-core-unit-month-in-review-november-2021/11914)
* [Risk Core Unit Month in Review: October 2021](https://forum.makerdao.com/t/risk-core-unit-month-in-review-october-2021/11352)
* [Risk Core Unit Month in Review: September 2021](https://forum.makerdao.com/t/risk-core-unit-month-in-review-september-2021/10659)
* [Risk Core Unit Month in Review: August 2021](https://forum.makerdao.com/t/risk-core-unit-month-in-review-august-2021/10106)

We also document relevant topics and discussions that the Risk Core Unit participates in through our [Risk Core Unit Forum Archive](https://maker.blockanalitica.com/forum-archive/).

### List of Budget Implementations

This budget implementation uses a DssVest Budget Implementation.

* Payment: based on predetermined monthly budget
* Asset type: DAI
* Address: 0xb386Bc4e8bAE87c3F67ae94Da36F385C100a370a
* Payment Frequency: Accrued per block linearly through DssVest
* A total of 2,760,000 DAI will be streamed to 0xb386Bc4e8bAE87c3F67ae94Da36F385C100a370a starting 2022-03-01 and ending 2023-02-28

### List of Budget Breakdowns

#### Team

* Facilitator: @Primoz
* Analysts: @rema @monet-supply @Sean +1 joining
* Developers: @Miha @Tomaz @Twigmaester @Makerburn
* Data Scientist: @Josolnik
* Quantitative analyst: +1 joining

#### Tooling

* AWS
* Infura
* Subscriptions to off-chain data APIs (Cryptocompare, Nansen, etc…)
* Sentry
* Github
* Domains

#### Operations

* Company administration
* Flights, conferences, etc.
* Legal costs

#### Grants

The grant program with Makerburn will be terminated as Makerburn will be joining the Risk Core Unit. Going forward, we will be looking to provide grants to potential new hires or for various specific one-time tasks.

#### Contingencies

We will continue to keep a contingency buffer of 20,000 DAI, as previously specified in [MIP40c3-SP13](https://forum.makerdao.com/t/mip40c3-sp13-modify-core-unit-budget-risk-001/8034). We have found this to be very useful when growing the team and covering unexpected costs.

#### Funding Process

The team uses a company to distribute funds and signs contracts with its contractors (full-time or part-time workers). This provides contractors additional legal security and also enables the team to make payments in fiat (for infrastructure, administrative and operational costs).

### Budget Breakdown

Proposed monthly budget for the Risk Core Unit is 230,000 DAI.

Breakdown:

* Team Costs 76% / 175,000 DAI (previously 127,000 DAI)
* Tooling 3% / 7,500 DAI (previously 5,000 DAI)
* Operations & Legal 6% / 12,500 DAI (previously 5,000 DAI)
* Grants 6% / 15,000 DAI (previously 25,000 DAI)
* Contingencies 9% / 20,000 DAI (no change)
