# MIP39c3-SP4: Offboarding the Events Core Unit (EVENTS-001)

## Preamble

```
MIP39c3-SP#: 4
Author(s): @rune
Contributors: @juan, @retro
Tags: core-unit, EVENTS-001, cu-offboarding
Status: RFC
Date Applied: 2022-09-07
Date Ratified: 
Forum URL: https://forum.makerdao.com/t/mip39c3-spxx-offboarding-the-events-core-unit-events-001/17755
Ratification Poll URL:
```

## Sentence Summary

This subproposal offboards the Events Core Unit (EVENTS-001), removing all associated activities of the Core Unit from the DAO. 

## Specification

### Core Unit ID

EVENTS-001

### Motivation

MakerDAO is restructuring the work and the workforce across the DAO according to the Endgame Plan. The mandate for this Core Unit does not support a standalone core unit and will be better aligned within a cluster of a MetaDAO. As a result, this core unit must be offboarded to support the transition. 

### Core Unit Work Continuity

All activities associated with EVENTS-001 will stop upon the ratification of this subproposal.

MakerDAO will commit to pay for the following expenses of EVENTS-001 to unwind the Core Unit and deliver on their work obligations (DevCON Daivinity):


| Item | DAI | Comment |
| -------- | -------- | -------- |
| Tax Payout     | $37,910     | Sales tax on fiat used by CU's corporate account     |
| Accounting     | $10,000     | Tax audit & general accounting     |
| Legal     | $10,000     | ~20 hours legal resources for audit & corporate wind down     |
| Rent     | $8,340    | Non-breakable lease for industrial workshop to build Daivinity materials  |
| Motion Designers     | $16,667     | Final payment to Motion Designer, non-cancellation clause due to reserving future time |
| Contractors     | $4,000     | Payout to contractors booked for future planned events     |
| FTE     | $88,332 DAI    |  This is the 4 month golden parachute referenced below    |
| AccountAble     | $7,435    | Fee to convert above to fiat     |
Total: $182,684


Funds in the Core Unit multi-sig wallet will be used, and if an additional top-up is required, it will be provided through an executive vote. 

### Mandated Actor Status

The Facilitator will have their Mandated Actor status removed. 

### Golden Parachute

#### DAI

A Golden Parachute payout will be provided to the Core Unit for the Facilitator to distribute to their team. The amount will be based on the following calculations:

`Core Unit's Monthly Contributor Budget x 4 = Golden Parachute amount`
`22,083 DAI x 4 months = 88,332 DAI`

#### MKR

This Core Unit does not have an active MKR MIP40. No MKR is in scope. 

### Budget Implementation

Upon ratification of this proposal:
* All DAI DssVest streams will be terminated. 
* Any amount of DAI over the unwinding expenses amount in the Core Unit's multi-sig wallet will be returned to the protocol using DssBlow by the date of the following executive vote, or Governance will withdraw the funds in the executive vote using the `MCD_Pause_Proxy` beneficiary role on the multi-sig. 
* If the unwinding expenses amounts is above the current balance in the Core Unit's wallet, the following executive vote will distribute the difference to the Core Unit.
