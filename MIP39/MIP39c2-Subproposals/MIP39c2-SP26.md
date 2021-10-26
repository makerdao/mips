# MIP39c2-SP26: Adding Pairwyse Fixed-Rate Core Unit - PAIR-001

## Preamble

```
MIP39c2-SP#: 26
Author(s): Akiva Dubrofsky, Avtar Singh Sehra, Ashwin Tumne
Contributors: Pairwyse Foundation
Tags: core-unit, cu-pair-001, mandate
Status: RFC
Date Applied: 2021-10-22
Date Ratified:
Forum URL: https://forum.makerdao.com/t/mip39c2-sp26-adding-pairwyse-fixed-rate-core-unit/11150
```

## Sentence Summary

The Pairwyse Foundation has implemented an out-of-box solution and deployed a product for the provision of fixed-rate DAI loans of arbitrary term-length via the Pairwyse protocol built atop Maker’s credit and deposit facilities.

## Paragraph Summary

The Pairwyse Foundation has deployed smart contracts and off-chain technology services to enable a DAI financing and investment marketplace that will provision Fixed-Rates on MakerDAO vaults. The Pairwyse Foundation will continue to drive technical development and operational support for the Pairwyse protocol at no cost to MKR holders. The Foundation has secured commitments from a network of independent investors to seed this marketplace and build an open ecosystem and decentralized governance which simply grows by participation. MKR holders are the primary beneficiaries of protocol-generated interest income.

![](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP26/flowchart.png)

## Specification / Proposal Details

### Motivation

#### Pairwyse: Problem and Solution

The Pairwyse protocol specifically solves the [impossible trinity ](https://en.wikipedia.org/wiki/Impossible_trinity)for MakerDAO by creating a fixed-rate marketplace for borrowers and lenders without restricting Maker’s ability to use floating rates and market-driven capital flows to maintain the DAI peg and grow its supply.

![](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP26/trinity.png)

#### How Pairwyse Solves This

Pairwyse smart contracts directly address the asset-liability mismatch problem using a Forward Rate Agreement (FRA) that creates a matched book between lender investment and borrower financing. By wrapping Maker’s credit and deposit instruments, the FRA smart contract mediates a continuous interest rate swap between borrower and lender escrows resulting in a net fixed-rate for both parties.

![](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP26/pairwyse-fra-smart-contract.png)

#### Benefits for MKR Holders

By funnelling existing DAI investors back into a Maker-centric lending marketplace, Pairwyse can provide Maker:

1. a fixed-rate facility to scale RWA and institutional vaults rapidly and sustainably
2. freedom to apply as-dynamic-as-possible governance over DAI peg and supply
3. a means to scale transaction volume and revenue in a DAI neutral manner
4. a channel to funnel DAI holders back into Maker and away from competitors
5. a stronger user network and loyalty through scalable peer-to-peer transactions

![](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/supporting_materials/MIP39c2-SP26/benefits.png)

For more info on Pairwyse, please explore the following links.

#### Links

* [Maker Forum Post](https://forum.makerdao.com/t/discussion-pairwyse-as-a-solution-for-fixed-rates-on-makerdao/10145)
* [Pairwyse AMA (video)](https://forum.makerdao.com/t/ama-fixed-rate-maker-vaults-with-pairwyse/10397/5)
* [Whitepaper](https://github.com/akiva-capital-holdings/pairwyse-smart-contracts/blob/master/doc/Pairwyse_Whitepaper_Early_Preview_Oct.6.2021.pdf)
* [Github](https://github.com/akiva-capital-holdings/pairwyse-smart-contracts)
* [Pairwyse.io](https://pairwyse.io/)

### Core Unit ID

PAIR-001

### Core Unit Name

Pairwyse Fixed-Rate Core Unit

### Core Unit Mandate

1. The Pairwyse Foundation will provide all Pairwyse technologies and operations at no cost to MKR holders. The Pairwyse protocol will only add a nominal admin fee of 30bps per transaction (APY) which can be charged to the borrower’s account or, optionally, to investment banks placing deals on Pairwyse. This fee can be adjusted lower with higher monetary volumes. Maker will realize immediate benefits from increased revenue, TVL, transaction volumes, market share, and P2P networks.

2. Pairwyse is VC-backed and its network will create new liquidity and origination sources for Maker, helping establish a bridge between legacy capital and DAI. This will include creation of new DAI investment and liquidity pools to fund offerings and place them in primary markets.

3. The Pairwyse network will lead an effort to help Maker build a secondary DAI marketplace of investors and borrowers, built over Maker credit and deposit facilities as the settlement layer for all transactions. The Pairwyse Foundation will utilize the transparency of ethereum to the fullest extent possible to build strong pillars for such a marketplace.

4. We will establish a network of investment banks to grow MakerDAO specifically in the fixed rates market segment.

     Pairwyse has partnered with Nivaura who works closely with UK Regulators and has:

   i. Digitized a 7 Billion Dollar debt issuance for the London Stock Exchange.

   ii. Completed various private placements on their platform with DBS Bank

   iii. Digitized a bond transaction with Santander

Pairwyse will be adding 1 more regulated mid-market investment bank to the network shortly. We plan to expand this network going forward.

5. Pairwyse requires no direct effort from Maker for technical development & integration. As such, Pairwyse requires no changes to the Maker protocol to operate.

6. In addition to smart contracts, we will cover the cost of all required oracles, monitoring systems, audits and off-chain services for effective operationalization of Pairwyse. Pairwyse smart contracts have been validated, with another audit pending completion in November by Peckshield.

7. To help with business development, we will white label Pairwyse solutions, allowing MKR holders and enterprising broker-dealers to grow user networks over Maker and DAI. This will enable development of network-driven branding, marketing and distribution assets as necessary to capture market demand and deal-flow for Maker.

8. The Pairwyse Foundation is eager to work with potential collaborators and entrepreneurs interested in developing unique offerings over Maker and DAI. We invite and welcome feedback and collaboration from the Maker community. We will continue to work closely with Maker Open Market, RWA, Growth and Risk CUs, helping them build opportunities and scale.
