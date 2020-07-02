# MIP17: Weekly Actual Debt Ceiling Adjustments and Utilization Based Risk Premium Adjustments

## Preamble

```
MIP#:17
Title: Weekly Actual Debt Ceiling and Utilization Based Risk Premium Adjustments
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL)
Contributors:
Type: Process
Status: Request for Comments (RFC)
Date Proposed: 2020-07-02
Date Ratified: <yyyy-mm-dd>
Dependencies:
Replaces:
```

## References

- [MIP17c3-Subproposal-Template.md](https://github.com/makerdao/mips/blob/RFC/MIP17/MIP17c3-Subproposal-Template.md)
- [MIP17c5-Subproposal-Template.md](https://github.com/makerdao/mips/blob/RFC/MIP17/MIP17c5-Subproposal-Template.md)

## Sentence Summary

MIP17 defines a process and solution for enabling weekly Debt Ceiling and utilization based Risk Premium adjustments.

## Paragraph Summary

This proposal defines and formalizes a solution using the Weekly Governance Cycle ([MIP16](https://github.com/makerdao/mips/tree/RFC/MIP16)) for making weekly Actual Debt Ceiling and Utilization Based Risk Premium Adjustments. Additionally, the proposal describes how to propose modifications to the actual calculation logic behind the debt ceiling and risk premium adjustments.

## Component Summary

**MIP17c1: Definitions**
Defines key terms related to the Weekly Actual Debt Ceiling and Utilization Based Risk Premium Adjustments.

**MIP17c2: Actual Debt Ceiling Adjustments**
Defines the calculation logic on how to modify the Actual Debt Ceiling securely.

**MIP17c3: Actual Debt Ceiling Adjustments Calculation Logic Modification Process**
Defines the process for altering the calculation logic for the Actual Debt Ceiling.

**MIP17c4: Actual Risk Premium Adjustments**
Defines the calculation logic on how to modify the Actual Risk Premium securely. 

**MIP17c5: Actual Risk Premium Adjustments Calculation Logic Modification Process**
Defines the process for altering the calculation logic for the Actual Risk Premium.

## Motivation

The purpose of this MIP is to introduce an initial version of secure Actual Debt Ceiling adjustments and Debt Ceiling based Risk Premium curves. The Debt Ceiling based Risk Premium curves improve the Maker Governance system to more effectively and dynamically adjust Debt ceilings and Risk premiums to better match user patterns.

## Specification / Proposal Details

### MIP17c1: Definitions

- **Risk Parameters:** Each type of collateral added to the Maker Protocol is associated with its own set of risk parameters, influenced by the collateral token's financial and technical characteristics. Risk parameters are calculated by a Risk Domain Team, typically using the collateral type's information provided by the collateral proposer (via a [MIP6 application](https://github.com/makerdao/mips/blob/master/MIP6/MIP6c2-Collateral-Application-Template.md)).
- **Actual Debt Ceiling:** The Actual Debt Ceiling is the current Debt Ceiling set in the Maker Protocol. Note this is different from the Target Debt Ceiling and current existing system Debt.
- **Target Debt Ceiling:** This is a risk parameter that is set by MIP12 subproposals, which regulates the adjustment of the Actual Debt Ceiling and the Actual Risk Premium in the Weekly Governance Cycle ([MIP16](https://github.com/makerdao/mips/tree/RFC/MIP16)).
- **Current Debt:** The current outstanding Debt in the Maker Protocol (this is **not** the same as the Debt Ceiling).
- **Actual Risk Premium:** The Actual Risk Premium is the Maker Protocol's current Risk Premium. It is adjusted based on the utilization of the collateral type and used to calculate the Stability Fees in the Maker Protocol. The Actual Risk Premium is the value that is added to the Debt Ceiling to get the Base Rate value.
- **Target Risk Premium:** A risk parameter set by MIP12 subproposals which regulates the Actual Risk Premium's adjustment.
- **Actual Debt Ceiling Adjustment:** An adjustment process to securely modify the Actual Debt Ceiling so that it minimizes the system's attack surface while still enabling growth and not frustrating users.
- **Actual Risk Premium Adjustment:** The Actual Risk Premium calculation is based on the Target Debt Ceiling utilization.

---

### MIP17c2: Actual Debt Ceiling Adjustments

The Actual Debt Ceiling Adjustment calculation logic is used to securely manage the free Debt Ceilings of collateral assets in the Protocol, except for those onboarded as non-standard assets (such as USDC-B). The adjustment process uses a parameter called the **Target Debt Ceiling** and introduces a weekly cadence for making changes to the **Actual Debt Ceiling**. When the calculation logic outputs an adjustment value of the Actual Debt Ceiling for one or more Collateral types, the changes are put up in a single (bundled) Weekly Cycle Poll on the Monday of the weekly cycle. Note that the Actual Debt Ceiling Adjustment will be calculated and proposed by a mandated governance domain actor. If the weekly poll passes successfully, the poll contents will be put up in an Executive Vote on the Friday of the same weekly cycle, according to the processes defined in [MIP16](https://github.com/makerdao/mips/blob/RFC/MIP16/mip16.md). The Actual Debt Ceiling Adjustment calculation logic is further explained below. 

### Calculation Logic

*Values are based on the protocol state Monday at 8 am UTC.*

**If the Actual Debt Ceiling minus the Current Debt fulfills any one of the following conditions:**

- **For collateral types with more than 20 million Target Debt Ceiling:**

    1. Less than, or equal to, 10% of the Target Debt Ceiling or,
    2. More than, or equal to, 16% of the Target Debt Ceiling

**If one of the conditions are met, the new Actual Debt Ceiling is calculated as Current Debt Ceiling + 15%**

- **For collateral types with less than 20 million Target Debt Ceiling (Inclusive):**

    1. Less than, or equal to, 2 million
    2. More than, or equal to, 3.2 million

**If one of the conditions are met, the new Actual Debt Ceiling is calculated as Current Debt Ceiling +15%**

**Notes:** 
- The Actual Debt Ceiling can surpass the Target Debt Ceiling.
- The Actual Debt Ceiling Adjustment calculation logic may be modified by using the subproposal process defined in **MIP17c3: Actual Debt Ceiling Modification Process.**

### Example Scenarios

- **Example 1:** A collateral type has a Target Debt Ceiling of 150 million, an Actual Debt Ceiling of 80 million, and a current debt of 75 million. The next weekly poll would then propose to adjust the Actual Debt Ceiling to 97.5 million.
- **Example 2:** A collateral type has a target debt ceiling of 200 million, an actual debt ceiling of 100 million, and the current debt of 65 million. The next weekly poll would then adjust the Actual Debt Ceiling to 95 million.

---

### MIP17c3: Actual Debt Ceiling Adjustments Calculation Logic Modification Process

The modification process for the Actual Debt Ceiling adjustment calculation is completed by using a subproposal, in which MIP17c3 subproposals are submitted to the Monthly Governance Cycle like any other proposal.

MIP17c3 subproposals have the following parameters:

- **Default Feedback Period**: 3 months
- **Frozen Period**: 1 month

MIP17c3 subproposals must use the template located at **[MIP17c3-Subproposal-Template.md](https://hackmd.io/@mips/MIP17c3/edit)**. This template is considered ratified once this MIP moves to Accepted status.

---

### MIP17c4: Actual Risk Premium Adjustments

Actual Risk Premium is the Risk Premium used to calculate the Stability Fee of collateral assets in the Maker protocol. It is calculated as a function of the Actual Debt Ceiling, the Target Debt Ceiling, and the Target Risk Premium. Any time there is a proposal to adjust the Actual Debt Ceiling of one or more collateral types, there will also be corresponding adjustments to the Actual Risk Premium of those collateral types. The Actual Risk Premium Adjustments will be calculated and then proposed in a Weekly Poll by a mandated governance domain actor. If the Weekly Poll passes, then the adjustments will be put up in an Executive Vote on the Friday of the week to determine if it should be officially implemented to the Maker Protocol.

**Glossary of Terms:** 
- ARP = Actual Risk Premium
- TRP = Target Risk Premium 
- ADC = Actual Debt Ceiling
- TDC = Target Debt Ceiling

**The new Actual Risk Premium is calculated using the following formula:**

- **Formula:** `ARP = TRP*2^(2*((ADC-TDC)/TDC))`

### ARP Formula Examples

**Example 1:** 
- TRP = 5%
- ADC = 3000000
- TDC = 2000000
- Calculation: 10% = 5% * 2^(2*((3000000-2000000)/2000000))
- Curve Output: 

![curve](https://user-images.githubusercontent.com/32653033/86315721-e666c600-bbf8-11ea-91b4-0b0929bd7648.png)

**Example 2:** 

- TRP = 5%
- ADC = 40000000
- TDC = 20000000
- Calculation: 20% = 5% * 2^(2*((4000000-2000000)/2000000))
- Curve Output: 
![curve-example2](https://user-images.githubusercontent.com/32653033/86402484-e3f88080-bc79-11ea-8d96-208f888e8436.png)

**Example 3:**

- TRP = 7.5%
- ADC = 6000000
- TDC = 3000000
- Calculation: 30% = 7.5% * 2^(2*((6000000-3000000)/3000000))
- Curve Output: 
![curve-example3](https://user-images.githubusercontent.com/32653033/86401938-0938bf00-bc79-11ea-9182-345b42f4eeda.png)

**Example 4:** 

- TRP = 10%
- ADC = 13456034
- TDC = 10000000
- Calculation: 16.15% = 10% * 2^(2*((13456034-10000000)/10000000))
- Curve Output: 
![curve-exmple4n](https://user-images.githubusercontent.com/32653033/86402677-3b96ec00-bc7a-11ea-885d-196f97ae47aa.png)

**Example 5:**

- TRP = 0.75%
- ADC = 19148224.3
- TDC = 12000000
- Calculation: 1.71% = 0.75% * 2^(2*((19148224.3-12000000)/12000000))
- Curve Output: 
![curve-example5](https://user-images.githubusercontent.com/32653033/86402370-b4497880-bc79-11ea-9df1-8ea16ced3f77.png)

**Example 6:**

- TRP = 5%
- ADC = 1000000
- TDC = 15000000
- Calculation: 1.37% = 5% * 2^(2((1000000-15000000)/15000000))
- Curve Output: 
![curve-example6](https://user-images.githubusercontent.com/32653033/86402259-8a905180-bc79-11ea-9832-e6c219adfe4d.png)

**Notes:**
- Values are based on the Maker Protocol's state each Monday at 8 am UTC.
- ARP output is rounded to the nearest two decimals.

---
### MIP17c5: Actual Risk Premium Calculation Logic Modification Process

MIP17c5 is a Process MIP component that allows community members and domain teams to modify the Actual Risk Premium calculation logic (formula).

MIP17c5 subproposals have the following parameters:

- **Default Feedback Period**: 3 months
- **Frozen Period**: 1 month

MIP17c5 subproposals must use the template located at **[MIP17c5-Subproposal-Template.md](https://hackmd.io/@mips/MIP17c5/edit)**. This template is considered ratified once this MIP moves to Accepted status.

---
