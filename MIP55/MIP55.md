# MIP55: Special Purpose Fund (SPF ☀️)

## Preamble

```
MIP#: 55
Title: Special Purpose Fund
Author(s): @amyjung
Contributors: @LongForWisdom @SebVentures
Tags: process
Type: General
Status: Accepted
Date Proposed: 2021-06-08
Date Ratified: 2021-07-26
Dependencies: n/a
Replaces: n/a  
Ratification Poll URL: https://vote.makerdao.com/polling/QmStS4VH?network=mainnet  
Forum URL: https://forum.makerdao.com/t/mip55-special-purpose-fund-spf/8624
Extra: This MIP has been amended. See [MIP4c2-SP16](https://mips.makerdao.com/mips/details/MIP4c2SP16), and [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1). The original version can be found [here](https://github.com/makerdao/mips/blob/4b04a40e758d3c675bfcad877b5da5a9ed08ba97/MIP55/MIP55.md).
```

## Sentence Summary

A Special Purpose Fund (SPF) is used to fulfill a narrow, specific, or temporary objective where approved funds are locked in escrow, releasable by a minimum of 2/3 signers, where at least 2 signers (called Comptrollers) are Mandated Actors or community members appointed by Mandated Actors.

## Paragraph Summary

A Special Purpose Fund (SPF) is used to fulfill a narrow, specific, or temporary objective where approved funds are locked in escrow, releasable by a minimum of 2/3 signers, where at least 2 signers (called Comptrollers) are Mandated Actors or community members appointed by Mandated Actors.

* Funding is only available in Dai.
* A SPF must contain one Point of Contact (from the SPF receiver) and a minimum of two Comptrollers. Comptrollers execute payouts to final recipients based on the completion of milestones stated in the SPF Scope.
* Any SPF request less than or equal to 50k Dai can go into the Weekly Governance Cycle. Anything above 50K Dai must go through the Monthly Governance Cycle.
    * The request (a MIP55c3 subproposal) must fulfill its Feedback Period and its Frozen Period before its submission into either cycle.

## Component Summary

**MIP55c1: Special Purpose Fund Requirements**
Outlines the requirements a Special Purpose Fund must meet to be valid for inclusion in the Governance Cycle.

**MIP55c2: Special Purpose Fund Process**
Details the governance process for proposals created by Special Purpose Funds.

**MIP55c3: Adding/Modifying a Special Purpose Fund**
This subproposal process allows Governance to create or modify an existing Special Purpose Fund through the provided subproposal template.

**MIP55c4: Endgame Transition**
This component defines the special rules of Endgame Transition as they apply to SPFs.

## Motivation

The creation of the Core Unit Framework launched the initial building blocks for organizing work for the DAO. Facilitators define mandates that cover *long-term work areas* and a *broad* set of focus and responsibilities for the protocol to be secure and successful.([1](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md))

Since then, community members have uncovered a need for a framework that is particular to purposes:

* Of high priority, yet narrow in scope.
* Receivers of Funds are accountable to their deliverables, but do not hold long term responsibilities like a Core Unit.
* The request is one-off or irregular.

This MIP can be used for situations like:

* Protocol Audit Funding.
* Legal Reserves for the DAO.
* Gas Reserves for Oracles / Protocol Deployments.
* Funding a team that works independently of Governance.
* Funding DAO objectives with no existing Core Unit or Facilitator.

Special Purpose Funds should be used infrequently. This MIP should **NOT** be used for:

* Grants.
* Teams with long term objectives that should be Core Units.
* Vesting or DAO Mandated Actor / Contributor compensation.

The structure for Special Purpose Funds are specific to ensure minimum Governance overhead. Approved funds are locked in a multisig escrow, releasable by a minimum of 2/3 signers (a Point of Contact and at least 2 Comptrollers). The signers reduce future Governance overhead to a minimum and this provides flexibility for executing funds that need to be released at the time of completion, rather than waiting for a secondary Governance cycle to execute.

## Specification / Proposal Details

### MIP55c1: Special Purpose Fund Requirements

In order to be recognized as a Special Purpose Fund, proposals must have the following:

