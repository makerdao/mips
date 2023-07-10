# MIP39c3-SP9: Removing DUX-001

## Preamble

```
MIP39c3-SP#: 9
Author(s): @0xdeniz
Contributors: @Retro
Tags: dux-001, offboarding
Status: Accepted
Date Proposed: 2023-06-12
Date Ratified: 2023-06-26
Forum URL: https://forum.makerdao.com/t/mip39c3-sp9-removing-dux-001/21306
Extra: This is a voluntary offboarding.
```

# Sentence Summary

This post notifies Governance of Development & UX (DUX-001) end of operations.

# Paragraph Summary

With Core Units winding down, we are formally notifying Governance of our voluntary offboarding. The majority of the Core Unit team has bootstrapped the Jetstream Ecosystem Actor and will carry on the mandate of DUX.

# Specification

## Motivation

### Core Unit Offboarding

* The Core Unit model is deprecated which is the main motivation for voluntarily offboarding the Core Unit more than 6 months ahead of the DAI budget running out
* The majority of the team has been working towards bootstrapping a new Ecosystem Actor called *Jetstream*—an introductory post [can be found here](http://forum.makerdao.com/t/professional-ecosystem-actor-introduction-jetstream/21054?u=0xdeniz).
* *Jetstream* Ecosystem Actor will be funded for 1.5 years as part of the Launch Project. This project and its funding has been ratified by Governance through [this poll](https://vote.makerdao.com/polling/QmdnSKPu).
* Jetstream is capable and willing of carrying the mandate of DUX-001 and additional work, as described in the aforementioned introductory post.

## Core Unit Unwinding

### Work

All ongoing work and responsibilities is taken over by *Jetstream* Ecosystem Actor

### Funds
Funding for this Ecosystem Actor will be coming from the Launch Project budget, which will last for 1.5 years. Once the Launch Project ends the Ecosystem Actor will have to find alternate sources of funding. We're working with the Governance facilitators to implement the following budgetary actions on-chain:

**Related to Core Unit offboarding:**
* Payout of vested MKR until 26-06-2023 since last vesting date (01-06-2023): One time MKR payment to DUX of 56.48 MKR, which includes some cliff-vested MKR for a new contributor.
* Termination of DAI stream to DUX
* Termination of MKR budget of DUX
* Once the Ecosystem Actor budget is implemented we'll finalize accounting for DUX of June and July, upon which we'll return any ETH holdings on testing wallets to the operational multisig, swap it to DAI and return *all* remaining DAI holdings in the operational wallet & auditor wallet to the protocol through `DssBlow`. We'll also make sure that any funds held by our payment processor is included in this payback.
* There won't be any transfers of funds from the DUX wallets to the Jetstream wallets as these should be considered separate entities.

**Related to Ecosystem Actor onboarding:**
* Add DAI stream for Jetstream of 164,667/month until 31-12-2024 (until the end of the Launch Project as per MIP Amendment Subproposal (MIP102c2-SP8)
* Add MKR stream for Jetstream of 89.17 MKR/month until 31-12-2024 (until the end of the Launch Project as per MIP Amendment Subproposal (MIP102c2-SP8). This stream is backdated to 26-06-2023 which is when the Launch Project was formally approved.
* One Time DAI transfer to Jetstream 494,001 DAI for 3 month runway.

> Jetstream auditor multisig wallet address: `0xF478A08C41ad06E8D957d5e6B6Bcde7452cEE962`
Jetstream operational (4/7) multisig wallet address: `0x3214b48Fc628f33ed0034d66c634F72Af3dF6577`

### Facilitator
As MIP41c4 does not apply to Ecosystem Actors we can mark MIP41c4-SP32 as obsolete.

In practice @0xdeniz will continue fulfilling a similar role for Jetstream as team coordinator & product lead, in addition to supporting coordination of the Launch Project.

### Core Unit ID

* DUX-001
