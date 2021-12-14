# MIP64: Bug Bounty Program

## Preamble

```
MIP#: 64
Title: Bug Bounty Program
Author(s): @travinimmunefi
Contributors: @psychonaut
Tags: cu-is-001, bug bounty
Status: RFC
Date Applied: 2021-12-08
Date Ratified: <yyyy-mm-dd>
```

## Sentence Summary

MIP64 establishes the bug bounty program for MakerDAO on Immunefi managed by the Immunefi Security Core Unit (IS-001).

## Specification

_Note: the information presented in this section, and more, will be available as permanent documentation together with the Immunefi Security CU at https://immunefi.makerdao.network as part of our transparency reporting. It will be kept up-to-date even after the publication and approval of this MIP._

### Overview

The Immunefi Security Core Unit (IS-001) will orient its growing community of security researchers on the Immunefi bug bounty platform towards the Maker ecosystem. Leveraging its expertise with bug bounty programs across the cryptocurrency space, especially the DeFi ecosystem, IS-001 will create and propose a bug bounty program to economically incentivize further investigation of the code.

The program will attract whitehat hackers who find vulnerabilities and responsibly disclose them, so they are fixed before they can be exploited. Additionally, this provides an incentivized opportunity for disclosure of vulnerabilities instead of exploitation for blackhat hackers.

In order to achieve this, IS-001 will:

* Continuously coordinate with various Core Units in order to identify the scope of assets as well as impacts to ensure that bugs reported are those that are valuable to the ecosystem.
* Maintain the program by incorporating additional content where needed, such as additional requirements for submissions, restrictions, and information; adding and removing scope as needed; and including various improvements from knowledge gained through the operation of the overall Immunefi platform. If necessary, IS-001 will create separate bug bounty programs for different areas, for example smart contracts vs. cloud infrastructure.
* Triage all vulnerability reports together with ChainSecurity and escalate to the appropriate Core Unit as needed.
* Publicly report all critical vulnerabilities after all fixes have been implemented and verified in the format of a postmortem, and respond to inquiries from the community.

### Assets to be Covered

The assets considered as in-scope of the bug bounty program will be those that are identified as critical infrastructure to the Maker ecosystem by IS-001. The Core Units that manage these assets would be regarded as stewards to their respective assets. Other assets that are created by Maker ecosystem entities that are not core units may be included in the bug bounty program at the discretion of IS-001.

### Severity Classification and Accepted Severity Levels

