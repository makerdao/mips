# MIP10c17: Subproposal for List of Feeds

## Preamble
```
MIP10c17-SP#: 
Author(s):
Contributors:
Type: Process Component
Tags: oracles
Status:
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
```

## Sentence Summary

MIP10c17 is the canonical record of the list of feeds.

# Specification

### Introduction

## Number of Feeds
- **Dark Feeds =** 15
- **Light Feeds =** 9
- **Total Feeds =** 24

## Glossary

- **Feed:** Bots run by individuals and institutions that push prices to the Oracles
- **Dark Feed:** An anonymous individual or institution running a Feed
- **Light Feed:** A public institution running a Feed
- **Type:** Feeds can be classified as either Dark or Light Feeds
- **Date Added:** The date a Feed began operating
- **Organization:** The institution running a Light Feed
- **Feed Stipends:** The monthly stipend Feeds are paid for their service
- **MIP:**  Maker Improvement Proposal to trace the origin of Feed onboarding
- **Governance Vote:** Ratified governance proposals to onboard Feeds to confirm authorization

## Template Spec

|     Feed    |       Type     |  Date Added | Organization | Feed Stipend |    MIP/Subproposal    |
| :---------- | :------------- | :---------- | :----------- | :----------- | :-------------------- |
| < address > | < Light/Dark > | < yyyy-mm > |   < name >   |  < amount >  |  < link >             |


## Feed List

**Dark Feeds**   

| Feed | Type | Date Added | Feed Stipend | MIP/Subproposal |
|----|----|----|----|----|
| 0x16655369Eb59F3e1cAFBCfAC6D3Dd4001328f747 | Dark/16 | 2018-01 | 1000 DAI | N/A |
| 0x4b0E327C08e23dD08cb87Ec994915a5375619aa2 | Dark/4B | 2017-08 | 1000 DAI | N/A |
| 0x4f95d9B4D842B2E2B1d1AC3f2Cf548B93Fd77c67 | Dark/4F | 2018-06 | 1000 DAI | N/A |
| 0xfeEd00AA3F0845AFE52Df9ECFE372549B74C69D2 | Dark/7F | 2017-09 | 1000 DAI | N/A |
| 0x83e23C207a67a9f9cB680ce84869B91473403e7d | Dark/83 | 2017-12 | 1000 DAI | N/A |
| 0x8aFBD9c3D794eD8DF903b3468f4c4Ea85be953FB | Dark/8A | 2017-11 | 1000 DAI | N/A |
| 0x8de9c5F1AC1D4d02bbfC25fD178f5DAA4D5B26dC | Dark/8D | 2017-11 | 1000 DAI | N/A |
| 0xA8EB82456ed9bAE55841529888cDE9152468635A | Dark/A8 | 2017-08 | 1000 DAI | N/A |
| 0xaC8519b3495d8A3E3E44c041521cF7aC3f8F63B3 | Dark/AC | 2017-06 | 1000 DAI | N/A |
| 0xC9508E9E3Ccf319F5333A5B8c825418ABeC688BA | Dark/C9 | 2017-08 | 1000 DAI | N/A |
| 0xd94BBe83b4a68940839cD151478852d16B3eF891 | Dark/D9 | 2018-06 | 1000 DAI | N/A |
| 0xDA1d2961Da837891f43235FddF66BAD26f41368b | Dark/DA | 2017-08 | 1000 DAI | N/A |
| 0xE6367a7Da2b20ecB94A25Ef06F3b551baB2682e6 | Dark/E6 | 2017-12 | 1000 DAI | N/A |
| 0xFbaF3a7eB4Ec2962bd1847687E56aAEE855F5D00 | Dark/FB | 2017-12 | 1000 DAI | N/A |



**Light Feeds**

| Feed | Type  | Date Added | Organization | Feed Stipend | MIP/Subproposal |
|----|----|----|----|----|----|
| 0x130431b4560Cd1d74A990AE86C337a33171FF3c6 | Light |  | Argent | 1000 DAI  | N/A |
| 0x3CB645a8f10Fb7B0721eaBaE958F77a878441Cb9 | Light |  | MyCrypto | 1000 DAI  | N/A |
| 0x60da93D9903cb7d3eD450D4F81D402f7C4F71dd9 | Light | 2019-11 | Gnosis | 1000 DAI  | N/A |
| 0x71eCFF5261bAA115dcB1D9335c88678324b8A987 | Light | 2020-07 | Etherscan | 1000 DAI  | [MIP10c14-SP3](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c14-Subproposals/MIP10c14-SP3.md)  |
| 0x75ef8432566A79C86BBF207A47df3963B8Cf0753 | Light | 2019-11 | DyDx | 1000 DAI  | N/A |
| 0x77EB6CF8d732fe4D92c427fCdd83142DB3B742f7 | Light | 2020-07 | Gitcoin | 1000 DAI  | [MIP10c14-SP4](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c14-Subproposals/MIP10c14-SP4.md) |
| 0x8ff6a38A1CD6a42cAac45F08eB0c802253f68dfD | Light | 2020-07 | Infura | 1000 DAI  | [MIP10c14-SP2](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c14-Subproposals/MIP10c14-SP2.md) |
| 0xD09506dAC64aaA718b45346a032F934602e29cca | Light | 2020-07 | Kyber | 1000 DAI  | [MIP10c14-SP1](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c14-Subproposals/MIP10c14-SP1.md) |
| 0xD27Fa2361bC2CfB9A591fb289244C538E190684B | Light | 2019-11 | 0x | 1000 DAI  | N/A |
| 0xa580BBCB1Cee2BCec4De2Ea870D20a12A964819e | Light | 2019-11 | Maker | 1000 DAI  | N/A |
| 0xd72BA9402E9f3Ff01959D6c841DDD13615FFff42 | Light |  | Defisaver | 1000 DAI  | N/A |
