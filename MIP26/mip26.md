# MIP26: DssGov - Governance Contract Redesign

## Preamble
```
MIP#: 26
Title: DssGov - Governance Contract Redesign
Author(s):  Smart Contracts Domain Team
Type: Technical
Status: RFC
Date Proposed: 2020-10-06
Dependencies: 
Replaces: DSChief
Ratification Poll URL:
Forum URL: https://forum.makerdao.com/t/mip26-dssgov-governance-contract-redesign/4589
```

## Sentence Summary

This MIP defines **DssGov**, a contract replacement for **DSChief** that comes with improved security, usability and functionality for holders of the Maker governance token (MKR).

## Paragraph Summary

The Governor Contract, or DssGov for short, is a Dai Stablecoin System Contract that authorises Maker governance to make changes to the Maker protocol by supporting on-chain proposals. Unlike the existing DSChief, DssGov introduces security enhancements to prevent flashloan actions, usability improvements to enable multiple concurrent executive votes, as well as delegation functionality to allow holders to delegate their vote. This contract will also support integration with Layer 2 solutions to enable off-chain vote participation.

## Executive Summary - the proposed DssGov contract supports:

- Multiple concurrent proposals
- A threshold that must be exceeded for proposals to pass
- Delegation
- Flashloan risk prevention

The technical complexity and impact of this MIP is considered HIGH due to it being a critical part of the Maker protocol.

## Motivation

This Maker Improvement Proposal initially stemmed from a need to make the existing governance contract more secure and user friendly, however it quickly became apparent that a new contract must also introduce additional functionality such as delegation to meet community needs and ecosystem evolution.