* There must be a clear and public explanation of the purpose and scope of the Special Purpose Fund.
* Must follow the multisig process outlined in MIP47: MakerDAO Multisignature Wallet Management. It must include a wallet address, official Point of Contact, and Comptroller signers must be publicly verified.
* The Scope must be limited by either timeframe or specific deliverable (For example: The Protocol needs audits for the launch of LIQ.2.0. Funds are approved to pay auditors, Dai goes into escrow, and 2 Comptrollers release funds to the auditors once audits are complete).
* The SPF Scope work must be auditable by Comptrollers.

### MIP55c2: Special Purpose Fund Process

A process component that provides clarity on how the payouts are addressed from a practical perspective once approved. Approved funding is attached to a Special Purpose Fund (SPF) and is meant to be used only for that proposal.

The process is as follows:

1. MIP55c3 subproposals is submitted. MIP55c3 subproposals must use the template located at **[MIP55c3-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP55/MIP55c3-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.
2. MIP55c3 subproposals must go through the Governance cycle to authorize Maker Governance to draw funds from the Protocol.
3. Upon approval of the MIP55c3 subproposal, funds would be transferred first to the escrow multisig. The funds in escrow must be in a multi-sig with signatory requirements of a minimum of two `Comptrollers`. Funds must be held in escrow, only released when two `Comptrollers` sign off. 
4. Once the work is complete and approved by Comptrollers, funds would be released to the final recipient’s designated address.

**Roles: Point of Contact and Comptrollers**

The SPF Comptrollers must ensure that transparency and accountability exist as the budget is spent. Comptrollers should communicate transparent accounting such as [this Reporting Template](https://docs.google.com/spreadsheets/d/1Bxb0f4K4db8bZzZSQ4NiOHLNv0cFVNeYTm77HoIlpMk/edit?usp=sharing). Comptrollers cannot be receivers of SPF funding. They execute payouts to final recipients based on the completion of milestones stated in the SPF Scope. Comptrollers should be Mandated Actors, but they may be community members appointed by Mandated Actors.

A SPF Point of Contact is the person representing the SPF receiver. The Point of Contact can be the final receiver or a representative appointed by the fund receiver. If a SPF Point of Contact disappears, quits, or is no longer valid, the Special Purpose Fund has 14 days to replace or find a replacement. Otherwise, the Special Purpose Fund proposal and its funding will no longer be valid.

**Funding Considerations**

There are several important considerations to take into account before transferring value out of the Maker Protocol.

* Transfer of DAI from the SPF multisig to an external address that is not controlled by Maker Governance is a one-way operation.
* Transfer of DAI from the protocol will take DAI from the Surplus Buffer if available. If funding a MIP55c3 subproposal would result in a FLOP auction, Governance Facilitator(s) will use established communication channels to ensure the community is informed.

**Funding Implementation**

The initial funding implementation would use a simple funding implementation of a fixed total of funds taken from the Protocol and put directly to a multi-sig used for escrow.

* If available, other advanced smart-contract based implementations can be used for automated distribution mechanisms, such as a simplified smart contract implementation of [DSSVest](https://forum.makerdao.com/t/mip-54-dssvest/8025).

### MIP55c3: Adding/Modifying a Special Purpose Fund

MIP55c3 subproposals must use the template located at **[MIP55c3-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP55/MIP55c3-Subproposal-Template.md)** .

This is a component that can have on-chain effects that alter the Maker Protocol's state. When subproposals are generated from this component, the vote must include a Technical State Change to authorize drawing funds from the Maker Protocol.

**The proposal parameters**

Requests of less than or equal to 50k Dai may go into the Weekly Governance Cycle, provided the Feedback and Frozen Periods have been fullfilled. Anything above 50k Dai must go through the Monthly Governance Cycle.

_Parameters for requests of less or equal to 50K Dai:_

* Minimum Feedback Period: 2 Weeks.
* Minimum Frozen Period: 1 Week.

_Parameters for requests of above 50K Dai:_

* Minimum Feedback Period: 4 Weeks.
* Minimum Frozen Period: 1 Week.

### MIP55c4: Endgame Transition

This component supersedes the other components in this MIP.

No more SPFs can be created, but existing SPFs continue until they run out. Once no more SPFs are active from this MIP, it must be moved to obsolete status.
