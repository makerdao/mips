# MIP9: Community Greenlight

## Preamble

```
MIP#: 9
Title: Community Greenlight
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Contributors: @LongForWisdom, Leo Jsaraceno (@Mitote), Helge Andreas Qvam (@planet_X), Elihu (@Elihu)
Tags: process, collateral-onboarding, mip-set, collateral-onboarding-mipset
Type: Process
Status: Accepted
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Last Amended: 2021-04-29
Dependencies: MIP6
Replaces: n/a
Ratification Poll URL:
Forum URL: https://forum.makerdao.com/t/mip9-community-greenlight/1911
```

## References

No referenced materials.

## Sentence Summary

MIP9 defines the process by which MKR Token Holders can signal their judgment on the value of a potential collateral type before domain teams spend time thoroughly investigating its inclusion into the Maker Protocol.

## Paragraph Summary

This proposal aims to standardize the process for allowing MKR Token Holders to inform the Domain Teams of their preferences for collateral types that have been proposed through MIP6. The preferences of the MKR Token holders are expressed in the form of an on-chain governance poll. The governance polls (Community Greenlight polls) are published at the start of the first and third weeks of the governance cycle and will run for a period of two weeks.

## Component Summary

**MIP9c1: The Community Greenlight Process**
Defines the community greenlight process and its interaction with the collateral onboarding process.

**MIP9c2: The Community Greenlight Outcomes**
Defines the possible outcomes from the community greenlight process.

**MIP9c3: The Community Greenlight Requirements**
Defines the responsibilities of the relevant Core Unit Facilitators in the community greenlight process.

**MIP9c4: Community Greenlight Poll Recommendations**
Provides recommendations for the on-chain Community Greenlight poll.

## Motivation

While domain teams are free to choose their own workload, an on-chain governance poll provides the Domain Teams key insights into the community's sentiment for each collateral type that has been proposed. In addition to this, it is important to gather the opinion of MKR Token Holders towards the proposed collateral asset before the full domain work takes place. This helps prevent work from being wasted on undesirable collateral types.

## Specification / Proposal Details

### MIP9c1: The Community Greenlight Process

- For an asset to be onboarded to the Maker Protocol, it must pass an executive vote as part of MIP12. Community greenlight is the process through which early sentiment is measured and used to direct the work of domain teams towards assets that MKR Holders will be willing to onboard after work has been completed.
- The community greenlight process for a potential collateral asset consists of an on-chain governance poll using the template defined in MIP9c4.
- The community greenlight polls occur at fixed times each governance cycle, starting on the 1st and 3rd Mondays of the month and running for a period of 2 full weeks.
- A potential collateral asset is valid for a community greenlight poll if it has a MIP6 Application that has been published on the official forum for a period of 2 weeks prior to the start date of the greenlight poll.

#### Community Greenlight Process Overview Diagram

<img width="722" alt="mip9-a" src="https://user-images.githubusercontent.com/32653033/83067877-65367500-a035-11ea-9fb9-acefca9ec366.png">

---

### MIP9c2: The Community Greenlight Outcomes

**Greenlit**

- The community greenlight poll for the potential collateral asset ends with more greenlight votes than deferred votes.
- The potential collateral asset is marked as having been greenlit by the community.
- Domain teams may feel confident in allocating time to work on the potential collateral asset.
- The potential collateral asset is now eligible for the domain greenlight process defined in MIP8.

**Deferred**

- The community greenlight poll for the potential collateral asset ends with more defer votes than greenlight votes.
- The potential collateral asset is marked as having been deferred by the community.
- Domain teams may still choose to work on a collateral type that has been deferred if they are confident that governance will approve future inclusion.
- Community greenlight polls for assets that have been deferred can be rerun in the future at the discretion of the Governance Facilitators.

**Community Greenlight Poll Scoring**

The polls are scored as follows:

- Score = Yes Votes - No Votes
- Score > 0 = Greenlit
- Score < 0 = Deferred

Community Greenlight poll scores provide a reasonable first approximation of which assets domain teams should prioritize. However, this prioritization is not binding on the domain teams. Domain teams are free to determine the order in which they perform domain greenlights and domain work.

---

### MIP9c3: The Community Greenlight Requirements

- The Governance Facilitators are responsible for creating a Community Greenlight Poll for each valid potential collateral asset bi-monthly.
- If a previously deferred potential collateral asset is included in the bi-monthly greenlight polls, a reason must be communicated to the community via the official forum before the greenlight poll occurs.
- The Collateral Engineering Services Facilitator is responsible for maintaining a list of collaterals based on the outcome of the individual Community Greenlight Polls. This list should include collateral types that have been both greenlit and deferred.
- At the Governance Facilitator’s discretion, community greenlight polls may be deferred to a later date.
- If the Governance Facilitators opt to defer community greenlight polls, a reason must be communicated to the community via the official forum before the greenlight poll was scheduled to take place.

---

### MIP9c4: Community Greenlight Poll Recommendations

Once an application has met the requirements for inclusion in an on-chain poll, as defined in MIP9c1, the Governance Facilitators will submit an on-chain poll to the voting portal. The overall structure of this poll will be at the discretion of the Governance Facilitators, but, at minimum, it must meet the poll requirements defined elsewhere in MIP9.
