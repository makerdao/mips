# MIP57: RWA Committee

## Preamble

> MIP#: 57
Title: RWA Committee
Author(s): Gregory Di Prisco (@g_dip)
Contributors: @mrabino1, @williamr, @Viktor_Viktorov1 
Type: General
Status: RFC
Date Proposed: 2021-07-09
Date Ratified: n/a
Dependencies: n/a
Replaces: n/a

## Sentence Summary

MIP57 formalizes the creation of the Real-World Asset [RWA] Committee, its scope, and a process by which MKR holders can modify its membership and internal procedures.

## Paragraph Summary

This MIP formalizes the creation of the Real-World Assets [RWA] Committee, its scope, and a process by which MKR holders can modify its membership. This committee was spawned out of the [Parameter Proposal Group](https://forum.makerdao.com/t/parameter-proposal-group-makerdao-rwa-committee/7893) created by SebVentures. This committee presents a new scope which better accounts for the qualifications and conflicts of its membership and addresses the need for strategic research and guidance by the DAO in regards to real world assets.

## Component Summary

**MIP57: RWA Committee**
This MIP outlines the scope and purpose of the RWA Committee.

**MIP57c1: Member List**
This component defines the membership of the RWA Committee.

**MIP57c2: RWA Committee Quorum**
This component defines the quorum needed for the outcome of votes to be considered valid.

**MIP57c3: RWA Committee Pass Threshold**
This component defines the percentage of votes that the committee must have to consider a vote passed (e.g. simple majority).

## Motivation

Most of the discourse around real-world assets in the Maker Protocol has revolved around structural, procedural and geopolitical implications rather than a risk analysis of the assets/asset originators. The scope of this committee is to separate these “high level” issues from the specific deal analysis and to provide blanket guidance that applies to all real-world assets in the protocol. This committee will not have any explicit power in the governance process, contrary to most Core Units, but will be limited to making recommendations that may be “approved” by MKR holders via on-chain polls.

## Specification / Proposal Details

### MIP57: RWA Committee

The RWA committee will consist of individual members that are ratified by the MKR holders and each member may cast one vote when internally processing recommendations. Any member may bring a vote to the floor of the committee. A quorum of 66.1% or more of the membership must be present in a committee meeting in order for the outcome of a vote to be considered valid and a pass threshold of 50.1% will be required for a vote to be considered passed. A stalemate will proceed to an on-chain poll in the following monthly cycle and have the normal rules of a poll applied to it. The committee will meet, at a minimum, once per month and will coordinate this timing internally. The committee will limit its scope to making recommendations to the MKR holders in the following areas:

1. Structural requirements for Real World Assets in MakerDAO. E.g., recommending the use of an independent administrator/director in an SPV

2. Geopolitical implications of Real World Assets in MakerDAO. E.g., recommending maximum jurisdictional exposure and jurisdiction-specific policies

3. Business strategy of Real World Assets in MakerDAO. E.g., recommending a global minimum stability fee on RWA in order to provide a buffer for an increasing DSR

### MIP57c1: MIP57 Committee Member List

This subproposal lists the individuals permitted to vote as part of the RWA Committee and can be amended by modifying the Member List through this MIP.

The original Member List will consist of:

* @Planet_X
* @ElProgreso
* @prose11
* @mrabino1, significant RWA beneficiary with 6S Capital
* @Akiva, owner of a project on hedge interest rate in DeFi
* @g_dip, has a business to bring RWA to MakerDAO
* @_LS, working at Centrifuge
* @Cmo
* @omahalawyer
* @roollie, work for NAOS, has a current MIP6 application, as an asset
manager, with PandaCredit and Centrifuge, and is looking forward to future applications.
* @Allan_Pedersen
* @DavidJeng
* @Viktor_Viktorov1, involved in a current MIP6
* @PaperImperium 

MIP57c1 subproposals have the following parameters:

* Feedback Period: 2 weeks
* Frozen Period: 2 weeks

MIP57c1 subproposals must use the template located at [this link](MIP57c1-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP57c2: RWA Committee Quorum

This subproposal can amend the quorum needed for the outcome of votes to be considered valid.

The original quorum will be:

* 66.1%

MIP57c2 subproposals have the following parameters:

* Feedback Period: 2 weeks
* Frozen Period: 2 weeks

MIP57c2 subproposals must use the template located at [this link](MIP57c2-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.

### MIP57c3: RWA Committee Pass Threshold

This subproposal can amend the percentage of votes that the committee must have to consider a vote passed (e.g. simple majority).

The original threshold will be:

* 50.1%

MIP57c3 subproposals have the following parameters:

* Feedback Period: 2 weeks
* Frozen Period: 2 weeks

MIP57c3 subproposals must use the template located at [this link](MIP57c3-Subproposal-Template.md). This template is considered ratified once this MIP moves to Accepted status.