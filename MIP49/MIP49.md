# MIP49: Staking Rewards 

## Preamble

```
MIP#: 49
Title: Staking Rewards
Author(s): Payton Rose (@prose11), Sam MacPherson (@hexonaut)
Contributors:@LongForWisdom, @JuanJuan, @Elihu
Tags:
Type: General
Status: Formal Submission
Date Proposed: 2021-02-03
Date Ratified: <yyyy-mm-dd>
Dependencies:
Replaces:
```

## References

* The initial idea for Staking Rewards can be found in [this forum post](https://forum.makerdao.com/t/introducing-dssgovrewards/5394)

## Sentence Summary

MIP49 proposes the creation of Staking Rewards that would allow the Maker community to reward MKR holders for locking their MKR tokens in Governance.

## Paragraph Summary

This MIP covers the creation of a Staking Rewards process for MKR token holders, designed to distribute DAI as a percentage of protocol profits. MIP49 would entitle MKR holders to a share of this percentage based on the weight of their MKR staked in the Governance Contract. The implementation method is intentionally left open so that the protocol can adopt a more efficient method of distributing rewards, should one be developed.

## Component Summary

**MIP49c1: Staking Rewards Structure**

Defines the scope of Staking Rewards.

**MIP49c2: Adjusting the Staking Reward Percentage Parameter**

Clarifies how changes may be made to the `Stake Reward Percentage` parameter. 

**MIP49c3: Potential Risks**

Defines potential avenues for abuse that should be considered if Staking Rewards are enabled.

## Motivation

The main motivation for this proposal is to help secure the MakerDAO Protocol. The amount of MKR available to borrow on the open market remains a security concern. MKR token borrowers do not have economically aligned incentives with the Maker Protocol, and represent a danger even if there is not enough MKR available on the lending markets to pass a malicious action.

By offering incentives to MKR holders who lock their MKR tokens in Governance, this proposal hopes to encourage MKR holders to participate in securing the protocol. The following outcomes are also expected:

* It should provide a more direct value accrual mechanism compared to the burner by distributing assets to MKR holders engaged in Governance.
* It should encourage more members to participate in the governance process, as the opportunity cost from locking MKR tokens is reduced.
* It should act as a partial subsidy to the gas cost of participating in Maker Governance.

## Specification / Proposal Details

**MIP49c1 - Staking Rewards Structure**

Staking Rewards will be “opt-in”. Users locking their MKR tokens in governance will be able to choose to either receive Staking Rewards or not. The Staking Rewards will be distributed in DAI.

The amount of DAI distributed as Staking Rewards will be directly tied to the MKR burn, with a portion of DAI that would have been used to buyback and burn MKR being diverted to Staking Rewards. 

The percentage of funds redirected will be controlled by Governance and referred to as the `Stake Reward Percentage` parameter. Proceeds from the `Stake Reward Percentage` will be split among opted-in holders, based on their relative weight in the Governance Contract.

Note: MKR holders should be aware of any tax and legal implications in their jurisdiction relevant to opting-in to Staking Rewards before electing to do so.

**MIP49c2: Adjusting the Staking Reward Percentage Parameter**

The `Stake Reward Percentage` parameter will be expressed a percentage, between 0 and 100, and will dictate what percentage of funds otherwise destined for the `flapper` (surplus auction) will be instead spent on Staking Rewards.

For example, if Governance were to set `Stake Reward Percentage` to 25%, for every 100 DAI the protocol generates when the Surplus Buffer is full, 25 DAI would be diverted to reward MKR tokens staked in the Governance Contract.

Adjustments to the `Stake Reward Percentage` parameter may be made through the Weekly Governance Cycle, allowing for the community to respond quickly to changing market conditions. 


**MIP49c3 - Potential Risks**

Directly rewarding locked MKR in the governance contract introduces risks to the Maker Protocol that have the potential to result in a protocol shutdown or a fork in certain scenarios.

At the time of writing, actively-voting MKR comes to at most 10% of the total vote weight. The introduction of voting rewards encourages more MKR to be locked in the governance contract, which in turn reduces the barrier for that MKR to vote.

If enough MKR becomes active in governance solely due to the staking reward incentive, this introduces the risk of successful proposals that increase the staking reward beyond what is beneficial for the Maker Protocol in pursuit of immediate, short-term gain for MKR Holders.

This outcome could happen gradually or more quickly, and could take a number of forms. It is strongly recommended that MKR Holders that wish to ensure the long term growth and stability of the Maker Protocol view the following types of proposal with skepticism:

* Proposals that increase the percentage of surplus revenue that is diverted from MKR burn to Staking Rewards.
* Proposals that seek to detach Staking Rewards from the surplus revenue generated by the MKR Protocol.
* Proposals that mint MKR for distribution as Staking Rewards.
* Proposals that by other means increase Staking Rewards in an inflationary way.

It is essential that the Staking Reward mechanism maintains the incentive alignment between MKR Holders receiving the reward, passive MKR Holders and the Maker Protocol as a whole.
