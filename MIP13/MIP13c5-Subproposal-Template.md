# MIP13c5: Subproposal Template for Acceptance of Work

## Preamble
```
MIP13c5-SP#: #
Author(s):
Contributors:
Status: 
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
---
Declaration to Fulfil: MIP13c3-SP#
```
## Specification

### Description of Implemented Work
- Describe the implementation, and how it fulfils the linked Declaration of Intent.

### Bounty Dispensation
- CLEARLY list any addresses and the amount of DAI to be distributed to each in the following format:
```
Recipient Address: 0x0000000000000000000000000000000000000000
Amount To Transfer: 0 DAI
```
- Combined amount of DAI should not exceed the bounty listed on the declaration of intent that has been fulfilled.

### Relevant Information
- Links to evidence that proves the fulfilment of the intent.

### Proposed Executive Code
The following executive code snippets are intended to be inserted within the 'Execute' function within 'SpellAction' contract of the executive spell. Any additional code required to support this executive code snippet is the responsibility of the Smart Contracts domain team when the executive spell is written. Any Smart Contracts domain team is free to modify this code snippet as required to match the intention of this subproposal.

```
VatAbstract(MCD_VAT).hope(MCD_JOIN_DAI);
VatAbstract(MCD_VAT).suck(MCD_VOW, address(this), RAY * totalDaiAmountToTransfer);
DaiJoinAbstract(MCD_JOIN_DAI).exit(targetAddressToTransfer1, daiAmountToTransfer1);
DaiJoinAbstract(MCD_JOIN_DAI).exit(targetAddressToTransfer2, daiAmountToTransfer2);
DaiJoinAbstract(MCD_JOIN_DAI).exit(targetAddressToTransfer3, daiAmountToTransfer3);
```

This template can be used by a Smart Contracts domain team as many times as necessary (once per target address.) Variables `targetAddressToTransfer` and `daiAmountToTransfer` should be modified according to the Bounty Dispensation section above.