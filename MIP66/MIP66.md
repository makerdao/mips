# MIP66: Pairwyse Licensure

## Preamble

```
MIP#: 66
Title: Pairwyse Licensure
Author(s): [Akiva Dubrofsky](mailto:akiva@akiva.capital), [Ashwin Tumne](mailto:ashwin@akiva.capital), [Avtar Sehra](mailto:avtar@nivaura.com)
Contributors: [Akiva Dubrofsky](mailto:akiva@akiva.capital), [Ashwin Tumne](mailto:ashwin@akiva.capital), [Avtar Sehra](mailto:avtar@nivaura.com)
Tags: pairwyse, fixed-rate, open-source, patent-non-assertion, formal-submission
Type: General
Status: RFC
Date Proposed: 2022-03-02
Date Ratified: <yyyy-mm-dd>
Dependencies: <List of dependent MIPs>
Forum URL: https://forum.makerdao.com/t/mip66-pairwyse-licensure/13554
```

**References**

* [Pairwyse.io](https://pairwyse.io/)
* [Whitepaper](https://github.com/akiva-capital-holdings/pairwyse-smart-contracts/blob/master/doc/Pairwyse_Whitepaper_Early_Preview_Oct.6.2021.pdf)
* [Github](https://github.com/akiva-capital-holdings/pairwyse-smart-contracts)
* [Pairwyse AMA (video)](https://forum.makerdao.com/t/ama-fixed-rate-maker-vaults-with-pairwyse/10397/5)
* [Pairwyse Stress Test Demo](https://drive.google.com/file/d/13dHRjEinAypnfhiidbI1TyPzj_ELInRF/view?usp=sharing)
* [Pairwyse Fixed-Rate IP](https://patentscope.wipo.int/search/en/detail.jsf?docId=JP328095640&_fid=JP328095640)

**Sentence Summary**

The Pairwyse Foundation has implemented an out-of-box smart contract solution and deployed software products for provisioning fixed-rate DAI loans of arbitrary term-length via the Pairwyse protocol built atop Maker’s credit and deposit facilities.

**Paragraph Summary**

Pairwyse is an active protocol and blueprint for creating bespoke fixed-rate DAI lending and investment Agreements on MakerDAO between borrowers and lenders. We wish to thank the Maker Community for its previous feedback concerning the negative impact of patents on open source projects and potential concentration risks posed by fixed-rate innovations currently incubating in the Maker ecosystem. In posting this MIP, we wish to directly address these shared concerns with a fresh proposal we feel is favorable for MakerDAO, its contributors, its users and all current and future DeFi innovators throughout the collective ecosystem.

**Motivation**

We have been in discussions with the DAI Foundation, forum members and MKR holders on how best to build a robust ecosystem and economy around DAI fixed-rate products built on Maker protocol.

The purpose of this post is to bring these discussions to the foreground and engage Maker’s stakeholders and Core Units on a business proposal we feel is favorable to Maker’s users, constituents, innovators and MKR holders.

Upon the launch of SAI, we began building a new technology platform with blueprints for secondary financial products and marketplaces built over Maker’s then emerging credit and savings facilities.  This has included a close working partnership with the Growth Core Unit as well as past units at the previous Maker Foundation.

What began as a proof of concept in 2018, has grown into a modest team of 15 business and technical developers working steadfastly to bring Pairwyse innovations to market. Our efforts culminated in the operational test launch of the [Pairwyse protocol](https://pairwyse.io/) on mainnet in 2021 using smart contracts based on our [patented design](https://patentscope.wipo.int/search/en/detail.jsf?docId=JP328095640&_fid=JP328095640) and [P2P architecture](https://github.com/akiva-capital-holdings/pairwyse-smart-contracts/blob/master/doc/Pairwyse_Whitepaper_Early_Preview_Oct.6.2021.pdf).

We have delayed full production launch of the protocol and ongoing business development for Pairwyse due to significant competitive concentration risks emerging within the current Maker ecosystem. These risks impact not only Pairwyse but, if underlying issues are left unresolved, sets an undesirable precedent for all DeFi innovators:

1. Vested interests between Maker business development units and a specific fixed-rate protocol (Deco) creates centralization, which poses fundamental challenges to maintaining a decentralized economy around DAI.

2. This close collaboration of Maker units with a standalone project places Pairwyse IP and patents in a defensive posture to manage risks of a strong monopoly emerging in the ecosystem.

Decentralization is the bedrock of DeFi. Centralization weakens its foundations. Thus, we propose a different approach from the current direction.

The combination of vested interests in an open protocol, alongside issues related to ip/patent infringement risks, has the potential to block and prevent future DeFi innovations and uptake of new products. Such a scenario is detrimental not just for the individual projects building on Maker but also for the wider adoption of a DeFi economy.

As a result, to overcome these emerging ecosystem risks, and with intent to remove Patent barriers from DeFi, our current discussions with the DAI Foundation and delegates have centered on licensing Pairwyse assets and technologies for best return to Maker and its ecosystem. Accordingly, we designed our proposal with full and respectful intent to create and foster friction-free innovation amongst Pairwyse, Deco and all open source innovators.

We describe in this post our technology, analysis and business proposal to Maker stakeholders. Our proposal includes making an Open Patent Non-Assertion Pledge upon proposal approval that legally binds Pairwyse Foundation and its innovation affiliates to (1) fully commit to open source innovation; (2) remove Patent barriers to open source innovation by others, regardless of whether their outputs are complementary or competitive to Pairwyse. The proposed Pledge from Pairwyse will be modeled on [Google’s Open Patent Non-Assertion Pledge](https://www.google.com/patents/opnpledge/pledge/), which would restrict the Pledged Patents of the Pairwyse Foundation and its listed affiliates to only a defensive posture in the event of legal proceedings initiated by others. This removes all offensive patent risk to open source innovators, according to the definitions and declarations in the proposed Pledge.

**Component Summary**

We summarize in this proposal:

(a) Pairwyse technology and applications for delivery of fixed-rate products on MakerDAO
(b) a business analysis of Pairwyse benefits for MakerDAO
(c) our risk analysis
(d) our business proposal specification, including the proposed Pledge

The precise language of the Pledge will be finalized and disclosed on the Maker Forum as a pending non-binding draft by March 9th, 2022 for review well before the close of any voting on this proposal.

Upon approval of this MIP by MKR holders followed by its execution by MakerDAO, Pairwyse Foundation and Akiva Capital Holdings, Inc will promptly execute and promulgate without disclaimers our Open Patent Non-Assertion Pledge and publish openly on the Pairwyse website and Maker Forum.

**Pairwyse Technology**

![Decentralized Market-Place](https://github.com/makerdao/mips/blob/master/MIP66/decentralized-fixed-rate-marketplace.png)

Pairwyse is a non-custodial money market platform built atop the Maker protocol. Pairwyse smart contracts allow borrowers and lenders to enter into fixed-rate lending Agreements through a peer-to-peer marketplace mechanism.

Pairwyse smart contracts insulate DAI lenders and borrowers from volatilities in DAI stability fee and savings rates, which are historically high in periods of crypto market and economic turbulence. Pairwyse’s P2P design serves to strongly reinforce scalable decentralized provisioning of DAI fixed-rates on Maker.

![Decentralized Market-Place](https://github.com/makerdao/mips/blob/master/MIP66/ethereum-network.png)

Pairwyse settles fixed-rate loan agreements (FRAs) on the Maker protocol using smart contract-based escrow management of CDP vault and DSR deposit instruments. Borrowers can initiate an FRA on an existing vault or create a new vault during onboarding. The lending term is initiated upon Lender matching of loan principal, upon which the Pairwyse protocol performs a continuous cash rebalancing between borrower and lender. This continuous rebalancing produces a net and constant fixed-rate for both parties across the full length of the term.

![FRAs Scheme](https://github.com/makerdao/mips/blob/master/MIP66/FRAs-scheme.png)

In addition to Pairwyse smart contracts, we’ve also built a front-end Web3 app ([pairwyse.io](https://pairwyse.io/)) allowing borrowers and lenders to onboard onto Pairwyse loan agreements using a staged workflow. In addition, the JS library can be abstracted as an SDK to create alternative interfaces for user onboarding customized to MakerDAO’s marketing and client servicing needs.

![Web3 App](https://github.com/makerdao/mips/blob/master/MIP66/web3app.jpeg)

Pairwyse smart contracts can be (a) readily integrated with Maker protocol; (b) operationalized through Maker’s existing protocol automation infrastructure; and (c) made accessible to users either via Maker’s existing portals (e.g. Oasis) or new on-boarding interfaces/platforms as Maker sees fit.

The smart contracts driving the Pairwyse protocol have been tested for production readiness and deployed on mainnet as well as kovan testnet. Additionally, our web3 application is built on a secured backend with strong VPN architecture and security. In addition to smart contracts and web3 app, Pairwyse also employs secure middleware to automate smart contract actions driving the protocol.

Pairwyse has been built with extensive QA testing. In addition to an ongoing Security and Financial audits, we have built financial and protocol stress testing tools into our QA suite. These tools allow protocol users and developers to simulate the behavior of any Pairwyse fixed-rate loan to assess financial precision and behavior of smart contracts under a range of operational conditions.

[![|340x191](upload://7hzDmoociB5Xw0Qv8mXzIFghdpc.png)](https://drive.google.com/file/d/13dHRjEinAypnfhiidbI1TyPzj_ELInRF/view?usp=sharing)

**Business Analysis**

The Pairwyse protocol specifically solves the [impossible trinity](https://en.wikipedia.org/wiki/Impossible_trinity) for MakerDAO by creating a fixed-rate marketplace for borrowers and lenders without restricting Maker’s use of floating rates and market-driven capital flows to maintain the DAI peg and grow its supply.

![Impossible Trinity](https://github.com/makerdao/mips/blob/master/MIP66/impossible-trinity.png)

In addition to helping solve the impossible trinity for Maker, the Pairwyse P2P protocol also provides an effective independence layer, creating a buffer between Maker’s decentralized protocol and potentially-regulated lending and borrowing entities (e.g. registered broker-dealers).

By funnelling existing DAI holders back into a Maker-centric financing and investment marketplace, Pairwyse solutions and designs can provide Maker:

1. a fixed-rate facility to scale RWA and institutional vaults rapidly and sustainably
2. freedom to apply as-dynamic-as-possible rate governance to stabilize / grow DAI
3. a means to scale transaction volume and fees in a DAI supply neutral manner
4. a channel to funnel DAI holders back into Maker and away from competitors
5. a stronger user network and loyalty through scalable peer-to-peer transactions
6. a layer of independence between Maker and potentially regulated security instruments settled in DAI.

Our business analysis continues to hold that DAI and Maker are in prime position to capture and scale transaction flow from legacy financial markets and centralized institutions. The keys for Maker for capturing opportunity are maintaining its decentralization and strong capital position in seamlessly scaling secondary marketplaces for DAI. As a matched-book lending protocol, Pairwyse readily enables Maker to strongly reinforce decentralization and grow its TVL and fee revenue without introducing disruptive volatiles in DAI supply, stability and oversight.

[![|300x260](upload://lJrS5HJU3qGEEJFRumShYBZYgT0.jpeg)](https://github.com/akiva-capital-holdings/pairwyse-smart-contracts/blob/master/doc/Pairwyse_Whitepaper_Early_Preview_Oct.6.2021.pdf)

Our [whitepaper](https://github.com/akiva-capital-holdings/pairwyse-smart-contracts/blob/master/doc/Pairwyse_Whitepaper_Early_Preview_Oct.6.2021.pdf) further describes the nuts and bolts on how Maker can capture opportunity using Pairwyse to invoke decentralized P2P marketplaces built atop Maker and DAI which leverage Pairwyse’s composable technology and fixed-rate financial design patterns.

In addition, please see our last [AMA](https://www.youtube.com/watch?v=mjfMNKmHUhg), where we describe how a solution like Pairwyse can be used to grow institutional financing and investment on Maker.

[![|346x193](upload://3dfhgz9Z8FMtxQWSqz0GKv049td.jpeg)](https://www.youtube.com/watch?v=mjfMNKmHUhg)

Pairwyse IP and protocol have been designed to enable fluid integration with regulated broker-dealers. This will enable Maker business development units to scale across multiple regulatory jurisdictions and across multiple real-world asset segments. The protocol’s P2P design allows Maker and DAI to remain fully decentralized, giving MKR holders maximum flexibility on market-making strategies and implementations to grow TVL through fixed-rate products.

**Risks to Ecosystem Development**

The Pairwyse Foundation and its affiliates have delayed full production launch as well as business development activities due to potential competitive centralization risks emerging in the Maker ecosystem. These risks are linked to the core Maker protocol being closely aligned with a specific fixed-rate protocol, Deco. This close alignment has the potential to create a monopolistic situation, which can have negative impacts on future DeFi innovations on open protocols like Maker and can also introduce centralization risks to MakerDAO.

As a result of this close collaboration between MakerDAO and a standalone project, Pairwyse now faces managing risks of a monopoly emerging in the ecosystem, which places our IP in a defensive posture.

Beyond Pairwyse, this combination of vested interests in an open protocol, along with possible ip/patent infringement risks, has the potential to impact, delay and even prevent future innovations and uptake of new products across the Maker ecosystem.

Such a scenario is detrimental not only for various projects currently building on Maker but can set unintended consequences for the growth and adoption of DeFi, particularly around real world assets.

As a consequence, to overcome these emerging ecosystem risks we have entered into early discussions with the DAI Foundation and delegates centering on licensing Pairwyse assets and technologies for best returns and assurances to Maker and its wider ecosystem.

Accordingly, our proposed licensing structure will specifically include an Open Patent Non-Assertion Pledge, which upon MKR holder approval of this proposal, will legally bind the Pairwyse Foundation and its affiliate partner, Akiva Capital Holdings, Inc., to commit Pairwyse software and IP to full open source development, removing with it any IP-related barrier or friction to innovation by other open source projects. We describe in the next section below our licensing proposal and tentative IP pledge.

**Specification / Proposal Details**

For a one-time up-front payment of 4000 MKR plus 15% of CDP vault fee revenue transacted through Pairwyse software paid in DAI to the Pairwyse Foundation at ethereum wallet address 0xAF2CeABE7BE342171F3F27063165a16D7B8180c1 , MakerDAO along with its governing individuals and affiliated entities will have unlimited perpetual use of Pairwyse fixed-rate software, technologies, source code and design patterns along with integration guidance and expertise from the Pairwyse Foundation and its partners for the delivery of decentralized lending and investment products built over the Maker protocol.

In addition, pending approval of this proposal, the Pairwyse Foundation and its affiliate partner, Akiva Capital Holdings, Inc, will make a public Open Patent Non-Assertion Pledge (the “Pledge”) during the governance review period which will be legally-binding upon proposal acceptance by MKR holders.

The Pledge will be purposefully based on [Google’s Open Patent Non-Assertion Pledge](https://www.google.com/patents/opnpledge/pledge/) with minimal deviation from its stated terms other than specification of Pairwyse Foundation and Akiva Capital Holdings Inc. as the Pledge Signatories and the schedule of Pledged Patents representing our IP portfolio for fixed-rate provisioning.

Upon acceptance of this proposal by MakerDAO, the Pairwyse Foundation and Akiva Capital Holdings, Inc will make the Pledge legally-binding by way of open publication on the Maker Forum. The Pledge will allow all open source innovators, including competitors, to freely use Pairwyse code or designs as part of their own projects. This will effectively extend Maker’s GNU copyleft licensing to all Pairwyse software and source code.

Pending acceptance of this proposal by MKR holders, our Pledge will allow MakerDAO to adopt Pairwyse solutions as an open source decentralized platform and give the DAO full freedom to combine it with any other free or open source software solutions from other innovators and contributors under the definitions of open source and free software provided by the [Open Source Initiative](http://opensource.org/osd) and [Free Software Foundation](http://gnu.org/philosophy/free-sw.html), respectively. We believe this will drive the best value for Maker, its users and its innovators.

In summary, our Patent Non-Assertion Pledge, activated upon approval of this proposal, will preemptively prevent the Pairwyse Foundation and Akiva Capital Holdings, Inc from initiating any offensive patent-related legal action against any open source innovator, contributor or consumer based on the Pledged patents. Accordingly, the activated Pledge will commit the Pairwyse Foundation to open sourcing, documentation and production integration guidance for the Pairwyse [codebase](https://github.com/akiva-capital-holdings/pairwyse-smart-contracts), software and applications to all developers and innovators.

We hope our pending Pledge, as part of this overall proposal, will resolve past concerns previously expressed by the Maker community around open innovation and concentration risk, including mitigation of centralization risks whether by patented invention or permissioned software. This will allow Pairwyse and MakerDAO, along with other innovators, to focus squarely on driving best value for DAI and the Maker protocol.


**About the Pairwyse team:**

*Akiva Dubrofsky* - Chief Executive Officer - Former Blockchain Consultant at KPMG Canada. Prior to joining KPMG, Akiva successfully led Ethereum Foundation’s private ETH transaction with Venture Capitalist Dennis Bennie’s firm XDL Capital, where he was Chief Blockchain Officer. Akiva has also been an active member in Maker governance, including service on the Maker Open Market Committee.

*Dr. Ashwin Tumne* - Chief Operating Officer - Co-founded Paytm Labs, the R&D division of Paytm - one of Asia’s largest digital payment & credit platforms with hundreds of millions of users. Prior to joining Pairwyse, Ashwin led the Data Science innovation group at KPMG and Analytics & AI Transformation at Scotiabank.

*Dr. Avtar Singh Sehra* - Strategic Advisor - Founder of Nivaura, a global leader in blockchain-enabled bond issuance. Raised $20m from London Stock Exchange Group, Santander, Allen & Overy and Digital Currency Group. Previously held quantitative roles at Lloyds, HSBC and Deloitte. Holds a PhD in Theoretical Particle Physics.
