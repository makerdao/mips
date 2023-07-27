# MIP38: Core Unit MIP Set Definitions

## Preamble
```
MIP#: 38
Title: Core Unit MIP Set Definitions
Author(s): @juanjuan, @blimpa
Contributors: @elprogreso, @iammeeoh, @gala, @twblack88
Tags: general, core-unit-framework, mip-set, core-unit-framework-mipset, living
Type: Informational
Status: Accepted
Date Proposed: 2021-01-18
Date Ratified: 2021-03-25
Dependencies: MIP39, MIP40, MIP41, MIP4c2-SP10, MIP4c2-SP12
Replaces: n/a
Ratification Poll URL:
Forum URL:
Extra: This MIP has been amended. See [MIP4c2-SP15](https://mips.makerdao.com/mips/details/MIP4c2SP15), and [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1). The original version can be found [here](https://github.com/makerdao/mips/blob/7fdb552680486bbd84dfd84b64980e0999249043/MIP38/mip38.md).
```

## References

N/A

## Sentence Summary

MIP38 is the fundamental MIP in the Core Unit MIP Set. The definitions it contains hold the Core Unit MIP Set together.

## Paragraph Summary

MIP38 is the fundamental MIP in the Core Unit MIP Set, both defining the MIP Set and providing a framework. Core Units ---further defined below--- are the basic workforce divisions that Maker Governance can oversee, manage and prioritize.

MIP38 contains a list intended to keep track of Core Units, their Budgets, and Facilitators. Core Units cannot be modified through this MIP but by using the corresponding dedicated MIP Component in the MIP Set.

## Component Summary

**MIP38c1: Core Unit MIP Set Framework**
This component provides the basic definitions for the Core Unit Framework.

**MIP38c2: Core Unit List**
This component defines the Core Unit List, its format, and its upkeep.

**MIP38c3: Endgame Transition**
This component defines the special rules of Endgame Transition as they apply to all Core Unit related MIPs.

## Motivation

This MIP provides a basic structure based on Core Units, further defined below, capable of supporting the increasing complexity of the DAO and its continuous expansion. This MIP also contains a list that keeps track of existing and offboarded Core Units.

Under its stripped-down, homogeneous nature, this structure avoids the hassle of ad-hoc implementations that are hard to analyze and interface.

## Specification / Proposal Details

### MIP38c1: Core Unit MIP Set Framework

#### Core Unit

**Core Units are the basic workforce divisions that Maker Governance can oversee, manage and prioritize**. Core units are managed by one or more Facilitators (further defined in MIP41) who have access to a Budget (further defined in MIP40) that must be put to use to fulfill the Core Unit's Mandate (further defined in MIP39).

Core Units are established across three MIPs that, at inception, must be ratified simultaneously:

- **MIP39: Core Unit Onboarding and Offboarding Framework**
- **MIP40: Core Unit Budget Framework**
- **MIP41: Core Unit Facilitator Framework**

More precisely, each Core Unit is defined via at least three subproposals:

- One MIP39c2 subproposal establishing the **onboarding** of the Core Unit. Core Unit onboarding, modification and offboarding are further defined in MIP39: Onboarding and Offboarding Framework.
- One or more MIP40c3 subproposals that assign a **budget** to the Core Unit. The Core Unit budget is further defined in MIP40: Budget Framework.
- One or more MIP41c4 subproposals that designate a **Facilitator** for the Core Unit. The Facilitator role is further defined in MIP41: Facilitator Framework.

Collectively, these subproposals define and ---upon approval by Maker Governance--- onboard a Core Unit.

### MIP38c2: Core Unit List

This list contains all of the Core Units approved by Governance, alongside the Core Units' key information:

- Core Unit Mandates.
- Budget Implementation and Breakdown.
- Facilitator name, information, and commitment.
- Relevant Dates.

This list is updated by the MIP Editors when a subproposal from MIP39, MIP40, or MIP41 is ratified.

Offboarded Core Units are archived at the end of the list under *Offboarded Core Units*.

