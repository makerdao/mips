# MIP91: Defender Contract Against Governance Attacks

## Preamble

```
MIP#: 91
Title: Defender Contract Against Governance Attacks
Author(s): @astronautthis
Contributors: @LongForWisdom, @prose11, @Patrick_J
Tags: emergency, governance, process, technical, smart-contracts, pending-implementation
Type: General
Status: RFC
Date Proposed: 2022-10-26
Date Ratified: xx
Dependencies: None
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip91-defender-contract-against-governance-attacks/18534
Ratification Poll URL: xx
```

## References

1. [Emergency Shutdown](https://docs.makerdao.com/smart-contract-modules/shutdown)
2. [GSM Pause Delay](https://makerdao.world/en/learn/governance/param-gsm-pause-delay/)
3. [Executive Vote](https://makerdao.world/en/learn/governance/how-voting-works/#executive-votes)

## Sentence Summary

This MIP proposes a smart contract that allows a minority of MKR holders to delay executives during an attack where a malicious entity may be in control of the hat.

## Paragraph Summary

The attack considered here is a governance attack where an entity has access to enough MKR to pass one or more potentially malicious executive spells. This MIP proposes a contract called `dss-defender` that a minority of MKR holders may activate to delay malicious executives from taking effect without shutting down the protocol. In order of preference, Maker would have the following responses to a governance attack:
1. Recapture the hat and pass a cancelling executive.
2. Activate `dss-defender`.
3. Trigger the Emergency Shutdown Module (ESM).

## Component Summary

**MIP91c1: Parameters and deployment**
Defines the parameters of `dss-defender`, the governance process to set them, and deploying an instance.

**MIP91c2: Core logic**
Defines the core logic of an instance of `dss-defender` once activated.

**MIP91c3: Post-activation permissions and events**
Defines what actions are permitted after an instance of `dss-defender` is activated.

**MIP91c4: Deploying a new instance**
Defines how to deploy a new instance of `dss-defender` after a potential attack.

**MIP91c5: Preliminary Work Packages**
Defines the next phases of work required by various Core Units.

**MIP91c6: Technical Implementation**
Defines the smart contract code of `dss-defender`, test cases, and formal verifcation/audits.

**MIP91c7: Initialization**
Defines the governance process to approve the first instance of `dss-defender`.

## Motivation

Consider the situation where a malicious entity (including possible malicious actors within the Maker community) has access to enough MKR to pass executive spells. Given the chaotic environment during such an attack with the potential for trusted entities like Protocol Engineering or GovAlpha to turn malicious, it may be unreasonable to expect honest MKR holders to be able to communicate and coordinate quickly enough to defend the protocol. In particular, it may not be clear if the protocol is genuinely under attack or if there is simply misinformation. The following issues are likely with the current ESM-based defence:

1. Honest MKR holders only have the GSM Pause Delay period (48 hours at the time of writing) to trigger the ESM, a decision that involves burning their MKR. This is difficult to commit to if information about the attack is unclear.
2. It may be the case that large MKR holders use custodial solutions that would make it difficult to move their MKR to trigger the ESM or try and regain the hat within the GSM Pause Delay period.
3. The act of shutting down the protocol is an extreme step that negatively impacts DAI holders and the wider crypto ecosystem. The only immediate requirement is to block malicious executives while regaining control of governance, not to shut down the entire protocol.

The ideal defence in the face of such an attack should be to prevent the malicious executives from passing so MKR holders can buy time to understand the situation, try to recapture the hat, and decide whether it is necessary to trigger the ESM.

The key is to allow a minority of MKR holders to be able to do this without a severe financial penalty but also ensure that this does not become a tactic to stall/overrule regular governance actions.

This will be done using a proposed contract called `dss-defender`.

## Specification / Proposal Details

### MIP91c1: Parameters and Deployment

`dss-defender` has three parameters that can be modified by Governance. These are:
1. `threshold amount`: This is the amount of MKR that must be deposited into an instance of `dss-defender` to activate it.
2. `cancel-spells duration`: This is the duration for which an instance of `dss-defender` can cancel executive spells using the mechanism detailed in MIP91c2.
3. `lockup duration`: This is the duration for which MKR deposited to an instance of `dss-defender` is locked by default. This parameter should be significantly larger than the `cancel-spells` duration to prevent a minority of MKR holders from stalling governance. The lockup period can be overriden by two mechanisms detailed in MIP91c3.

RISK-001 should recommend initial choices and changes to these parameters. They may be changed via weekly governance polls or emergency/weekly executive votes.

An instance of `dss-defender` is then deployed with these parameters. This disables the core logic described in MIP91c2 of any previously deployed instance.

### MIP91c2: Core Logic

MKR may only be deposited into an instance of `dss-defender` by MKR holders. Delegates cannot deposit delegated MKR into an instance of `dss-defender`.

Honest MKR holders should only deposit MKR if they suspect one or more malicious executives have been passed and that the hat cannot be recaptured from the attacker by the end of the GSM Pause Delay.

If there is more MKR than the `threshold amount` deposited into an instance of `dss-defender`, a permissionless parameterized `cancel function` on the contract is enabled. The `cancel function` allows anyone to cancel any executive waiting during the GSM Pause Delay. The `cancel function` would be available for the `cancel-spells duration` from the moment the `threshold amount` is exceeded.

For each instance of `dss-defender`, this mechanism can only be triggered once.  To use the `cancel function` after the `cancel-spells duration` is over, MKR holders must initialize a new instance `dss-defender` via an executive vote.

### MIP91c3: Post-activation Permissions and Events

MKR deposited into an instance of `dss-defender` will be locked in the contract for the `lockup duration` from the moment it is deposited except for two cases, namely:
1. A majority of MKR holders (including depositors) pass an executive vote to allow early withdrawals from an instance of `dss-defender`.
2. The depositors move the locked-up MKR into the ESM, at which point it will be immediately burned.

In addition to activating the `cancel function`, every instance of `dss-defender` moves all MKR deposited into it to support a default executive spell that
1. Enables an early release of locked-up MKR in that instance.
2. Creates a new instance of `dss-defender` with the same parameters as the current instance.
3. Can only be `cast` after the `cancel-spells duration` is over. This point ensures that if enough MKR supports the default executive before the `cancel-spells duration` is over, it does not get `cast` immediately and get cancelled by the attacker.

Regardless of other actions, after the `lockup duration` is over, MKR in a given instance of `dss-defender` can be withdrawn by depositors.

### MIP91c4: Deploying a New Instance

It should be ensured that there is at most one instance of `dss-defender` available at any time. The deployment of a new instance is done via an Executive Vote and is subject to the GSM Pause Delay.

After an instance of `dss-defender` is activated, there are two expected routes to deploy a new instance:
1. If MKR holders believe that a genuine attack was thwarted by an instance of `dss-defender`, then they should take control of the hat by backing the default executive of that instance described in MIP91c3. This executive will pass after the `cancel-spells` duration and restore the system to the pre-attack state. A new instance will be active and all deposited MKR will have been immediately returned to owners.
2. If MKR holders believe that an instance of `dss-defender` was triggered unnecessarily or in order to stall legitimate governance, then they may choose to deploy a new instance of `dss-defender` and enforce the full `lockup duration` of the previous instance. This would prevent depositors from participating in governance for the `lockup duration`, except for their ability to trigger the ESM.


### MIP91c5: Preliminary Work Packages

The following work packages are required before `dss-defender` can be implemented. Should MIP91c5A or MIP91c5B not be complete or highlight issues with the proposal, this MIP will not be implemented.

#### MIP91c5A: Formal Modelling

Protocol Engineering CU to formally model `dss-defender` and ensure that the protocol is not opened up to additional attack vectors or griefing attacks. Findings to be linked here.

#### MIP91c5B: Parameter Choices

Risk CU to investigate appropriate choices for `threshold amount`, `cancel-spells duration`, and `lockup duration`, thereby balancing governance security and governance efficiency. Findings to be linked here.

### MIP91c6: Technical Implementation

Pending a positive outcome of MIP91c5A and MIP91c5B, Protocol Engineering to design a smart contract implementation of `dss-defender`.

#### MIP91c6A: Proposed Code

To be added/linked here.

#### MIP91c6B: Test Cases

To be added/linked here.

#### MIP91c6A: Formal verification/Audit Information

To be added/linked here.

### MIP91c7: Initialization

After MIP91c5 is complete, an on-chain MIP poll will propose the initialization of the first instance of `dss-defender`.
