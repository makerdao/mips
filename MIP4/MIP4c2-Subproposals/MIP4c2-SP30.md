# MIP4c2-SP30: Amend Interim Facilitator Appointment Process

## Preamble

```
MIP4c2-SP#: 30
MIP to be amended: MIP41
Author(s): @LongForWisdom
Contributors: @Patrick_J
Tags: mip-amendment
Status: Accepted
Date Proposed: 2022-11-28
Date Ratified: 2023-02-27
Forum URL: https://forum.makerdao.com/t/mip4c2-sp30-amend-interim-facilitator-appointment-process/18951
Ratification Poll URL: https://vote.makerdao.com/polling/QmSYNed5#vote-breakdown
```

## Specification

### Motivation

The existing Interim Facilitator process has proved to be less than ideal when applied. Primarily the issues are:
* Lack of speedy resolution - If the initial process fails, the Fallback Process takes at least one week. While this doesn't sound like a long time, it has the potential to cause major issues depending on the circumstances.
* Inflexibility - The existing process does not readily allow for modifications in processes by the Governance Facilitators in the event the circumstances are atypical.

This change should be valid for an amendment as the changes are limited in scope to a single process defined completely in MIP41.

This change should not impact any other MIPs.

### Amended MIPs and Components
- Amended MIP41c3 - Minor fix of wording to clarify that Governance Facilitators determine whether any exercised Facilitator Governance Powers are related to the relevant Core Unit.
- Amended MIP41c6 - Now documents Interim Facilitator responsibilities and incentives more explicitly.
- Added MIP41c7 - Details the process used to appoint Interim Facilitators, and lists some edge cases and how to handle them.

### Patch Notes

**Interim Facilitators**
* Limit the number of Interim Facilitators to one. This also limits the nominations to one. The incentive for acting as an Interim Facilitator is the compensation that would have been due to the Facilitator. Having multiple Interim Facilitators creates ambiguity around how this incentive is managed. In practice, the Interim Facilitator needs to act as a contact with governance and decision-maker, these requirements do not require more than a single Interim Facilitator.
* The maximum time an Interim Facilitator can serve is two months, this can be extended by a majority of Governance Facilitators at any time during the appointment via public communication of reasoning. This helps ensure that we never end up with a permanent Interim Facilitator.
* Interim Facilitators are now responsible for making a good-faith effort to find a permanent replacement (if the core unit is not being shut down.)
* Interim Facilitator compensation is more explicitly worded now: Equal to the previous Facilitator's compensation (if it was publicly known) or 15,000 DAI per month.

**Appointment Process**
* Gives Governance Facilitators more explicit power to modify the appointment process to suit circumstances.
* Voluntary offboarding Facilitators may nominate a single Interim Facilitator, which is immediately actioned. This is intended to reduce the period of uncertainty.
* Other Core Units may elect a willing Interim Facilitator within 72 hours of this automatic appointment. If they do so, the initial choice by the outgoing Facilitator is replaced. This gives other Core Units the power to override the outgoing Facilitator if they deem it necessary or prudent.
* Core Units get a single vote on each candidate, cast by agreement of the Facilitators of that Core Unit. This prevents the case where certain Core Units have more voting power than others and removes this incentive to onboard multiple Facilitators.
* If no Interim Facilitator exists after 72 hours, Maker Governance may onboard a Permanent Facilitator using the weekly process via subproposal disregarding feedback and frozen periods.
* If after one month, the core unit has neither an Interim Facilitator nor Permanent Facilitator, it is considered offboarded and its budgets revoked.

**Edge Cases**
* Several edge cases are detailed in the MIP that I believe covers the most likely scenarios.
* Governance Facilitators are explicitly empowered to resolve edge cases that were not anticipated.

**General Note on Governance Involvement**
* This change reduces the input Maker Governance has over Interim Facilitator selection in favor of speed and maintaining continuity.
* Empowering the existing Facilitators in this way should be safe given:
	* The power Maker Governance exercises over funds.
	* A majority of Facilitators are honest actors.
	* Interim Appointments are time-limited.

### Amendment Pull Request

https://github.com/makerdao/mips/pull/711/

### Relevant Information

Forum threads regarding the recent interim facilitator process at the CES-001 core unit:
- <https://forum.makerdao.com/t/interim-facilitator-ratification-ces-001/18886>
- <https://forum.makerdao.com/t/fallback-interim-facilitator-selection-process-ces-001/18911>
