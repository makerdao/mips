# MIP42: Proposed Compensation Addendum for MakerDAO Contributors

## Preamble

```
MIP#: 42
Title: Proposed Compensation Addendum for MakerDAO Contributors
Author(s): @aburban90, @kevinwildenradt 
Contributors: n/a
Tags: process, MKR, incentive
Type: Process
Status: RFC
Date Proposed: <2021-01-20>
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: n/a
```
## Sentence Summary

MIP42: Proposes to pay contributors partially in time-locked MKR to increase value returned to contributors and directly align their interests with those of MakerDAO.

## Paragraph Summary

MIP42 attempts to ensure the incentives of contributors align with the interests of the MakerDAO protocol and further decentralize the DAO. It seeks to do this by allowing contributors to receive compensation for their work in part with time-locked MKR. The escrow period provides time for a contributor’s efforts to manifest and generate value. Contributors will have every incentive to continue to invest in the success of the MakerDAO Protocol throughout their vesting schedule.

## Component Summary

**MIP42c1: Current Pay Situation**

**MIP42c2: Proposed Solution**

**MIP42c3: Issues**

**MIP42c4: Alternative Implementation**

**MIP42c5: Value Add**

**MIP42c6: Final Thoughts**

## Motivation

Not everyone in DeFi is a whale and contributing to projects purely out of passion. Many contributors rely on their DAI income for their everyday bills and living expenses. In particular, as the pioneer and industry leader in experimenting with decentralized employment, MakerDAO focuses on bringing new people into the DeFI space. One way is through gainful employment, offering pay and benefits analogous to those offered in the traditional world.

Many contributors that join MakerDAO also believe in the project and its future, but they cannot afford to have a vested share in its prosperity. They cannot afford to buy MKR on the market and vote. They cannot afford to have a portion of their pay distributed as MKR, which they may find they need to sell on the market to supplement their income. Nevertheless, their voice is still important, and they should have a vested share in Maker’s future.

## Specification

### MIP42c1: Current Pay Situation

Contributors, in particular, Comm-Dev contributors, are currently paid based on pre-determined salaries and project budgets. They receive DAI upon submitting an invoice.

### MIP42c2: Proposed Solution

In addition to their standard compensation, contributors should also be paid MKR to incentivize participation and reward them for their contributions. We suggest a tentative but flexible 10% bonus to their invoice, to be paid as veMKR. 

 - ***Note:** The bonus need not be a fixed value. It may be best to determine it on an individual basis based on a given contributor’s personal preferences and the value their work proposes to bring.*

Simply minting and distributing new MKR creates the potential for sell pressure on MKR in the market. It also does not necessarily incentivize contributor participation.

veMKR would be time-locked MKR, vested over a given timeframe. There should be an open discussion to determine how to best maximize value.

Like veCRV, veMKR would be claimable as MKR at the end of its time-lock.

Holders of locked veMKR will be able to participate in both Governance Polls and Executive Votes. Their veMKR would not be transferrable until the time-lock expires.

veMKR should not be minted by the MakerDAO protocol. Instead, domain teams will adjust their budgets to account for a 10% (or whichever agreed upon value) allowance for these veMKR distributions.

At the time an invoice or payment is settled, the protocol will buy MKR using the domain team’s budget on the open market with DAI, convert the MKR to veMKR, and distribute it to the contributor in addition to their standard pay.

### MIP42c3: Issues

Understandably, to carefully and securely develop veMKR as a new token, provide functionality, and add a distribution process, is a high overhead task. It will require time, energy, and audits to an already overloaded developer team.

### MIP42c4: Alternative Implementation

A simpler implementation to avoid developing something complicated, like veMKR, would be to purchase the MKR at the time an invoice or payment is settled. The MKR would be held on the contributor’s behalf by the protocol and distributed to them at a later date. Voting permissions could potentially be delegated to the contributor’s address of choice via proxy.

### MIP42c5: Value Add

In the short term, these distributions will apply constant buy pressure for MKR on the market, but this is buy pressure that is borrowed from the MKR that would have been burned by the protocol when the system surplus is exceeded. In the long term, when veMKR unlocks, the sell pressure may return. On net, this means less MKR is bought and burned.

The value of incentivizing contributors and their work exceeds the cost of not burning those MKR tokens. The escrow period allows time for the contributors’ efforts to manifest and generate value. Ideally, this value will be realized long before their veMKR unlocks. Only later, the contributor will potentially reap the benefits of their work through selling unlocked MKR, if they choose to. This gives them every incentive to continue to ensure the success of the Maker Profocol throughout their vesting schedule.

- ***Example:** The contributor can propose relative proportions of veMKR and DAI, as well as the escrow period or vesting schedule to reflect the risk the protocol takes in funding the work. For example, tasks with more speculative value add could be paid largely in veMKR, and with longer escrow periods.*

### MIP42c6: Final Thoughts

As the foundation dissolves and MakerDAO enters its next chapter of decentralization, we believe this change will further align incentives for all those who contribute to the MakerDAO ecosystem. This proposal would increase the decentralization of MakerDAO by rewarding those who contribute to its growth through the investments of their time and labor.
