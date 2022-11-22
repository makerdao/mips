# MIP55c3-SP11: Pioneer DeFi-focused language dataset for the benefit of Risk modelling & GovComms

## Preamble

```
MIP55c3-SP#: 11
Author(s): @pvl
Contributors:
Tags: spf
Status: RFC
Date Proposed: 2022-11-15
Date Ratified: (yyyy-mm-dd)
Amount Requested: 50,000 DAI
Recipient Address: 0x6ebB1A9031177208A4CA50164206BF2Fa5ff7416
Forum URL: https://forum.makerdao.com/t/mip55c3-sp11-pioneer-defi-focused-language-dataset-for-the-benefit-of-risk-modelling-govcomms/18802
```

## Sentence Summary

Develop a DeFi-focused dataset for the purpose of fine-tuning language models, which, if integrated, will result in millions of dollars of additional value from more accurate Risk estimates as well as improving Governance Communications.

## Paragraph Summary

Build the industry's first DeFi-focused dataset. The data will be used to tune a Large Language Model (BLOOM). A fine-tuned model integrated into Maker's pipelines will help gradually relax current Risk CU modeling assumptions, thereby delivering millions of dollars of missed value for the DAO & Maker users. A fine-tuned model may also provide opportunities to expand and improve on written work performed by the GovComms CU. Furthermore, a DeFi-focused dataset offers extensibility across other DAOs.

## Motivation

This SPF will fund the creation of industry first DeFi-focused dataset, which will be used to fine-tune general purpose Large Language Models. Such model will be used for the benefit of Maker's Risk Modelling and Governance Communications.

I. The new model will augment and extend current Risk CU's Model.

**The goal is to turn Risk CU Model's conservative CONSTs into variables.** *(see appendix for details)*

Risk premium estimates could be reduced by relaxing the current conservative CONSTs when replacing input values with values learnt from real life data =>

* Lower stability fees => better terms for protocol users => growth opportunities => more revenue from fees;
* Higher debt ceiling => higher capital efficiency => more revenue;
* Lower surplus buffer => higher capital efficiency => less DAI frozen, more DAI for DAO purposes.

For instance, *if ETH-A Jump Severity goes from 50% to 45% and Jump Frequency from 2 to 1 per year*:

* *Risk Premium* at current Debt Exposure goes *0.5% -> 0.2%*;
* *Maximum Debt Ceiling* (Risk Premium = 10%) goes *$410M -> $570M*;
* *Capital at Risk* goes *$958,217 -> $383,287*.

II. A Large Language Model fine-tuned on this dataset for DeFi sentiment analysis could also be integrated into GovComms' pipeline for the purposes of improved topic identification and research ([more on the need covered here](https://forum.makerdao.com/t/wanted-researcher/18561)) as well as social sentiment analysis.

III. As the industry's first DeFi-focused language model, it opens up a number of collaboration opportunities with other DAOs and DeFi protocols, who can benefit from better identifying risk, improving marketing techniques, and preserving brand reputation.

I'm collaborating with Risk CU and GovComm CU on the proposal.

---

This project is a continuation of the work on *web3 native* intelligence.

[In the previous proof-of-concept step I showed](https://forum.makerdao.com/t/towards-web3-native-intelligence-tools-for-protocol-comprehension-and-stewardship/15642) that the UST stablecoin crash in May could have been predicted by significant downward movement in UST sentiment beginning mid April, which resulted in the gradual loss of confidence => panic => bank run => death spiral supported by the mechanics of the protocol.

However, DeFi conversation on Twitter/Discord/Discourse is full of domain-specific slang, nuances, deep context. A general purpose model must natively understand these details to output the most adequate results. Moreover, the SemEval-2017-4A dataset, used for fine-tuning on the previous step, contains only 50k tweets.

A bigger and more native fine-tuning dataset will improve accuracy of our model for sentiment detection and summarisation tasks.

## Special Purpose Fund Name

Pioneer DeFi-focused language dataset for the benefit of Risk modelling & GovComms

## Special Purpose Fund Scope & Work Credentials

This SPF will fund the next step of the *web3 native* intelligence program as follows:
1. Assemble the first DeFi-focused dataset for language model pretraining (3M tweets).
2. Use BERTweet_large (355M parameters) vs BERTweet_base (135M parameters) and further pretrain it on the DeFi corpus from step 1.
3. Build integration between [LabelStudio](https://labelstud.io) and [Dynabench](https://dynabench.org/) platform via [Mephisto library](https://mephisto.ai).
4. Run around 20 small dynamic adversarial data collection rounds.

### Funding Breakdown

Fund the steps from the previous paragraph as follows:
1. 6,000 DAI
2. 6,000 DAI
3. 6,000 DAI
4. 8,000 DAI per each of 5 round slots out of 20 DADC rounds:
 4.1 8000 DAI after round 5;
 4.2 8000 DAI after round 10;
 4.3 8000 DAI after round 15;
 4.4 8000 DAI after round 20.

### Special Purpose Fund Details

```
Official Contact or Group Name: @pvl
Contact Email/Handle: @pvl
Date Added: (yyyy-mm-dd)
Total Amount: 50,000 DAI
Wallet Address: Public wallet address of Multi-Sig.
Comptroller signers: @Patrick_J, TBD
