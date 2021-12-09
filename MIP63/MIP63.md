# MIP63: Maker Keeper Network

## Preamble

```
MIP#: 63
Title: Maker Keeper Network
Author(s): Sam MacPherson (@hexonaut)
Contributors: None
Type: Technical
Tags: Techincal, process, liquidations
Status: RFC
Date Proposed: 2021-12-08
Date Ratified: n/a
Dependencies: n/a
Replaces: n/a
License: AGPL3+
```

## References

* The proposed [code](https://github.com/makerdao/dss-cron)

## Sentence Summary

Maker Keeper Network is a unified repository to coordinate between multiple keeper networks.

## Paragraph Summary

The Maker Keeper Network interfaces with third-party keeper protocols to maintain Maker. This includes but is not limited to things such as poking oracles, liquidating vaults, managing the autoline, managing D3Ms, etc.

## Component Summary

**MIP63c1: Sequencer**  
Summary of `Sequencer` contract

**MIP63c2: IJob**  
Summary of `IJob` implementing contract(s)

**MIP63c3: Risk considerations**  
Comments on risk implications of adding Maker Keeper Network

**MIP63c4: Onboard/Amend Keeper Network**  
Process component for applying for an operating budget from the surplus buffer

**MIP63c5: Offboard Keeper Network**  
Process component for closing out a keeper network

## Motivation

As Maker continues to scale we need to add more redundancies in place for maintaining the system. Certain systems such as oracles and liquidations are mission critical. If a failure occurs in one of these systems, it could cause the end of DAI. This proposal seeks to unify the keeper interface and distribute the workload across many third-party networks.

## Specification

### MIP63c1: Sequencer

The primary contract for coordinating who is allowed to call keeper functions. Keepers require coordination to prevent too many actors from fighting for the same action. Without coordination, you have failed transactions and wasted gas.

Keeper implementations must respect the Sequencer and wait for their turn. Failure to respect the Sequencer can lead to ejection from the keeper ecosystem.

### MIP63c2: IJob

Maker can add new jobs as an [IJob](https://github.com/makerdao/dss-cron/blob/master/src/IJob.sol) contract. These should supply the `getNextJob(network)` function, which can perform potentially gas intensive operations to determine if a keeper action is available. It is the keeper network's job to call this every block and see if a new action is available.

### MIP63c3: Risk considerations

All keeper operations on Maker are permissionless, so there is no risk to the system other than potentially losing the budget. This module sits outside of the core modules.

The only connection is through `dss-vest`, where keeper networks are allocated a budget.

### MIP63c4: Onboard/Amend Keeper Network

This subproposal process allows keeper networks to apply for an operating budget from the Surplus Buffer.

The parameters for MIP63c4 subproposals are:

- **Feedback Period**: 3 weeks
- **Frozen Period**: 1 week

**Outcome**: Keeper network is either onboarded successfully or is rejected. If onboarded, a budget is streamed out of `dss-vest` at the next available opportunity. Network is also inserted to the `Sequencer` via `addNetwork(...)`.

MIP63c4 subproposals must use the [MIP63c4-Subproposal-Template](https://github.com/makerdao/mips/blob/master/MIP63/MIP63c4-Subproposal-Template.md) template.

### MIP63c5: Offboard Keeper Network

Any community member can begin an offboarding process. Reasons for termination include, but are not limited to:

 * Network is operating out of order. The network is continually operating out of order with respect to the Sequencer.
* Network is missing too many keeper actions when it should be executing.
* Network is not maintaining its budget limits. They frequently go outside of the min/max limit when this is able to be prevented (by streaming more DAI for example).

The parameters for MIP63c5 subproposals are:

- **Feedback Period**: 3 weeks
- **Frozen Period**: 1 week

**Outcome**: Keeper network is either offboarded successfully or they continue as-is. If offboarded, the budget will be terminated from `dss-vest` at the next available opportunity.