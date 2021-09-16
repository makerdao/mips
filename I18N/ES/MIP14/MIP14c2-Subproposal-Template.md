# MIP14c2: Subproposal for Protocol DAI Transfer

## Preamble
```
MIP14c2-SP: #
Title: <Title>
Author(s):
Contributors:
Tags: template
Status:
Date Proposed: <yyyy-mm-dd>
Date ratified: <yyyy-mm-dd>
---
Amount: 
```

## Specification 

### Sentence Reason

- A one sentence reason of why DAI is being transferred from the protocol.
    
### Reason Details

- More details regarding the reason for the Protocol DAI Transfer.

### Surplus Analysis

- An analysis of whether the proposed transfer can be taken from the current surplus or if it would result in a FLOP auction.

### DAI Transfer Ceiling Analysis

- An analysis of whether the proposed transfer is within the parameters of the DAI Transfer Ceiling

### Targets

- Clearly listed target addresses with matching amounts in the format:
```
Recipient Address: 0x0000000000000000000000000000000000000000
Amount To Transfer: 0 DAI
```
- Combined amount of DAI should not be higher than the Amount specified in the Preamble nor exceed the DAI Transfer Ceiling.

### Relevant Information:

- Links to discussion, evidence or anything related to the transfer.

### Proposed Executive Code
The following executive code snippets are intended to be inserted within the 'Execute' function within 'SpellAction' contract of the executive spell. Any additional code required to support this executive code snippet is the responsibility of the Smart Contracts domain team writing the executive spell. Any Smart Contracts domain team is free to modify this code snippet as required to match the intention of this subproposal.

```
VatAbstract(MCD_VAT).hope(MCD_JOIN_DAI);
VatAbstract(MCD_VAT).suck(MCD_VOW, address(this), RAY * totalDaiAmountToTransfer);
DaiJoinAbstract(MCD_JOIN_DAI).exit(targetAddressToTransfer1, daiAmountToTransfer1);
DaiJoinAbstract(MCD_JOIN_DAI).exit(targetAddressToTransfer2, daiAmountToTransfer2);
DaiJoinAbstract(MCD_JOIN_DAI).exit(targetAddressToTransfer3, daiAmountToTransfer3);
...
```

Variables totalDaiAmountToTransfer, targetAddressToTransfer and daiAmountToTransfer should be modified according to the Amount and Targets section above.
