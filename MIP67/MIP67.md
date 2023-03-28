# MIP67: Methodology and Review Process for Structured Finance Transactions

## Preamble

```
MIP#: 67
Title: Methodology and Review Process for Structured Finance Transactions
Author(s): @luca_pro, @williamr
Contributors: @eumenes, @teej, @christiancdpetersen
Tags: mips, rwf-001-cu, love-cu, process, collateral-onboarding
Type: Process
Status: Obsolete
Date Proposed: 2022-01-07
Date Ratified: 2022-04-25
Dependencies: n/a
Replaces: n/a
Forum URL: https://forum.makerdao.com/t/mip67-methodology-and-review-process-for-structured-finance-transactions/13737
Ratification Poll URL: https://vote.makerdao.com/polling/QmWt5fov
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## References

- [Methodology for Review of MIP6 Structured Finance Transactions](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697)
- [[Informal Poll] RWF Collateral Risk Level](https://forum.makerdao.com/t/informal-poll-rwf-collateral-risk-level/12254)
- [SES Project Real-World Sandbox](https://forum.makerdao.com/t/real-world-sandbox-final-deliverable-for-consultation-round/11915)
- [MIP67c3-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP67/MIP67c3-Subproposal-Template.md)
- [Video - Focus on #4: Methodology for Structured Finance Transactions](https://forum.makerdao.com/t/focus-on-4-mip6-review-methodology-for-structured-finance-transactions/12943)

## Sentence Summary

MIP67 intends to formalise the methodology and high-level process to evaluate structured finance transactions made under the MIP6 application process.

## Paragraph Summary

MIP67 intends to (1) formally approve the [Methodology for Review of MIP6 Structured Finance Transactions](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697) published by the Real-World Finance Core Unit, and (2) introduce a high-level process that each MIP6-compliant application should undergo in order to receive, eventually, a positive endorsement from the relevant real-world CU stakeholder groups. E.g. RWF-001, SES-incubated Lending Oversight team, future CUs.

## Component Summary

**MIP67c1: Proposal Submission Process**
Defines the high-level process to submit structured finance transactions to structured finance teams.

**MIP67c2: Methodology Amendment Process**
Defines the process to make amendments to the Methodology for Review of MIP6 Structured Finance Transactions.

**MIP67c3: Methodology Amendment Template**
Defines a template to propose amendments to the Methodology for Review of MIP6 Structured Finance Transactions defined in MIP67c2.

## Motivation

**Background**

In continuing to reinforce the social contract that core units have with the Maker community, the following MIP seeks to further professionalise and standardise real-world asset onboarding.

Onboarding use cases that are not yet part of the world of smart contracts, or complex use cases in general, come with a new set of challenges that have sparked wider questions about Maker’s role within the wider monetary and lending stack. The risk inherent to so-called structured assets takes many forms: some commercial, some technical, some legal, and some reputational. Nevertheless, the process by which this type of collateral is underwritten for Maker vaults should converge on the rigour and transparency applied to other crypto-native collateral.

**Motivation details**

The Real World Finance Core Unit (“RWF CU” or RWF-001) has proposed detailed criteria to evaluate proposed MIP6 structured finance transactions (each a “Proposal”) in its [Methodology for Review of MIP6 Structured Finance Transactions](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697) (the “Methodology”). The Methodology and the criteria are built upon the [[Informal Poll] RWF Collateral Risk Level](https://forum.makerdao.com/t/informal-poll-rwf-collateral-risk-level/12254) and the [SES Project Real-World Sandbox](https://forum.makerdao.com/t/real-world-sandbox-final-deliverable-for-consultation-round/11915) report. The criteria are intended to capture “best practices” in the structured finance market and may be considered appropriate for the onboarding of real-world collateral into Maker vaults. Similar criteria may be applied to structured exposure native to the blockchain environment.

The MIP has two distinct objectives:
1. Formalise, through on-chain voting, the [Methodology](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697)
1. Define the high-level process (the “Process”) that each Proposal should follow in order to receive a positive endorsement by relevant CU stakeholder groups.

E.g., RWF CU (RWF-001), the currently SES-incubated Lending Oversight team (or “LOVE” - here represented by @luca_pro), or future CUs

The relevant stakeholder CU teams commit, as part of this MIP, to do their best to facilitate the review of each Proposal based on the process outlined below. In doing so, however, the teams will necessarily have to prioritise those Proposals that have, either, a higher chance of compliance, or a higher positive potential impact for the protocol. This prioritisation effort will necessarily come with some level of discretion, that the teams will try to qualify in their recommendations.

For the avoidance of doubt, the relevant CU stakeholder teams commit, as part of this MIP, to publicly recommend a negative vote to the Community for those Proposals that do not incorporate the criteria set forth in the [Methodology](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697) or do not follow the standardised Process described below. The teams will provide supporting evidence to both a positive and negative opinion; such evidence will include team-led analysis (when not protected by any NDA signed with the counterparty) and/ or the qualified opinion of the third-party service providers that have been engaged for their specialised, not internally available, skills.

This intention applies not only to new onboardings, but also to requests for Debt Ceiling increases or any other change of terms. This behaviour has the aim of continuously improving the quality of the applicants and of installing the appropriate checks and balances within MakerDAO. The relevant CU teams will update the Maker community as to the extent of any proposed revisions to these guidelines.

In the spirit of the decentralised and resilient governance mechanisms central to MakerDAO, **neither a positive nor negative recommendation must be considered binding and any counterparty will retain all rights to bring forward their Proposal** to the community.

## Specification / Proposal Details

### MIP67c1: Proposal Submission Process

In summary, the relevant stakeholder CU teams expect each Proposal to follow, at a minimum, a streamlined process that includes the following phases:
1. Initial engagement with the relevant structured finance CU (e.g. RWF-001), providing the CU with a reasonably detailed Proposal (not necessarily formalised yet as a MIP or Signal Request) that conforms with the [Methodology](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697) and with the appropriate time to review its high-level pillars
    * From a technical advisory perspective, the following information should also be shared:
        * Is the asset tokenized, if so, which standard does it conform to, and on which blockchain infrastructure is it deployed?
        * Can the total supply be updated? If so, how?
        * Is the asset controlled by a central actor or group?
        * Can balances be arbitrarily modified by a central actor or group?
        * Does the asset have KYC requirements?
        * Does price feeds or market data for the asset exist?
        * How can the asset be sold in case of a liquidation?

      For more details see [MIP6 Template amendment](https://forum.makerdao.com/t/mip6c3-sp2-modify-the-collateral-application-form/13787#list-of-changes-to-application-questions-5).

1. Legal consultation on the proposed structure provided by a reputable external law firm supporting the relevant CU (or potentially a future Legal CU) as external counsel
1. A public comprehensive assessment (commercial/ risk, technological, and legal) performed by the relevant stakeholder CUs e.g. RWF-001, the CES CU, and potentially a newly incubated Legal CU, resulting in a proposal that both (1) conforms with the Methodology and (2) is reasonably comparable to similar transactions in the asset class
1. A public second opinion provided by relevant oversight teams e.g. LOVE or newly incubated CUs

The proposed process is consistent with the Community’s intention to onboard high-quality, prepared, and professional counterparties with the potential to scale significantly in the medium to long term. The Process should ideally be completed prior to the submission of a formal and comprehensive MIP6 for Greenlight vote and will provide the Maker delegates with a pre-assessed transaction. The investment of time and financial resources up-front will accelerate the transition from a Greenlight vote to the activation of a Maker vault (i.e. delivery).

In the spirit of a decentralised and censorship-resistant governance process, a negative opinion by the relevant CUs e.g. RWF CU, CES CU, or any other supporting CU or group, may dissuade applicants from submitting a Proposal for public voting. **Applicants may still submit their proposal for greenlight and collateral onboarding poll votes using the MIPs process, regardless of the presence or absence of positive or negative assessments/opinions**. The CUs will continue to engage, within their mandate, with applicants whose Proposal has been officially approved via MakerDAO’s governance mechanisms.

### MIP67c2: Methodology Amendment Process

The [Methodology](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697) and Process presented in this document do not have to be considered as monolithic. We expect relevant stakeholder CUs (e.g. RWF CU, future LOVE CU, etc) to be actively involved in maintaining and evolving those, incorporating feedback coming from all internal and external stakeholders. Future MIPs will further detail how the amendment process will be approached by the CUs.

We are currently working with several counterparties to officially onboard real-world assets by utilising the suggested [Methodology](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697) and Process for the first time. Those applications will constitute the reference point for others to follow.

### MIP67c3: Methodology Amendment Template

MIP67c3-SPs will be used to define changes to the [Methodology for Review of MIP6 Structured Finance Transactions](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697). While the template provides the minimum set of fields required to submit an amendment to the Methodology, there is flexibility when it comes to adding more information. It is expected that the community will have a backlog of additional information when submitting an amendment proposal that is not yet contemplated in the MIP67C3 template.

In order to submit a MIP67c3 SP, one must create a MIP from the provided template.

MIP67c3-SP Template:

* **Feedback Period**: 4 weeks
* **Frozen Period**: 1 week
* **Subproposal Template**: [MIP67c3-Subproposal-Template.md](https://github.com/makerdao/mips/blob/master/MIP67/MIP67c3-Subproposal-Template.md)
