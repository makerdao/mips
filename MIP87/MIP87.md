# MIP87: OUSD Decentralized Rewards

## Preamble

```
MIP#: 87
Title: OUSD Decentralized Rewards
Author(s): @pete
Contributors: @joshfraser
Tags: PSM
Type:
Status: RFC
Date Proposed: 2022-10-04
Date Ratified:
Dependencies: MIP86, MIP81, GUSD PSM, MIP13c3-SP12
Forum URL: https://forum.makerdao.com/t/mip87-ousd-decentralized-rewards/18216

```

## References

* https://forum.makerdao.com/t/mip86-coinshares-usdc-institutional-rewards/17900
* https://forum.makerdao.com/t/mip81-coinbase-usdc-institutional-rewards/17703
* https://mips.makerdao.com/mips/details/MIP13c3SP12#specification
* https://forum.makerdao.com/t/gusd-makerdao-partnership-announcement/18140
* https://makerdao.world/en/learn/MakerDAO/core-principles/
* https://ousd.com/
* https://analytics.ousd.com/
* https://dune.com/queries/1204952
* https://docs.ousd.com/
* https://github.com/OriginProtocol/origin-dollar
* https://vote.ousd.com/#/
* https://docs.ousd.com/security-and-risks/audits
* https://www.kucoin.com/trade/OUSD-USDT
* https://www.gate.io/trade/OUSD_USDT?ref=3018394
* https://curve.fi/factory/9
* https://kyberswap.com/swap/ethereum/usdc-to-ousd
* https://app.1inch.io/#/1/unified/swap/USDC/OUSD
* https://blog.originprotocol.com/presented-by-makerdao-origin-applications-of-dai-in-the-decentralized-sharing-economy-195ca7e20f01
* https://blog.originprotocol.com/pay-with-dai-on-origin-announcing-our-first-stablecoin-integration-43f86d5d7982
* https://blog.originprotocol.com/doo-wan-nam-discusses-origins-partnership-with-makerdao-c89461572cf0
* https://blog.originprotocol.com/urgent-ousd-has-hacked-and-there-has-been-a-loss-of-funds-7b8c4a7d534c
* https://blog.originprotocol.com/origin-dollar-ousd-detailed-compensation-plan-faa73f87442e
* https://github.com/OriginProtocol/security/blob/master/incidents/README.md
* https://blog.originprotocol.com/what-weve-changed-since-the-ousd-attack-5894f2bd77cf
* https://forum.makerdao.com/t/ogn-ousd-mip6-collateral-onboarding-application-origin-protocol-origin-dollar/12205

## Sentence Summary

MIP87 will enable MakerDAO to deploy up to 33% of PSM’s USDC into Origin Dollar (OUSD) to earn constant daily yield without going through a centralized service or giving up custody of the funds. OUSD is the first stablecoin that grows directly in your wallet using yield that is generated from battle-tested DeFi protocols.

## Paragraph Summary

The purpose of this MIP is to put Maker’s idle USDC to work, without leaving DeFi. In its current form, Maker holds USDC and earns nothing; its purchasing power will decrease over time due to inflation now running over 8%. OUSD will allow Maker to reach its investment goals through 2022 and beyond, while maintaining a level of decentralization not currently possible with MIPs 81 or 86, or Gemini’s GUSD PSM.

## Component Summary

**MIP87c1: Background on Origin Protocol**
**MIP87c2: The Origin Dollar**
**MIP87c3: Steps for investing in OSUD**
**MIP87c4: Fees and earning interest**
**MIP87c5: Checking the boxes of MIP13c3-SP12**
**MIP87c6: Aligning with Maker’s Core Principles**
**MIP87c7: The elephant in the room**
**MIP87c8: Our view on MIP81, MIP86, and Gemini GUSD PSM**

## Motivation

