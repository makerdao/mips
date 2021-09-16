# MIP40c3-SP36: Deco Fixed Rate Core Unit MKR Budget

## Preamble

```
MIP40c3-SP#:36
Author(s): Vamsi Alluri @Vamsi
Contributors: @juanjuan, @Wouter, @NikKunkel
Tags: core-unit, cu-deco-001, budget, mkr-budget
Status: RFC
Date proposed: 2021-09-08
Date Ratified: <yyyy-mm-dd>

```

## Sentence Summary

MIP40c3-SP36 adds a MKR budget for the Core Unit DECO-001: Deco Fixed Rate Core Unit on a fixed MKR budget of 500 MKR annually, utilizing a 12-month cliff vesting quarterly, for the fixed period of November 1, 2021, through November 1, 2024, (36 Months).

## Specification

### Core Unit ID

DECO-001

### Total MKR Expenditure

The total MKR expenditure will not exceed 1500.00 MKR. This budget covers a three-year term for the entire Deco Fixed Rate Core Unit from November 1, 2021, through November 1, 2024, (36 Months). This MKR budget includes no manual repricing option and no automatic renewal. The initial cliff is 12 months, with quarterly vesting thereafter.

### MKR Vesting

**Vesting Date**|**MKR Amount**
:-----:|:-----:
1-Nov-22|500 MKR
1-Feb-23|125.00 MKR
1-May-23|125.00 MKR
1-Aug-23|125.00 MKR
1-Nov-23|125.00 MKR
1-Feb-24|125.00 MKR
1-May-24|125.00 MKR
1-Aug-24|125.00 MKR
1-Nov-24|125.00 MKR
**Total**|**1500 MKR**

**Parameter**|**Value**
:-----:|:-----:
Vesting Period|3 years
Cliff Vest|12 months
Vesting Interval|3 months
Manual Repricing|No
Auto-Renewal|No

### Payment Implementation

The MKR payment implementation will have two elements and include a phased MKR distribution comparable to the [DUX MKR Flow](https://forum.makerdao.com/t/mip40c3-sp27-development-ux-core-unit-mkr-budget-dux-001/9777). These elements are a Deco auditor’s wallet and a Deco operational wallet. The auditor wallet will receive each MKR disbursement Six (6) months prior to the vest date. Three (3) months prior to vest the MKR will be distributed to the operational Deco multi-sig requiring a 2 of 3 quorum for release. Upon vest, the Deco operational wallet will release the vested MKR. 

This payment implementation makes no assumptions regarding the origin of the MKR. It may be moved from the protocol’s treasury, newly minted, or obtained from another source.

The MKR that is held by the DECO Auditor’s Wallet and the DECO Operational Wallet will not be used for voting, signaling, or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

The Deco team may consider alternative payment flows compliant with [DssVest](https://forum.makerdao.com/t/mip-54-dssvest/8025) if the standardized flow is compatible with the vesting schedule and that the risk is deemed acceptable by the team.
