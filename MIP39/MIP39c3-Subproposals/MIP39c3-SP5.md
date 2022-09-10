# MIP39c3-SP5: Offboarding the Real-world Finance Core Unit (RWF-001)

## Preamble
```
MIP39c3-SP#: 5
Author(s): @rune
Contributors: @juan, @retro
Tags: core-unit, RWF-001, cu-offboarding
Status: RFC
Date Applied: 2022-09-07
Date Ratified:
Forum URL: https://forum.makerdao.com/t/mip39c3-spxx-offboarding-the-real-world-finance-core-unit-rwf-001/17753
Ratification Poll URL:
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
The facilitator will have their mandated actor status removed.

### Golden Parachute
#### DAI
A Golden Parachute payout will be provided to the Core Unit for the remaining facilitator. The amount will be based on the following Calculation:
* Compensation for the facilitator is not transparent with current reporting, and an estimate is used. It may be updated if @williamr provides the needed data.

`Core Unit's Facilitator Compensation Estimate x 3 = Golden Parachute amount`
`10,000 DAI x 3 months = 30,000 DAI`

#### MKR
Any MKR accrued (vested or not) at the time of this MIP's ratification will be eligible for payout. If the MKR Incentive Plan has a cliff, it will be ignored and allow the MKR amount to be transferred to the Core Unit.
* Estimated of MKR accrued is calculated with the following available data:
    1. On-chain transaction data from the [RWF-001 Operational Wallet](https://gnosis-safe.io/app/eth:0xD1505ee500791490DE8642353BA6A5b92e3550F7/transactions/history) shows an August-22 Payout of 80 MKR.
    2. The approved [MIP40c3-SP38](https://forum.makerdao.com/t/mip40c3-sp38-real-world-finance-core-unit-mkr-compensation-rwf-001/10447) defines average MKR as 80 MKR / FTE.
    3. The [RWF-001 Transparency Report](https://github.com/makerdao-rwf001/transparency-reporting/blob/main/monthly-budget-statements/2022-06.md#fte) shows the Facilitator receiving a 1x multiplier on the CU's reported annual average MKR distribution.
    4. The recent [Signal Request for Pro-Rata MKR Distributions](https://forum.makerdao.com/t/signal-request-mkr-pro-rata-vesting-community-sentiment-poll/17350) for Pro-Rata MKR vesting conveys the August-22 MKR is for the facilitator, after a 1 year cliff.

`Calculation of MKR accrued at the time of the subproposal ratification:`
`2.75 months * (80 MKR /12 months) = 18.3 MKR`

### Budget Implementation
Upon ratification of this proposal:
* All DAI DssVest streams will be terminated.
* All MKR DssVest streams will be terminated.
* Any amount of DAI over the Golden Parachute amount in the Core Unit's Multi-sig wallets will be returned to the protocol using DssBlow by the date of the following Executive Vote, or Governance will withdraw the funds in the Executive Vote using the `MCD_Pause_Proxy` beneficiary role on the multi-sig.
* If the Golden Parachute amounts is above the current balance in the Core Unit's Multi-sig wallets, the following Executive Vote will distribute the difference to the Core Unit.
