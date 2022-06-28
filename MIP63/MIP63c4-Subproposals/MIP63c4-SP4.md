# MIP63c4-SP4: Onboard/Amend Keeper Network - Keep3r Network

## Preamble

```
MIP63c4-SP#: 4
Title: Onboard/Amend Keeper Network - Keep3r Network
Author(s): 0xPEPO (@0xPEPO)
Contributors:
Tags: keeper-network
Status: Accepted
Date Proposed: 2022-03-30
Date Ratified: 2022-06-27
Ratification Poll URL: https://vote.makerdao.com/polling/QmXbgVGz
Forum URL: https://forum.makerdao.com/t/mip63c4-sp4-onboard-amend-keeper-network/14321
```

## Specification

* **Name**: Keep3r Network
* **Short Name**: KEEP3R
* **Website**: [https://keep3r.network/ ](https://keep3r.network/)
* **Requested Budget**: 1,000 DAI / day
* **Requested Buffer Min**: 4,000 DAI
* **Requested Buffer Max**: 20,000 DAI
* **Chain**: All
* **Address to Stream DAI to**: [0xc6A048550C9553F8Ac20fbdeB06f114c27ECcabb](https://etherscan.io/address/0xc6A048550C9553F8Ac20fbdeB06f114c27ECcabb#code)

### Network Description

This is a budget amendment application for Keep3r Network: a decentralized and permissionless keeper network.

### Background

As explained by [hexonaut on the Gelato's MIP63c4 proposal](https://forum.makerdao.com/t/mip63c4-sp3-onboard-amend-keeper-network-gelato-network/12749/4?u=0xpepo), we have created a Dune Analytics dashboard to showcase the cost of execution during the time our keepers were active.

During the 1 month period our network was active on Maker's Keeper Network, we had an expenditure of 1.48 ETH (4800 USD at the time of writing), we expect this cost to be within that range (4,000 - 5,000 USD per month) and thus why we've decided to suggest a 4,000 Min Buffer limit. The suggested 20,000 Max Buffer limit is taken into account due to potential gas spikes and the likelihood of more jobs coming to the network within the next few months, this will allow us to sustain the workload on the jobs without having to amend the budget every few weeks (all of this taken into account considering that the contract will be programmed to return any excess above the Max Buffer to the surplus buffer).

We plan to continue to support and expand tooling in order to facilitate Maker's ability to track the performance of Keep3r Network within its own Keeper Network.

### Resources

- [Keep3r Network - MakerDAO Job](https://dune.xyz/wei3erHase/MakerDAOUpkeep)
- [Keep3r Network - Analytics](https://dune.xyz/wei3erHase/DRAFT-Keep3rV2-Analytics)

### Expected Coverage

* ALL
