# MIP4c2-SP5: MIP12 Amendments

## Preamble

```
MIP4c2-SP#: 5
MIP to be Amended: MIP12
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23) 
Contributors:
Status: Request for Comments (RFC)
Date of Amendment Submission: 2020-07-08
Date of ratification: <yyyy-mm-dd>
```

## Specification

### Motivation

This amendment MIP proposes a change to MIP12 to remove the dependencies on MIP6, MIP8, and MIP9 to improve further the efficiency of collateral onboarding to the Maker Protocol. Additionally, it adds two new components based on MIP17. The first component enables the use of MIP12 subproposals to adjust the Target Debt Ceiling and Target Risk Premium (MIP12c4). The second component creates a list of the enabled collateral types and their risk parameters (MIP12c5).

This amendment MIP impacts the MIP12 subproposal process. More specifically, it creates a process for collateral types to have their Target Debt Ceiling and Target Risk Premium (TRP) risk parameters adjusted (based on MIP17) and eliminates some dependencies that were inconsistent across the Collateral Onboarding MIPs Set (MIP6, MIP8, MIP9). 

### Amended Components

- **Motivation**
    - Remove the specific reference of MIP9's involvement in the MIP12 process.

- **MIP12c1: Domain Team Requirements for Onboarding Collateral Type to the Maker Protocol**

    - Removal of MIP12 dependencies on MIP6, MIP9, MIP8 
        - **Reasoning:** As of today, there remain some inconsistencies within the Collateral Onboarding MIPs Set. More specifically, the MIP9 Community Greenlight Polls are non-binding and do not block Domain Greenlight (MIP8) or the ability for Domain teams to perform work on collateral types. Therefore, this makes a clear case to remove the dependencies to further improves the efficiency of collateral onboarding to the Maker Protocol.

- **MIP12c2: Proposing New Risk Parameters, Oracles, and Collateral Adapters**
    - Add minor phrasing updates to improve clarity.

- **Add MIP12c4 component - Creates the Target Debt Ceiling and Target Risk Premium Requirements**

    - This component defines the requirements for which collateral types can have their Target Debt Ceiling (TDC) and Target Risk Premium (TRP) risk parameters adjusted.
    - In short, MIP17 is a proposal that adds extra flexibility to collateral types that are MIP17 enabled, by giving Maker Governance the recurring option to dynamically adjust their Actual Debt Ceilings and Actual Risk Premiums based on the utilization of the collateral type. Note that only collateral types that have been specified as being MIP17 enabled through a MIP12c2 (Proposing New Risk Parameters, Oracles, and Collateral Adapters) have the Target Debt Ceiling and Target Risk Premium risk parameters.

- **Add MIP12c5 component - A list of MIP17 enabled collateral types, and their risk parameters**

    - This component defines explicitly the requirements for getting a collateral type added to the List Enabled Collateral Types. The list contains the current active MIP17 enabled collateral types, and their MIP17 risk parameters (TDC and TRP).

### Amendment Pull Request (PR)

- [Updated Version of MIP12 PR](https://github.com/makerdao/mips/pull/53)

### Relevant Information

- n/a

---
