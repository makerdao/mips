# MIP55c3-SP2: Create RealDAO SPF to make Moloch-based SPVs

## Preamble

```
MIP55c3-SP#: 2
Author(s): James McCall
Contributors:LexDAO and RealDAO
Tags: RWA, spf
Status: Withdrawn
Date Applied: 2021-11-23
Date Ratified: yyyy-mm-dd
Amount Requested: 50,000 DAI
Recipient Address: LexDAO Resolver - 0x5B620676E28693fC14876b035b08CbB1B657dF38
Forum URL: https://forum.makerdao.com/t/mip55c3-sp2-create-realdao-spf-to-make-moloch-based-spvs
```

## Sentence Summary

The purpose of this subproposal is to create a 50k Dai SPF to provide a prototype SPV DAO with a template code deference agreement.

## Motivation

It is necessary to the future of MakerDAO to be able to manage RWA on-chain in a permissionless manner.

* Create legal entity DAOs (“LAOs”) using Moloch “Investment DAO” frameworks.
* Design the LAOs to hold assets similar to how a SPV functions off-chain.
* Provide membership interests and governance rights that allow Dai to be minted against the SPV assets.
* Explore what would on-chain remedies look like against RWA collateral.
* The RWA brainstorm was highlighted in an earlier post [here](https://forum.makerdao.com/t/realdao-spv-concept-work-in-progress/9281) and further fleshed out in blog post [here](https://medium.com/lexdaoism/when-daos-get-real-managing-real-property-on-a-blockchain-83f43f55da53), and received positive feedback in [this signal](https://forum.makerdao.com/t/mip-55-signal-request-realdao-spf-to-make-moloch-based-spvs/11204).

There are enormous advantages in the ability to have “originators” or individuals form single asset/single purpose DAOs that can be governed on-chain and “resolved” in a permissionless manner. In light of the new [“Clean Money” proposal](https://forum.makerdao.com/t/the-case-for-clean-money/10684), there would be clear use cases to finance green energy and carbon capture--for example, these SPVs could own solar farms, [methane digesters](https://www.infrastructureinvestor.com/meridiam-enters-us-biogas-market-in-35m-idaho-digester-acquisition/), carbon offsets and credits, organic transition financing, sequester carbon through land use, etc. Agriculture finance--which is my specialty--will need a wide range of investment into ESG goods, which are often difficult to provision using traditional financing. I see specific needs in the previously mentioned areas, and each of these would be good candidates to place the real-world assets into the SPV to finance.

## Special Purpose Fund Name

RealDAO SPF

![](https://github.com/makerdao/mips/blob/master/MIP55/MIP55c3-Subproposals/supporting-materials/MIP55c3-SP2/venn.png)

## Special Purpose Fund Scope & Work Credentials

**LexDAO** - Repository of Legal Engineering Primitives - [LexDAO · GitHub](https://github.com/lexDAO).

**Medium [LexDAOism](https://medium.com/lexdaoism)** - open-sourcing ideas and thought leadership in the legal and organizational development space.

**RealDAO** - [Proof of concept](https://medium.com/lexdaoism/when-daos-get-real-managing-real-property-on-a-blockchain-83f43f55da53) that can be extended easily to manage assets from a DAO. The following LexDAO primitives are stitched together to demonstrate the pattern of onchain asset control and management:

* [LexSummoner](https://lexdao.github.io/LexSummoner/) - to easily and quickly generate DAO native legal shells that would provide cognizable benefit to house assets
* RealNFT - NFT minting contract with cognizable advantages as it is permissioned to a “DAO” to control the functions, ownable, whitelistable, burnable, pausable. Current version [here](https://etherscan.io/address/0x4e2df5ad942fafd27a68fa793c6a6494c9be998e#code).
* Dispute Resolution - May be part of agreement between the SPV LLC and the intermediary that is providing DAI or more “at risk” lenders of first resort tranche.
* [LexLocker contract](https://etherscan.io/address/0xf91e098a4da86aacf082f35f976e8eb18005b33c#code) - Used to lock the NFT or perhaps proceeds and payments into a double sided (buyer/seller) escrow smart contract. There are no intermediaries unless either the buyer or seller hails a resolver, locking the NFT for swift resolution.

Is MakerDAO willing to earmark RWA funds for building the proof of concept of having legally formed DAOs, which can own an RWA, that is represented by NFTs? The Single Purpose Entity would also develop ideas and frameworks to allow a SPV DAO to have shifting governance over a pool of assets using the Moloch v3 (unaudited) framework discussed in [Baal](https://medium.com/@molochmystics/molochv3-8eb732cd0930).

### Funding Request - “The Ask”

50K to help build an open source infrastructure core to the decentralized future of MakerDAO. All the aforementioned DAOs have a strong history of providing open source and available goods to the public commons. See below for the an example flowchart deliverable for DAOs to own and manage real property assets.

![|624x457](upload://aOpkLx1c2ZwaV3F31rM1EYKm7sz.png)

### Pros and Cons

#### Main benefits

1. Using SPV mechanisms based on Moloch are much easier to cordon off and manage for regulatory and systematic risk as each can be a legally cognizable entity organized as a legal shell and DAO.
2. Legal simplicity is that they would be governed by organization laws of states that have a long history of using the LLC frameworks.
3. On-chain mechanics allow real time monitoring of the real assets and digital entitlements. The dual legal frameworks would allow traceability and transparency to follow the chain of title. For example, the deed and the title report could be put into the NFT’s metadata.
4. Flexibility - Obviously the DAO model above would be useful for a wide range of assets. Most assets can be legally held in an LLC organization, and through code deference the DAO smart contract can be programmed to manage the asset in the form of an SPV. In other words, this model should be extensible to other asset classes.

#### Downsides

1. Regulatory - It may be difficult to navigate in the US (and other jurisdictions) as there is current regulatory uncertainty. If the distributed ledger world is saddled with it’s own set of onerous regulations, it may make sense to just follow a traditional finance path.
2. Smart Contract Risk - Obviously with any custody of assets of value, there are questions associated with smart contract risk, audits, and recovery. These can be mitigated by using trusted frameworks, audits, and legal disclaimers.

### Funding Breakdown

* **25K to develop single asset LLC “code deference” operating agreement and legal forms based on Wyoming LLC organization code.**
	* Code Deference Agreement template based on Wyoming would be provided to allow MakerDAO legal team to add additional garnish.
	* Once approved can use a similar mechanism to [LexSummoner](https://lexdao.github.io/LexSummoner/) allowing LLC generation and minting with DAO using DaoHaus framework. This is a basic “push button” organization with a DAO as frontend, with the code deference agreement to manage certain parameters of the operating agreement.
* **20K for Smart Contract specifications of Baal to allow for governance shifting of control based on event of payment default.**
	* Moloch share interests are inherently not bearer instruments. This makes them basically impossible to pledge or hypothecate the membership interests. Newer models will allow more extensibility to allow for DAOs to pledge membership interests (tokens) as collateral
	* Pledging these tokens would allow a further helper contract to split the ownership of the LLC from its governance. In this way, it can be possible for a remedy of sale or dissolution of the assets held by the SPV.
* **5K for management.**

### Special Purpose Fund Details

```
Official Contact or Group Name: LexDAO and RealDAO
Contact Email/Handle: jamesmccall@lexdao.coop/@mccallios
Date Added: 2021-11-23
Total Amount: 50,000 Dai
Wallet Address: [0x9e1585d9CA64243CE43D42f7dD7333190F66Ca09](https://gnosis-safe.io/app/eth:0x9e1585d9CA64243CE43D42f7dD7333190F66Ca09/balances)
Comptroller signers: @sebventures, ?, ?
```