All rewards for bug reports will utilize the [Immunefi Vulnerability Severity Classification System](https://immunefi.com/severity-updated/) as well as considering new standards proposed by Immunefi. Based on the feedback from the associated Core Units, customizations of this system may be adopted for particular assets.

In general, severity levels from Low to Critical for smart contracts and Low to Critical web/app assets will be accepted for the bug bounty program. Some levels may be unavailable for some assets depending on feedback from steward Core Units responsible for those assets. Other severity levels will not be considered by default due to historical data of those severity levels not being considered impactful enough for most clients of Immunefi and an overall greater expense on resources to address the vulnerability compared to an impact an exploit would create. However, the community would not be barred from communicating such reports directly to the steward Core Unit(s) outside of the bug bounty program.

### Accepted Impacts

Only the following impacts would be considered as in-scope for the bug bounty program. All other bug reports of course may still be reported directly to the respective Core Units outside of the bug bounty program.

#### Smart Contracts

* Loss of user funds staked (principal) by freezing or theft
* Loss of governance funds
* Theft of unclaimed yield
* Freezing of unclaimed yield
* Temporary freezing of funds for at least 5 blocks
* Unable to call smart contract
* Smart contract gas drainage
* Smart contract fails to deliver promised returns
* Vote manipulation
* Incorrect on-chain polling actions (e.g., user votes yes but it’s registered as no)

#### Websites and Applications

* Leak of sensitive user data
* Deletion of user data
* Redirected funds
* Direct theft of funds
* Site takedown
* Accessing sensitive pages without authorization
* Injection of text
* Users spoofing other users
* Gaining shell access on server
* Vote or voting result manipulation, including display
* Blocking access to users when they should have access

### Rewards

The default rewards based on the type of asset impacted will be as follows.

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

Critical website and application bug reports will be rewarded with USD 100,000 only if the impact leads to a direct loss in funds or a manipulation of the votes or the voting result, as well as the modification of its display leading to a misrepresentation of the result or vote. All other impacts that would be classified as Critical would be rewarded no more than USD 50,000.

### Bug Report Requirements

In addition to the standard bug report information requested by Immunefi in its bug submission page, a runnable proof of concept (PoC) will be required for all smart contract bug reports. Exceptions may be made in cases where the vulnerability is objectively evident from simply mentioning the vulnerability and where it exists. However, the triaging team will make this determination and may at its discretion require a PoC from the bug reporter.

All website and application bug reports will require a PoC.

### Rules

All bug bounty hunters will be bound by the [rules on Immunefi](https://immunefi.com/rules/). Additionally, all bug bounty hunters must not perform any of the following, otherwise they lose eligibility for receiving a reward:

* Any testing with live pricing oracles or third party smart contracts
* Attempting phishing or other social engineering attacks against our employees and/or customers
* Any testing with third party systems and applications (e.g. browser extensions) as well as websites (e.g. SSO providers, advertising networks)
* Any denial of service attacks
* Automated testing of services that generates significant amounts of traffic

### Out of Scope Vulnerabilities and Impacts

The following vulnerabilities and impacts will be considered out of scope of the bug bounty program and will not be eligible for a reward.

* Attacks that the reporter has already exploited themselves, leading to damage
* Attacks requiring access to leaked keys/credentials
* Attacks requiring access to privileged addresses (governance, etc.)

#### Smart Contracts and Blockchain

* Incorrect data supplied by third party oracles
  * Not to exclude oracle manipulation/flash loan attacks
* Basic economic governance attacks (e.g. 51% attack)
* Lack of liquidity
* Best practice critiques
* Sybil attacks
* Centralization Risks

#### Websites and Apps

* Theoretical vulnerabilities without any proof or demonstration
* Content spoofing / Text injection issues
* Self-XSS
* Captcha bypass using OCR
* CSRF with no security impact (logout CSRF, change language, etc.)
* Missing HTTP Security Headers (such as X-FRAME-OPTIONS) or cookie security flags (such as “httponly”)
* Server-side information disclosure such as IPs, server names, and most stack traces
* Vulnerabilities used to enumerate or confirm the existence of users or tenants
* Vulnerabilities requiring unlikely user actions
* URL Redirects (unless combined with another vulnerability to produce a more severe vulnerability)
* Lack of SSL/TLS best practices
* DDoS vulnerabilities
* Attacks requiring privileged access from within the organization
* Feature requests
* Best practices

### Eligibility

Bug reports from compensated team members of any MakerDAO Core Unit will not be eligible for a reward. Employees and team members of third party suppliers to Core Units that operate in a technical capacity and have assets covered in this bug bounty program, will also not be eligible for a reward. All team members of the Immunefi Security Core Unit, and its third party suppliers, including Immunefi Services itself, are not eligible for a reward.

Bug reports from team members and third party suppliers of businesses and organizations that are not a MakerDAO Core Unit but have assets considered as critical infrastructure covered under the bug bounty program are also not eligible for the bug bounty program.

### Triaging Process

Initial triaging will be provided by Immunefi Services through the Immunefi Security Core Unit. The triaging team will not only filter out spam but also determine the likelihood of the bug report being legitimate enough for further consideration by an entity more deeply familiar with the Maker software. For smart contract vulnerabilities, the bug report would then be escalated to ChainSecurity to provide additional emergency triaging. Afterwards, and for website and application vulnerabilities, the bug report appears credible then it is escalated to the steward core unit.

### Bug Validation Process

The steward CU receives a credible bug report and determines whether there is a true vulnerability. If not then an explanation is returned to the bug reporter. Otherwise, the Facilitator of the CU must accept the bug report and confirm its severity level in the [bug report dashboard](https://bugs.immunefi.com/).

### Payment Process and Budget Request

The payment process is triggered once the steward core unit approves the bug report as valid, as the Immunefi Security CU, and ChainSecurity, if relevant, have already signed off on the bug report by that time. A fix does not necessarily need to be implemented before the payment is released. However, payment may be delayed if the announcement of a payout draws unwanted attention to the existence of a vulnerability.

All payments are paid out in DAI, assuming a full 1:1 ratio with the USD. However, if the price of DAI deviates from the USD value by more than 1%, the amount of DAI will be adjusted. All payments are made directly by executive spell with no middleman involved. If any transfer results in exhaustion of the surplus buffer then flop auctions will recapitalize the system. Therefore, no upfront budget allocation is required for this MIP.

For bug bounty rewards over USD 1 000 000, after the first million is paid out, the remaining amount is paid out over time with up to USD 1 000 000 per consecutive month until the determined amount for payout is reached.

As its standard fee, Immunefi will charge the DAO a performance fee based on the reward paid out to the bug bounty hunter, charged on top of the reward. Per vulnerability, the first USD 5m paid out would be charged with the standard 10% fee. Any amount over USD 5m paid out will be charged with a discounted 8% fee. For example, a bug report that pays out USD 9m would have a fee of USD 5m * 10%, which would be USD 500k, added to USD 4m * 8%, which would be USD 320k, resulting in a net fee of USD 820k. Immunefi will charge no onboarding or maintenance fees. The first payment to the bounty hunter and Immunefi will be sent in the same executive spell. In the event that the Immunefi fee is over USD 500 000, the first USD 500 000 will be paid in the same process with the bug bounty hunter and the remaining will be paid out in the next month.

### Postmortem Process

All Critical and High bug reports will have a postmortem written by Immunefi to be published on the Immunefi Medium blog and distributed on its social media channels after the payout is made and the fixes finalized. The identity of the bug reporter may be included, either with their real name or pseudonymously, if they choose to, or they can choose to remain anonymous. Contents of the postmortem will include details about the vulnerability, the fix applied, as well as the impact should the vulnerability have been exploited.