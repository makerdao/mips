# MIP40c3-SP28: Adding the StarkNet Engineering Core Unit (SNE-001)

## Preamble

```
MIP40c3-SP#: 28
Author(s): Author(s): Louis Baudoin (@louismerkle), Ohad Barta
Contributors: Derek Flossman, Maciek Kaminsky, Kris Kaczor, Marc-Andre Dumas, Ohad Barta, Louis Baudoin
Tags: core-unit, cu-sne-001, budget, dai-budget, active
Status: Accepted
Date Applied: 2021-08-09
Date Ratified: 2021-09-27
```

## Sentence Summary

MIP40c3-SP28 adds the budget for StarkNet Engineering Core Unit.

## Specification

### Motivation

I am proposing this budget for the StarkNet Engineering Core Unit to be able to succeed in its mandate, specifically; to build a bridge to StarkNet that is upgradeable through governance. This is referred to as phase I in the main proposal (MIP39c2-SP28).

### Core Unit ID

StarkNet Engineering Core Unit

### Budget considerations

### Budget

This budget for phase I secures a team of 2 Senior Engineers, one Data Scientist (part-time), and one Facilitator. The team size is expected to increase in phase II once the roadmap for enabling minting on StarkNet is clearer and syndicated with the community.

* Duration: 3 months
* Total amount for Maker foundation: $210,375
* Headcount: 4 (including one part-time)

The budget asked is $210,375 for three months, which represents 50% of the total budget. The distribution of the budget across profiles is shown below. The salaries used are taken from Maker internal salary grids and guidelines.

![table1](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP28/table1.png)

The payment of all the non-salary items will be done upon starting the project. The payment of the salaries will be done either bi-weekly or monthly. The budget will be split evenly between the Maker and Starkware.

### List of Budget Breakdowns

**Salaries:** The has 2 full-time Senior Engineers with prior knowledge of Solidity, validity proofs, or both. 1 part-time Data Scientist, and 1 full-time Team Facilitator (for a total of 4 members).

**Bug bounty:** Bug Bounties allow us to support whitehat involvement in the work we do. Payout amounts will be assessed and determined by the team.

**Gas cost:** Rough estimate, based on gas cost needed by other Core Units, taking into account the scope of phase I.

**Audit:** We will work with one of the firms Maker has worked with before (Gauntlet, PwC, Certora, Quantstamp, Trail of Bits, Consensus, OpenZepplin and Peckshield).

**Buffer:** 10%

### MKR vesting

No MKR vesting is proposed for phase I. A MKR vesting based on deliverables will be proposed for phase II.

### What is not in this budget

Travel: Our team is remote, yet we are not excluding the option to meet in person if we assess it is needed.

### Budget implementation

SECU has a gnosis safe controlled by the Facilitator to pay 50% of the expenses. The other 50% will be paid by Starkware.

For any budget request beyond December 2021, new sub proposals will be submitted

#### Maker payments

* Due to the predictability and regularity of costs, this budget implementation is a “Simple Budget Implementation” under [MIP40c4](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md#mip40c4-budget-implementation-details).
* Core Unit wallet address: 0x6D348f18c88D45243705D4fdEeB6538c6a9191F1
* Keyholder: @louismerkle - 0x83626A05588bbA91DAeDE52346E5282d123e0280
* **The first disbursement requested is DAI 210,275, which includes**:
	* DAI 75,000 on October 5th - one-off setup including gas cost, audit fee, and bug bounty. To be included in the executive vote on October 1st
	* **Monthly transfers**
		* DAI 3*45,125 streaming - October 1th - December 31th - includes salaries and buffer

#### Starkware payments

* Starkware will follow the same schedule as the schedule described above (full schedule table below)
* Starkware will pay the salaries in FIAT to the team via a service provider (Dill). The rest of the expenses will be paid on the same vault in USDC.

![table2](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP28/table2.png)

* **Unused funds**: Unused funds will be credited towards the next phase led by the SECU
