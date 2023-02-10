# MIP55c3-SP10: Pioneer a DeFi-Native Dataset for Modelling Sentiment-driven Dynamics and Risks

## Preamble

```
MIP55c3-SP#: 10
Author(s): @pvl
Contributors:
Tags: spf
Status: Withdrawn
Date Proposed: 2022-09-16
Date Ratified: N/A
Amount Requested: 50,000 DAI
Recipient Address: 0x6ebB1A9031177208A4CA50164206BF2Fa5ff7416
Forum URL: https://forum.makerdao.com/t/mip55c3-sp10-pioneer-a-defi-native-dataset-for-modelling-sentiment-driven-dynamics-and-risks/17942
Ratification Poll URL:
Extra: This subproposal was withdrawn by its author and replaced by [MIP55c3-SP11](https://github.com/makerdao/mips/blob/master/MIP55/MIP55c3-Subproposals/MIP55c3-SP11.md).
```

## Sentence Summary

This SPF will fund the creation of the first DeFi-focused dataset to train models detecting DeFi community sentiment/narratives. It will be used to augment and extend the Risk CU's (RISK-001's) modelling to discover and predict currently hidden risks.

## Paragraph Summary

The Risk CU's modelling currently covers only part of market risks. Maker needs to augment the EMH-based risk model in use with a model of market sentiment and narratives and its mutual bidirectional interaction with on-chain activity. This SPF will fund the creation of the first DeFi-focused dataset for training sentiment/narrative detection models. It's part of the web3-native intelligence program.

## Motivation

This SPF will fund creation of the first DeFi-focused dataset for training sentiment/narrative detection models that will be used to augment and extend the Risk CU's modelling with products like:
* An early warning system for events like Black Thursday: be aware in advance => get prepared, *the UST case*.
* Simulations and stress-testing: [Chaos Labs](https://forum.makerdao.com/t/chaos-labs-community-update-call-july-08-at-14-30-utc/16406) are building a simulation environment to run Maker’s software against agents and scenarios. Currently they're built around a set of theoretical premises. Models of crypto community sentiment/narratives learned from real-life data could be used to build true to life agents and scenaries.
* Products from pp 1, 2 could be wrapped into products for other web3 stakeholders: DAOs, users, investors. Could be serious competition for [Gauntlet](https://gauntlet.network)’s business, [which is suboptimal for web3](https://forum.makerdao.com/t/towards-web3-native-intelligence-tools-for-protocol-comprehension-and-stewardship/15642/4).
* If open sourced, datasets and models could also be a valuable public good, from which the whole web3 community could benefit => PR/reputation benefit for Maker.

The Risk CU's modelling currently covers only part of market risks. Maker needs to augment the EMH-based risk model in use with a model of market sentiment and narratives and its mutual bidirectional interaction with on-chain activity.

---

The key assumption at the heart of [the Risk CU’s model](https://www.youtube.com/watch?v=blpPCgLmUaM&t=528s) is the [Efficient-market hypothesis](https://en.wikipedia.org/wiki/Efficient-market_hypothesis) (EMH). It implies that an asset price is objectively determined by the entirety of available information about the asset and its value (in the form of present discounted value). The market is rational and each price movement is the reflection of the new information unpredictably emerging. Hence we’re modelling it as a random process with Monte Carlo simulations.

However, [Nobel-winning research by Robert Shiller](https://www.nobelprize.org/uploads/2018/06/shiller-lecture.pdf) shows that irrational factors like sentiment and narratives play an equally important role in asset pricing. In fact, [the Nobel Prize in Economics '13](https://www.nobelprize.org/prizes/economic-sciences/2013/press-release/) was shared by Shiller and Eugene Fama, the creator of the Efficient-market hypothesis. This underscores that EHM- and sentiment/narrative-driven asset pricing are two complimentary mechanisms and market risk modelling should be handled accordingly.

The most obvious example of irrational exuberance on financial markets are bubbles like the one happened around UST — all information about its model was open, yet the bubble emerged and then collapsed. Wild price volatility not explainable by objective economic factors, including crypto winters, happening to more mature assets like ETH is also an example of risks not covered by risk models based on the Efficient-market hypothesis.

---

This project is a continuation of the work on web3-native intelligence. 

[At the previous step I showed](https://forum.makerdao.com/t/towards-web3-native-intelligence-tools-for-protocol-comprehension-and-stewardship/15642) that the UST stablecoin crash in May could be predicted by significant downward movement in sentiment towards UST starting in mid-April resulting in the loss of confidence => panic => death spiral.

Now the goal is to improve model's accuracy by creating the first DeFi-focused dataset to train language models for analysis of the DeFi community sentiment.

## Special Purpose Fund Name

Pioneer a DeFi-Native Dataset for Modelling Sentiment-driven Dynamics and Risks

## Special Purpose Fund Scope & Work Credentials

This SPF will fund the next step of the web3-native intelligence program as follows:
1. Assemble the first DeFi-focused corpus of English tweets for language model pre-training.
2. Pretrain BERTweet_large on the DeFi corpus from step 1.
3. Build a software pipeline necessary for dynamic adversarial data collection (DADC).
4. Run around 20 (depending on intermediate results) small DADC rounds.

### Funding Breakdown

Fund the steps from the previous paragraph as follows:
1. 5k DAI
2. 5k DAI
3. 8k DAI
4. :
4.1 8k DAI after DADC round 5;
4.2 8k DAI after DADC round 10;
4.3 8k DAI after DADC round 15;
4.4 8k DAI after the last DADC round.
 
### Special Purpose Fund Details

```
Official Contact or Group Name: pvl
Contact Email/Handle: @pvl
Date Added: 2022-09-16
Total Amount: 50,000 DAI
Wallet Address: 0x6ebB1A9031177208A4CA50164206BF2Fa5ff7416
Comptroller signers: @Patrick_J, TBD
```
