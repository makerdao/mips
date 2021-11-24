# MIP40c3-SP36: Deco Fixed Rate Core Unit MKR Budget

## Preamble

```
MIP40c3-SP#:36
Author(s): Vamsi Alluri @Vamsi
Contributors: @juanjuan, @Wouter, @NikKunkel
Tags: core-unit, cu-deco-001, budget, mkr-budget, active
Status: Accepted
Date proposed: 2021-09-08
Date Ratified: 2021-11-22
Resubmission: First formally submitted for October's Governance Cycle (https://vote.makerdao.com/polling/QmZyjR4t)
Ratification Poll URL: https://vote.makerdao.com/polling/QmPPvUhN
Forum URL: https://forum.makerdao.com/t/mip40c3-sp36-deco-fixed-rate-core-unit-mkr-budget/10226
```

## Sentence Summary

MIP40c3-SP36 adds a MKR budget for the Core Unit DECO-001: Deco Fixed Rate Core Unit on a fixed MKR budget of 500 MKR annually, utilizing a 12-month cliff and vesting quarterly, for the fixed period of December 1, 2021, through December 1, 2024, (36 Months).

## Specification

### Core Unit ID

DECO-001

### Wallets

There will be Two (2) multisig wallets each of which will serve a separate function, and which will be identified as: the Deco Operational Wallet, and the Deco Auditor Wallet. 

1) The Deco Operational Wallet: 
The Operational Wallet is a 2-out-of-3 multisig wallet controlled by the Deco Core Unit. The Deco Operational Wallet receives MKR, three (3) months prior to vesting, and releases the MKR upon vesting. 
**Address: 0x56349A38e09f36039f6AF77309690d217Beaf0bF**

2) The Deco Auditor Wallet:
The Deco Auditor Wallet is a 2-out-of-3 multi-sig wallet controlled by trusted MakerDAO members composed of representatives from core units outside of the Deco Core Unit. Initially, the proposed signers are to be SES Core Unit members similarly to current incubator implementations. This wallet receives MKR Six (6) months in advance of vesting. Three (3) months prior to Vesting the Auditor Wallet sends the MKR to the Deco Operational Wallet. 
**Address: 0xF482D1031E5b172D42B2DAA1b6e5Cbf6519596f7**


### Total MKR Expenditure

The total MKR expenditure will not exceed 1500.00 MKR. This budget covers a three-year term for the entire Deco Fixed Rate Core Unit from November 1, 2021, through November 1, 2024. This MKR budget includes no manual repricing option and no automatic renewal. The initial cliff is 12 months, with quarterly vesting thereafter.

### MKR Vesting

| **Transaction Date** | **MKR to Auditor Wallet** | **MKR to Deco Operational Wallet** | **MKR Vested** |
| :------------------: | :------------: | :------------: | :------------: |
| 1-Jun-22             | 500            | 0              | 0              |
| 1-Sep-22             | 125            | 500            | 0              |
| 1-Dec-22             | 125            | 125            | 500            |
| 1-Mar-23             | 125            | 125            | 125            |
| 1-Jun-23             | 125            | 125            | 125            |
| 1-Sep-23             | 125            | 125            | 125            |
| 1-Dec-23             | 125            | 125            | 125            |
| 1-Mar-24             | 125            | 125            | 125            |
| 1-Jun-24             | 125            | 125            | 125            |                      
| 1-Sep-24       | 0              | 125            | 125                  |                
| 1-Dec-24       | 0              | 0                    | 125            |
| **Total MKR**        |       |                |    **1500** |

**Parameter**|**Value**
:-----:|:-----:
Vesting Period|3 years
Cliff Vest|12 months
Vesting Interval|3 months
Manual Repricing|No
Auto-Renewal|No

### Payment Implementation

The MKR payment implementation will have two elements and include a phased MKR distribution comparable to the [DUX MKR Flow](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/MIP40c3-SP27.md). The first is a Deco Reserves multisig and a the second is a Deco Operational wallet. The Auditor Wallet will receive each MKR disbursement Six (6) months prior to the vest date. Three (3) months prior to vest the MKR will be distributed from the Auditor Wallet to the Deco Operational wallet requiring a 2 of 3 quorum for release to vesting. Upon vest, the Deco operational wallet will release the vested MKR.

This payment implementation makes no assumptions regarding the origin of the MKR. It may be moved from the protocol’s treasury, newly minted, or obtained from another source.

The MKR that is held by the Deco Auditor Wallet and the Deco Operational Wallet will not be used for voting, signaling, or any other type of governance participation. It will remain in the wallets untouched until it moves to the next step in the process.

The Deco team may consider alternative payment flows compliant with [DssVest](https://github.com/makerdao/mips/blob/master/MIP54/MIP54.md) if the standardized flow is compatible with the vesting schedule and that the risk is deemed acceptable by the team.
