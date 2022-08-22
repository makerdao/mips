# MIP18c4-SP1: Subproposal for Modifying Meta-Parameter Adjustments 

## Preamble
```
MIP18c4-SP#: 1
Meta-parameter to add, modify or remove: Remove the DSR Spread
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Contributors: n/a
Status: Accepted
Date of Submission: 2020-07-07
Date Ratified: 2020-07-28
```
## Sentence Summary

MIP18c4-SP1 proposes the removal of the Dai Savings Rate (DSR) Spread as a Meta-Parameter.

## Specification

### Motivation

Today, MIP18 includes both of the current recurring votes that use the weekly process: 
- Setting the Base Rate/Dai Savings Rate (DSR)
- Setting the Dai Savings Rate (DSR) Spread 

The goal of MIP18 was to take the current-day process and formalized it to meet the status quo. However, considering the new mechanics proposed in MIP17, which allows recurring votes and Risk Premium increases, it may make the DSR spread votes obsolete. Therefore, this proposal allows the community to remove the recurring bi-weekly vote for the DSR-spread in order to reduce the weekly cycle complexity of Maker Governance.

Voting for this proposal does not mean voting against the concept of having adjustable spreads directly supported by Maker governance in the future. For example, when the Maker Protocol has successfully scaled, it will make sense to re-introduce a similar mechanic to the spreads. However, this would more specifically be to deal with monetization as well as to facilitate the generation of income for MKR holders beyond the current day Risk Premium. However, we believe that this mechanic needs to be more sophisticated, so it doesn't apply an equal value extraction from low-risk and high-risk assets. Also, it needs to change very infrequently as constant changes to the monetization scheme creates an undesirable user experience.

### Proposal Details

- Remove the Dai Savings Rate (DSR) Spread from MIP18c2
- Remove the Dai Savings Rate (DSR) Spread from MIP18c3

**Note:** With the removal of the DSR Spread, this means that the Dai Savings Rate (DSR) will follow the Base Rate going forward.

### Relevant Information
- n/a
