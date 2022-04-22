# MIP40c3: Add/Modify Core Unit Budget (Subproposal Process) Template

## Preamble

```
MIP40c3-SP#: #
Author(s):
Contributors:
Tags: template
Status:
Date Applied: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
Budget Start Date: <yyyy-mm-dd>
Budget End Date: <yyyy-mm-dd>
```

## Sentence Summary

## Paragraph Summary

## Specification

### Motivation

- Why are you proposing this Core Unit Budget/modification? Clear motivator that describes how the Budget Proposal supports the strategic or organizational Objectives of the DAO.
- Should demonstrate, over the length of the Budget Term, either the potential for revenue growth or the potential for a tangible improvement in operational efficiency.

### Core Unit ID

- Specify the Core Unit ID.
- This element specifies which Core Unit you are proposing to attach the Budget to.

### List of Budget Implementations

- This element must contain a list of at least one Budget Implementation. Each Budget Implementation must follow this format:
---
- Is it a smart contract Budget Implementation, or manual Budget Implementation?
    - If it is a smart contract Budget Implementation:
        - What is the Ethereum address that the smart contract is deployed to?
        - What kind of authorization does it need (suck authorization, authorization to draw funds from other smart contracts, etc.)
- What is the amount of Dai or other assets per month that the Budget Implementation will pay out (if any)?
    - If it is a manual Budget Implementation, at which week of the month will the executive vote to pay out the budget for the month be submitted?
- What are other circumstances that the Budget Implementation will pay out Dai or other assets, and how are the amounts determined?
- Any additional notes and clarification about how the Budget Implementation works.
---

### List of Budget Breakdowns

- This element must contain a detailed Budget Breakdown for each of the Budget Implementations in the element above. Budget Breakdowns aren't binding, but should provide as much clarity as possible to governance about how the monthly amount or other circumstances for payouts where determined, and what the current plan for their use is.

### Reporting Transparency
*List of expenses by type, per the [Chart of Accounts](https://docs.google.com/spreadsheets/d/1qB1MIPCkZfdkuHSNk1udhscvTjg-mIBo/edit#gid=1506071077) and [Core Unit Operating Expense Budget Template](https://xyz)*

| Expense Category | Total Budget Term | Monthly Equivalent | Monthly Expense Annualized (x12) |
| -------- | --------: | --------: | --------: |
| Compensation & Benefits | | | 
| Bonus | | |
| Travel & Entertainment | | |
| **Headcount Expense Subtotal** | | | |
| | | | |
| Admin Expense | | |
| Freight & Duties | | |
| Gas Expense | | |
| Governance Programs | | |
| Hardware Expense | | |
| Marketing | | |
| Professional Services | | |
| Software Development Expense | | |
| Software Expense | | |
| Supplies | | |
| Training Expense | | |
| **Non-Headcount Expenses Subtotal** | | |
| | | |
| *10% Contingency* | | |
| **Grand Total** | | |


### Budget Term

- This element must contain a Start Date and an End Date for the entry. The Start Date is no later than 3 months after the formal submission date. The End Date is no later than 12 months after the Start Date.

### Increasing Value to Maker Tokenholders

- This element should demonstrate, over the length of the Budget Term, either the potential for revenue growth and/or the potential for a tangible improvement in operational efficiency

### Roadmap and Objectives

- This element must contain a roadmap with specific deliverables and timeline to be produced as a result of the Budget Proposal

### Headcount Planning / Team Summary

- This element must contain a table with a headcount plan by month, at the very least detailing the total expected number of FTEs in the budget at any given point of the Budget Term

### Contingency Planning

- Explain how this Core Unit could operate if the approved Budget Proposal was operating during a Bear/Superbear context: 10%/20% lower
    - Facilitators should formulate operational budgets capable of operating at lower funding levels
    - Facilitators are encouraged to transparently communicate with collaborators regarding potential impact on compensation during downturns
- Explain how this Core Unit could operate if the approved Budget Proposal was operating during a Bull context: With corresponding roadmap oriented around stretch targets 

### Unwinding and Defunding

- Define how the Core Unit will be wound down in the event of a Governance vote to defund it, with accompanying rationale (period, use of funds, return of funds)
    - Describe what costs will be paid during this period and what costs will not be paid for, including but not limited to:
        - Finishing current initiatives. 
        - Handing initiatives off to another unit
        - Archiving initiatives
    - Describe how funds will be returned to the DAO
    - Describe one-time expenses that would be needed to wind down the core unit.  This also should be included in the one-time expenses to spin up
    - Detail how the Core Unit will treat non-DAI funds, including MKR, whether vested or not, during the offboarding

### Considerations for Budget Modifications

- If an already approved Core Unit is requesting a >10% increase in budget, the new budget proposal must include:
    - Variance analysis by expense type comparing proposed vs existing budget, including spend and headcount
    - Variances of >10% require disclosure of driver(s)
- Detailed business case to justify the increase in investment
    - Explain why the DAO should make this investment
    - What problem does making this investment solve?
    - Why is now the right time to make the investment?
    - Detailed incremental deliveries expected as a result of increased investment

### Considerations for Unwinding and Defunding

- Reducing DAO overhead is critical, so managing an offboarding must execute with grace and clarity
- Please itemize which costs need inclusion for winding down or which will return to the DAO (e.g., travel etc.)
- To conduct a smooth unwinding, it's suggested to have a 2 of 3 multisig with the ex or interim facilitator executing the wind down

### Proposal Parameters

- **Minimum Feedback Period**: 1 Month.
- **Minimum Frozen Period**: 1 Week.
- Ratification Polls for MIP40c3 subproposals involving a Core Unit Budget Modification must use a ranked-choice voting options
    - Approve existing budget only (Business as usual)
    - Approve increased budget (Budget increase >10%)
    - Reject budget