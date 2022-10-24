# MIP39c3-SP5: Offboarding the Real-world Finance Core Unit (RWF-001)

## Preamble

```
MIP39c3-SP#: 5
Author(s): @rune
Contributors: @juan, @retro
Tags: core-unit, RWF-001, cu-offboarding
Status: Accepted
Date Applied: 2022-09-07
Date Ratified: 2022-10-24
Forum URL: https://forum.makerdao.com/t/mip39c3-sp5-offboarding-the-real-world-finance-core-unit-rwf-001/17753
Ratification Poll URL: https://vote.makerdao.com/polling/QmX68eHn
```

## Sentence Summary

This subproposal offboards the Real-world Finance Core Unit (RWF-001). 

## Specification

### Core Unit ID

RWF-001

### Motivation
MakerDAO is restructuring the work and the workforce across the DAO according to the Endgame Plan. The mandate for the Real-world Finance Core Unit will be better aligned within a cluster of a MetaDAO. As a result, this Core Unit must be offboarded to support the transition. 

### Core Unit Work Continuity

All activities associated with RWF-001 will be supported by SF-001 and the subproposal [MIP39c2-SP36](https://forum.makerdao.com/t/mip39c2-sp36-modifying-strategic-finance-core-unit-mandate-sf-001/17750).

### Mandated Actor Status

The Facilitator will have their mandated actor status removed. 

### Unwinding Activities & Golden Parachute

#### DAI

| **Detail**                                                                 | **Amount (DAI)** |
|----------------------------------------------------------------------------|-----------------:|
| September's CU commitments                                                 |          100,000 |
| October's CU commitments (24 days of Facilitator compensation)             |           16,000 |
| Golden Parachute                                                 |          60,000 |
| **Total**                                                                  |      **176,000** |



#### MKR

Any MKR accrued (vested or not) at the time of this MIP's ratification will be eligible for payout. If the MKR Incentive Plan has a cliff, it will be ignored and allow the MKR amount to be transferred to the Core Unit.

| **Detail**                            | **Amount (MKR)** |
|---------------------------------------|-----------------:|
| Will MKR for end of June quarter      |               20 |
| Will MKR for end of September quarter |               20 |
| Will MKR for October (1-24)           |             5.26 |
| Will retroactive MKR for Foundation           |             60 |
| Eric retroactive MKR                              |             48.1 |
| TJ retroactive MKR                                |             48.1 |
| **Total**                             |       **201.46** |


### Golden Parachute

A Golden Parachute payout will be provided to the Core Unit for the benefit of the outgoing Facilitator. The Golden Parachute amount is 60,000 Dai. If the spend from the Auditor wallet has exceeded the amounts specified above at the moment this MIP is passed and the offboarding occurs, the effective Golden Parachute amount is reduced by an amount equivalent to the excessive spending.

### Budget Implementation

Upon ratification of this proposal:

* All DAI DssVest streams will be terminated. 
* All MKR DssVest streams will be terminated.
* Amounts will be paid by the Auditors to the Operational only if the corresponding reports have been provided, and the amount spent by the Core Unit falls within the approved MIP40 budgets by Maker Governance.
* The remaining amount will be returned by the Auditors directly to using DssBlow.
* Any amount of DAI over the effective Golden Parachute amount in the Core Unit's Multi-sig wallets will be returned to the protocol using DssBlow by the date of the following Executive Vote, or Governance will withdraw the funds in the Executive Vote using the `MCD_Pause_Proxy` beneficiary role on the multi-sig. 
* If the effective Golden Parachute amounts is above the current balance in the Core Unit's Multi-sig wallets, the following Executive Vote will distribute the difference to the Core Unit.
