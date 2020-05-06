# MIPXc5: Subproposal Template for Acceptance of Work

## Preamble
```
MIPXc5-SP#: #
Author(s):
Contributors:
Status: 
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
---
Declaration to Fulfil: MIPXc3-SP#
```
## Specification

### Description of Implemented Work
- Describe the implementation, and how it fulfils the linked Declaration of Intent.

### Bounty Dispensation
- How should the bounty be distributed? 
- CLEARLY list any addresses and the amount of DAI to be distributed to each. The total amount should not exceed the bounty listed on the declaration of intent that has been fulfilled.

### Relevant Information
- Links to evidence that proves the fulfilment of the intent.

### Proposed Executive Code
The following executive code snippets are intended to be inserted within the 'Execute' function within 'SpellAction' contract of the executive spell. Any additional code required to support this executive code snippet is the responsibility of the Smart Contracts domain team when the executive spell is written. Any Smart Contracts domain team is free to modify this code snippet as required to match the intention of this subproposal.

```
VatAbstract(MCD_VAT).suck(MCD_VOW, address(this), RAY * daiAmountToTransfer);
VatAbstract(MCD_VAT).hope(MCD_JOIN_DAI);
DaiJoinAbstract(MCD_JOIN_DAI).exit(targetAddressToTransfer, daiAmountToTransfer);
```

This template can be used by a Smart Contracts domain team as many times as necessary (once per target address.) Variables `targetAddressToTransfer` and `daiAmountToTransfer` should be modified according to the Bounty Dispensation section above.