MIP87 responds to the ratified Statement of Intent to [Invest in Short-Term Bonds, MIP13c3-SP12](https://mips.makerdao.com/mips/details/MIP13c3SP12#declaration-detail), where MakerDAO governance states that a large portion of the balance sheet is in a stablecoin that does not earn any yield. Origin Protocol strongly believes that OUSD falls within the criteria for investment outlined in MIP13c3-SP12 regarding safety, cost structure, and flexibility.

## Specification / Proposal Details

### MIP87c1: Background on Origin Protocol

Origin Protocol is an established, well-funded, registered business in the Cayman Islands that provides fully decentralized, risk-averse stablecoin yields and custom NFT marketplaces. Origin was founded by Web3 veterans Josh Fraser and Matthew Liu in 2017 and is one of the most venerable projects in the space. Josh and Matthew are joined by the fully doxxed Origin [team](https://www.originprotocol.com/en/team) and community that includes hundreds of thousands of members and open-source contributors. Origin has raised $38.1M from top investors including Pantera, Spartan Group, Foundation Capital, BlockTower Capital, Steve Chen, Garry Tan, and Alexis Ohanian and currently maintains a $100M+ treasury. On the NFT front, Origin has worked with top crypto and mainstream talent, including Paris Hilton, Trevor Jones, Alotta Money, KSHMR, Don Diablo, Inspiration4/SpaceX, 3LAU, and Jake Paul. Much of this information can also be found in [our previous Vault collateral proposal](https://forum.makerdao.com/t/ogn-ousd-mip6-collateral-onboarding-application-origin-protocol-origin-dollar/12205) on the MIP6 forum. Origin has a long and ongoing history of working with the MakerDAO team across multiple initiatives.

### MIP87c2: The Origin Dollar

[OUSD](http://ousd.com/) is a yield-generating stablecoin that rebases positively and daily to distribute yield directly to user wallets in the form of additional units of OUSD. OUSD is fully collateralized and is backed 1-to-1 by DAI, USDC, and/or USDT. Yield is generated by supplying the underlying stablecoins to blue-chip DeFi protocols, such as Compound, Aave, and Curve/Convex. Interest, fees, and incentives are converted into additional units of OUSD and are distributed proportionally to each OUSD holder. OUSD holders maintain full custody and control at all times and can convert back to the underlying stablecoins at any time; there are no lockups, terms, or vesting periods.

Origin is built on top of some of the most battle-tested smart contracts in DeFi. OUSD itself has undergone [multiple security audits](https://docs.ousd.com/security-and-risks/audits) by Trail of Bits, OpenZeppelin, Solidified, and Certora. A retainer was recently signed with OpenZeppelin and the next audit reports should be released by the end of October. Security reviews are now prioritized over new feature development, and multiple engineers are required to review each code change with a detailed checklist before deployment. Origin is also doing deep dives into the exploits of other protocols, making sure the same vulnerabilities don’t exist on Origin contracts. The OUSD source code is publicly available and accessible via the OUSD Github [repository](https://github.com/originprotocol/origin-dollar).

### MIP87c3: Steps for Investing in OUSD

We suggest Maker start with a modest 1% allocation. This can be increased over time as confidence grows. Maker will convert up to 33% PSM USDC into OUSD via any of the following methods:

1. Minting on [OUSD.com](https://ousd.com/swap) (with no slippage or fees)
2. OTC from the Origin Foundation (with zero slippage)
3. Purchasing on CEX ([Kucoin](https://www.kucoin.com/trade/OUSD-USDT) or [Gate](https://www.gate.io/trade/OUSD_USDT?ref=3018394))
4. Swapping on [Curve](https://curve.fi/factory/9) factory pool
5. Swapping on a DEX aggregator ([Kyber](https://kyberswap.com/swap/ethereum/usdc-to-ousd) or [1inch](https://app.1inch.io/#/1/unified/swap/USDC/OUSD))

Maker will store the OUSD in a rebase-capable wallet, such as MetaMask, Ledger, Coinbase Wallet, MEW, etc. If using a multi-sig wallet, Maker will “opt in” to participate in the rebasing by calling OUSD’s rebaseOptIn() function. This can easily be enabled via the OUSD application in Gnosis Safe.

### MIP87c4: Fees and Earning Interest

Aside from the platform fees associated with obtaining OUSD through a CEX or the cost of gas if using OUSD.com or a DEX, there are no ongoing fees to earn interest with OUSD. It is important to note that 10% of all yield generated by OUSD will be set aside and used to buy back OGV as additional rewards for OGV stakers. Once the OUSD is moved into a rebase-capable wallet, it will immediately begin earning interest at whatever the dynamic interest rate is at that time. Maker will continue to earn interest each day it holds OUSD for as long as it sees fit. The current stablecoin allocation and APY, with the protocol fee factored in, can be viewed and verified on-chain at all times on the [OUSD analytics page](https://analytics.ousd.com/).

### MIP87c5: Checking the Boxes of MIP13c3-SP12

Origin Protocol has taken every step to be fully compliant with the laws and regulations of the countries utilizing Origin products. Available upon request are legal documents including Origin’s business licenses, AML policy, Terms of Service, and token legal opinions for the USA and Cayman Islands from reputable counsel.

There are no lockups with OUSD; MakerDAO can unwind its investment at any time, including in stressed market situations, at the speed of the Ethereum blockchain without incurring a loss. A 0.25% exit fee will occur if Maker chooses to use the OUSD Dapp to unwind the OUSD position. This fee is avoidable by using an exchange or AMM. As of 10/04/22, the 30-day trailing APY is 1.9% and the 365-day trailing APY is 9.83%, which is much higher than the MIP13c3-SP12 goal of 50bps after structural costs. Please see [this](https://dune.com/queries/1204952) Dune query for a longer history of OUSD APY.

## MIP87c6: Aligning with Maker’s Core Principles

We believe that this proposal aligns well with the MakerDAO’s five core principles:

*Scientific Governance* - Origin is not looking to skip the line or cut corners with this OUSD proposal. We are striving to play by the rules and go through the entire MakerDAO governance process as it is intended.

*Serving The Underserved* - Origin did not develop OUSD to be exclusive to institutions and accredited investors - it is permissionless and open to anyone without having to go through gatekeepers.

*Sustainable Finance* - The Origin Dollar is built completely on-chain within the EVM ecosystem. Origin is not burning fossil fuels through mining or any other energy-intensive action. OUSD yields generated are not dependent on speculative assets; they are real yields and will always be 100% backed by the largest stablecoins in the world.

*Gradual Decentralization* - Origin aligns with Maker and is actively striving for full decentralization. OUSD stablecoin allocation is voted on weekly by OGV governance token holders and any OGV holder is able to participate regardless of status or jurisdiction.

*Driving Dai Adoption* - Origin has been a supporter of DAI since before the creation of the Origin Dollar. We fully believe in DAI’s success, hence why DAI is one of the three assets backing OUSD. Origin and MakerDAO have a long and ongoing history of working together:

* [Pay with DAI on Origin — Announcing Our First Stablecoin Integration](https://blog.originprotocol.com/pay-with-dai-on-origin-announcing-our-first-stablecoin-integration-43f86d5d7982) (2019)

* [Doo Wan Nam Discusses Origin’s Partnership with MakerDAO](https://blog.originprotocol.com/doo-wan-nam-discusses-origins-partnership-with-makerdao-c89461572cf0) (2019)
* [MakerDAO & Origin: Applications of DAI in the Decentralized Sharing Economy](https://blog.originprotocol.com/presented-by-makerdao-origin-applications-of-dai-in-the-decentralized-sharing-economy-195ca7e20f01) (2020)
* [OUSD launches with DAI as backing collateral](https://blog.originprotocol.com/meet-ousd-the-first-stablecoin-that-earns-a-yield-in-your-wallet-96e7aafaa24e) (2020)

### MIP87c7: The Elephant in the Room

In November 2020, OUSD was exploited for $7M in funds. The DApp at the time included a clear disclaimer warning that the product was in BETA and that the contracts had not been audited. Nonetheless, the Origin treasury opted to cover the losses for these early OUSD holders. A [compensation plan](https://blog.originprotocol.com/origin-dollar-ousd-detailed-compensation-plan-faa73f87442e) was put in place which ended up paying victims above and beyond their losses. This sobering event really galvanized Origin's security processes, and thankfully OUSD has not suffered another security failure since relaunching in January 2021.

A variety of safeguards and precautions have since been implemented to prevent future exploits including constant audits and code reviews. Origin code reviews are incredibly rigorous; we require at least two engineers to review each change with a detailed checklist and we prioritize security reviews over new feature development. We have also formalized an engineering rotation for reviewing attacks on other projects. We published [a full post-mortem on the attack and what we changed afterwards](https://blog.originprotocol.com/what-weve-changed-since-the-ousd-attack-5894f2bd77cf) on our blog.

### MIP87c8: Our View on MIP81, MIP86, and GUSD PSM

Origin is aware of the proposals from Coinbase (MIP81), CoinShares (MIP86), and Gemini (Proposal: GUSD PSM). While these proposals are legitimate, we believe that it is in the best interest of Maker DAO and the Maker DAO community to remain as decentralized as possible with business partners moving forward and with the MIP13c3-SP12 investment, as neither Coinbase, CoinShares, nor Gemini align with Maker’s decentralized principles.

Given the multiple lawsuits brought from and against Coinbase over the past year regarding exchange crashes, securities violations, and TornadoCash sanctions, as well as Coinbase’s new political activism efforts, it would be wise to remain unentangled with Coinbase as a DAO. Gemini has had to make several rounds of layoffs this year, has also had multiple lawsuits brought against them recently, and has not done an audit on GUSD since 2018. While there may not be lawsuits against CoinShares currently, it may not be a great idea to trust the MIP13c3-SP12 investment with CoinShares custody, as earlier this year CoinShares reported large losses tied to their heavy exposure to the UST death spiral. This year has given us multiple reminders of what can go wrong when placing too much trust in centralized counterparties, no matter how safe they may initially seem from the outside. With examples from 3AC, Celsius, and BlockFi, funds are never truly secure when keys are handed to a third party.

With OUSD, Maker will earn a continuous yield and retain full custody of the investment, without exposure to risky or volatile assets or going through a centralized service.

We invite the full MakerDAO community to comment on this MIP as we strive to follow Maker’s decentralized principles and enable financial opportunity for all.