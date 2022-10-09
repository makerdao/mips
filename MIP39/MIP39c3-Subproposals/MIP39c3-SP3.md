# MIP39c3-SP3: Offboarding the Strategic Happiness Core Unit (SH-001)

## Preamble
```
MIP39c3-SP#: 3
Author(s): @rune
Contributors: @juan, @retro
Tags: core-unit, SH-001, cu-offboarding
Status: Formal Submission
Date Applied: 2022-09-07
Date Ratified: 
Forum URL: https://forum.makerdao.com/t/mip39c3-spxx-offboarding-the-strategic-happiness-core-unit-sh-001/17754
Ratification Poll URL:
```

## Sentence Summary
This subproposal offboards the Strategic Happiness Core Unit (SH-001), removing all associated activities of the Core Unit from the DAO. 

## Specification
### Core Unit ID
SH-001

### Motivation
MakerDAO is restructuring the work and the workforce across the DAO according to the Endgame Plan. The mandate for this Core Unit does not support a standalone Core Unit and will be better aligned within a cluster of a MetaDAO. As a result, this Core Unit will be offboarded to support the transition. 

### Core Unit Work Continuity
All activities associated with SH-001 will stop upon the ratification of this subproposal.

### Mandated Actor Status
The facilitator will have their Mandated Actor status removed. 

### Golden Parachute
#### DAI
A Golden Parachute payout will be provided to the Core Unit for the facilitator to distribute to their team. The amount will be based on the following calculations:

`Core Unit's Monthly Contributor Budget x 3 = Golden Parachute amount`
`10,833 DAI x 4 months = 43332 DAI`

#### MKR
Any [MKR accrued](https://makerburn.com/#/expenses/vesting/0xa4c22f0e25C6630B2017979AcF1f865e94695C4b/MKR/23) (vested or not) at the time of this MIP's ratification will be eligible for payout. If the MKR Incentive Plan has a cliff, it will be ignored and allow the MKR amount to be transferred to the Core Unit.
`Estimated MKR accrued at the time of the subproposal ratification: 26.04 MKR`

### Budget Implementation
Upon ratification of this proposal:
* All DAI DssVest streams will be terminated. 
* All MKR DssVest streams will be terminated. 
* Any amount of DAI over the Golden Parachute amount in the Core Unit's Multi-sig wallet will be returned to the protocol using DssBlow by the date of the following Executive Vote, or Governance will withdraw the funds in the Executive Vote using the `MCD_Pause_Proxy` beneficiary role on the multi-sig. 
* If the Golden Parachute amounts is above the current balance in the Core Unit Multi-sig wallet, the following Executive Vote will distribute the difference to the Core Unit.
