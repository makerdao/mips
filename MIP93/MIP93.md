# MIP93: Utilizing Hats Protocol

## Preamble

```
MIP#: 93
Title: Utilizing Hats Protocol
Author(s): @prose11, @spengrah 
Contributors:
Tags: process
Type: General
Status: RFC
Date Proposed: 2022-12-07
Date Ratified: 
```
## References

- [Utilizing Hats Protocol ERC-1155s](https://forum.makerdao.com/t/proposal-idea-utilizing-hats-protocol-erc-1155s/18480).

## Sentence Summary

A methodology for applying Hats Protocol to systems and permissions in the Maker Protocol.

## Paragraph Summary

MIP93 sets the procedure for creating a recognized permission tree through Hats Protocol. Hats allow for real-time, on-chain, verifiable roles to be maintained throughout the Maker Protocol. This MIP enables groups to catalog their usage of Hats Protocol.

## Component Summary

**MIP93c1: Defining a Hats Tree**
Defines what a Hat Tree is and how it can be utilized by the Maker Community.

**MIP93c2: Hats Tree Subproposal**
Defines the template and mandated waiting times for applying for a Hats Tree.

**MIP93c3: List of Active Trees**
Defines and hosts a list of active Hats Trees being maintained in the Maker Ecosystem.

**MIP93c4: Special considerations**
Details items that MIP93c2 applicants and the community may want to consider before accepting a new Hats Tree.

## Motivation

Governance is only as strong as the tools the community believes in using. Maker has a not-so-unique issue where despite being a protocol with values of decentralization and on-chain verification, most social structures and powers within the DAO are documented and maintained through Web2 means. Utilizing Hats Protocol gives Maker a chance to manage permissions in a Web3 native way.

One challenge the MakerDAO faces in particular is with maintaining transparent and accurate information. Much work is done based on social expectations, leaving the DAO vulnerable to social engineering attacks and lacking in on-chain transparency of DAO structure.

Hats Protocol will allow for the DAO to make use of permission trees that can be manually or programmatically managed. Chiefly, this allows for social structures and on-chain behavior to be represented with a "Hat" demonstrating the bearer's role within an organization. These tokens are non-transferable but can be revoked or toggled by higher level "hats."

As ERC-1155s, these tokens have the added benefit of being able to have the same token minted to multiple parties. In practice, this allows for joint responsibilities and permissions to be represented on-chain. 

Ultimately, this MIP serves to establish the "sandbox" of Hats Protocol for Maker to play with and build on top of during and after the transition to End Game. We foresee useful applications for token-gated chats, multisig membership, user outreach, and representing social structures on-chain.

## Specification / Proposal Details

### MIP93c1: Defining a Hats Tree

A Hats Tree is an all-encompassing term for a permission tree of Hats ERC-1155 tokens being utilized by the Maker Ecosystem. While items like a Web UI and visualization of the permissions tree would fall under this definition, it is primarily the ERC-1155 tokens themselves and their network of permissions and roles.

Every Hats Tree will need a "chief hat" with the highest of permissions for that tree and a defined name and purpose for the tree. Beyond that, the number and distinction of types of Hats within the Tree are up to the user group. 

### MIP93c2: Hats Tree Subproposal

When someone from the Maker Ecosystem has an idea for a Hats Tree they would like to be recognized by the Maker Protocol, they must fill out a Hats Tree Subproposal. These proposals must be made with a [MIP93c2 Subproposal Template](MIP93c2-Subproposal-Template.md) and are subject to the following parameters before entering the weekly governance cycle:

- Request for Feedback Period: 2 weeks.
- Frozen Period: 1 week.

Once onboarded, a Hats Tree may be wound down and removed by posting a short notice to the Maker Forum, tagging the MIPs editors.

### MIP93c3: List of Active Trees

This component contains the list of all active Hats Trees certified by Maker Governance. This list is maintained by the MIP Editors and will be updated upon passage of a new Hats Tree, or public notice of a tree no longer being maintained.

The list format will be as follows:

```
Hats Tree Name:
Top-Hat Tree ID (identifies what Hat is in charge of that domain):
Hats Tree Description (provided in MIP93c2 subproposal template):
Hats Tree Owner (preferred name and address):
```

### MIP93c4: Special Considerations

Both potential owners and voters should be aware of some practical limitations of running a Hats Tree. Fundamentally, Hats Trees are a tool and will only be as effective as the ideas and people behind them.

Since the Hats Tokens represent a bespoke contract and imply the desire to build systems on top of them, all users should be aware of the token they are receiving. Note: users do have the ability to "renounce" assigned hats.

If community members wish to use Hats Trees in a way that cannot guarantee full opting-in of users (i.e., creating a Hats Tree for anyone maintaining a Maker Vault), significant effort should be spent to making sure the announcement of the program is well publicized and widely understood by relevant UIs.

Additionally, when used for securing multisig funds, users must be warned that a vulnerability with the Hats contract *could* result in multisig funds being at risk. As such, any implementation looking to use Hats Trees for multisig signers should minimize the amount and duration of holding assets in the multisig.
