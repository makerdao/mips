# MIP77: Delegates in the Maker Protocol

## Preamble

```
MIP#: 77
Title: MakerDAO Delegates
Author(s): @Patrick_J
Contributors: @LongForWisdom, @blimpa, @psychonaut, @prose11
Tags: delegates, mip-set, delegates-mip-set, process
Type: Process
Status: RFC
Date Proposed: 2022-07-29
Date Ratified: <yyyy-mm-dd>
Dependencies: <List of dependent MIPs>
Replaces: MIP61
```

## Note

This MIP is intended to be voted on as a MIP Set along with:

* [MIP78: Recognized Delegate DAI Compensation](https://forum.makerdao.com/t/mipyy-recognized-delegate-dai-compensation/16906).
* [MIP79: Recognized Delegate MKR Compensation](https://forum.makerdao.com/t/mipzz-recognized-delegate-mkr-compensation/16907).

It is recommended that all three MIPs are read to understand the totality of the changes being proposed.

## References

- [Delegate platform template](https://github.com/makerdao/community/blob/master/governance/delegates/template/profile.md).
- [Contract Verification Instructions #1](https://dux.makerdao.network/Verifying-a-delegate-contract-on-Etherscan-df677c604ac94911ae071fedc6a98ed2)
- [Contract Verification Instructions #2](https://github.com/brianmcmichael/makerdao-stuff/blob/master/VerifyVoteDelegate.md)

## Sentence Summary

MIP77 provides a base definition of the role of delegates within the Maker Protocol. In addition, it delineates the distinction between a Shadow Delegate and a Recognized Delegate.

## Paragraph Summary

MIP77 provides a base definition of the role of delegates within the Maker Protocol. In addition, it delineates the key distinctions between a Shadow Delegate and a Recognized Delegate. MIP77 outlines how any individual or group may become a Recognized Delegate and the metrics used to monitor Recognized Delegates. MIP77 acts as a foundation for further iteration on the role of Recognized Delegates as the Maker Protocol matures.

## Component Summary

**MIP77c1: Definitions** 

MIP77c1 defines key terms relating to delegation.

**MIP77c2: Becoming a Recognized Delegate** 

MIP77c2 outlines how a delegate may become a Recognized Delegate.

**MIP77c3: Recognized Delegate Code of Conduct** 

MIP77c3 specifies the Recognized Delegate Code of Conduct.

**MIP77c4: Recognized Delegate Roles and Responsibilities**

MIP77c4 defines the base roles and responsibilities of Recognized Delegates within the Maker Protocol.

**MIP77c5: Recognized Delegate Metrics**

MIP77c5 defines the relevant metrics that the Governance Facilitators will use to monitor the activity of Recognized Delegates.

**MIP77c6: Recognized Delegate Metric Reset**

MIP77c6 describes the process for a Recognized Delegate to reset the metrics displayed on the voting portal.

**MIP77c7: Recognized Delegate Resignation**

MIP77c7 lays out the steps for a Recognized Delegate to resign.

## Motivation

MIP77 provides a baseline definition of the Recognized Delegate role within the Maker Protocol. However, by design, it does not fully encompass all the roles and responsibilities that a Recognized Delegate may wish to undertake. Instead, it is preferred to leave the majority of this interpretation to the Recognized Delegates themselves to provide a rich and diverse array of delegates from which MKR holders may select their chosen representative(s) for their delegated MKR.

Nevertheless, setting some fundamental roles and responsibilities to align expectations between the Maker Community, MKR holders, Core Units, and Recognized Delegates is crucial.

MIP77 acts as a foundational MIP upon which additional MIPs may interface to further iterate upon the Recognized Delegate role. This includes mooted proposals such as Executive Delegates and Specialized Delegates, which should use this framework to develop the system further.

## Specification / Proposal Details

### MIP77c1: Definitions

#### Delegate

Any individual or group that has ownership of a delegate contract.

#### Delegator

Any MKR holder that has delegated MKR token voting power to a delegate.

#### Delegate Contract

A smart contract that can be created permisionlessly to allow MKR holders to delegate the voting power of their tokens to the contract owner, the delegate. The delegate can only use these tokens to vote; they cannot be transferred. This means they cannot be used to trigger Emergency Shutdown via the Emergency Shutdown Module.

#### Recognized Delegate

Any delegate that meets the criteria defined in MIP77c2, as determined by a majority of Governance Facilitators. These delegates may associate a name with their delegate contract and will be listed prominently in the UI.

The following are some of the benefits of becoming a Recognized Delegate in the Maker Protocol:

* Recognized Delegates are listed prominently on the voting portal compared to Shadow Delegates. A prominent listing on the voting portal provides an advantage over shadow delegates to Recognized Delegates when competing for delegators.
* Recognized Delegates are eligible for DAI and MKR compensation from the Maker Protocol under MIP78 and MIP79.
* Becoming a Recognized Delegate carries prestige as a prominent community member and a greater ability to influence DAO activity and proceedings to align with the aims and ambitions of the Recognized Delegate.

#### Shadow Delegate

Any delegate that does not meet the requirements to become a Recognized Delegate. These delegates may not associate a name with their delegate contract but will still be listed in the UI.

### MIP77c2: Becoming a Recognized Delegate

The followings steps must be undertaken by any delegate wishing to become a Recognized Delegate in the Maker Protocol, although they need not be completed in this specific order:
1. **Inform a Governance Facilitator of the intention to become a Recognized Delegate**.
2. **Read and sign-up for the Delegates Code of Conduct**. The canonical Code of Conduct is defined in MIP77c3. The sign-up method is left at the discretion of the delegate. Some options include:
   * Signing a message on-chain.
   * Confirming that they have read and agreed to it within their Recognized Delegate Platform post (see step 3).
   * Upload a copy of the Code of Conduct to a content-addressed distributed file system with a statement saying they have agreed to it. For example, IPFS or Swarm.
3.  **Fill in and post a Recognized Delegate Platform to the delegates category of the MakerDAO forum**. The Recognized Delegate Platform is a chance for delegates to lay out what they stand for as a delegate within MakerDAO. It is the lens through which MKR Holders will see Recognized Delegates and their actions. Deviation from the template is acceptable, but delegates should try to cover everything in the template. Contact details and Conflict of Interest disclosures are mandatory. The sections that can be ignored are marked as "optional".
4.  **Participate in a 'Meet Your Delegate Meeting'**. The Governance Facilitators will schedule this in collaboration with prospective Recognized Delegates and will host and manage the meeting recording. The Governance Facilitators will arrange for the meeting recording to be uploaded to the MakerDAO youtube channel. The Governance Facilitators can arrange to remove the recording in the future if the participant wishes to cease being a Recognized Delegate (see MIP77c7). There is no requirement for a prospective Recognized Delegate to appear on camera, but audio is required. The general format of these meetings is as follows:
    * 30 minutes total duration.
    * 5-10 minutes presentation by the delegate highlighting their platform, relevant background and what they feel they can offer as a MakerDAO Recognized Delegate.
    * The remaining time will be used for a Question and Answer session for members of the Maker Community to ask questions of the delegate. 
5.  **Set up a delegate contract using the voting portal UI [here](https://vote.makerdao.com/account)**. It is recommended that delegates verify the contract on etherscan (instructions [here](https://dux.makerdao.network/Verifying-a-delegate-contract-on-Etherscan-df677c604ac94911ae071fedc6a98ed2) and [here](https://github.com/brianmcmichael/makerdao-stuff/blob/master/VerifyVoteDelegate.md)).
6.  **Add Recognized Delegate details to GitHub**. A Pull Request should be made to the MakerDAO Community Github repo. The Pull Request should include updated versions of the template files that can be found [here](https://github.com/makerdao/community/tree/master/governance/delegates/template). The addition of an avatar is not required but is recommended. These files should be copied to a new folder whose name matches the delegate contract address. The Governance Facilitators can arrange assistance with this step if required.

### MIP77c3: Recognized Delegate Code of Conduct

#### Good Faith

Recognized Delegates should always act with honesty, integrity, and transparency.

#### Best Interest

Recognized Delegates should operate and vote in what they believe is in the best interests of the Maker Protocol.

#### Due Care and Attention

Recognized Delegates should make a professional and unbiased review of each proposal before submitting their vote.

#### Communication

Recognized Delegates should ensure that they communicate the rationale behind each of their votes in a clear and accessible way.

#### Professional Knowledge

Recognized Delegates should maintain a working knowledge of developments at Maker and in the wider cryptocurrency space.

#### Conflicts of Interest

Recognized Delegates should avoid conflicts of interest and mitigate their impact when not possible. Disclose in writing any conflicts of interest. Publicize any offer of external compensation related to delegation or the Maker Protocol.

#### Availability

Recognized Delegates should - within reason - be accessible to the community to answer questions, respond to comments, and discuss issues.

### MIP77c4: Roles and Responsibilities of Recognized Delegates

The role of a Recognized Delegate can be expressed in two parts:

1. To express opinion in on-chain Governance processes by casting regular votes.
2. To communicate their voting decisions and the rationale behind them.

Recognized Delegates expressing their opinion by voting is essential to the Governance process at MakerDAO, particularly regarding Executive Votes, as these execute the technical changes required for the operation of the Maker Protocol.

By expecting Recognized Delegates to communicate their votes, we can ensure that there is sufficient transparency to allow delegators to evaluate whether their chosen Recognized Delegate is acting in their and the Maker Protocol's best interests. It also provides valuable feedback to proposal authors. If a proposal is unsuccessful, this feedback is crucial and may allow a refined proposal to pass the Governance process.

Beyond this, Recognized Delegates may take on additional roles and responsibilities as they see fit. Examples might include:
- Authoring Governance proposals.
- Evaluating Proposals in the pre-polling stage on the MakerDAO forum.
- Participating in calls and discussions centred on issues related to mMakerDAO.

Future MIPs that build upon the Recognized Delegate framework may require that Recognized Delegates take on additional roles and responsibilities - but these two responsibilities should remain intact.

### MIP77c5: Recognized Delegate Metrics

#### Participation Metric

The participation metric is a percentage of all on-chain polls and executive proposals a delegate has voted on. For this metric, "Abstain" is a valid vote. Executive Votes and polls are tracked separately and also as a combined value.

For example, a score of 100% would mean that a Delegate has voted in all possible polls since they started their role as a Recognized Delegate.

It is expected that Recognized Delegates vote on Executive Proposals, or voice their explicit opposition, within 72 hours of them being posted to the voting portal.

Failing to vote on an Executive Vote may occur in an emergency or when a Recognized Delegate disagrees fundamentally with the contents. Failing to vote for an Executive Vote does not count against Recognized Delegates for participation tracking if they can provide sound reasoning for their abstention, as assessed by the Governance Facilitators. 

The outcome of an Executive Vote will have no bearing on participation tracking for that Executive Vote. 

However, the Governance Facilitators strongly recommend that Recognized Delegates and delegators consider the security and operational risks that opposing an Executive Vote poses to the Maker Protocol.

#### Communication Metric

The communication metric is  expressed as a percentage and contains two components:
1. Has the Recognized Delegate communicated how they voted on a proposal?
2. Has the Recognized Delegate given a rationale for the voting decision?

Recognized Delegates are rewarded with a higher score for providing the reasoning behind their voting decisions. For example, if a Recognized Delegate communicates a vote without reasoning, they receive a score of 50% for that vote. On the other hand, if they communicate their vote with reasoning, they receive a score of 100%. An overall score is calculated by taking the mean average for all votes.

For example, a score of 100% would mean a Recognized Delegate communicated all of their voting decisions AND gave reasons for reaching these decisions. On the other hand, a score of 50% would indicate that a Recognized Delegate conveyed their choices but did not provide any reasoning for these decisions. A score of 75% might suggest a Recognized Delegate had communicated reasoning approximately half of the time but always communicated how they voted.

Recognized Delegates are expected to communicate their vote **within seven days** of a Governance Poll concluding, or from the execution of an Executive Vote. The exception to this is when a Recognized Delegate is opposing an Executive Vote, see the discussion above regarding the participation metric.

The assessment of reasoning for any given vote is subjective. Governance Facilitators have the final say on whether the provided reasoning is sufficient.

#### Metric Tracking

The Governance Facilitators are responsible for tracking the communication and participation metrics and for ensuring their accuracy. If a Recognized Delegate has a query regarding their metrics, they should contact a Governance Facilitator.

Metrics will be displayed on the delegate cards on the [voting portal](https://vote.makerdao.com/delegates) with a further breakdown on each Recognized Delegate's profile. The Governance Facilitators should aim to do this weekly, where possible. The calculated metrics will be:

* The metrics for the last twelve months - these will be the primary metrics displayed in the UI.
* The metrics for the total duration of time a Recognized Delegate has been active.
* The metrics for the last three months - these will be used to calculate Recognized Delegate DAI compensation (see MIP78) and by extension MKR Vesting (see MIP79).

When a Recognized Delegate moves to a new delegate contract due to their previous one expiring, their metrics will be ported over with their Recognized Delegate profile.

### MIP77c6: Recognized Delegate Metric Reset

Recognized Delegate metrics will only apply to the most recent 12-month period. However, there are reasons why a Recognized Delegate's ability to perform the role may temporarily be disrupted. Examples of valid reasons could include technical issues, accidents, illness, family leave, or vacation. Similarly, a Recognized Delegate's personal circumstances may change allowing them to devote more time to their role as a Recognized Delegate.

In this instance, a Recognized Delegate may request to reset their tracked metrics. Such a request should be approved by a majority of Governance Facilitators. Recognized Delegates should post requests to reset metrics and the reasoning for the request to the MakerDAO forum and notify a Governance Facilitator. This can only be done once every twelve months to prevent system abuse.

A Recognized Delegate may choose any date within the last three months as a new start date for their metric tracking - this is useful if a Recognized Delegate wishes to demonstrate a renewed commitment to participating and communicating their votes prior to requesting a metric reset.

Once a request has been made and approved by the Governance Facilitators, the Governance Facilitators will reset the metrics displayed in the UI. This also applies to the three-month metrics used for Delegate Compensation. An indication that a Recognized Delegate has reset their metrics will be displayed in the UI.

Upon ratification of this MIP all Recognized Delegates will have the option to reset their metrics, regardless of how long they have been active.

### MIP77c7: Recognized Delegate Resignation

If a Recognized Delegate wishes to step down from their role, they should take steps to ensure that their delegators are informed. At a minimum, this should include a post in their Delegate Platform thread. The Governance Facilitators recommend that one month's notice is appropriate.

The Governance Facilitators will organize the removal of the Recognized Delegate from the UI, once they have been informed of their resignation.