For a summary of the existing Governance system please refer to the [Governance Chief Contract Redesign: A Pre-mip Discussion](https://forum.makerdao.com/t/governance-chief-contract-redesign-a-pre-mip-discussion/3080) and the [Chief - Detailed Documentation](https://docs.makerdao.com/smart-contract-modules/governance-module/chief-detailed-documentation) for a detailed view of the DSChief smart contract.

From a **security** perspective the above pre-MIP discussion revealed a number of motivations for change, including:
- The current governance contract implementation is exposed to transition risk when moving votes from one proposal to another because a reduced amount of MKR could be used to elect a random (and potentially malicious) proposal.
- When a new proposal gains a majority of MKR, the action of lifting a new hat is not an automatic/instant action, meaning that alternative proposals can sneak in to introduce unexpected changes.
- Stray spells can exist without expiry, potentially posing an ongoing threat to the system.
- There is no pause duration between user lock/free actions leading to a potential flashloan risk.
- Migration risk when moving to a new Chief contract (such as DssGov), where authority must be transferred which introduces a coordination problem to ensure that there is enough MKR on the new contract’s hat while also ensuring there is enough MKR in the old chief to pass the proposal.
- MKR distribution across proposals potentially weakens the current HAT and exacerbates the above transition/migration risks.

From a **usability** perspective, motivations include:
- That the current system is only able to support a single executive at a time which is unmanageable and doesn’t scale with the addition of more collateral types and risk parameters.
- That the use of the hat mechanism (the transition from one proposal to another) would not allow multiple concurrent proposals to exist.

Discussion of the above, also introduced motivations for **additional functionality**:
- Support for Layer 2 integration to facilitate off-chain voting and reduce/eliminate rising gas costs
- Support for  Delegation thereby allowing users to help secure the system even through they may not be weekly participants

Taking the above motivation as inspiration, it is evident that much of the complexity stems from the existing hat paradigm. Rethinking this design gives the Maker community an opportunity to explore more secure and usable methods of governance.

## Specification
The new design utilises a threshold mechanism that, alongside snapshotting, enables multiple concurrent executives as well as support for delegation and protection against flashloans. These features and capabilities will be described in the specifications below.

### MIP26c1: Utilizing a threshold that must be exceeded for a proposal to pass
This new design uses a variable threshold based on the amount of active MKR locked in DssGov. This threshold must be exceeded in order for a spell to be cast and make protocol changes. This is a departure from the Hat paradigm currently used, which requires users to shift their MKR from one proposal to another. In addition to the security motivations mentioned above, this design improvement also allows for the support of multiple concurrent proposals once voters have locked their MKR in DssGov.

It will be the responsibility of governance to define the threshold as a percentage of the amount of active MKR locked in DssGov. This value will be a percentage value as opposed to an absolute number because a fixed number may introduce an unreachable amount causing the system to cease to function if that value is unable to be reached.

**Voter engagement in 2020 illustrates the following levels of participation**:

![](https://i.imgur.com/SDd27CO.png)

Further risk analysis and research will be conducted to determine the correct threshold level, however initial review indicates that a level higher than 50k MKR would have been sufficient for all but one of this year’s executive votes. This design is also considering an upper boundary to the threshold to prevent accidental locking of the system if an unattainable level were to be set. This would be a constant value and if included would be voted on by Governance when accepting the design.

The concept of a threshold introduces the need to ensure that the MKR in DssGov is ‘active’ MKR, i.e., not stale or forgotten MKR, which is something expanded upon below.

### MIP26c2: Using active/inactive MKR to define the threshold
Due to the threshold relying on the amount of active MKR locked in DssGov, it becomes necessary to ensure that the locked MKR is not old, forgotten, or lost. This is important to prevent the "stale" MKR from skewing the threshold value and make it impossible for actual participating MKR to reach the required numbers to pass a proposal.

If MKR has remained inactive for a period of time as defined by governance it will be considered stale and will no longer count towards the total active amount of MKR. It is expected that this period of time will be defined as a number of weeks or months pending further analysis. Inactivity can be influenced both by the inactivity of the owner, and if the owner has delegated their MKR, then also the inactivity of the delegated address. Both periods of inactivity can have different time values as defined by governance.

It is expected that the period at which a delegate becomes inactive will be much shorter than the point at which an MKR owner becomes inactive. This is to ensure that delegates are acting in the interest of the MKR delegated to them, while the MKR owner doesn’t have to interact with the system as often to confirm their continued involvement.

If a delegate becomes inactive this means that the voting rights delegated to them will also become inactive and likewise no longer count towards the total active amount of MKR (which influences the threshold calculation). If however a delegate becomes active again after being inactive, they can reactivate the MKR delegated to them unless the owner has since removed their delegation.

Inactivity of an owner means that their delegation will be removed from any delegated address. In the event that an owner’s MKR becomes inactive, it will be possible for the MKR owner to return the MKR back to their original account as a separate transaction. Alternatively, they will be able to delegate once again if desired.

The ability to make a user’s MKR inactive is made possible through the following gas mint/burn mechanism explained in the next section.

### MIP26c3: Mint/burn function to facilitate accurate counting of MKR balances
When an MKR owner locks their MKR in DssGov, they will be minting a gas token. This gas token will allow any bot or altruistic participant to remove that user’s MKR from the total amount of active MKR if it becomes stale. Due to the existence of the gas token there will not be any cost to a bot/altruistic user for undertaking this action, which will maintain a fresh state for the threshold to reference.

Minting a gas token occurs in two instances:
1. When an owner delegates to themselves or to a delegate address they will be minting a gas token and,
2. When a delegated address begins its period of activity it will also mint a gas token.

These operations will ensure that it is possible for third parties to unwind inactive MKR from the system. Keeping the protocol updated with the correct amount of active MKR is not only important for managing the threshold, but also for a new function that we will introduce now, called snapshotting.

### MIP26c4: Using snapshots to record MKR account balances participating in governance
Snapshotting is the process of calculating MKR account balances locked in DssGov at the point in time that a proposal was created. The system will therefore only allow that maximum amount of MKR recorded at the time of the snapshot to vote on the respective proposals.

If a user adds or removes MKR after a proposal has been created, the amount of MKR recorded as part of the snapshot will not be altered for those proposals. Future proposals will use a new snapshot that will record a new MKR balance calculated at the time of the proposal’s creation.

Snapshotting is important because it eliminates the gas intensive nature of unvoting MKR from old proposals to vote for new proposals. This mechanism coupled with the threshold optimises user governance interaction with the protocol. In order to make this solution function correctly, it is important to know that in the background there are two explicit snapshots:

**User Action Snapshot** - captures the amount of voting rights a user has since they made their last action. An action could include any kind of change in their voting rights; locking, freeing, delegating their MKR, or having their MKR declared inactive due to it not being used as per MIP26c3 (the mint/burn function).

**Proposal Creation Snapshot** - records  the total active MKR amount in DssGov at the moment of proposal creation based on the user action snapshots. This value will be used to determine the threshold and quorum values. It is not possible for the proposal creation snapshot to record all user voting rights in one go - as one might do with a traditional database, instead it must reference the user action snapshot to check the user’s corresponding voting rights.

### MIP26c5: Supporting multiple proposals
Although multiple concurrent proposals are made possible through the aforementioned threshold and snapshotting mechanisms, it is worth calling this out independently as a new capability because it is the main pain point for governance participants today. Currently, users are unable to participate in multiple concurrent proposals without locking/freeing MKR from one proposal to another as part of the continuous approval voting system.

This redesign removes the need to shift MKR weights and also eliminates the need for bundling proposals as users will be able to interact with multiple concurrent proposals. As previously mentioned, these proposals will only pass if the amount of MKR in the snapshot exceeds the defined threshold.

The voting experience retains the existing ‘yes’ voting in support of a proposal, where there is no explicit ‘no’ vote. This again reinforces the importance of the threshold. This design decision has been chosen to facilitate faster voting. An alternative design would require a voting window in which yay/nay votes would contribute towards an outcome at the end of a time period. Such a time period of e.g., 3 days would prevent quick changes to risk parameters, as such the time-window solution along with the use of explicit ‘no’ votes was dropped in favor of continuous approval voting.

One can imagine the frontend implementation surfacing multiple proposals, each of which can now pass on their own independent merit. These proposals will continue to function as part of a continuous approval voting process that now references the amount of MKR in a users account at the time of snapshotting. The system will continue to use spell expiry limits and system pauses as implemented today, which will be covered further below.

### MIP26c6: Delegation

Delegation is the process of enabling another individual to vote on the owner’s behalf, whereby they are given voting rights in MKR weight, while the owner retains custody of the MKR tokens and is free to transfer them at any time. At a high level the user will lock their MKR in DssGov and either vote themselves or delegate to another address as shown below:

![](https://i.imgur.com/5NbV842.png)

This mechanism ensures that tokens do not rely on the security of third party delegation addresses, including Layer 2 solutions that may want to participate as a delegate. Locking and delegating directly from the Chief contract is a safe way to participate in delegation as tokens can only ever be returned to the MKR owner’s address.

This solution does not allow delegates to forward delegated votes to other addresses. This design decision was made due to the complexities of recording voter balances and changes across a hierarchy of potential delegates.

It is worth mentioning that snapshot rules also apply for delegates. Therefore, if a user delegates their MKR to another address, a snapshot will be created that a proceeding proposal will reference as part of it’s MKR calculation. This will ensure that the delegate is able to vote with the correct amount of MKR weight given to them.

Although the snapshot capability will not let an MKR owner vote for a proposal if they have delegated their MKR to another address, governance is always able to remove (drop) a prior proposal if it is deemed malicious by creating a new proposal which will not have a delay.

**Note**: it will not be possible for delegate addresses to stake (and burn) MKR through the Emergency Shutdown Module. Delegate addresses would however be able to participate in a governance vote that chooses to shutdown the system through normal governance voting that goes through the standard system delay (like any other governance executive).

### MIP26c7: System pauses
In the existing design, Maker requires delays to protect itself from ecosystem risks and attacks. Currently the Maker protocol relies on a 12hour delay between the time a spell is passed and when it takes effect. Similarly, the new design will rely on an executive (GovExec) with a 12hour delay to pass proposals.

However, if proposals are deemed malicious, governance can vote on a zero delay spell to cancel a previously actioned proposal. Likewise, proposals can also be created to protect against malicious variables, auction and oracle attacks with zero delay. This is illustrated below:

![](https://i.imgur.com/1pLiuJQ.png)

### MIP26c8: Flashloan Protection
The advent of flashloans allows individuals to borrow large sums of cryptocurrency and action multiple transactions within a single block without having to post any collateral. This problem has become more evident as liquidity pools have formed around governance tokens including MKR. Flashloans are prevented by ensuring that a user’s snapshot will always be at least one block older than the proposal’s snapshot.

Similarly, proposal creation avoids flashloan risks by requiring the locking of a small amount of MKR as detailed in the following section.

### MIP26c9: Decentralizing the submission of proposals
To promote decentralization yet protect the system against spam proposals, it is necessary to approve certain known addresses, such as domain teams, governance facilitators and other governance mandated actors, yet still allow all other addresses to submit proposals provided that they hold a defined amount of MKR in their account to prevent spamming.

With this feature it will be possible for approved addresses to post proposals as needed. For all other addresses, a Governance defined amount of MKR from the submitting address will be held as a bond to prevent the submission of spam proposals. Once the defined duration has elapsed, the MKR bond shall be returned to the user’s address.

Currently, no punishment has been defined for the staked MKR in the event a malicious proposal is posted. The governance community should explore whether an explicit mechanism is deemed necessary. Currently it is only possible to drop (remove) a malicious proposal by voting on a proceeding executive. The locking up of MKR when creating a proposal is however useful as previously mentioned to prevent the use of flashloans and the creation of multiple spam proposals.

### MIP26c10: One time defensive quorum to migrate from DSChief to DssGov
Transition risk surfaced as a key security motivator in the current design of the DSChief, not only when transitioning to a new proposal but also when transitioning to this new version of the governance contract and the executive proposals that it will generate.

Therefore, to ensure a smooth transition from DSChief to the New DssGov a minimum quorum will be used as a one-off defensive mechanism that protects the protocol by only enabling DssGov if the minimum quorum is exceeded. For the transition, Governance will elect a spell in DSChief which will give authority in all core contracts to DssGov and will also remove the DSChief authority from them. It is at that point that the transfer to the new governance contract will be complete, however the new DssGov will not be able to generate proposals until enough MKR has moved to it. This should be set relatively close to the existing Chief’s Hat value in order to confirm that we have buy-in from the Maker Governance community.


### MIP26c11: Layer 2 Integration
DssGov is being built independently and decoupled from any particular Layer 2 solution. Even though a Layer 2 solution is not part of this MIP, it warrants being mentioned as a capability that will be supported through DssGov and associated features. This will provide an ideal opportunity for governance voters to vote and/or delegate to an off-chain address while reducing their exposure to gas cost fluctuations.

### MIP26c12: 3rd party audits and formal verification
No audit or code review has taken place yet. DssGov will however undergo 3rd party audits and formal verification prior to an executive vote for use by the Maker Protocol.

### MIP26c13: Licensing
[AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)

