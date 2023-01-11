# MIP4c2-SPXX: Amend MIP62 to allow for changing communication responsibilities

## Preamble

```
MIP4c2-SP#: XX
MIP to be amended: <MIP62>
Author(s): @LongForWisdom
Contributors:
Tags: mip-amendment
Status: RFC
Date Proposed: 2023-01-11
Date Ratified: <yyyy-mm-dd>
```
## Specification

### Motivation

This amendment is intended to:
* Replace GovComms as the responsible party for communicating offboardings through MIP62.
* Prevent the requirement for a token vote in the event we run into this same issue in the future.

### Amended MIPs and Components

MIP62c2 (Modified)
MIP62c3 (Modified)
MIP62c5 (Added)

### Patch Notes
* Replaced references to GovComms with references to a 'Communication Coordinator' defined in new component MIP62c5.
* MIP62c5 defines GovAlpha as the new Communication Coordinator.
* MIP62c5 allows MIP Editors to modify MIP62c5 without a governance vote to refer to a new Communication Coordinator if:
    * The previous coordinator is unwilling or unable to fulfill the responsibility.
    * A new coordinator is willing to take on the communication role.
* MIP62c5 requires public communication of any modifications by MIP Editors.
* Fixed some minor formatting stuff in the MIP component summary.

### Amendment Pull Request

https://github.com/makerdao/mips/pull/741

### Relevant Information

N/A
