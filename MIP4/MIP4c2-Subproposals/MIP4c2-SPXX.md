# MIP4c2-SPXX: Amend Interim Facilitator Selection Process

## Preamble

```
MIP4c2-SP#: XX
MIP to be amended: MIP41
Author(s): @LongForWisdom
Contributors:
Tags: template
Status: RFC
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
```
## Specification

### Motivation

The existing interim facilitator process has proved to be less than ideal when applied. Primarily the issues are:
* Lack of speedy resolution - If the initial process fails, the fallback process takes at least one week. While this doesn't sound like a long time, it has the potential to cause major issues depending on the circumstances.
* Inflexibility - The existing process does not readily allow for modifications in processes by the Governance Facilitators in the event the circumstances are atypical.

This change should be valid for an amendment as the changes are limited in scope to a single process defined completely in MIP41.

This change should not impact any any other MIPs. 

### Amended MIPs and Components
- Amended MIP41c3 - Minor fix of wording to clarify that Governance Facilitators determine whether any exercised Facilitator Governance Powers are related to the relevant Core Unit.
- Amended MIP41c6 - Now documents Interim Facilitator responsibilities and incentives more explicitly.
- Added MIP41c7 - Details the process used to appoint Interim Facilitators, and lists some edge cases and how to handle them. 

### Patch Notes

**Interim Facilitators**
* Limit number of interim facilitators to one. This also limits the nominations to one. The incentive for acting as an interim facilitator is the compensation that would have been due the facilitator. Having multiple interim facilitators creates ambiguity around how this incentive is managed. In practice, the interim facilitator needs to act as a contact with governance and decision-maker, these requirements do not require more than a single interim facilitator.
* Maximum time an Interim Facilitator can serve is 2 months, this can be extended by a majority of governance facilitators at any time during the appointment via public communication of reasoning. This helps ensure that we never end up with a permanent Interim Facilitator.
* Interim Facilitators are now responisible for making a good faith effort to find a permanent replacement (if the core unit is not being shut down.)
* Interim Facilitator compensation is more explicitly worded now: Equal to the previous facilitator's compensation (if it was publicly known) or 15,000 DAI per month.

**Appointment Process**
* Gives Governance Facilitators more explict power to modify the appointment process to suit circumstances.
* Voluntary offboarding facilitators may nominate a single interim facilitator, which is immediately actioned. This is intended to reduce the period of uncertainty.
* Other Core Units may elect a willing interim facilitator within 72 hours of this automatic appointment. If they do so, the initial choice by the outgoing facilitator is replaced. This gives other Core Units the power to override the outgoing facilitator if they deem it necessary or prudent.
* Core Units get a single vote on each candidate, cast by agreement of the facilitators of that core unit. This prevents the case where certain core units have more voting power than others, and removes this incentive to onboard multiple facilitators.
* If no interim facilitator exists after 72 hours, Maker Governance may onboard a permenent facilitator using the weekly process via subproposal disregarding feedback and frozen periods.
* If after one month, the core unit has neither an interim facilitator, or permanent facilitator, it is considered offboarded and its budgets reokved. 

**Edge Cases**
* A number of edges cases are detailed in the MIP that I believe cover most reasonable scenarions.
* Governance Facilitators are explicitly empowered to resolve edge cases that were not anticipated. 

### Amendment Pull Request

https://github.com/makerdao/mips/pull/711/

### Relevant Information

Forum threads regarding the recent interim facilitator process at the CES-001 core unit:
https://forum.makerdao.com/t/interim-facilitator-ratification-ces-001/18886
https://forum.makerdao.com/t/fallback-interim-facilitator-selection-process-ces-001/18911
