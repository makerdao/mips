# MIP40c3: Modify Maker Talent Core Unit Budget (Subproposal Process) Template

## Preamble

```
MIP40c3-SP#: #
Author(s):
Contributors:
Tags: template
Status:
Date Applied: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
```

## Sentence Summary

## Paragraph Summary

## Specification

### Motivation

- Why are you proposing this Core Unit Budget modification?

### Core Unit ID

- Specify the Core Unit ID.
- This element specifies which Core Unit you are proposing to attach the Budget to.

### List of Budget Implementations

- This element must contain a list of at least one Budget Implementation. Each Budget Implementation must follow this format:
---
- Is it a smart contract Budget Implementation, or manual Budget Implementation?
    - If it is a smart contract Budget Implementation:
        - what is the Ethereum address that the smart contract is deployed to?
        - what kind of authorization does it need (suck authorization, authorization to draw funds from other smart contracts, etc.)
- What is the amount of Dai or other assets per month that the Budget Implementation will pay out (if any)?
    - If it is a manual Budget Implementation, at which week of the month will the executive vote to pay out the budget for the month be submitted?
- What are other circumstances that the Budget Implementation will pay out Dai or other assets, and how are the amounts determined?
- Any additional notes and clarification about how the Budget Implementation works.
---

### List of Budget Breakdowns

- This element must contain a detailed Budget Breakdown for each of the Budget Implementations in the element above. Budget Breakdowns aren't binding, but should provide as much clarity as possible to governance about how the monthly amount or other circumstances for payouts where determined, and what the current plan for their use is.
