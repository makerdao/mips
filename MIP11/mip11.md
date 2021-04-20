# MIP11: Collateral Onboarding General Risk Model Management

## Preamble
```
MIP#: 11
Title: Collateral Onboarding General Risk Model Management
Author(s): Cyrus Younessi (@DonutJr), Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Tags: process, collateral-onboarding, risk, mip-set, collateral-onboarding-mipset
Type: Process
Status: Accepted
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Dependencies: MIP0, MIP3, MIP7
Replaces: n/a
```

## References
**[MIP11c3-Subproposal-Template.md](MIP11c3-Subproposal-Template.md)**
**[MIP11c4-Subproposal-Template.md](MIP11c4-Subproposal-Template.md)**

## Sentence Summary

MIP11 defines the requirements of general risk models and how they are onboarded and offboarded from the Maker Protocol.

## Paragraph Summary

This proposal defines the process and requirements for risk teams to onboard general risk models for use in collateral onboarding in MIP12.

## Component Summary

**MIP11c1: General Risk Model Requirements**
Describes the concept of a general risk model and defines both the required components that all general risk models must have and optional components that a general risk model may have.

**MIP11c2: List of Active General Risk Models**
A list component that is kept up-to-date with the currently active general risk models.

**MIP11c3: Process for Onboarding**
A process component that defines a method and a template for onboarding a general risk model.

**MIP11c4: Process for offboarding**
A process component that defines a method and a template for offboarding a general risk model.

## Motivation

Risk models are a crucial element of the Maker Protocol's maintenance and growth. The models provide a representation of how a risk team intends to evaluate an asset or other part of the risk function. Therefore, the purpose of this proposal is to create a defined and formalized process for Risk teams to more easily onboard their models to the Maker Protocol and ultimately help grow and maintain the Protocol.

## Specification / Proposal Details

### MIP11c1: General Risk Model Requirements

**Description:** A general model provides a representation of how a risk team intends to evaluate an asset or another part of the risk function. This can help determine which assets should be given priority as approved assets make their way into the collateral pool. A general model acts as a natural filtration mechanism where collateral types are ranked against one another for prioritization purposes.

**A general model must contain a quantitative risk methodology for the evaluation of risk parameters. Optionally, it can also contain:**

1. A qualitative framework that describes the process for evaluating the fundamentals of a proposed collateral asset
2. A scoring framework for collateral assets that enables a standardized approach for converting qualitative analysis into numerical outputs. This is achieved through a ratings-based methodology.

---

### MIP11c2: List of Active General Risk Models

**Template Explanation:**
- **Sub-proposal Number (MIP11c3-SP):** #
- **Risk Team Name:** The name of the Risk Team that submitted the General Risk Model
- **General Risk Model Name:** The name of the General Risk Model
- **Date Added:** <date in (yyyy-mm-dd) format>
- **Summary:** Summary of the General Risk Model
- **Link to full documentation:** Due to the length of General Risk Models they are contained in separate documents.

**Active General Risk Models:**

- < list >

---

### MIP11c3: Process for Onboarding

MIP11c3 is a Process MIP component that allows the onboarding of a general risk model using a subproposal.

If a MIP11c3 subproposal is Accepted, The General Risk Model specified in the MIP11c3 subproposal is appended to the list in MIP11c2 by a MIP Editor.

MIP11c3 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP11c3 subproposals must use the template located at  **[MIP11c3-Subproposal-Template.md](MIP11c3-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.

---

### MIP11c4: Process for Offboarding

MIP11c4 is a Process MIP component that allows the removal of an active general risk model using a subproposal.

If a MIP11c4 subproposal is Accepted, The General Risk Model specified in the MIP11c4 Subproposal is removed from the list in MIP11c2 by a MIP Editor.

MIP11c4 subproposals have the following parameters:

- **Feedback Period:** 0 days
- **Frozen Period:** 0 days

MIP11c4 subproposals must use the template located at  **[MIP11c4-Subproposal-Template.md](MIP11c4-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.

---
