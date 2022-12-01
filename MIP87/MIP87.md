# MIP87: OUSD Decentralized Rewards

## Preamble

```
MIP#: 87
Title: OUSD Decentralized Rewards
Author(s): @pete
Contributors: @joshfraser
Tags: PSM
Type: General
Status: Rejected
Date Proposed: 2022-10-04
Date Ratified:
Dependencies: MIP86, MIP81, GUSD PSM, MIP13c3-SP12
Forum URL: https://forum.makerdao.com/t/mip87-ousd-decentralized-rewards/18216
Ratification Poll URL: https://vote.makerdao.com/polling/QmZKwbhJ
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

* https://blog.originprotocol.com/presented-by-makerdao-origin-applications-of-dai-in-the-decentralized-sharing-economy-195ca7e20f01
* https://blog.originprotocol.com/pay-with-dai-on-origin-announcing-our-first-stablecoin-integration-43f86d5d7982
* https://blog.originprotocol.com/doo-wan-nam-discusses-origins-partnership-with-makerdao-c89461572cf0
* https://blog.originprotocol.com/urgent-ousd-has-hacked-and-there-has-been-a-loss-of-funds-7b8c4a7d534c
* https://blog.originprotocol.com/origin-dollar-ousd-detailed-compensation-plan-faa73f87442e
* https://github.com/OriginProtocol/security/blob/master/incidents/README.md
* https://blog.originprotocol.com/what-weve-changed-since-the-ousd-attack-5894f2bd77cf
* https://forum.makerdao.com/t/ogn-ousd-mip6-collateral-onboarding-application-origin-protocol-origin-dollar/12205
* [MakerDao Growth OUSD Tweetstorm](https://twitter.com/makergrowth/status/1559525171186339841?s=21&t=6lfhywpJlmnWRr86KpdfOA) 

## Sentence Summary

MIP87 will enable MakerDAO to deploy 100M of Maker’s idle USDC into the Origin Dollar (OUSD) to earn constant daily yield without going through a centralized service or giving up custody of the funds. 

## Paragraph Summary

MIP87 was written in response to Maker's request for proposals on how to earn revenue on idle capital. In its current form, Maker holds USDC and earns nothing; its purchasing power will decrease over time due to inflation now running over 8%. OUSD is the first stablecoin that grows directly in your wallet using yield that is generated from battle-tested DeFi protocols. It will assist Maker in reaching its investment goals through 2022 and beyond, while maintaining the highest level of decentralization possible.

## Component Summary

**MIP87c1: Background on Origin Protocol**
Defines the background of Origin Protocol since its inception in 2017.

**MIP87c2: The Origin Dollar**
Defines the background and mechanics of the Origin Dollar.

**MIP87c3: Investing in OUSD**
Provides the steps for how Maker can invest in the Origin Dollar.

**MIP87c4: Deal Terms**
Defines the length of time for Maker’s OUSD investment.

**MIP87c5: Legal Structure**
Defines the legality of doing business with Origin.

**MIP87c6: Aligning with Maker’s Core Principles**
Defines how Origin’s decentralization principles align with the MakerDAO ethos.

**MIP87c7: The Elephant in the Room**
Defines how Origin is mitigating risks and addresses the previous exploit.

## Motivation

MIP87 responds to MakerDAO’s request for proposals on how to earn revenue on idle capital. Maker governance states that a large portion of the balance sheet is in a stablecoin that does not earn any yield. Origin Protocol believes that OUSD falls within Maker’s criteria for investment regarding safety, cost structure, and flexibility, all while aligning with Maker’s decentralization principles. 

MIP87 was created in response to the recent interest in generating yield for the DAO; it is significantly different from the unsuccessful [MIP6](https://vote.makerdao.com/polling/QmcWD91Z#vote-breakdown) application to onboard OUSD as DAI collateral. Through tremendous community engagement and involvement, new integrations and partnerships, and multiple additional security features, OUSD has only become stronger since MIP6. Origin recognizes that Maker revenue has fallen 86% since Q2’22, due to a combination of factors, and believes that an investment in OUSD can help Maker reach its investment goals for the endgame plan. 

Maker will earn a continuous yield with OUSD and retain full custody of the investment, without exposure to risky or volatile assets or going through a centralized service. 2022 has given us multiple reminders of what can go wrong when placing too much trust in centralized counterparties, no matter how safe they may initially seem from the outside, as funds are never truly secure when keys are handed to a third party.

## Specification / Proposal Details

### MIP87c1: Background on Origin Protocol

Origin Protocol is an established, well-funded, registered business in the Cayman Islands that provides fully decentralized, risk-averse stablecoin yields and custom NFT marketplaces. Origin was founded by Web3 veterans Josh Fraser and Matthew Liu in 2017 and is one of the most venerable projects in the space. Josh and Matthew are joined by the fully doxxed Origin [team](https://www.originprotocol.com/en/team) and community, which includes hundreds of thousands of members and open-source contributors. Origin has raised $38.1M from top investors including Pantera, Spartan Group, Foundation Capital, BlockTower Capital, Steve Chen, Garry Tan, and Alexis Ohanian, and currently maintains a $100M+ treasury. On the NFT front, Origin has worked with top crypto and mainstream talent, including Paris Hilton, Trevor Jones, Alotta Money, KSHMR, Don Diablo, SpaceX, 3LAU, and Jake Paul. Much of this information can also be found in [our previous Vault collateral proposal](https://forum.makerdao.com/t/ogn-ousd-mip6-collateral-onboarding-application-origin-protocol-origin-dollar/12205) on the [Collateral Onboarding Application forum subcategory](https://forum.makerdao.com/c/collateral-onboarding/co/17). Origin has a long and ongoing history of working with the MakerDAO team across multiple initiatives.

### MIP87c2: The Origin Dollar

[OUSD](http://ousd.com/) is a yield-generating stablecoin that rebases positively to distribute yield directly to user wallets in the form of additional units of OUSD. OUSD is fully collateralized and is backed 1-to-1 by DAI, USDC, and/or USDT. Yield is generated by supplying the underlying stablecoins to blue-chip DeFi protocols, such as Compound, Aave, and Curve/Convex. Interest, fees, and incentives are converted into additional units of OUSD and are distributed proportionally to each OUSD holder daily, or within 24 hours of converting into OUSD. OUSD holders maintain full custody and control at all times and can convert back to the underlying stablecoins at any time. OUSD holders do not need to monitor or do any work to maintain their OUSD position, as OUSD collateral is automatically reallocated each week across the highest yield-generating protocols. By deploying funds into a diversity of strategies, OUSD is able to scale with minimal APY compression even as TVL grows into hundreds of millions of dollars. The current OUSD stablecoin allocation and APY can be viewed and verified in real-time on-chain at all times on the [OUSD analytics](https://analytics.ousd.com/) page.

Origin exclusively deploys on protocols that have been carefully audited and battle-tested with significant capital over an extended period of time. Compound has been audited by [Trail of Bits](https://www.trailofbits.com) and [OpenZeppelin](https://openzeppelin.com/) and formally verified by [Certora](https://www.certora.com/). Aave has been audited by [Trail of Bits](https://www.trailofbits.com),[ OpenZeppelin](https://openzeppelin.com/),[ ConsenSys Diligence](https://consensys.net/diligence/),[ Certik](https://certik.io/),[ MixBytes](https://mixbytes.io/), and[ PeckShield](https://peckshield.com/), and has also been formally verified by[ Certora](https://www.certora.com/). Curve has been audited by [Trail of Bits](https://www.trailofbits.com) and [Quantstamp](https://quantstamp.com/). OUSD itself has undergone multiple security audits by [Trail of Bits](https://github.com/OriginProtocol/security/blob/master/audits/Trail%20of%20Bits%20-%20Origin%20Dollar%20-%20Dec%202020.pdf), [OpenZeppelin](https://github.com/OriginProtocol/security/blob/master/audits/OpenZeppelin%20-%20Origin%20Dollar%20-%20October%202021.pdf), [Solidified](https://github.com/OriginProtocol/security/blob/master/audits/Solidified%20-%20Origin%20Dollar%20-%20Dec%202020.pdf), and [Certora](https://www.certora.com/wp-content/uploads/2022/02/OriginFeb2021.pdf). A retainer was recently signed with OpenZeppelin to provide continuous auditing and the next audit reports should be released by the end of October. Security reviews are always prioritized over new feature development, and multiple engineers are required to review each code change with a detailed checklist before deployment. Origin is also doing deep dives into the exploits of other protocols, making sure the same vulnerabilities don’t exist on Origin contracts. The OUSD source code is publicly available and accessible via the [OUSD Github repository](https://github.com/originprotocol/origin-dollar).

To further mitigate risk, Origin has been actively reducing the OUSD exposure to USDT, as we are aware of the controversy around Tether’s failure to provide a promised audit showing adequate reserves. USDT now makes up 0.1% of our total holdings, with the vast majority 59% being in DAI, and the remaining holdings in USDC.

### MIP87c3: Steps for Investing in OUSD

After speaking with Maker's CES-001 Facilitator and CES-001 members, it has been determined that a new module will have to be built to enable Maker's OUSD investment on-chain. 

The Origin engineering team will collaborate with Maker's Collateral Engineering Services to write the code to build this module, utilizing and referencing Maker code from resources such as [this Github repository](https://github.com/makerdao/dss-direct-deposit/tree/v2) on the D3M structure if necessary. CES-001 will include a function in the module that will allow Maker to send USDC to this contract, and likewise to call that function on-chain at any time to return the USDC to the PSM - without the need to have any off-chain transactions. The proper code will also be included in the module to make the module capable of receiving the daily rebase rewards from OUSD.

OpenZeppelin is currently on retainer to audit all Origin smart contract changes. We would be happy to cover the costs for OpenZeppelin to also review any additional changes that are required to the MakerDAO contracts in order to accept OUSD.

### MIP87c4: Deal Terms

Maker will invest $100M USDC from PSM in OUSD. 

As a token of appreciation for taking a bet on OUSD and to align incentives over the long term, Origin will give MakerDAO up to 3% of the current total supply of OUSD’s governance token, OGV. Origin will provide MakerDAO a payment of 1% of the initial OGV supply (40m OGV) over 4 years on this schedule, should Maker continue and not dissolve or reduce below its $100M OUSD allocation at which point all pending OGV payments described in this section would be removed:
 
**$100m OUSD OGV allocation schedule**
10m OGV after year 1 
0.833333m OGV per month for the 36 months following year 1 
 
If during the first 3 months of initial deployment into OUSD, Maker has an average balance greater than $100M OUSD, there will be a linear increase to the amount of OGV provided to Maker up to a maximum of 3% initial OGV supply (120m OGV) at $600M OUSD allocation. If Maker decides to dissolve or reduce its OUSD position below the initial 3-month average established, the future OGV payment schedule will be recalculated based on the reduced allocation rather than the initial 3-month average.

By holding OGV, Maker will have the opportunity to participate in OUSD governance and will have a say in OUSD's future. Additionally, OGV recognizes that Maker could be a key strategic partner and would like to offer an aligned incentive structure that encourages mutual success.

If the contract in MIP87c3 holds less than $100M OUSD, it will still receive the daily OUSD rebase rewards, but will not be allocated any OGV tokens. 

### MIP87c5: Legal Structure 

Although Origin Protocol operates in a decentralized fashion, Origin has taken every possible step to be fully compliant with the laws and regulations of the countries utilizing Origin products. Available upon request, are legal documents including Origin’s business licenses, AML policy, Terms of Service, and token legal opinions for the USA and Cayman Islands from reputable counsel.

There are no lockups, terms, contracts, conditions, or vesting periods with OUSD - withdrawal control is completely in the hands of the Maker team, Maker governance, and MKR holders. MakerDAO can unwind its investment, including in stressed market situations, at the speed of the Ethereum blockchain, without having to involve the Origin team.	

### MIP87c6: Aligning with Maker’s Core Principles

We believe that this proposal aligns well with MakerDAO’s five core principles:

*Scientific Governance* - Origin is not looking to skip the line or cut corners with this OUSD proposal. We are striving to play by the rules and go through the entire MakerDAO governance process as it is intended.

*Serving The Underserved* - Origin did not develop OUSD to be exclusive to institutions and accredited investors - it is permissionless and open to anyone without having to go through gatekeepers. Origin envisions and strives towards financial opportunity for all.

*Sustainable Finance* - The Origin Dollar is built completely on-chain within the EVM ecosystem. Origin is not burning fossil fuels through mining or any other energy-intensive action. OUSD yields generated are not dependent on speculative assets; they are real yields and will always be 100% backed by the largest stablecoins in the world.

*Gradual Decentralization* - Origin aligns with Maker and is actively striving for full decentralization. The OUSD stablecoin allocation strategy is [weekly voted on](https://vote.ousd.com/#/) by OGV governance token holders and any OGV holder is able to participate regardless of status or jurisdiction.

*Driving DAI Adoption* - Origin has been a supporter of DAI since before the creation of the Origin Dollar. We fully believe in DAI’s success, hence why DAI is one of the three assets backing OUSD. Origin and MakerDAO have a long and ongoing history of working together:

* [Pay with DAI on Origin — Announcing Our First Stablecoin Integration](https://blog.originprotocol.com/pay-with-dai-on-origin-announcing-our-first-stablecoin-integration-43f86d5d7982) (2019)

* [Doo Wan Nam Discusses Origin’s Partnership with MakerDAO](https://blog.originprotocol.com/doo-wan-nam-discusses-origins-partnership-with-makerdao-c89461572cf0) (2019)

* [MakerDAO & Origin: Applications of DAI in the Decentralized Sharing Economy](https://blog.originprotocol.com/presented-by-makerdao-origin-applications-of-dai-in-the-decentralized-sharing-economy-195ca7e20f01) (2020)

* [OUSD launches with DAI as backing collateral](https://blog.originprotocol.com/meet-ousd-the-first-stablecoin-that-earns-a-yield-in-your-wallet-96e7aafaa24e) (2020)

* [MakerDao Growth Tweetstorm on how OUSD generates organic DAI demand](https://twitter.com/makergrowth/status/1559525171186339841?s=21&t=6lfhywpJlmnWRr86KpdfOA) (2022)

### MIP87c7: The Elephant in the Room

In November 2020, OUSD was exploited for $7M in funds. The DApp at the time included a clear disclaimer warning that the product was in BETA and that the contracts had not been audited. Nonetheless, the Origin treasury opted to cover the losses for these early OUSD holders. A [compensation plan](https://blog.originprotocol.com/origin-dollar-ousd-detailed-compensation-plan-faa73f87442e) was put in place which ended up paying victims above and beyond their losses. This sobering event galvanized Origin's security processes, and thankfully OUSD has not suffered another security failure since relaunching in January 2021. We published [a full post-mortem on the attack and what we changed afterwards](https://blog.originprotocol.com/what-weve-changed-since-the-ousd-attack-5894f2bd77cf) on our blog.

A variety of safeguards and precautions have since been implemented to prevent future exploits, including constant audits and code reviews. Origin code reviews are incredibly rigorous; we require at least two engineers to review each change with a detailed checklist and we prioritize security reviews over new feature development. We have also formalized an engineering rotation for reviewing attacks on other projects. Origin is currently one of only six projects to receive a [AAA rating](https://app.insurace.io/coverage/buycovers) on the decentralized insurance protocol, InsurAce.

We invite the full MakerDAO community to comment on this MIP as we strive to follow Maker’s decentralized principles and enable financial opportunity for all.


