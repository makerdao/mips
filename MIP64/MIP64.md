# MIP64: Bug Bounty Program for MakerDAO Critical Infrastructure

## Preamble

```
MIP#: 64
Title: Bug Bounty Program for MakerDAO Critical Infrastructure
Author(s): @travinimmunefi
Contributors: @psychonaut
Tags: cu-is-001, bug-bounty
Status: Accepted
Date Proposed: 2021-12-08
Date Ratified: 2022-01-24
Forum URL: https://forum.makerdao.com/t/mip64-bug-bounty-program-for-makerdao-critical-infrastructure/12096
Ratification Poll URL: https://vote.makerdao.com/polling/QmWkPoVv
Extra: This MIP has been amended. See [MIP4c3-SP1](https://mips.makerdao.com/mips/details/MIP4c3SP1), [MIP4c3-SP3](https://mips.makerdao.com/mips/details/MIP4c3SP3), [MIP4c2-SP17](https://mips.makerdao.com/mips/details/MIP4c2SP17). The original version can be found [here](https://github.com/makerdao/mips/blob/a7f9111eaf74aa32892893778bc54bcffbd55f61/MIP64/MIP64.md).
```

## Sentence Summary

MIP64 establishes the bug bounty program for critical infrastructure of MakerDAO on Immunefi managed by the Immunefi Security Core Unit (IS-001).

## Paragraph Summary

The Bug Bounty Program is part of the ongoing fulfillment of one of the mandates of the Immunefi Security Core Unit (IS-001). IS-001 will orient its growing community of security researchers on the Immunefi bug bounty platform towards the Maker ecosystem. The program will attract whitehat hackers who find vulnerabilities and responsibly disclose them, so they are fixed before they can be exploited. Additionally, this provides an incentivized opportunity for disclosure of vulnerabilities instead of exploitation for blackhat hackers.

## Component Summary

**MIP64c1: Overview**
MIP64c1 gives an overview of the Bug Bounty Program for MakerDAO Critical Infrastructure

**MIP64c2: Scope**
MIP64c2 defines the scope of the program (assets to be covered, impacts, out-of-scope vulnerabilities, etc.)

**MIP64c3: Rewards**
MIP64c3 establishes rewards by asset impacted and severity of the impact

**MIP64c4: Rules and Eligibility**
MIP64c4 defines the rules of the program and the elegibility criteria for participants

**MIP64c5: Payment Process and Budget Request**
MIP64c5 describes how payments are to be carried out

**MIP64c6: Postmortems and Fixing of Bugs**
MIP64c6 goes into some detail about the postmortem process and the fixing of bugs

**MIP64c7: Bug Bounty Launch Process**
MIP64c7 describes the PR efforts that will ensue upon the approval of this proposal

## Motivation

With the extensive growth of the DeFi ecosystem, as well as crypto as a whole, comes greater threats. Though a significant increase in both community sizes and funds within the ecosystem indicates a maturing environment, the glitter of success also attracts nefarious individuals and groups seeking to damage the ecosystem in exchange for their own personal gains.

With MakerDAO not only being one of the largest ecosystems in the space but also a pioneer in the push for decentralization, it is a prime target for these nefarious people. Through this bug bounty program, in addition to its other activities, IS-001 aims to to prevent, or, at the very least, minimize the negative effects of their intended actions.

## Specification

> Note: The information presented in this section, and more, will be available as permanent documentation together with the Immunefi Security Core Unit at <https://immunefi.makerdao.network> as part of our transparency reporting. It will be kept up-to-date even after the publication and approval of this MIP.

### MIP64c1: Overview

The Immunefi Security Core Unit will orient its growing community of security researchers on the Immunefi bug bounty platform towards the Maker ecosystem. Leveraging its expertise with bug bounty programs across the cryptocurrency space, especially the DeFi ecosystem, IS-001 will create and propose a bug bounty program to economically incentivize further investigation of the code.

The program will attract whitehat hackers who find vulnerabilities and responsibly disclose them, so they are fixed before they can be exploited. Additionally, this provides an incentivized opportunity for disclosure of vulnerabilities instead of exploitation for blackhat hackers.

In order to achieve this, IS-001 will:

