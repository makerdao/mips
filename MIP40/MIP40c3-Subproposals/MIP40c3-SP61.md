# MIP40c3-SP61: Modify Core Unit Budget - Real-World Finance (RWF-001)

## Preamble

```
MIP40c3-SP#: 61
Author(s): @williamr
Contributors: @juan, @wouter
Tags: core-unit, cu-rwf-001, budget, dai-budget
Status: RFC
Date Applied: 2022-02-09
Date Ratified: N/A
Ratification Poll URL: N/A
```

## Sentence Summary

MIP40c3-SP61 modifies the Dai budget for the Real-World Finance Core Unit as the Core Unit changes Facilitator, replacing [MIP40c3-SP31](https://forum.makerdao.com/t/mip40c3-sp39-modify-core-unit-budget-rwf-001/10543).

## Paragraph Summary

MIP40c3-SP61 modifies the Dai budget for the Real-World Finance Core Unit. Based on the new vision for [structured finance applications](https://forum.makerdao.com/t/methodology-for-review-of-mip6-structured-finance-transactions/12697), which includes a more thorough legal review process, and the currently available funds, a higher budget cap is proposed to ensure the proper operations of the Core Unit.

## Specification

### Motivation

As the Core Unit is going through a transition from Seb to Will as facilitator, there are three reasons that require a budget change:

1. A [new multi-sig wallet setup](https://forum.makerdao.com/t/rwf-001-auditor-flow/12900) has been put in place, following best practices and applying an auditor flow.
2. Part of the new vision requires a more thorough legal review process for RWA applications with third-party reputable firms. This brings additional recurring costs with it.
3. The runway that was originally available for the RWF CU was not fully transferred to the new multisig due to the [MKR that was recently returned to the protocol](https://forum.makerdao.com/t/returning-excess-budget-from-rwf-in-dai-or-in-mkr/12643). This means that the Core Unit is currently operating without the usual contingency buffer of a 3-month runway.

### Core Unit ID

- RWF-001

### List of Budget Implementations

The implementation follows best practices and is described below for transparency reasons. Thank you to all those that have contributed with your assistance for this setup.

#### Budget Implementation

![budget diagram](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposals/supporting_materials/MIP40c3-SP61/payment-flow.jpeg)

The budget implementation will follow standard best practices as recommended by the SES Core Unit and will involve a setup with an Auditor wallet and an Operational Wallet which will be topped up on a monthly basis with a 3-month runway. The budget cap will be streamed from the protocol to the Auditor Wallet to reduce as much as possible the overhead for Maker governance.

The RWF-001 budget is designed with the following in mind:

- Paying for the operational costs to run the core unit.
- Provide the protocol control over funds held in the Auditor Wallet.
- Reduce governance overhead to a minimum.
- Provide full transparency and be kept in check by a group of trusted auditors.

#### Multi-sig Wallets

The following multi-sigs are involved:

1. **The Auditor Wallet** -- A nested, 2-out-of-2 Auditor multi-sig, composed of 1-out-of-2 role based multi-sigs as signers. The Auditor Wallet will have 2 roles defined for its signers: Auditors and Accountants.

   The Accountant Role Multi-sig will have 2 signers---both SES permanent team contributors. The Auditor Role Multi-sig will also have 2 signers, also both SES permanent team contributors. SES will conduct the monthly auditing process as described in the Monthly Top-up Cycle, increasing transparency of the auditing process for the community.

   The Maker Protocol (`MCD_PAUSE_PROXY`, `0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB`) will be listed as a beneficiary on the Auditor Wallet. This allows the protocol to withdraw up to 1B DAI from the Auditor Multi-sig wallet, ensuring control over these funds and acting as a backup.

   This multi-sig will hold funds up to the Quarterly Budget Cap in DAI and receive the DssVest stream. All funds pass through this wallet before any are sent to the Operational Wallet.

2. **The Operational Wallet** -- One wallet for RWF-001 operational expenses. This is a 2-out-of-3 multi-sig controlled by RWF-001. Signers include the facilitator and trusted members of other Core Units to provide business continuity.

#### Monthly Budget Statement

Within the first 5 days of each month, RWF-001 will submit a Monthly Budget Statement to the signers of the Auditor Wallet with the following sections:

1. **Previous Month Actuals** -- The actual expenses (DAI and MKR) of the month that just ended.
2. **Budget Forecast** - A forecast of the Dai amount required to maintain a 3-month operational runway for the team based on the latest available information.
3. **MKR Vesting Overview** - A schedule of the expected MKR vesting amounts for the current team configuration, grouped by the pay-out month.
4. **Transactions**
   * The required DAI amount sent from the Auditor Wallet to the Operational Wallet to replenish the 3-month runway as indicated in the Budget Forecast section.
   * Any excess DAI amount above the 3-month forecast in the Operational Wallet that will be returned to the Auditor Wallet

The Monthly Budget Statements can be found in [this GitHub repository - WIP](www.google.com).

#### Monthly Top-up Cycle

1. **Monthly Budget Statement Submission** – Within the first 5 days of the month, RWF-001 submits the Monthly Budget Statement to the Auditor Wallet signers. This report is also available for the rest of the community to review.
2. **Transaction Requests Submission** -- In parallel, RWF-001 submits the necessary transaction requests for the Auditor Wallet signers to sign:
   * DAI Top-up Transaction – One DAI transaction for the Operational Wallet that adds enough funds to the Operational Wallet to replenish the forecast 3-month runway. Only applies if the Operational Wallet balance is below this forecast.
3. **Returning Excess Funds** – RWF-001 creates and signs any transactions for excess funds that should be returned to the Auditor Wallet:
   * Excess DAI Transactions – DAI transactions for Operational Wallets that have a balance above the 3-Month Budget Forecast will be returned to the Auditor Wallet.
4. **DssVest Pull** - The Auditor Wallet signers will pull available funds from the RWF-001 DssVest contract, replenishing the available funds in the Auditor Wallet.
5. **Auditors’ Review** – The Auditor Wallet signers review the Monthly Budget Statement. First, Accountant Role signers will review the initial report submitted by RWF-001 to ensure data accuracy and report completeness. A consistent audit checklist will be followed. The Auditor Role will then receive the Accountant’s report generated from the checklist, and verify the Accountant’s findings.

    A summary of each audit cycle’s report will be made available to the Maker Community at the conclusion of the audit cycle on the RWF-001’s transparency reporting repository on Github.
6. **Transaction Approvals** – Upon acceptance of the Monthy Budget Statement audit, an Accountant Role signer and an Auditor Role signer will sign the requested transactions, sending the DAI top-up amounts to the Operational Wallet.
7. **Auditor Wallet Returns** – The Auditor Wallet signers will return any amount of DAI above 2x the Monthly Budget Cap. The Auditor Wallet, using the [DssBlow contract described here](https://github.com/Lollike/dss-blow), will return the excess DAI directly to the surplus buffer.

    As such, the Auditor Wallet will then hold up to 2x the Monthly Budget Cap at the start of the month, allowing DssVest to stream DAI up to the Quarterly Budget Cap over the course of the month.

#### Auditor Wallet Signers

RWF-001 Auditor Wallet: 0x96d7b01Cc25B141520C717fa369844d34FF116ec

* Accountant Role Wallet (`0xA2A855Ac8D2a92e8A5a437690875261535c8320C`) as a signer
* Auditor Role Wallet (`0xB2da57e224949acDDe173a5b8A8160c023ea86e6`) as a signer
* Add `MCD_PAUSE_PROXY` as a beneficiary, with an allowance of 1B DAI withdrawal.
* Configure required confirmations as 2-out-of-2.

#### Operational Wallet Signers

RWF-001 Operational Wallet: 0xD1505ee500791490DE8642353BA6A5b92e3550F7
* @williamr (RWF-001 Facilitator)- `0x44d2509074993b858c54B6d276ebD3816FC93A68`
* @Nadia  (Growth Core Unit) - `0xc8E6c287F6c127AFE5e4CB30bC440607b44c35f8`
* @monkey.irish (Collateral Engineering Services Core Unit) - `0xDE0FF661Fb2d06d4F787dd23A579D64c6989BdA1`

#### Transactions

* **Seed Transfer**
  2,055,000 DAI will be transfered to `0x96d7b01Cc25B141520C717fa369844d34FF116ec` on 2022-4-1.

  This seed transfer repairs the 3-month runway contingency buffer. It equals the quarterly budget cap of 2,055,000 DAI.

* **DssVest Stream**
  A total of 6,165,000 DAI will be streamed to `0x96d7b01Cc25B141520C717fa369844d34FF116ec` starting 2022-04-01 and ending 2022-12-31.

* Decommission the previous DssVest Stream with ID 27

### Budget Breakdown

| Budget Category       | Monthly  | Quarterly  | Annually   | % Budget |
| --------------------- | -------- | ---------- | ---------- | -------- |
| Compensation          | $155,000 | $465,000   | $1,860,000 | 22.6%    |
| Profesional Services  | $500,000 | $1,500,000 | $6,000,000 | 73.0%    |
| Real-world structures | $4,000   | $12,000    | $48,000    | 0.6%     |
| Payment fees          | $8,500   | $25,500    | $102,000   | 1.2%     |
| Gas Fees              | $500     | $1,500     | $6,000     | 0.1%     |
| Software Costs        | $5,000   | $15,000    | $60,000    | 0.7%     |
| Travel Costs          | $2,000   | $6,000     | $24,000    | 0.3%     |
| Contingency Buffer    | $10,000  | $30,000    | $120,000   | 1.5%     |
| **Total Budget Cap**      | **$685,000** | **$2,055,000** | **$8,220,000** | **100.0%**   |

#### Contributors

Given the increase in dealflow as well as sophistication of counterparties, the pool of contributors will be biased towards senior risk professionals primarily (e.g., structured finance, credit risk management). This group will be tasked with **professionalising the function** and assisting building best practices that can be leveraged or improved upon by a wider group of specialised core units.

We will deliberately and intentionally prepare and assist senior professionals to gain the required know-how to set up and run specialised core units. Thus **enabling decentralisation** and scaling of activities with the [original vision for Risk in mind](https://forum.makerdao.com/t/mandate-risk-teams/282).

Contributors will work closely and collaboratively with other CUs involved in the end-to-end dealflow: Growth, CES, PECU, Oracles, Compliance (in incubation), SES.   

The team will be composed of the following roles:

**Facilitator**: Ability to guide, manage and take over the work of any risk management member of the team.

**Structured finance consultants (x3)**: Dealing with Asset Originators/Manager from the negotiation phase, due diligence phase, up to the monitoring phase. Competencies in structured finance, risk assessment, modeling, statistics, analytics. They also have a transactional legal understanding to collaborate with legal consultants.

**Consultant lawyer (x1)**: Dealing with Asset Originators/Managers from the negotiation phase, legal due diligence phase, up to the monitoring phase. Competencies in areas of the law related to structured finance transactions such as bankruptcy, commmercial law, debt restructuring etc. Given this is a specialised area, this role is the primary intermediary with external reputable law firms as well as borrower legal counterparts.   

It is expected that the legal consultant will eventually be part of a dedicated group or panel of legal consultants, supporting structured finance transactions, but as part of a separate specialised Core Unit.

**Expert grantees (x4 part-time)**: The grants are used for senior contributors/experts to assist in specialised structured finance transactions e.g. asset specific know-how, regulatory or jurisdiction specific experience. Eventually, grantees might either rejoin other consultants or be deliberately assisted in incubating Core Units to scale transactions.

**Advisory grantees**: Advisory grants are dedicated to assisting the Core Unit in scaling and improving its internal processes in both risk management and end-to-end dealflow.

#### Professional Services

Solicitor members of the team have onboarded law firms (Shearman & Sterling, Lathan & Watkins, MinterEllison) to help us audit RWA structures and guide us through legal solutions/issues. Given the increasing number of counterparties and complexity of structures, costs have increased significantly.

#### Real-world structures

Following the trust model for RWA, an RWA Foundation was set up in the previous facilitation. Currently, this remains unutilised. However there is an yearly cost of ~50k DAI. If no legal research points to the utilisation of such structure in the coming year, funds allocated to its maintenance will be reallocated elsewhere or returned to the protocol.

#### Software costs

Risk teams will require access to a set of software packages to assist the analytical work during due diligence and post due diligence monitoring of onboarded structured finance transactions.

While a robust data infrastructure is not a short-term priority (i.e., 2022Q1), building data capability for team members to monitor transactions and gather insights faster will be a focus later in the year. We expect to collaborate with other teams such as CES in the architecture.

#### Buffer

Extra safety in case of unexpected costs such as unaccounted SaaS subscriptions, over charges in legal fees etc.

### MKR compensation

For reference, MKR compensation was proposed [here](https://forum.makerdao.com/t/mip40c3-sp38-real-world-finance-core-unit-mkr-compensation-rwf-001/10447). This will be reviewed in the near future.
