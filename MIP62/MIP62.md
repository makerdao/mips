
# MIP62: Collateral Offboarding Process

## Preamble

```
MIP#: 62
Title: Collateral Offboarding Process
Author(s): GFX Labs (@gfxlabs)
Contributors: @PaperImperium, @LongForWisdom, @monkey.irish, @lollike, @DavidUtro
Tags: living
Type: process
Status: Accepted
Date Proposed: 2021-12-06
Date Ratified: 2022-01-24
Dependencies:
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip62-collateral-offboarding-process
Ratification Poll URL: https://vote.makerdao.com/polling/QmdwoZtA
Extra: This MIP has been amended. See [MIP4c3-SP2](https://mips.makerdao.com/mips/details/MIP4c3SP2). The original version can be found [here](https://github.com/makerdao/mips/blob/9a50bb789a2c6bcba337ec86c097bf2a45d92841/MIP62/MIP62.md).
```

## References

- [Offboarding Unprofitable Collaterals](https://forum.makerdao.com/t/offboarding-unprofitable-collaterals/9785)
- [An Assessment First Hand Experience And Recommendations From The AAVE Offboarding](https://forum.makerdao.com/t/an-assessment-first-hand-experience-and-recommendations-from-the-aave-offboarding/11836)
- [MIP24 (Emergency Response)](https://mips.makerdao.com/mips/details/MIP24)

## Sentence Summary

This proposal describes how to notify users of Maker vaults of collateral offboarding.

## Paragraph Summary

Periodically, collateral and vault types (ilks) are re-evaluated, which sometimes results in an offboarding of that collateral or vault type. This has created a poor user experience when vault owners are unaware of a collateral offboarding, and this MIP is designed to reduce the likelihood of a user being surprised by a liquidation due to offboarding.

## Component Summary

**MIP62c1: Technical Offboarding Process**
MIP62c1 specifies actions to be taken by specific actors within MakerDAO when offboarding a vault type.

**MIP62c2: Communication Channels and Media Assets**
MIP62c2 specifies which communication channels and media assets should be utilized to announce offboarding prior to initiating parameter changes designed to liquidate users, without penalty, during the offboarding process.

**MIP62c3: Modification of MIP62c2 Communication Channels**
MIP62c3 describes the process for adding, removing, and modifying communication channels for the process outlined in this MIP.

**MIP62c4: Expedited Offboarding**
MIP62c4 offers an expedited process in the event a collateral type needs to be removed quickly due to security or solvency concerns.

**MIP62c5: Communication Coordinator**
MIP62c5 defines a Communication Coordinator role that has responsibilities under MIP62c2 and MIP62c3.

## Motivation

There have been several instances recently where users entered official MakerDAO forums/chats to understand why they had been [suddenly liquidated, despite historically comfortable collateralization ratios](https://forum.makerdao.com/t/an-assessment-first-hand-experience-and-recommendations-from-the-aave-offboarding/11836). This is, understandably, a poor user experience. Even with liquidation penalties set to 0%, the forced unwinding of levered positions conceivably can result in user losses, as well as potentially taxable events. This MIP is designed to assist MakerDAO actors in disseminating information about upcoming collateral offboarding on a best-effort basis, and minimize the number of users who are unaware of the offboarding prior to getting their positions liquidated.

### Specific Goals

1. Codify a series of good-faith communication efforts.
2. Provide an easy-to-follow process for mandated actors and other MakerDAO contributors to follow without significant burden.
3. Minimize the number of users unaware of a collateral offboarding.
4. Provide a method to bypass these requirements in the event a collateral is being offboarded due to serious security or solvency concerns.

## Specification / Proposal Details

### MIP62c1: Technical Offboarding Process

Upon approval by Maker Governance to offboard a permissionless collateral type or vault type, the following actions are taken as soon as is practicable:

- Set debt ceiling to 0 DAI.
- Make an initial public announcement on all communication channels in [MIP62c2](https://mips.makerdao.com/mips/details/MIP62#MIP62c2).
- Make a second public announcement on all communication channels in [MIP62c2](https://mips.makerdao.com/mips/details/MIP62#MIP62c2) no later than 14 calendar days after the initial public announcement.
- Once second public announcements have been made, set the liquidation penalty to 0%.

Only after 14 calendar days have passed since beginning to initiate second public announcements may other parameter changes–including but not limited to liquidation ratio or stability fee–explicitly designed to offboard users be implemented. Examples include changes to the liquidation ratio, stability fee, or any other parameter meant to purposefully encourage liquidations of all remaining vaults in that collateral type.

### MIP62c2: Communication Channels and Media Assets

The following channels should be used for initial and second public announcements of collateral offboarding. The order of announcement publication is as follows:

The author of the collateral offboarding notice shall post to the the MakerDAO Forum detailing the recommended offboarding. This forum thread is used to inform downstream announcements on other channels.

The Communication Coordinator publishes the associated notices to:

- All public MakerDAO Calendars.
- The MakerDAO Official Discord’s Announcement channel.
- The official MakerDAO subreddit.

Partner Relationship Leads from relevant Ecosystem Actors reach out to:

- Affected collateral partners (e.g., Aave)
- Affected frontend service providers (e.g., Oasis, DeFi Saver)

Additionally, outreach may be done to cover more channels not listed here. These may include other Ecosystem Actor- or Facilitator-owned Twitter accounts, communication channels, and platforms.

Unless otherwise noted in the offboarding proposal, the Accessibility Scope Facilitator, as defined in MIP113, will take the lead and coordinate this process.

These channels, the order in which they are to be used for these communications, and who is responsible for which channel can be modified via [MIP62c3](https://mips.makerdao.com/mips/details/MIP62#MIP62c3). It is the Accessibility Scope Facilitator's responsibility to keep MIP62c2: Communication Channels and Media Assets up-to-date.

### MIP62c3: Modification of MIP62c2 Communication Channels

#### Addition of Communication Channels

New communication channels and media assets may be added to those listed under [MIP62c2](https://mips.makerdao.com/mips/details/MIP62#MIP62c2) without the requirement for governance vote by a joint public statement on the MakerDAO Forum to that effect by any two Scope Facilitators, or by public statement on the MakerDAO Forum by the Communication Coordinator. In the event a single entity holds multiple Facilitator titles, that entity still only counts as a single Scope Facilitator for the purposes of MIP62. Public statements should tag or otherwise directly notify all Accessibility Scope Facilitators, as defined in [MIP113](https://mips.makerdao.com/mips/details/MIP113#7-1-1-1-1a).

#### Removal of Communication Channels

Removal of a communication channel or media asset in [MIP62c2](https://mips.makerdao.com/mips/details/MIP62#MIP62c2) may be effected without the requirement for a governance vote by a joint public statement on the MakerDAO Forum by any two Scope Facilitators. In the event a single entity holds multiple Facilitator titles, that entity still only counts as a single Scope Facilitator for the purposes of MIP62. Public statements should tag or otherwise directly notify all Accessibility Scope Facilitators, as defined in [MIP113](https://mips.makerdao.com/mips/details/MIP113#7-1-1-1-1a).

#### Modification of Existing Communication Channels

The use of existing channels as specified in [MIP62c2](https://mips.makerdao.com/mips/details/MIP62#MIP62c2) (order in the sequence of notification, actors responsible for their use) can be modified by the same process used to add new communication channels.

### MIP62c4: Expedited Offboarding

When a collateral type threatens the security or solvency of the Maker protocol, an expedited offboarding is in order. Expedited offboardings bypass the timeline specified in [MIP62c1](https://mips.makerdao.com/mips/details/MIP62#MIP62c1) and allow the immediate modification of all relevant parameters. Expedited offboardings must:

- State in the proposal's text that the offboarding should be expedited due to an emergency or urgent concern, as defined in [MIP24](https://mips.makerdao.com/mips/details/MIP24).
- Explicitly and clearly reference this MIP component.

The public announcements defined in [MIP62c1](https://mips.makerdao.com/mips/details/MIP62#MIP62c1) must still be carried out, but their timeline no longer constrains the modification of parameters. Additionally, these announcements must communicate that it is a case of an expedited offboarding and the reasons for it.

### MIP62c5: Communication Coordinator

The Communication Coordinator has responsibilities defined in [MIP62c2](https://mips.makerdao.com/mips/details/MIP62#MIP62c2) and [MIP62c3](https://mips.makerdao.com/mips/details/MIP62#MIP62c3).

The current Communication Coordinator is the Accessibility Scope Facilitator(s), as defined in [MIP113](https://mips.makerdao.com/mips/details/MIP113#7-1-1-1-1a)

If the current Communication Coordinator is no longer willing or able to fulfill this role then MIP62c5 may be modified by any Governance Facilitator, as defined in MIP113.

- This modification does not require a governance vote.
- This modification must replace the existing Communication Coordinator.
- The new Communication Coordinator must have publicly communicated their willingness to fulfill the Communication Coordinator.
- The Governance Facilitator must publicly communicate that the modification has taken place.
