# MIP17: Weekly Actual Debt Ceiling Adjustments

## Preamble
```
MIP#: 17
Title: Weekly Actual Debt Ceiling Adjustments
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL), Planet_X (@Planet_X)
Contributors:
Type: Process
Status: Obsolete 
Date Proposed: 2020-09-22
Date Ratified:
Dependencies:
Replaces: Changes from proposed MIP17: Weekly Actual Debt Ceiling and Actual Risk Premium Adjustments 1, which was proposed 2020-07-02 but failed to get poll approval. MIP17 now exclusively concentrates on the debt ceiling. All references to risk premium adjustments have been removed. Additionally there are changes to the calculation logic and revised wording.
```
## References
MIP17c3-Subproposal-Template.md 4
Sentence Summary
MIP17 defines an automated process for weekly Debt Ceiling adjustments.

## Paragraph Summary
This proposal defines and formalizes a solution using the Weekly Governance Cycle (MIP16) for making weekly Actual Debt Ceiling Adjustments. Furthermore, the proposal describes how to propose modifications to the calculation logic behind the debt ceiling adjustments.

## Component Summary
**MIP17c1: Definitions**

Defines key terms related to the Weekly Actual Debt Ceiling Adjustments.

**MIP17c2: Actual Debt Ceiling Adjustments**

Defines the calculation logic on how to modify the Actual Debt Ceiling securely.

**MIP17c3: Actual Debt Ceiling Adjustments Calculation Logic Modification Process**

Defines the process for altering the calculation logic for the Actual Debt Ceiling.

## Motivation
The motivation behind MIP17 is to automate the adjustment of the debt ceilings.

Automating the adjustment of the debt ceilings will increase system responsiveness by enabling weekly adjustments. It will also free up nearly all the resources the Maker community is spending on the topic of debt levels, while also increasing consistency of debt ceilings changes across different collateral types.

The goal of MIP17 is to allow for a fire-and-forget debt ceiling process, where weekly adjustments to debt ceilings are done according to the logic described below. Automation will become increasingly important as the number of collateral types will surpass the ability of the community to make manual adjustments to each one.

In the interest of simplicity it can be argued that the below defined Target Debt Ceiling is an unnecessary complication and that the Actual Debt Ceiling can be set to a maximum level right away. The Target Debt Ceiling is however an important security feature as it gives Maker more control over Dai issuance flux and serves as a damage limitation barrier in case of a successful attack on the Oracles Security Modules (OSM).

## Specification / Proposal Details

### MIP17c1: Definitions

**Target Debt Ceiling:** The Target Debt Ceiling is the upper limit for debt the Maker community sets for the collateral type without community intervention. The Target Debt Ceiling is set by Maker Governance. Typically the Target Debt Ceiling is a figure significantly higher compared to either the Current or Actual Debt Ceilings. At any debt level below the Target Debt Ceiling the adjustment of the debt ceiling is handled by the automated process described by MIP17.
**Actual Debt Ceiling:** The Actual Debt Ceiling is the current Debt Ceiling set in the Maker Protocol. Note this is different from the Target Debt Ceiling and current existing system Debt.
**Current Debt:** The current outstanding Debt in the Maker Protocol.


### MIP17c2: Actual Debt Ceiling Adjustments
The calculation logic in MIP17c2 is used to propose adjustments to the Actual Debt Ceilings of collateral assets in the Protocol. Calculation results will be included in the weekly poll by a mandated governance domain actor. If the weekly poll passes successfully, the poll contents will be put up in an Executive Vote on the Friday of the same weekly cycle.

**Calculation Logic**
The purpose of the below calculation logic is to have the Current Debt fluctuate in a 70-90% band of the Actual Debt Ceiling without changes to the protocol. If the Current Debt moves outside this band the Actual Debt Ceiling is adjusted. Values are based on the protocol state Monday at 8 am UTC.

If (Actual Debt Ceiling - Current Debt) <= Actual Debt Ceiling * 0.1:

The Actual Debt Ceiling = Actual Debt Ceiling * 1.2
If Actual Debt Ceiling > Target Debt Ceiling:

The Actual Debt Ceiling = Target Debt Ceiling
Note: Above step will prevent the possibility of an overshoot.

If (Actual Debt Ceiling - Current Debt) >= Actual Debt Ceiling * 0.3:

The Actual Debt Ceiling = Actual Debt Ceiling * 0.8
If Actual Debt Ceiling < DAI 5.0 million:

The Actual Debt Ceiling = 5.0 million

Note: Above step will prevent the Actual Target Debt from being reduced to less than DAI 5.0 million. Any adjustment below this level is up to Maker Governance, typically in the case of new, unproven or unused collateral types.

**Notes:**

The Actual Debt Ceiling Adjustment calculation logic may be modified by using the subproposal process defined in. 

### MIP17c3: Actual Debt Ceiling Modification Process.

**Example:**

The generic token XYZ is onboarded. Given XYZ’s standing in the crypto community and the decent distrubution of it’s trade it is decided by the community to set the Target Debt Ceiling to DAI 100 million with a starting Actual Debt Ceiling of DAI 20 million.

This means that as long as XYZ debt is between DAI 5 million and DAI 100 million the Actual Debt Ceiling is decided by the calculation logic of MIP17.

**Walk through:**

- Week 1: XYZ Vaults are slow to take off with no more than DAI 4 million outstanding after the first week.
- Week 2: Based on the MIP17 calculation logic the Actual Debt Ceiling for the XYZ token is reduced to (20 * 0.8) 16 million as utilization is only (4/20) 20%. At the end of week 2 however XYZ Vaults start to pick up and ends the week at DAI 13 million.
- Week 3: The Current Debt of 13 million DAI is (13/16) 81% of the Actual Debt Ceiling. This is in the 70%-90% band described above and so no action is taken in Week 3, the Actual Debt Ceiling stays at DAI 16 million. At the very end of the week the Current Debt rises to USD 16 million due to some market situation.
- Week 4: With Current Debt being (16/16) 100% of the Actual Debt Ceiling it is time for a 20% increase to (16 * 1.2) DAI 19.2 million. The crypto markets being what they are this is again immediately maxed out.
- Week 5: With Current Debt again being above 90% of actual debt it is time for another increase, this time to (19.2 * 1.2) DAI 23 million.

This example describes how the Actual Debt Ceiling can move up and down in the 5-100 million DAI range without forum signal requests or community discussion. If the Target Debt Ceiling is reached the community may poll another value for this figure.

### MIP17c3: Actual Debt Ceiling Adjustments Calculation Logic Modification Process

The modification process for the Actual Debt Ceiling adjustment calculation is completed by using a subproposal, in which MIP17c3 subproposals are submitted to the Monthly Governance Cycle like any other proposal.

MIP17c3 subproposals must use the template located at MIP17c3-Subproposal-Template.md. This template is considered ratified once this MIP moves to Accepted status.
