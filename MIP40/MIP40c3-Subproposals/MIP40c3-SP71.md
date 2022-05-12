# MIP40c3-SP71: Lending Oversight Core Unit DAI Budget (LOVE-001)

## Preamble

```
MIP40c3-SP#: 71
Author(s): @luca_pro
Contributors: @wouter, @Juan, @Retro
Tags: core-unit, cu-love-001, budget, dai-budget
Status: RFC
Date Proposed: <2022-05-11>
Date Ratified: <yyyy-mm-dd>
```

## Sentence Summary

The Lending Oversight Core Unit is requesting an annual budget cap of 984,000 DAI. The number represents the CU's annualised cost base after having reached maximum capacity, including all customary contingency buffers.

## Paragraph Summary

LOVE-001 intends to support the DAO in its evolution, by facilitating the sustainable onboarding of tens (or hundreds) of billions of more complex use cases. LOVE-001 will do this by developing state-of-the-art frameworks for internal checks and balances, acting as an additional line of defense within the DAO, and helping to educate the community.

## Specification

### Motivation

To support the ongoing operations of LOVE-001 and sustain its contributors as outlined in MIP39c2-SP33, the Lending Oversight Core Unit proposes the following budget cap.

### Core Unit ID

LOVE-001


### Budget Implementation
![](upload://q4arauTZC4YnrhqWZp4UwHPe1TE.png)

**NOTE: the Budget Implementation section below will be refined in its fine details together with the SES CU in the upcoming weeks to reflect state-of-the-art standards.**

The budget implementation will follow standard best practices as recommended by the SES Core Unit and will involve a setup with an Auditor wallet and an Operational Wallet which will be topped up on a monthly basis with a 3-month runway. The budget cap will be streamed from the protocol to the Auditor Wallet to reduce as much as possible the overhead for Maker governance.

The LOVE-001 budget is designed with the following in mind:

- Paying for the operational costs to run the core unit
- Provide the protocol control over funds held in the Auditor Wallet
- Reduce governance overhead to a minimum
- Provide full transparency and be kept in check by a group of trusted auditors

Therefore, a vote to ratify this MIP means MKR holders make a commitment to:

- Streaming the annual budget for LOVE using *DssVest* for 1 year
- A continuous funding model based on [the SES top-up mechanism](https://forum.makerdao.com/t/mip40c3-sp10-modify-core-unit-budget-ses-001/7369)

#### Multi-sig Wallets

The following multi-sigs are involved:

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multi-sig, composed of 1-out-of-2 role based multi-sigs as signers. The Auditor Wallet will have 2 roles defined for its signers: Auditors and Accountants

   The Accountant Role Multi-sig will have 2 signers---both SES permanent team contributors. The Auditor Role Multi-sig will also have 2 signers, also both SES permanent team contributors. SES will conduct the monthly auditing process as described in the Monthly Top-up Cycle, increasing transparency of the auditing process for the community

   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multi-sig wallet, ensuring control over these funds and acting as a backup

   This multi-sig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet

2. **The Operational Wallet** -- One wallet for LOVE operational expenses. This is a 1-out-of-1 multi-sig controlled by LOVE. Signers include the facilitator and an additional signer will be added as the core unit grows (to be finalised)

#### Monthly Budget Statement

Within the first 5 days of each month, LOVE will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended
2. **Budget Forecast** - A forecast of the Dai amount required to maintain a 3-month operational runway for the team based on the latest available information
3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month
4. **Transactions**
   * The required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish the 3-month runway as indicated in the Budget Forecast section.
   * Any excess DAI amount above the 3-month forecast in the Operational Wallet that will be returned to the Auditor Wallet

The Monthly Budget Statements can be found in this GitHub repository (the repository address will be added at a later stage).

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, LOVE submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review
3. **Transaction Requests Submission** -- In parallel, LOVE submits the necessary transaction requests for the Auditor Wallet signers to sign:
   * DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast 3-month runway. Only applies if the Operational Wallet balance is below this forecast
4. **Returning Excess Funds** – LOVE creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   * Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet

4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the LOVE DssVest contract, replenishing the available funds in the Auditor Wallet.
6. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by LOVE to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings

   A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the LOVE’s transparency reporting repository on Github.

6. **Transaction Approvals** – Upon acceptance of the Monthy Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet

7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer

   As such, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Auditor Wallet Configuration

To enable this payment flow, the following configuration of the LOVE Auditor Wallet will be required.

* Accountant Role Wallet (`0xA2A855Ac8D2a92e8A5a437690875261535c8320C`) as a signer
* Auditor Role Wallet (`0xB2da57e224949acDDe173a5b8A8160c023ea86e6`) as a signer
* Add `MCD_PAUSE_PROXY` as a beneficiary, with an allowance of 1B DAI withdrawal.
* Configure required confirmations as 2-out-of-2.

#### Transactions

* **Initial Seed Transfer**
     246,000 DAI will be transfered to 'TBD' Address on Date 2022-07-06

     This seeds the Operational Wallet to 3x the Month Budget Cap. This also initially funds the Auditor Wallet to 2x the Monthly Budget Cap. The initial transfer funds the Operational Wallet, enabling the Core unit to begin operations. This also then positions DssVest to begin streaming funds up to the Quarterly Budget Cap each month in the Auditor Wallet.

* **DssVest Stream**

  A total of 984,000 DAI will be streamed to 'TBD' starting 2022-07-01 and ending 2023-07-01

    _(984,000 DAI is calculated as Quarterly Budget Cap x 4 = $ 246,000 x 4)._

### Budget Breakdown

The yearly budget cap request for the Lending Oversight Core Unit is 984,000 DAI. This equates to a monthly budget cap of c. 82,000 DAI to support the Core Unit's mandate.

This amount is intended to support the CU when at its maximum capacity of 4-5 FTEs (the number will depend on their effective seniority), cover potential additional expenses for external legal and audit consultancy (of both the CU itself and of the monitored activity), as well as provide limited allowances for travel and administrative costs. The amount includes customary contigency buffers.

The ramp up of the core unit will be managed with the maximum prudence, and therefore it is expected that Lending Oversight could ultimately spend less than what anticipated. At the end of the calendar year, all unused funds will be returned to the Maker Protocol. Should the Lending Oversight Core Unit be discontinued, all unused funds will be returned to the DAO immediately.

![](upload://xTV4TkYbAldKs6wwBQO6z1C0WJd.png)

#### Budget Details

##### Headcount Costs

Headcount costs constitute c. 80% of the unit's total costs. Lending Oversight will be constituted only by finance professionals with a proven track record in the areas of structured lending, investment banking, commercial banking, and risk management. With time, the core unit intends to attract some of the brightest, and best educated, young professionals across the globe.

In order to do so, the core unit intends to maintain itself competitive in offering cash salaries that are, although not necessarily at market, attractive when also considering the incredible upside that working for a protocol like Maker can have, as well as the significant uncertainty that a professional would expose herself to.

Lending Oversight wants to be skewed towards seniority, with a Facilitator with at 10-15 years of experience at the highest levels of corporate finance and banking. The other members of the team will be of diverse seniority, but with at least 3-5 years of experience following high-level superior education.

An allowance to cover employment and insurance costs, as well as travelling, has been considered.

##### Admin Expenses

Admin expenses represent c. 5% of the total cost base, and are constituted by allowances to cover gas and transaction fees, hardware and software costs, as well as professional services.

The Professional Services budget covers potential consultancy and auditing costs. Although these will be kept to a minimum, a need for these may arise as the Lending Oversight CU is expected to oversee other units in their duties, with a particular focus on any activity that generates an exposure to off-chain legal and credit risk.

The remaining 15% of the total cost base is constituted by a non-specified customary contingency buffer, that is expected to be returned to the protocol at the end of the period.

## Related Documents

[Lending Oversight Core Unit Mandate](https://forum.makerdao.com/t/mip39c2-sp33-adding-lending-oversight-core-unit-love-001/15098?u=luca_pro)
[Lending Oversight Core Unit MKR Budget MIP](https://forum.makerdao.com/t/mip40c3-sp72-lending-oversight-core-unit-mkr-budget/15104?u=luca_pro)
[Lending Oversight Core Unit Facilitator Onboarding](https://forum.makerdao.com/t/mip41c4-sp36-facilitator-onboarding-lending-oversight-core-unit/15105?u=luca_pro)
