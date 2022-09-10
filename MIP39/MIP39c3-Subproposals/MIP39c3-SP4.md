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

### Mandated Actor Status
The facilitator will have their Mandated Actor status removed.

### Golden Parachute
#### DAI
A Golden Parachute payout will be provided to the Core Unit for the facilitator to distribute to their team. The amount will be based on the following calculations:

`Core Unit's Monthly Contributor Budget x 3 = Golden Parachute amount`
`22,083 DAI x 3 months = 66,250 DAI`

#### MKR
This Core Unit does not have an active MKR MIP40. No MKR is in scope.

### Budget Implementation
Upon ratification of this proposal:
* All DAI DssVest streams will be terminated.
* Any amount of DAI over the Golden Parachute amount in the Core Unit's Multi-sig wallet will be returned to the protocol using DssBlow by the date of the following Executive Vote, or Governance will withdraw the funds in the Executive Vote using the `MCD_Pause_Proxy` beneficiary role on the multi-sig.
* If the Golden Parachute amounts is above the current balance in the Core Unit's wallet, the following Executive Vote will distribute the difference to the Core Unit.
