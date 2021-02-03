# MIP18: Meta-Parameter Adjustments

## Preamble

```
MIP#: 18
Title: Meta-Parameter Adjustments
Author(s): @LongForWisdom, Charles St.Louis (@CPSTL), Rune Christensen (@Rune23)
Contributors: 
Type: Process
Status: Obsolete
Date Proposed: 2020-07-07
Date Ratified: 2020-07-28
Dependencies:
Replaces:

```

## References

n/a 

## Sentence Summary

MIP18 defines a process for modifying Maker Protocol Meta-Parameters. 

## Paragraph Summary

This proposal outlines and formalizes the concept of Meta-Parameters in the Maker Protocol. It also contains a list of the current meta-parameters used in Maker Governance, a meta parameter attributes table for each type of active meta-parameters, a meta-parameter Adjustments Subproposal process for modifications (changes, additions, or removal) of meta-parameters, and a meta-parameter option distributions list to which will be used for meta-parameter polls. 


## Component Summary

**MIP18c1: Meta-Parameters**

Defines key terms related to the Meta-Parameter Adjustment process.

**MIP18c2: Meta-Parameter List**

Defines a list of the current meta-parameters. Furthermore, it describes the intentions behind the meta-parameters and how they affect other system parameters, vote frequencies, and poll options. 

**MIP18c3: Meta-Parameter Attribute Table**

Defines the attributes for each type of meta-parameter poll, including vote frequency, vote type, and vote options. 

**MIP18c4: Meta-Parameter Adjustments Process**

Defines a process component to modify MIP18c2 and MIP18c3 by adding, changing, or removing meta-parameters or their respective polling attributes.

**MIP18c5: Meta-Parameter Option Distributions**

Defines the available option distributions for meta-parameter polls.

## Motivation

This proposal aims to formalize a process for adjusting meta-parameters to make adjustments to the Dai Savings Rate (DSR) Spread and the Base Rate. 

## Specification / Proposal Details

### MIP18c1: Meta-Parameters

Meta-Parameters are parameters that do not correspond directly to parameters within the Maker Protocol's smart contracts.

---

### MIP18c2: Meta-Parameter List

**Base Rate**

- Primarily a monetary policy lever.
- Adds a flat number to the Stability Fee for each collateral type in the Maker Protocol.
- Stability Fee = Base Rate + Risk Premium.

**Dai Savings Rate Spread**

- Primarily a growth/profit lever.
- Modifies the difference between the Base Rate and the Dai Savings Rate (DSR).

---

### MIP18c3: Meta-Parameter Attribute Table

| Meta-Parameter | Vote Frequency| Vote Type|Option Distribution | Option Limits |
|----------------|---------------|----------|------|---
| Base Rate      | Weekly        | IRV      |Exponential-around-current      | -4, +4
| DSR Spread     | Bi-Weekly     | IRV      | Exponential-around-current     | -4, +4, ≥ 0

---
### MIP18c4: Meta-Parameter Adjustments Process 

The MIP18c4 modification process is done through a subproposal process, in which MIP18c4 subproposals are submitted to the Monthly Governance Cycle like any other proposal.

MIP18c4 subproposals have the following parameters:

- **Default Feedback Period**: 3 months
- **Frozen Period**: 1 month

MIP18c4 subproposals must use the template located at **[MIP18c4-Subproposal-Template.md](https://github.com/makerdao/mips/blob/RFC/MIP18/MIP18c4-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.

---

### MIP18c5: Meta-Parameter Option Distributions

**Linear-around-current**

- Options for the DSR value around the current parameter value.
- Integer only
- Example (around zero) -4, -3, -2, -1, 0, 1, 2, 3, 4

**Exponential-around-current**

- Options for the DSR for the current parameter value.
- Integer or non-integer
- Example (around zero) -4, -2, -1, -0.5, -0.25, 0, 0.25, 0.5, 1, 2, 4


---
