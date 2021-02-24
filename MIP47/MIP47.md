# MIP47: MakerDAO Multisignature Wallet Management

## Preamble

```
MIP#: 47
Title: MakerDAO Multisignature Wallet Management
Author(s): Payton Rose @prose11
Contributors: @amyjung @LongForWisdom @Elihu
Type: General
Status: RFC
Date Proposed: 2021-02-03
Date Ratified: <yyyy-mm-dd>
Dependencies:
Replaces:
```

## References

* [MIP47c2: Dissolution of Multi-Sig Request Subproposal [Template]](https://github.com/prose11/mips/blob/Multi-Sig/MIPX/MIPXc2%20Subproposal%5BTemplate%5D.md)

## Sentence Summary

MIP47 defines the requirements for creating a Multisignature wallet that is recognized by Maker Governance.

## Paragraph Summary

MIP47 describes the process and various requirements for any group within MakerDAO to secure approval for a multisignature (Multi-Sig) wallet that can interact with Maker Governance. Additionally, this MIP describes the process for Governance to remove funding or permissions from a previously recognized Multi-Sig.

## Component Summary

**MIP47c1: Governance Recognition of a Multi-Sig**

Documents the minimum requirements for maintaining a Multi-Sig that can be officially recognized by Maker Governance.

**MIP47c2: Dissolution of Multi-Sig**

Covers the ways in which a previously approved Multi-Sig can become unrecognized or defunded.

## Motivation

This MIP attempts to balance the need for full transparency with the flexibility required for internal projects to meet objectives in a timely manner.

By allowing Governance to recognize Multi-Sigs for permissions or funding, teams will have the agility to pursue relevant fiscal courses of action and signal their consensus for permissioned changes. A few other benefits include:

* Allows Maker Governance to more quickly place funds in capable hands.
* Potentially reduces overall requests to Governance for funding and domain approval.
* Mitigates risk associated with individual bad actors by requiring multiple actors to sign off on a dispersal of funds or change to a permissioned oversight by a particular group.

The process outlined by this MIP is intended to allow Maker Governance the continued confidence to disperse budgets and permissions to various groups that already exist and will form in the future.

In recognition of the various subprosals that must be submitted by working groups to accomplish objectives, this MIP seeks to define when a Multi-Sig can be recognized by Governance Facilitators so that other proposals that involve distributing funds or permissions to a Multi-Sig address do not need two separate votes from Governance.

## Specification / Proposal Details

**MIP47c1: Governance Recognition of a Multi-Sig**

In order for a Multi-Sig to be recognized by the Maker Governance for funding or permissioned consensus, the following minimums must be satisfied by providing a post, or series of posts, on the Maker Forum:

* Signatory requirements providing no less than ⅔ of listed signatories to sign off on an action.
* All signers must be publicly named and their willingness to be included in the Multi-Sig publicly confirmed.
* A representative for the Multi-Sig must be designated as an official point of contact for relevant Mandated Actors.
* There must be a clear and public explanation of the purpose and scope of the Multi-Sig.
* A clearly defined process for onboarding and offboarding signatories.
* A wallet address to be whitelisted.

Following an approved Governance action that involves a newly recognized Multi-Sig, the information provided will be added to a list of recognized Multi-Sig Wallets, publicly maintained by the Governance Facilitators. Groups with recognized Multi-Sigs may continue to apply for funding or specific permissions though Maker Governance.

**MIP47c2: Dissolution of Multi-Sig**

Multi-Sig groups may dissolve at any time, provided all unspent funds are returned to Governance and any permissions granted to the Multi-Sig are revoked. In the event that a Multi-Sig decides to dissolve, the owners must fill out a [MIP47c2: Dissolution of Multi-Sig Request Subproposal [Template]](https://github.com/prose11/mips/blob/Multi-Sig/MIPX/MIPXc2%20Subproposal%5BTemplate%5D.md).

Likewise, the Maker Community may choose to revoke funding for a Multi-Sig. In order to do so, any community member may submit a [MIP47c2: Dissolution of Multi-Sig Request Subproposal [Template]](https://github.com/prose11/mips/blob/Multi-Sig/MIPX/MIPXc2%20Subproposal%5BTemplate%5D.md) that will be subject to the following parameters before entering the next Governance cycle:

* Frozen Period: 2 weeks

Additionally, the Maker Community may utilize the weekly governance cycle to call for dissolution of a sponsored Multi-Sig should an urgent or emergency situation arise.

While the Maker Community may revoke funds for any reason, the following scenarios should encourage action by the community:

* Loss of keys by Multi-Sig member(s)
* Fulfillment of Multi-Sig objectives
* Loss of trust in Multi-Sig member(s)
* Failure of Multi-Sig to report spending
