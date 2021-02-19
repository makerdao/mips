# MIP4: MIP Amendment and Removal Process

## Preamble

```
MIP#: 4
Title: MIP Amendment and Removal Process
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Contributors: @LongForWisdom
Type: Process
Status: Accepted
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Dependencies: n/a
Replaces: n/a
  ```

## References

**[MIP4c2-Subproposal-Template.md](MIP4c2-Subproposal-Template.md)**
**[MIP4c3-Subproposal-Template.md](MIP4c3-Subproposal-Template.md)**

## Sentence Summary

MIP4 defines processes for the amendment and removal of accepted MIPs.

## Paragraph Summary

The Amendment and Removal Process-MIP outlines the process for very small and relatively superficial changes to MIPs. This MIP Contains two Process Components, the first dealing with the Removal of ratified MIPs, and the second dealing with Amending current active MIPs.

## Component Summary

**MIP4c1: Purpose Description**
Suggests the purpose of the amendment and removal processes and possible reasons for using each process.

**MIP4c2: Amendment Process for MIPs Older than 3 Months**
A process component which defines a method and template for the amendment of an accepted MIP older than 3 Months.

**MIP4c3: Amendment Process for MIPs Younger than 3 Months**
A process component which defines a method and template for the amendment of an accepted MIP younger than 3 Months.

**MIP4c4: MIP Removal Process**
A process component which defines a method and template for the removal of an accepted MIP.

## Motivation

The motivation behind this proposal is that changing small details to MIPs should not require the original MIP to become obsolete or replaced, so this Process-MIP is needed to define and outline the process behind making these changes to MIPs once they have already been ratified and implemented. Additionally, this MIP defines the process for the removal of MIPs that are have become no longer useful.

## Specification / Proposal Details

### MIP4c1: Purpose Description

**Amendments**
MIP Amendments that preserve the MIP number can be performed as long as there are no changes to the logic of the MIP or to the MIP's external output dependencies. They should only be used when minor changes are required.

Amendments to MIPs older than 3 months since acceptance will follow the normal process associated with the monthly governance cycle, with rules outlines in c2. 

MIPs younger than 3 months since acceptance will follow a different set of rules outlined in c3. These enable younger MIPs to be amended more quickly.

Amendments to multiple MIPs are allowed to be submitted as a single proposal if the changes are linked in some way like being part of a MIP set or part of a larger change that affects multiple MIPs.

**Validity**
The validity of MIP Amendments is ultimately up to the community but possible reasons for amendments could be (but are not limited to):

- A formatting change
- Typos
- Rewording/clarification

MIP Amendments are invalid if, based on the assessment of the community, the changes are so severe that they should be achieved through a MIP replacement instead.

**Removals**
MIP4 also enables the removal of MIPs that are no longer useful. If there are other MIPs that depend on a MIP that is being removed, they must also be removed in the same governance cycle, or the proposal will be invalid.

### MIP4c2: Amendment Process for MIPs Older than 3 Months

MIP4c2 is a Process MIP component that regulates the amendment of one or multiple Accepted MIPs **that are older than 3 months.**

- **Default Feedback Period**: 3 month
- **Frozen Period**: 1 month
- **Governance Cycle**: Monthly
- **Other Requirements**: None.

All MIP4c2 subproposals must use the template located at **[MIP4c2-Subproposal-Template.md](MIP4c2-Subproposal-Template.md)**.

### MIP4c3: Amendment Process for MIPs Younger than 3 Months

MIP4c3 is a Process MIP component that regulates the amendment of one or multiple Accepted MIPs **that are Younger than 3 months.**

Amendment Subproposals must be submitted to RFC for one week, for the Default Feedback Period. This is followed by a one week duration Signal Request thread, during which the Amendment proposal cannot be changed, fulfilling the 1 week frozen period.

- **Default Feedback Period**: 1 week
- **Frozen Period**: 1 week
- **Governance Cycle**: Weekly
- **Other Requirements**: 7-day Signal Request Thread, passing with 51%.

All MIP4c2 subproposals must use the template located at **[MIP4c3-Subproposal-Template.md](MIP4c3-Subproposal-Template.md)**.

### MIP4c4: MIP Removal Process

MIP4c4 is a Process MIP component that allows the removal of an Accepted MIP using a subproposal. MIP4c4 subproposals have the following parameters:

- **Default Feedback Period**: 3 months
- **Frozen Period**: 1 month

MIP4c3 subproposals must use the template located at **[MIP4c4-Subproposal-Template.md](MIP4c4-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.
