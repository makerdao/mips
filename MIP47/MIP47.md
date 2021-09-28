# MIP47: MakerDAO Multisignature Wallet Management

## Preamble

```
MIP#: 47
Title: MakerDAO Multisignature Wallet Management
Author(s): Payton Rose @prose11
Contributors: @amyjung @LongForWisdom @Elihu
Tags: process, general, governance, living
Type: General
Status: Accepted
Date Proposed: 2021-02-03
Date Ratified: 2021-25-03
Dependencies:
Replaces:
```

## References

* [MIP47c3: Dissolution of Multi-Sig Request Subproposal Template](https://github.com/makerdao/mips/blob/master/MIP47/MIP47c3-Subproposal-Template.md)

## Sentence Summary

MIP47 defines the requirements for creating a Multisignature wallet that is owned by Maker Governance and utilized by community members.

## Paragraph Summary

MIP47 describes the process and various requirements for any group within MakerDAO to secure approval for a Governance-owned multisignature (Multi-Sig) wallet that can be used for funding and permissions. Additionally, this MIP describes the process for Governance to remove funding or permissions from a previously recognized Multi-Sig.

## Component Summary

**MIP47c1: Governance Recognition of a Multi-Sig**

Documents the minimum requirements for maintaining a Governance-owned Multi-Sig.

**MIP47c2: Current Approved Multi-Sig List**

Sets up a subsection of this MIP for documenting currently approved Multi-Sigs, to be updated and maintained by the Governance Facilitators.

**MIP47c3: Dissolution of Multi-Sig**

Covers how a previously approved Multi-Sig can be revoked of permissions or funds.

## Motivation

Creating Multi-Sigs for permissions or funding that are owned by MakerDAO but administered by community members will allow teams the agility to pursue relevant fiscal courses of action and signal their consensus for permissioned changes while being supported by Governance.

These Multi-Sigs would be ideal for a broad range of objectives, from creating budgets for Core Units to delegating consensus for particular working groups.

The process outlined by this MIP is intended to allow Maker Governance the continued confidence to disperse budgets and permissions to various groups that already exist and will form in the future.

In recognition of the various subproposals that must be submitted by working groups to accomplish objectives, this MIP seeks to define when a Multi-Sig can be recognized by Governance Facilitators so that other proposals that involve distributing funds or permissions to a Multi-Sig address do not need an additional vote from Governance.

## Specification / Proposal Details

### MIP47c1: Governance Recognition of a Multi-Sig

In order for a Multi-Sig to be considered owned by Maker Governance for funding or permissioned consensus, the following minimums must be satisfied by providing a post, or series of posts, on the Maker Forum:

* Governance must be able to revoke funding and permissions from approved multi-sigs at any time.
* Signatory requirements providing no less than ⅔ of listed signatories to sign off on an action.
* All signers must be tagged on the forum and their willingness to be included in the Multi-Sig publicly confirmed.
* A representative for the Multi-Sig must be designated as an official point of contact.
* There must be a clear and public explanation of the purpose and scope of the Multi-Sig.
* A clearly defined process for onboarding and offboarding signatories.
* A wallet address to be whitelisted.

Following an approved Governance action that involves a newly recognized Multi-Sig, the information provided will be added to a list of recognized Multi-Sig Wallets.

### MIP47c2: Current Approved Multi-Sig List

This listing is to be maintained and updated by the Governance Facilitators. It will serve as an active registry of approved Multi-Sigs.

**Entries into this list should contain the following information:**

```
Group Name: The name of the group seeking to utilize a Governance Multi-Sig.
- Contact: The designated contact for the Multi-Sig.
- Address: Public wallet address of Multi-Sig
- Date Added: (yyyy-mm-dd)
```
| **Group Name**               | **Contact**    | **Wallet Address**                                                                                                                   | **Date Added** |
|------------------------------|----------------|--------------------------------------------------------------------------------------------------------------------------------------|----------------|
| Real-World Finance Core Unit | @SebVentures   | [0x9e1585d9CA64243CE43D42f7dD7333190F66Ca09](https://gnosis-safe.io/app/#/safes/0x9e1585d9CA64243CE43D42f7dD7333190F66Ca09/balances) | 2021-04-13     |
| GovAlpha Core Unit           | @LongForWisdom | [0x01D26f8c5cC009868A4BF66E268c17B057fF7A73](https://gnosis-safe.io/app/#/safes/0x01D26f8c5cC009868A4BF66E268c17B057fF7A73/balances) | 2021-05-24     |
| Content Production Core Unit | @Seth          | [0xDCAF2C84e1154c8DdD3203880e5db965bfF09B60](https://gnosis-safe.io/app/#/safes/0xDCAF2C84e1154c8DdD3203880e5db965bfF09B60/balances) | 2021-05-29     |
| Oracles Core Unit            | @NikKunkel     | [0x2d09B7b95f3F312ba6dDfB77bA6971786c5b50Cf](https://gnosis-safe.io/app/#/safes/0x2d09B7b95f3F312ba6dDfB77bA6971786c5b50Cf/balances) | 2021-06-17     |

### MIP47c3: Dissolution of Multi-Sig

Multi-Sig groups may dissolve at any time, provided all unspent funds are returned to Governance and any permissions granted to the Multi-Sig are revoked. If a Multi-Sig decides to dissolve, the owners must fill out a [MIP47c3: Dissolution of Multi-Sig Request Subproposal Template](https://github.com/makerdao/mips/blob/master/MIP47/MIP47c3-Subproposal-Template.md).

Likewise, the Maker Community may choose to revoke funding for a Multi-Sig. In order to do so, any community member may submit a [MIP47c3: Dissolution of Multi-Sig Request Subproposal Template](https://github.com/makerdao/mips/blob/master/MIP47/MIP47c3-Subproposal-Template.md) that will be subject to the following parameters before entering the next Governance cycle:

* Frozen Period: 2 weeks

Additionally, the Maker Community may utilize the weekly governance cycle to revoke funds or permissions of a Multi-Sig, should an urgent or emergency situation arise.

While the Maker Community may revoke funds for any reason, the following scenarios should encourage action by the community:

* Loss of keys by Multi-Sig member(s)
* Fulfillment of Multi-Sig objectives
* Loss of trust in Multi-Sig member(s)
* Failure of Multi-Sig to report spending