- Continuously coordinate with various Core Units in order to identify the scope of assets as well as impacts to ensure that bugs reported are those that are valuable to the ecosystem.
- Maintain the program by incorporating additional content where needed, such as additional requirements for submissions, restrictions, and information; adding and removing scope as needed; and including various improvements from knowledge gained through the operation of the overall Immunefi platform. If necessary, IS-001 will create separate bug bounty programs for different areas, for example smart contracts vs. cloud infrastructure.
- Triage all vulnerability reports together with ChainSecurity and escalate to the appropriate Core Unit as needed.
- Publicly report all critical vulnerabilities after all fixes have been implemented and verified in the format of a postmortem, and respond to inquiries from the community.

### MIP64c2: Scope

#### Assets to be Covered

The assets considered as in-scope of the bug bounty program will be those that are identified as critical infrastructure to the Maker ecosystem by IS-001. The Core Units that manage these assets would be regarded as stewards to their respective assets. Other assets that are created by Maker ecosystem entities that are not core units may be included in the bug bounty program at the discretion of IS-001. These modifications may be done during the lifespan of the bug bounty program, to account for changes in the Maker ecosystem.

#### Severity Classification and Accepted Severity Levels

All rewards for bug reports will utilize the [Immunefi Vulnerability Severity Classification System](https://immunefi.com/severity-updated/) as well as considering new standards proposed by Immunefi. Based on the feedback from the associated Core Units, customizations of this system may be adopted for particular assets.

In general, severity levels from Low to Critical for smart contracts and Low to Critical web/app assets will be accepted for the bug bounty program. Some levels may be unavailable for some assets depending on feedback from steward Core Units responsible for those assets. Other severity levels will not be considered by default due to historical data of those severity levels not being considered impactful enough for most clients of Immunefi and an overall greater expense on resources to address the vulnerability compared to an impact an exploit would create. However, the community would not be barred from communicating such reports directly to the steward Core Units or Core Units outside of the bug bounty program.

IS-001 may choose to adopt a new severity system if it deems it to be better for the bug bounty program.

#### Accepted Impacts

As a starting point, only the following impacts would be considered as in-scope for the bug bounty program. However, the published bug bounty program is authoritative when there are differences. Modifications are at the discretion of IS-001 in concert with feedback from steward core units. All other bug reports, of course, may still be reported to the respective Core Units outside of the bug bounty program.

#### Smart Contracts

- Loss of user funds staked (principal) by freezing or theft
- Loss of governance funds
- Theft of unclaimed yield
- Freezing of unclaimed yield
- Temporary freezing of funds for at least 5 blocks
- Unable to call smart contract
- Smart contract gas drainage
- Smart contract fails to deliver promised returns
- Vote manipulation
- Incorrect on-chain polling actions (e.g., user votes `yes` but it’s registered as `no`)

#### Websites and Applications

- Leak of sensitive user data
- Deletion of user data
- Redirected funds
- Direct theft of funds
- Site takedown
- Accessing sensitive pages without authorization
- Injection of text
- Users spoofing other users
- Gaining shell access on server
- Vote or voting result manipulation, including display
- Blocking access to users when they should have access

#### Out-of-Scope Vulnerabilities and Impacts

The following vulnerabilities and impacts will be considered out of scope of the bug bounty program and will not be eligible for a reward:

- Attacks that the reporter has already exploited themselves, leading to damage
- Attacks requiring access to leaked keys/credentials
- Attacks requiring access to privileged addresses (governance, etc.)

##### Smart Contracts and Blockchain

- Incorrect data supplied by third party oracles
- Not to exclude oracle manipulation/flash loan attacks
- Basic economic governance attacks (e.g., 51% attack)
- Lack of liquidity
- Best practice critiques
- Sybil attacks
- Centralization Risks

##### Websites and Apps

- Theoretical vulnerabilities without any proof or demonstration
- Content spoofing / Text injection issues
- Self-XSS
- Captcha bypass using OCR
- CSRF with no security impact (logout CSRF, change language, etc.)
- Missing HTTP Security Headers (such as X-FRAME-OPTIONS) or cookie security flags (such as “httponly”)
- Server-side information disclosure such as IPs, server names, and most stack traces
- Vulnerabilities used to enumerate or confirm the existence of users or tenants
- Vulnerabilities requiring unlikely user actions
- URL Redirects (unless combined with another vulnerability to produce a more severe vulnerability)
- Lack of SSL/TLS best practices
- DDoS vulnerabilities
- Attacks requiring privileged access from within the organization
- Feature requests
- Best practices

### MIP64c3: Rewards

The default rewards based on the type of asset impacted will be as follows:

#### Smart Contract

|Severity Level|Reward|
| --- | --- |
|Critical|Up to USD 10,000,000|
|High|Up to USD 100,000|
|Medium|USD 5,000|
|Low|USD 1,000|

Critical smart contract vulnerabilities will be further capped at 10% of economic damage, which primarily takes into consideration the funds at risk. In cases of repeatable attacks, only the first attack is considered unless the smart contract cannot be upgraded or paused. However, there is a minimum reward of USD 150,000 such that the reward amount is above that of High. Additionally, a high minimum reward helps prevent hackers from sitting on a bug report while potential economic damage increases.

High smart contract vulnerabilities will be further capped at up to 100% of the funds affected. In the event of temporary freezing, the reward doubles for every additional 5 blocks that the funds could be temporarily frozen, rounded down to the nearest multiple of 5, up to the hard cap of USD 100,000. This is implemented in order to account for the increased relative impact based on the duration of the freezing of funds.

#### Websites and Applications

|Severity Level|Reward|
| --- | --- |
|Critical|Up to USD 100,000|
|High|USD 5,000|
|Medium|USD 2,500|
|Low|USD 1,000|

Critical website and application bug reports will be rewarded with USD 100,000 only if the impact leads to a direct loss in funds or a manipulation of the votes or the voting result, as well as the modification of its display leading to a misrepresentation of the result or vote. All other impacts that would be classified as Critical would be rewarded USD 50,000.


### MIP64c4: Rules and Eligibility

#### Rules

All bug bounty hunters will be bound by the [rules on Immunefi](https://immunefi.com/rules/). Additionally, all bug bounty hunters must not perform any of the following, otherwise they lose eligibility for receiving a reward:

- Any testing with live pricing oracles or third-party smart contracts
- Attempting phishing or other social engineering attacks against our employees and/or customers
- Any testing with third-party systems and applications (e.g., browser extensions) as well as websites (e.g., SSO providers, advertising networks)
- Any denial of service attacks
- Automated testing of services that generates significant amounts of traffic


#### Eligibility

Bug reports from compensated team members of any MakerDAO Core Unit will not be eligible for a reward. Employees and team members of third-party suppliers to Core Units that operate in a technical capacity and have assets covered in this bug bounty program will also not be eligible for a reward. All team members of IS-001, and its third-party suppliers, including Immunefi Services itself, are not eligible for a reward.

Bug reports from team members and third-party suppliers of businesses and organizations that are not a MakerDAO Core Unit but have assets considered as critical infrastructure covered under the bug bounty program are also not eligible for the bug bounty program.

#### Bug Report Requirements

In addition to the standard bug report information requested by Immunefi in its bug submission page, a runnable proof of concept (PoC) will be required for all smart contract bug reports. Exceptions may be made in cases where the vulnerability is objectively evident from simply mentioning the vulnerability and where it exists. However, the triaging team will make this determination and may at its discretion require a PoC from the bug reporter.

All website and application bug reports will require a PoC.

#### Triaging Process

Initial triaging will be provided by Immunefi Services through IS-001. The triaging team will not only filter out spam but also determine the likelihood of the bug report being legitimate enough for further consideration by an entity more deeply familiar with the Maker software. For smart contract vulnerabilities, the bug report would then be escalated to ChainSecurity to provide additional emergency triaging. Afterwards, and for website and application vulnerabilities, if the bug report appears credible, then it is escalated to the steward Core Unit.

#### Bug Validation Process

The steward Core Unit receives a credible bug report and determines whether there is a true vulnerability. If not then an explanation is returned to the bug reporter. Otherwise, the Facilitator of the Core Unit must accept the bug report and confirm its severity level in the [bug report dashboard](https://bugs.immunefi.com/).

### MIP64c5: Payment Process and Budget Request

The payment process is triggered once the steward Core Unit approves the bug report as valid, as IS-001 and ChainSecurity, if relevant, have already signed off on the bug report by that time. A fix does not necessarily need to be implemented before the payment is released. However, payment may be delayed if the announcement of a payout draws unwanted attention to the existence of a vulnerability.

All payments are paid out in DAI, assuming a full 1:1 ratio with the USD. However, if the price of DAI deviates from the USD value by more than 1%, the amount of DAI will be adjusted. There are two pathways for payment. For small payments, IS-001 will send the bug bounty payment from the Core Unit's operational wallet. For large payments, DAI will be sent directly by executive spell in accordance with the [executive vote implementation process](https://docs.google.com/spreadsheets/d/1w_z5WpqxzwreCcaveB2Ye1PP5B8QAHDglzyxKHG3CHw/) with no middleman involved to hold funds. Thus, the transfer is made directly to the bug bounty hunter. If any transfer results in exhaustion of the surplus buffer, then flop auctions will recapitalize the system. Therefore, no upfront budget allocation is required for this MIP. IS-001 will decide whether to use the small or large payment process.

In order to keep the amount of executive spells to be created to a manageable level, all verified bug reports eligible for a reward in one calendar month will be bundled into one executive spell in the first week of the next calendar month. The format of the executive spell proposal will be the same with [MIP14c2](https://github.com/makerdao/mips/blob/master/MIP14/MIP14c2-Subproposal-Template.md) in order to maintain clarity and uniformity.

For bug bounty rewards over USD 1,000,000, after the first million is paid out, the remaining amount is paid out over time with up to USD 1,000,000 per consecutive month until the determined amount for payout is reached.

As its standard fee, Immunefi will charge the DAO a performance fee based on the reward paid out to the bug bounty hunter, charged on top of the reward. Per vulnerability, the first USD 5m paid out would be charged with the standard 10% fee. Any amount over USD 5m paid out will be charged with a discounted 8% fee. For example, a bug report that pays out USD 9m would have a fee of USD 5m * 10%, which would be USD 500k, added to USD 4m * 8%, which would be USD 320k, resulting in a net fee of USD 820k. Immunefi will charge no onboarding or maintenance fees. For bounties that were paid using the small payment process, Immunefi fees will be aggregated together and sent as part of the monthly payment for professional services. For bounties that were paid using the large payment process, the first payment to the bounty hunter and Immunefi will be sent in the same executive spell. In the event that the Immunefi fee is over USD 500,000, the first USD 500,000 will be paid in the same process with the bug bounty hunter and the remaining will be paid out in the next month.

### MIP64c6: Postmortems and Fixing of Bugs

#### Postmortem Process

All Critical and High bug reports will have a postmortem written by Immunefi to be published on the Immunefi Medium blog and distributed on its social media channels after the payout is made and the fixes finalized. The identity of the bug reporter may be included, either with their real name or pseudonymously, if they choose to, or they can choose to remain anonymous. Contents of the postmortem will include details about the vulnerability, the fix applied, as well as the impact should the vulnerability have been exploited.

#### Fixing of Bugs

The process for fixes to be implemented will be determined depending on the asset impacted and the severity of the bug. For smart contract vulnerabilities, Chain Security will be consulted to verify if the fix addresses the vulnerability discovered. Implementations of fixes with spells will focus on overall security in order to prevent public leakages and inadvertent exposure of the vulnerability.

### MIP64c7: Bug Bounty Launch Process

If this proposal is approved, a bug bounty program will be launched by the end of February 2021 replacing the [bug bounty program currently on HackerOne](https://hackerone.com/makerdao_bbp). PR efforts will be performed by Immunefi on its own channels such as its [Twitter account](https://twitter.com/immunefi), [Medium blog](https://immunefi.medium.com/), Discord (refreshing invite link found on https://immunefi.com), and [Telegram announcement channel](https://t.me/Immunefi). Additional PR efforts will also be performed by its PR team with appropriate PR work done in early February in order to maximize potential impact. Coordination with other Core Units will be done as needed.