**List Entry Template:**

---

> #### Core Unit Name (Core Unit ID)
>
> - **Summary** - 30 word max summary.
> - **Ratification Date for the Initial Proposal Set** - [yyyy-dd-mm]
>
> ##### Mandate
>
> -  [MIP39c2-SPX](link)
>
> ##### Budget
>
> - **Active Budget** - [MIP40c3-SPX](link)
>     - **Budget Amount** - xxx,xxx DAI / year
>     - **Budget Implementation** - Manual/Simple/Advanced - [MIP40c3-SPX](link)
>     - **Budget Breakdown** - [MIP40c3-SPX internal anchor link](example.com/budget_implementation)
>
> ##### Facilitator
>
> - Awes M. Example - [MIP41c4-SPX](link)
> - Gre T. Example - [MIP41c4-SPY](link)

---

### MIP38c2: Core Unit State


#### Risk (RISK-001)

- **Summary** - Risk Core Unit ensures Maker Protocol can continue to grow safely by having proper risk management parameters and risk mitigation tools applied.
- **Ratification Date for the Initial Proposal Set** - 2021-03-25

##### Mandate

- [MIP39c2-SP35](https://mips.makerdao.com/mips/details/MIP39c2SP35)

##### Active Budget

- **Active Budget** - [MIP40c3-SP56](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP56.md)
    - **Ratification Date** - 2022-02-28
    - **Budget Amount** * A total of 2,760,000 DAI will be streamed to 0xb386Bc4e8bAE87c3F67ae94Da36F385C100a370a starting 2022-03-01 and ending 2023-02-28
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP56 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP56.md#list-of-budget-implementations)
- **MKR Vesting** - [MIP40c3-SP25](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP25.md)

##### Facilitator

- BA Labs, LLC - [MIP41c4-SP41](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP41.md)

---

#### GovAlpha (GOV-001)

- **Summary** - This Core Unit intends to fulfill MakerDAO's requirement of a consistent and well-run governance process managed by elected facilitators in order to remain stable and secure as it grows.
- **Ratification Date for the Initial Proposal Set** - 2021-03-25

##### Mandate

- [MIP39c2-SP3](https://mips.makerdao.com/mips/details/MIP39c2SP3)

##### Budget

- **Active Budget** - [MIP40c3-SP59](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP59.md)
    - **Ratification Date** - 2022-03-28
    - **Budget Amount** - A total of 1,079,793 DAI will be streamed to 0x01D26f8c5cC009868A4BF66E268c17B057fF7A73 starting at 2022-04-01 and ending at 2023-04-01.
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP59 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP59.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP80](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP80.md)

##### Facilitator(s)

- Patrick_J - [MIP41c4-SP37](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP37.md)

---

#### Growth (GRO-001)

- **Summary** - The Growth Core Unit aims to grow the available distribution channels for the Maker protocol by intelligently deploying the human and financial capital given by the DAO, increasing the supply and demand of Dai in the global markets.
- **Ratification Date for the Initial Proposal Set** - 2021-04-27

##### Mandate

- [MIP39c2-SP19](https://mips.makerdao.com/mips/details/MIP40c3SP19)

##### Budget

- **Active Budget** - [MIP40c3-SP70](https://github.com/makerdao/mips/blob/34cce188049e6d6d1adcfcaf0c4fde1c6e4f7085/MIP40/MIP40c3-Subproposals/MIP40c3-SP70.md) --- winning option was "BearMarket"
    - **Ratification Date** - 2022-06-27
    - **Budget Amount** - 4,210,261.40 DAI / twelve months
	- **Budget Implementation** - Simple via dssvest
	- **Budget Breakdown** - [MIP40c3-SP70 internal anchor link](https://mips.makerdao.com/mips/details/MIP40c3SP70#list-of-budget-breakdowns)
- **MKR Vesting** - [MIP40c3-SP23](https://mips.makerdao.com/mips/details/MIP40c3SP23)

##### Facilitator

- MarianoDP has been nominated as Interim Facilitator as part of the offboarding process of @Nadia - [MIP41c5-SP17](https://forum.makerdao.com/t/mip41c4-sp17-facilitator-offboarding-gro-001/20797)

---

#### Sustainable Ecosystem Scaling (SES-001)

- **Summary** - The Sustainable Ecosystem Scaling Core Unit's mission is to sustainably grow the Maker Protocol’s moats by systematically removing barriers between the decentralized workforce, capital, and work.
- **Ratification Date for the Initial Proposal Set** - 2021-05-25

##### Mandate

- [MIP39c2-SP10](https://mips.makerdao.com/mips/details/MIP39c2SP10)

##### Budget

- **Active Budget** - [MIP40c3-SP55](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP55.md)
    - **Ratification Date** - 2022-01-24
    - **Budget Amount** - A total of 5,844,444 DAI will be streamed to 0x87AcDD9208f73bFc9207e1f6F0fDE906bcA95cc6 starting 2022-2-1 and ending 2023-1-31.
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP55 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP55.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP17](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP17.md)

##### Facilitator

- Juan - [MIP41c4-SP10](https://mips.makerdao.com/mips/details/MIP41c4SP10)

---

#### Oracles (ORA-001)

- **Summary** - The Oracle Core Unit is responsible for developing and administrating the Oracle Protocol. Oracles are a critical component of securing the Maker Protocol to ensure positions are sufficiently collateralized.
- **Ratification Date for the Initial Proposal Set** - 2021-06-28

##### Mandate

- [MIP39c2-SP13](https://mips.makerdao.com/mips/details/MIP39c2SP13)

##### Budget

- **Active Budget** - [MIP40c3-SP45](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP45.md)
    - **Ratification Date** - 2022-01-24
    - **Budget Amount**
      - 6,966,069.84 DAI will be transferred to 0x2B6180b413511ce6e3DA967Ec503b2Cc19B78Db6 on 2021-01-28
      - 1,805,407.21 DAI will be transferred to 0x1A5B692029b157df517b7d21a32c8490b8692b0f on 2021-01-28
    - **Budget Implementation** - Manual
    - **Budget Breakdown** - [MIP40c3-SP45 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP45.md#budget-breakdown ))
- **MKR Vesting** - [MIP40c3-SP15](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP15.md)

##### Facilitator

- Niklas Kunkel - [MIP41c4-SP13](https://mips.makerdao.com/mips/details/MIP41c4SP13)

---

#### Dai Foundation (DAIF-001)

- **Summary** - The Dai Foundation Core Unit is responsible for facilitating the dialogue between the Dai Foundation and the Community regarding intellectual property safeguarding, intellectual property usage, and related activities.
- **Date Ratified** - 2021-08-23

##### Mandate

- [MIP39c2-SP17](https://mips.makerdao.com/mips/details/MIP39c2SP17)

##### Budget

- **Active Budget** - [MIP40c3-SP24](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP24.md)
    - **Ratification Date** - 2021-08-23
    - **Budget Amount**
        - 2,138,591 Dai (first year)
        - 1,038,599 Dai (second year)
        - 463,186 Dai (third year)
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP24 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP24.md#budget-breakdown)

##### Facilitator

- Søren Peter Nielsen - [MIP41c4-SP18](https://mips.makerdao.com/mips/details/MIP41c4SP18)

---

#### StarkNet Engineering (SNE-001)

- **Summary** - In a volatile, high gas cost environment, DeFi protocols are attempting to build bridges to L2 protocols to access liquidity and remain competitive. This proposal is a plan to build a DAI bridge over Starknet within 3 months (phase I).
- **Ratification Date for the Initial Proposal Set** - 2021-09-27

##### Mandate

- [MIP39c2-SP19](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP19.md)

##### Budget

- **Active Budget** - [MIP40c3-SP47](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP47.md)
    - **Ratification Date** - 2022-01-24
    - **Budget Amount**
        - One-off setup of DAI 229,792 on February 4th
        - A total of DAI 257,500 (6*42,917) will be streamed to 0x6D348f18c88D45243705D4fdEeB6538c6a9191F1 starting 02-01-2022 and ending 07-31-2022
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP47 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP47.md#list-of-budget-breakdowns)
	- **MKR Vesting** - [MIP40c3-SP79](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP79.md)

##### Facilitator

- @badgerofthe9d - [MIP41c4-SP20](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP40c4-SP20.md)

---

#### Data Insights (DIN-001)

- **Summary** - The Data Insights Core Unit (DIN-001) is responsible for providing free and permissionless datasets based on detailed Maker Protocol history.
- **Ratification Date for the Initial Proposal Set** - 2021-10-25

##### Mandate

- [MIP39c2-SP22](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP22.md)

##### Budget

- **Active Budget** - [MIP40c3-SP64](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP64.md)
    - **Ratification Date** - 2022-04-25
    - **Budget Amount**
      - Unused Incorporation Budget (10,000.00 DAI) and other unused funds from existing monthly budget (est. 45,000.00 DAI) will be returned to the protocol not later than on 2022-05-10
      - A total of 1,083,000.00 DAI will be streamed to 0x7327Aed0Ddf75391098e8753512D8aEc8D740a1F starting 2022-05-01 and ending 2023-04-30 at a rate of 90,250.00 DAI per month
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP34 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP64.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP64 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP64.md#mkr-vesting)

##### Facilitator

- Tadeo - [MIP41c4-SP35](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP35.md)

---

#### Deco Fixed-Rate (DECO-001)

- **Summary** - The Deco Protocol is a fixed-rate protocol designed to be flexible and safe. Its design anticipated that its first and most effective initial application may be on Maker.
- **Ratification Date for the Initial Proposal Set** - 2021-11-22

##### Mandate

- [MIP39c2-SP23](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP23.md)

##### Budget

- **Active Budget** - [MIP40c3-SP35](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP35.md)
    - **Ratification Date** - 2021-11-22
    - **Budget Amount**
        - Initial seed transfer of 465,625 Dai
        - 155,208.33 Dai/month streamed continuously
    - **Budget Implementation** -
    - **Budget Breakdown** - [MIP40c3-SP35 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP35.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP36](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP36.md)

##### Facilitator

- Vamsi Alluri - [MIP41c4-SP24](https://mips.makerdao.com/mips/details/MIP41c4SP24)

---

#### Immunefi Security (IS-001)

- **Summary** - Immunefi's Mission is to systematically improve security for builders, end users, and other stakeholders in the Maker Ecosystem by providing both reactive and proactive security services.
- **Ratification Date for the Initial Proposal Set** - 2021-11-22


##### Mandate

- [MIP39c2-SP24](https://mips.makerdao.com/mips/details/MIP39c2SP24)

##### Budget

- **Active Budget** - [MIP40c3-SP58](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP58.md)
  - **Ratification Date** - 2022-02-28
  - **Budget Amount**   
      * 95,442.5 DAI will be transferred to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 on 2021-12-01
      * 138,000 DAI will be transferred to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 on 2022-03-01
      * A total of 366,562.50 DAI will be streamed to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 starting 2021-12-01 and ending 2022-08-01
      * A total of 207 000 DAI will be streamed to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 starting 2022-03-01 and ending 2022-12-01
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP58 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP58.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP41](https://mips.makerdao.com/mips/details/MIP40c3SP41)

##### Facilitator

- Travin Keith - [MIP41c4-SP25](https://mips.makerdao.com/mips/details/MIP41c4SP25)

---

#### Sidestream Auction Services (SAS-001)

- **Summary** - Sidestream Auction Services's mission is to improve security, transparency, and accessibility of the Maker Protocol by providing and maintaining auction services through open-source development.
- **Ratification Date for the Initial Proposal Set** - 2021-11-22

##### Mandate

- [MIP39c2-SP25](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP25.md)

##### Budget

- **Active Budget** - [MIP40c3-SP43](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP43.md)
    - **Budget Amount** - 282,598.13 Dai (Total Budget Cap spanning a three-month runway)
    - **Budget Implementation** - Simple via dssvest
    - **Budget Breakdown** - [MIP40c3-SP43 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP43.md#list-of-budget-breakdowns)
- **MKR Vesting** - [MIP40c3-SP44](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP44.md)

##### Facilitator

- Daniel Kremerov - [MIP41c4-SP26](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP26.md)

---

#### Strategic Finance (SF-001)

- **Summary** - Strategic Finance Core Unit's mission is to provide financial reporting and analysis to assist the DAO in evaluating the financial health of the protocol to enable strategic decision making and allocate capital more effectively.
- **Ratification Date for the Initial Proposal Set** - 2022-01-24

##### Mandate

- [MIP39c2-SP36](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP36.md)

##### Budget

- **Active Budget** - [MIP40c3-SP69](https://github.com/makerdao/mips/blob/24779f52630df945595594759e4cb4b757f4c177/MIP40/MIP40c3-Subproposals/MIP40c3-SP69.md) --- winning option was "Business as usual"; accordingly, the links below point to the previous budget:
    - **Budget Amount** - A total of 989.004 Dai will be streamed to 0xf737C76D2B358619f7ef696cf3F94548fEcec379 (SF Core Unit Multisig) starting 07/01/22 and ending 07/01/23 at a rate of 82,417 Dai per month.
    - **Budget Implementation** - Simple via dssvest - [MIP40c3SP46 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP46.md#budget-implementation)
    - **Budget Breakdown** - [MIP40c3-SP46 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP46.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP48](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP48.md)

##### Facilitator

- Mark Phillips (@Aes) - [MIP41c4-SP28](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP28.md)

---

#### TechOps (TECH-001)

- **Summary** - TechOps Core Unit mission is to handle the system administration and technical support needs of the Maker Protocol and its Core Units.
- **Ratification Date for the Initial Proposal Set** - 2022-01-24

##### Mandate

- [MIP39c2-SP29](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP29.md)

##### Budget

- **Active Budget** - [MIP40c3-SP53](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP53.md)
      - **Ratification Date** - 2022-01-24
      - **Budget Amount** - 2,246,400 DAI / year
      - **Budget Implementation** - Simple via dssvest - [MIP40c3SP53 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP53.md#budget-implementation)
      - **Budget Breakdown** - [MIP40c3-SP53 internal anchor link](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP53.md#budget-breakdown)
- **MKR Vesting** - [MIP40c3-SP54](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP54.md)

##### Facilitator

- Dumitru Zavrotschi (@dumitru) - [MIP41c4-SP30](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP30.md)
- Simon Kelada-Polupanov (@simonkp) - [MIP41c3-SP31](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposals/MIP41c4-SP31.md)


### Offboarded Core Units


#### Governance Communications (COM-001)

- **Summary** - The Governance Communications Core Unit performs a set of programs that focus on MakerDAO's informational accessibility, stakeholder coordination, and communication practices as a decentralized and public organization.
- **Ratification Date for the Initial Proposal Set** - 2021-07-26
- **Ratification Date for Offboarding** - 2023-01-23
- - **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-com-001&orderDirection=ASC&hideParents=true&)

---

#### Content Production (MKT-001)

- **Summary** - The Content Production Core Unit is responsible for creating, and supporting the creation of written, audio, and visual content that educates audiences on MakerDAO, promotes the work and culture of the ecosystem, and encourages people to use Dai and the Maker Protocol.
- **Ratification Date for the Initial Proposal Set** - 2021-04-27
- **Ratification Date for Offboarding** - 2022-01-24
- **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-mkt-001&orderDirection=ASC&hideParents=true&)


#### MakerDAO Shop (MDS-001)

- **Summary** - The MakerDAO Shop Core Unit helps build brand awareness and goodwill for MakerDAO and Dai by offering branded items (Swag, NFTs, etc) via the official MakerDAO store.
- **Ratification Date for the Initial Proposal Set** - 2021-04-27
- **Ratification Date for Offboarding** - 2022-03-28
- **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-mds-001&orderDirection=ASC&hideParents=true&)

---

#### Real-World Finance (RWF-001)

- **Summary** - This Core Unit is designed to pursue Real-World Asset work and more generally helps MakerDAO to take over the traditional finance world.
- **Ratification Date for the Initial Proposal Set** - 2021-03-25
- **Ratification Date for Offboarding** - 2022-10-24
- **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-rwf-001&orderDirection=ASC&hideParents=true)

---

#### Strategic Happiness (SH-001)

- **Summary** - The SHCU aims to promote community engagement and promote the Maker brand by strategically spreading happiness, positive vibes, and mild but delightful confusion throughout the Maker Community via memes, shitposts, and Bespoke Happiness Airdrops.
- **Ratification Date for the Initial Proposal Set** - 2021-09-27
- **Ratification Date for Offboarding**: - 2022-10-24
- **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-sh-001&orderDirection=ASC&hideParents=true&)

---

#### EVENTS (EVENTS-001)

- **Summary** - Events Core Unit (EVENTS-001) will coordinate and execute MakerDAO branded events at Crypto/DEV Conference locations.
- **Ratification Date for the Initial Proposal Set** - 2022-04-25
- **Ratification Date for Offboarding** - 2022-10-24
- **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-events-001&orderDirection=ASC&hideParents=true&)

---

#### Protocol Engineering (PE-001)

- **Summary** - The Protocol Engineering Team’s responsibility is to extend the functionality of the Maker protocol, assist with the maintenance and operation of existing smart contracts, and ensure the safety and correctness of protocol design and implementation.
- **Ratification Date for the Initial Proposal Set** - 2021-04-27
- **Ratification Date for Offboarding** - 2023-04-30
- **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-pe-001&orderDirection=ASC&hideParents=true)

---

---

#### Development and UX (DUX-001)

- **Summary** - Enabling the best-in-class decentralized decision making for the Maker Protocol by providing a meaningful user experience for all governance participants.
- **Ratification Date for the Initial ProposalSet** - 2021-09-27
- **Ratification Date for Offboarding** - 2023-06-26
- **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-dux-001&orderDirection=ASC&hideParents=true)

---

#### Collateral Engineering Services (CES-001)

- **Summary** - To operationalize collateral management within the Maker Protocol allowing anyone to onboard collateral while ensuring the stability and security of the ecosystem.
- **Ratification Date for the Initial Proposal Set** - 2021-09-27
- **Ratification Date for Offboarding** - 2023-06-19
- **Related Proposals** [see](https://mips.makerdao.com/mips/list?search=$%23cu-ces-001&orderDirection=ASC&hideParents=true)

### MIP38c3: Endgame transition

In case of conflict, this component supersedes other components in the MIP.

To enable the smooth transition to Endgame, Core Unit related MIPs ([MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md)) continue to function temporarily during the Pregame after the Maker Constitution has passed. They are used only to provide budget continuity for existing, approved budgets, and to provide a temporary solution for designating Responsible Facilitators in the Scopes.

New Core Units can no longer be proposed or be approved, new budgets cannot be proposed or approved, and recurring budgets do not automatically renew. The only exception to the rule against recurring budget is the Strategic Finance Budget, which can recur a single time.

All Core Unit roles defined in the Core Unit related MIPs no longer apply, and are superseded by the rules and responsibilities defined in the Maker Constitution or Scope Frameworks. If no direction is given to a Core Unit in the Maker Constitution or the Scope Frameworks, they can fall back on their existing Core Unit mandate, but must also make efforts to support and enable the transition to Endgame, and provide input for how their work can be incorporated in the Scopes.

Over time, all budgets provided from the Core Unit related MIPs will run out, and the Core Units will be transitioned to new budgets and have their work regulated through the Maker Constitution and Scopes. Once the transition is complete and all budgets have run out or been offboarded, and no more payments occur to any Core Unit defined in the Core Unit MIPs, all of the Core Unit MIPs become obsolete and stop having any effect.

