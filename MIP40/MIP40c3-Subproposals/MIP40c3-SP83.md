# MIP40c3-SP83: Modify Immunefi Security Core Unit Budget (IS-001)

## Preamble

```
MIP40c3-SP#:83
Author(s): @psychonaut
Contributors: @travinimmunefi
Tags: core-unit, cu-is-001, budget, dai-budget
Status:
Date Applied: 2022-10-04
Date Ratified: <yyyy-mm-dd>
Budget Start Date: 2022-12-01
Budget End Date: 2023-12-01
Forum URL: https://forum.makerdao.com/t/mip40c3-sp83-immunefi-security-core-unit-budget-renewal-is-001/18209
```

## Sentence Summary

Renew the DAI budget for Core Unit IS-001: Immunefi Security.

## Paragraph Summary

The Immunefi Security Core Unit (ISCU) requests a 786,830 DAI budget to sustain minimal operations for another year starting 01 Dec 2022 (option Status Quo). Due to market conditions, we propose an alternative (option Bear Market) with a reduction of 0.2 FTEs, which will slow response time and increase the likelihood of using the [MIP64c5](https://github.com/makerdao/mips/blob/master/MIP64/MIP64.md#mip64c5-payment-process-and-budget-request) process. Option Bear Market requests a 12-month budget of 427,790 DAI (approx 359k DAI less).

## Specification

### Motivation

The budget reflects the needs of the team to ensure continuity of the minimal level of service described in our Mandate ([MIP39c2-SP24](https://mips.makerdao.com/mips/details/MIP39c2SP24)). This is summarized by, but not limited to:
- Bug Bounty Program, including initial triaging.
- Monitoring of Critical Infrastructure.
- Close scrutiny of security-related issues.
- Engagement in forum discussions on security related topics.
- Polls to probe for changes in security policy.
- Governance fire drills.

### Core Unit ID

IS-001

### Common Budget Implementation

The budget is designed with the following in mind:
- Operational costs to run the Core Unit and perform its tasks.
- Operational costs of third parties contracted.
- Legal expenses.
- Having a buffer for unexpected legal, technical, or financial problems.

Therefore, a vote to ratify this subproposal means MKR holders make a commitment to a continuous funding model based on the [SES top-up mechanism](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP10.md).
![Budget diagram](https://makerdao-forum-backup.s3.dualstack.us-east-1.amazonaws.com/original/2X/1/15c3c5342924670592add4d8137f79f4ea549a15.png)
IS-001 currently has three DAI vesting streams in operation: stream IDs: 19, 32, and 34. Stream 19 and stream 34 have reached their end-date, while stream 32 completes on 2022-12-01. Upon passage of this budget proposal, before a new stream is set up by GovAlpha and PE through an executive vote, stream 19 and stream 34 will have `vest` called and all vested DAI will be immediately returned via DssBlow. The new stream being setup will be for the approved budget amount, minus any remaining DAI in stream 32.

#### Wallets

IS Auditors Wallet (2:2)
- Controlled by the IS Auditors
 Address: 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4
- Signers:
   - SES Accounting (1:2, 0xA2A855Ac8D2a92e8A5a437690875261535c8320C)
   - SES Auditing (1:2, 0xB2da57e224949acDDe173a5b8A8160c023ea86e6)
- Beneficiary:
Maker Protocol (MCD_PAUSE_PROXY, 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB)

IS Operational Wallet (2:3)
- Controlled by the IS Core Unit team    
Address: 0x124c759D1084E67B19a206ab85c4527Fab26c342
- Signers:
   - 0x2BC5fFc5De1a83a9e4cDDfA138bAEd516D70414b
   - 0xAcAf835934eE40E0d5ee3F941E283499F8Ad97eD
   - 0xFfC87601A80d3e4F0aF083a899e3fee203C23cF0

### Status Quo Budget Implementation

A total of 786,830 DAI will be streamed to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 starting 2022-12-01 and ending 2023-08-01

|Expense Category               |Total Budget Term|Monthly Equivalent|Monthly Expense Annualized (x12)|
|-------------------------------|-----------------|------------------|--------------------------------|
|Compensation & Benefits        |105,600           |8,800              |105,600                          |
|Headcount Expense Subtotal     |105600           |8800              |105600                          |
|                               |                 |                  |                                |
|Gas Expense                    |6,000             |500               |6,000                            |
|Hardware Expense               |2,500             |208               |2,500                            |
|Software Development Expense   |600,000           |50,000             |600,000                          |
|Software Expense               |1,200             |100               |1,200                            |
|Non-Headcount Expenses Subtotal|609,700           |50,808             |609,700                          |
|                               |                 |                  |                                |
|10% Contingency                |71,530            |5,961              |71,530                           |
|Grand Total                    |786,830           |65,569             |786,830                          |

### Bear Market Budget Implementation

A total of 427,790 DAI will be streamed to 0xd1F2eEf8576736C1EbA36920B957cd2aF07280F4 starting 2022-12-01 and ending 2023-08-01

|Expense Category               |Total Budget Term|Monthly Equivalent|Monthly Expense Annualized (x12)|
|-------------------------------|-----------------|------------------|--------------------------------|
|Compensation & Benefits        |79,200            |6,600              |79,200                           |
|Headcount Expense Subtotal     |79,200            |6,600              |79,200                           |
|                               |                 |                  |                                |
|Gas Expense                    |6,000             |500               |6,000                            |
|Hardware Expense               |2,500             |208               |2,500                            |
|Software Development Expense   |300,000           |25,000             |300,000                          |
|Software Expense               |1,200             |100               |1,200                            |
|Non-Headcount Expenses Subtotal|309,700           |25,808             |309,700                          |
|                               |                 |                  |                                |
|10% Contingency                |38,890            |3,241              |38,890                           |
|Grand Total                    |427,790           |35,649             |427,790                          |

### Budget Details

Compensation & Benefits reflect a 10% increase vs last year to compensate for [inflation](https://www.bls.gov/opub/ted/2022/consumer-prices-up-9-1-percent-over-the-year-ended-june-2022-largest-increase-in-40-years.htm).

Software Expenses will be used to provide for internal organizational tools and secure communications channels.

Hardware Expenses will be used to provide for team hardware (e.g., a secure laptop).

In part due to low gas prices, our operational wallet has 0.33 ETH. We last purchased gas during April 2022.

Software Development Expense reflects the amount budgets for [rapid payment for small bug bounties](https://github.com/makerdao/mips/blob/master/MIP4/MIP4c2-Subproposals/MIP4c2-SP17.md). Actual payouts are unpredictable. For the prior year, we have paid out 127,500 to whitehats and 5,500 in bounty fees to Immunefi. In view of our modest payouts, we propose a lower budget for the coming year.

### Budget Term

Dec 2022 to Dec 2023

### Increasing Value to Maker Tokenholders

ISCU seeks to prevent losses to the protocol. We have paid bug bounties for five website bugs: 5570, 5700, 9845, 8826, 9372. No valid bugs were reported in smart contracts. During the year, 113 bugs were closed as invaild (bugs in ID range 5565-11680).

### Roadmap and Objectives

We will conduct [governance fire drills](https://forum.makerdao.com/t/fire-drill-postmortem-informal-poll/16677) approximately four times per year. However, the frequency and type of fire drill may be modified depending on guidance from Governance Facilitators.

Our work running the bug bounty program and scrutiny of security-related issues is impossible to plan in advance. We promise to serve Maker with diligence, but cannot provide a roadmap. During the next year, we expect onboarding of Sidestream Auction Services, Oracles, Deco, and StarkNet Engineering.

### Headcount Planning / Team Summary

Although Travin ceased receiving compensation from July 2022, he remains a multisig signer and consults with Joshua in regard to bug reports. Travin has largely moved on to areas of his businesses outside the Immunefi bug bounty platform, but he is still in charge of activities of the Core Unit and contributes to decisions on the services that it offers to the ecosystem.

Joshua handles all day-to-day tasks associated with the Core Unit. His compensation is for 0.8 FTE.

### Contingency Planning

In a bear market context, Joshua could reduce his time to 0.6 FTE. This reduction in compensation would correspond with a reduction in response time and somewhat less scrutiny of ongoing security issues.

In a bull market context, Travin would be called upon to hire another staffer to fulfill the Core Unit’s mandate more fully. We would submit a MIP40 budget amendment to allocate additional budget and confirm this plan with MKR holders.

### Unwinding and Defunding

A Golden Parachute payout will be provided to the Core Unit for the Facilitator to distribute to their team. The amount will be three months worth of Compensation & Benefits --- 8,800 DAI x 3 months = 26,400. Any MKR accrued (vested or not) at the time of offboarding ratification will be eligible for payout. If the MKR Incentive Plan has a cliff, it will be ignored and allow the MKR amount to be transferred to the Core Unit. Excess funds will be returned to the auditors wallet.

Monitoring agents will be handed off to TechOps or other engineering staff.

### Proposal Parameters

- **Minimum Feedback Period**: 1 Month.
- **Minimum Frozen Period**: 1 Week.
- Ratification Polls for MIP40c3 subproposals involving a Core Unit Budget Modification will have different requirements to MIP51c2. Instead of binary voting, they must use multiple options as follows:
    - A: Approve status quo budget (786 830)
    - B: Approve bear market budget (427 790)
    - C: Reject budget
    - D: Abstain

In order for this Ratification Poll to conclude successfully and the contained proposal(s) move to Accepted status, each of the following conditions must be true:

* `A` or `B` vote-weight must exceed `C` vote-weight when the poll closes.
* Winning vote-weight must exceed the `Minimum Positive Participation` value of 10,000 MKR when the poll closes.

### Glossary

- Travin Keith is a representative of Immunefi Security CU Ltd, British Virgin Islands.
- Joshua Pritikin is a representative of Jpritikin Industries, Inc of Oregon USA.

Where named, these individuals act as representatives of their respective corporations and not as natural persons.

### Related documents

- [Mandate refresh](https://forum.makerdao.com/t/mip39c2-spxx-immunefi-security-core-unit-refresh-is-001/18208)
