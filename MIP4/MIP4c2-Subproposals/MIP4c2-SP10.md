# MIP4c2-SP10: MIP0 Amendments

## Preamble
```
MIP4c2-SP#: 10
MIP to be Amended: MIP0
Author(s): @juanjuan
Contributors: @elprogreso @iammeeoh
Status: Formal Submission
Date of Amendment Submission: <2021-01-18>
Date of ratification: <yyyy-mm-dd>
Dependencies: MIP38, MIP39, MIP40, MIP41, MIP4c2-SP12
```
## Specification

### Motivation

This amendment MIP proposes edits to MIP0 that make it compatible with the newly proposed Domain Framework MIP set. The main changes remove the inbuilt functionality of MIP0 to onboard core personnel, and instead uses the DAO Primitives State to determine who has been onboarded as Governance Facilitators by Maker Governance, and then introduces logic that allows Governance Facilitators to designate MIP Editors.

### Amended Components

- **References**
    - Removed the references to Core Personnel onboarding and offboarding Subproposal templates.

- **Paragraph Summary**
    - Updated the summary to add that the MIP was edited to be compatible with the new Domain Framework.

- **Component Summary**
    - Removed the last two components related to Core Personnel onboarding and offboarding.

- **MIP0c1: Definitions of the Maker Improvement Proposal Framework**
    - Edited Governance Facilitator and MIP Editor entries to reflect that Governance Facilitators are selected through the new Domain Framework, and that MIP Editors are designated by elected Governance Facilitators.
    - Removed reference to the Maker Foundation

- **MIP0c8: MIP0 Domain Role Dependencies**
    - Edited details of the Governance Facilitator and MIP Editor to reflect that Governance Facilitators are selected through the new Domain Framework, and that MIP Editors are designated by elected Governance Facilitators.

- **MIP0c9: Grandfathered Core Personnel Role List**
    - Name changed to Grandfathered Core Personnel Role List
    - Description changed to reflect a list of hardcoded Core Personnel that are used for bootstrapping until a Governance Facilitator has been onboarded according to the logic of the new Domain Framework.
    - The Grandfathered Core Personnel are based on the previous list of currently active Core Personnel

- **MIP0c10: MIP Editor Role**
    - Edits to reflect that MIP Editors are designated by Governance Facilitators

- **MIP0c11: Governance Facilitator Role**
    - Added a line specifying abuse of the power to add/remove MIP Editors as grounds for removal


### Amendment Pull Request (PR)
   - Updated Version of MIP0 PR

### Relevant Information
   -  n/a
