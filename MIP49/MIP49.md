# MIP49: Governance Rewards 

## Preamble

```
MIP#: 49
Title: Governance Rewards
Author(s): Payton Rose (@prose11), Sam MacPherson (@hexonaut)
Contributors:@LongForWisdom, @JuanJuan, @Elihu
Tags: general, governance, MKR, incentive
Type: General
Status: RFC
Date Proposed: 2021-02-03
Date Ratified: <yyyy-mm-dd>
Dependencies:
Replaces:
```

## References

* The initial idea for Governance Rewards can be found in [this forum post](https://forum.makerdao.com/t/introducing-dssgovrewards/5394)
* [MIP49c2 - Setting and Adjusting Governance Reward Parameters Subproposal [Template]](https://github.com/prose11/mips/blob/Governance-Rewards/MIPX/MIPXc2%20Subproposal%20%5BTemplate%5D.md)

## Sentence Summary

MIP49 proposes the creation of Governance Rewards that would allow the Maker community to reward MKR holders for locking their MKR tokens in Governance.

## Paragraph Summary

This MIP covers the creation of a Governance Rewards process for MKR token holders, distributing DAI as a percentage of protocol profits, based on the available liquidity of MKR in lending markets. There are limits outlined on how these reward measures may be changed by Governance actions in the future. Technical details would follow the approval of this MIP.

## Component Summary

**MIP49c1: Governance Rewards Structure**

Defines the rules for implementation of Governance Rewards.

**MIP49c2: Setting and Adjusting Governance Reward Parameters**

Establishes a mandatory Request for Comments (RFC) period for implementing and revising Governance Rewards.

**MIP49c3: Potential Risks**

Defines potential avenues for abuse that should be considered if Governance Rewards are enabled.

## Motivation

The main motivation for this proposal is to help secure the MakerDAO Protocol. The amount of MKR available to borrow on the open market remains a security concern. MKR token borrowers do not have economically aligned incentives with the Maker Protocol, and represent a danger even if there is not enough MKR available on the lending markets to pass a malicious action.

By offering incentives to MKR holders who lock their MKR tokens in Governance, this proposal hopes to encourage MKR holders to participate in securing the protocol. The following outcomes are also expected:

* It should provide a more direct value accrual mechanism compared to the burner by distributing assets to MKR holders engaged in Governance.
* It should encourage more members to participate in the governance process, as the opportunity cost from locking MKR tokens is reduced.
* It should act as a partial subsidy to the gas cost of participating in Maker Governance.

## Specification / Proposal Details

**MIP49c1 - Governance Rewards Structure**

Governance Rewards will be “opt-in”. Users locking their MKR tokens in governance will be able to choose to either receive Governance Rewards or not. The Governance Rewards will be distributed in DAI.

The amount of DAI distributed as Governance Rewards will be directly tied to the MKR burn, with a portion of DAI that would have been used to buyback and burn MKR being diverted to Governance Rewards. It will be up to Maker Governance to determine the percentage of surplus revenue to be set for rewards, with the strong recommendation that any system designed to divert DAI for Governance Rewards be based on available MKR Liquidity relative to MKR tokens locked in Governance.

Note: MKR holders should be aware of any tax and legal implications in their jurisdiction relevant to opting-in to Governance Rewards before electing to do so.

**MIP49c2 - Setting and Adjusting Governance Reward Parameters**

The Community desire for Governance Rewards must be carefully weighed against the risk of allowing a mechanism for MKR holders to reward themselves with protocol funds.

Proposed changes to the percentage of surplus revenue diverted from burn to Governance Rewards must be submitted as [MIP49c2 subproposals](https://github.com/prose11/mips/blob/Governance-Rewards/MIPX/MIPXc2%20Subproposal%20%5BTemplate%5D.md) and will be subject to the following parameters:

* Feedback Period: 6 weeks
* Frozen Period: 2 weeks

Note: Due to Governance Rewards proposal needing continual funding, MIP49c2 subproposals will constitute an application to streaming Keg payments, and will be automatically cross-filed upon proposal.

**MIP49c3 - Potential Risks**

Directly rewarding locked MKR in the governance contract introduces risks to the Maker Protocol that have the potential to result in a protocol shutdown or a fork in certain scenarios.

At the time of writing, actively-voting MKR comes to at most 10% of the total vote weight. The introduction of voting rewards encourages more MKR to be locked in the governance contract, which in turn reduces the barrier for that MKR to vote.

If enough MKR becomes active in governance solely due to the governance reward incentive, this introduces the risk of successful proposals that increase the governance reward beyond what is beneficial for the Maker Protocol in pursuit of immediate, short-term gain for MKR Holders.

This outcome could happen gradually or more quickly, and could take a number of forms. It is strongly recommended that MKR Holders that wish to ensure the long term growth and stability of the Maker Protocol view the following types of proposal with skepticism:

* Proposals that increase the percentage of surplus revenue that is diverted from MKR burn to Governance Rewards.
* Proposals that detach Governance Rewards from the surplus revenue generated by the MKR Protocol.
* Proposals that mint MKR for distribution as Governance Rewards.
* Proposals that by other means increase Governance Rewards in an inflationary way.

It is essential that the Governance Reward mechanism maintains the incentive alignment between MKR Holders receiving the reward, passive MKR Holders and the Maker Protocol as a whole.
