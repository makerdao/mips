# MIP40c3-SP32: Adding MakerLabs Core Unit Budget

## Preamble

```
MIP40c3-SP#: 32
Author(s): @colrad, @urbanisierung, Tim Schuppener (@ultraschuppi)
Contributors:
Tags: core-unit, cu-skunk-001, budget, dai-budget, mkr-budget
Status: Rejected
Date Applied: 2021-09-01
Date Ratified:
Ratification Poll URL: https://vote.makerdao.com/polling/QmV44i6E?network=mainnet
Forum URL: https://forum.makerdao.com/t/mip40c3-sp32-adding-makerlabs-core-unit-budget/10108
```

## Sentence Summary

MIP40c3-SP32 adds the budget for the MakerLabs Core Unit, SKUNK-001.

## Specification

### Motivation

We estimate this budget for the MakerLabs Core Unit to successfully implement and validate MVPs for the Maker ecosystem. More details about the scope and content of the Core Unit can be found [here](https://github.com/makerdao/mips/blob/master/MIP39/MIP39c2-Subproposals/MIP39c2-SP21.md).

We’re proposing the following budget to deliver on our mandate. This includes, but is not limited to

* Implement,
* Deploy, and
* Validate

MVPs in the Maker ecosystem.

### Budget Considerations

MakerLabs does not have a specific product as its mission. It is rather about implementing and validating different ideas that can help the Maker ecosystem. For this reason, this budget proposal is not for a specific product but instead for setting up a team that is capable of implementing MVPs. If costs for a specific product arise during implementation or at the time of deployment, this additional budget will be requested.

The following considerations have been taken into account when building the proposed budget:

* A competitive salary in-line with industry standards
* A competitive benefits package in-line with industry standards
* A high travel budget, in order to fund attending crypto conferences and team offsites which are critical for remote teams to build interpersonal relationships; vital for collaboration and retention.
* A healthy contingency in case budget estimates are significantly off

### Budget

The budget for the MakerLab Core Unit consists of three elements:

* a monthly budget covering the expenses - 82.6k DAI
* an initial setup budget for setting up the core unit - 54.8k DAI
* an upfront lump-sum to guarantee continuous operations - 247.8k DAI

This budget secures a team of 3 full-time employees as well as covers all operational costs listed below. This budget will continue on a rolling basis until modified or cancelled by Maker Governance.

At the end of the calendar year, all unused funds will be returned to the Maker Protocol. Should the MakerLabs Unit shutdown, all unused funds will be returned to the DAO immediately.

| Component                    | Setup                  | Monthly Budget          |
| ---------------------------- | ---------------------- | ----------------------- |
| Employee Salaries            |                        | EUR 37,500 → DAI 44,250 |
| Employment Taxes, Insurances |                        | EUR 9375 → DAI 11063    |
| Travel                       |                        | EUR 3000 → DAI 3,540    |
| Legal and Operating expenses | EUR 30000 → DAI 35,400 | EUR 2000 → DAI 2,360    |
| Tools/Services/Devices       | EUR 9000 → DAI 10,620  | EUR 600 → DAI 708       |
| IT Services                  |                        | EUR 1000 → DAI 1,180    |
| Contingency                  |                        | EUR 5,347 → DAI 6,310   |
| Corporate Income Tax         | EUR 7410 → DAI 8,744   | EUR 11,176 → DAI 13,188 |
| One time setup               | EUR 46410 → DAI 54,764 |                         |
| Total Monthly Budget         |                        | EUR 69,998 → DAI 82,599 |

### Budget Details

#### Total Employee Costs

The team has 3 full-time developers, one of them also doing the Facilitator role. The total cost of an employee includes salary, all benefits (including healthcare), and taxes. This has been calculated by scaling salaries by 25%. This premium is likely an overestimation, and the realized cost is expected to be lower.

#### Travel (stolen from [MIP40c3-SP15](https://mips.makerdao.com/mips/details/MIP40c3SP15))

Conferences and team offsites have been critical in the Maker Foundation’s history of fostering interpersonal relationships and generating trust. These are vital qualities in a company's culture that improve collaboration, productivity, and retention.

Conferences in particular also serve a multitude of purposes. Employees are educated about the bleeding-edge technologies in the industry, and can apply that knowledge within the MakerLabs Core Unit. This budget would cover flights, lodging, nourishment, team-activities, and conference passes.

#### Legal

Coverage for legal costs including entity creation, legal officer/company insurance, as well as monthly and annual financial reporting.

#### Tools/Services/Devices

New team members will need to be provided with laptops for the duration of their employment and licenses for essential productivity tools.

#### IT Services

Any services, such as infrastructure providers (hosting providers, IPFS nodes, ...) or third-party services, such as services for tracking and evaluating user interactions are essential for the implementation of software products.

#### Contingency

As with any new endeavor, especially in an industry innovating as quickly as ours, there are many unknowns when it comes to estimating budget requirements, as well as unexpected costs that arise from time-to-time. The contingency represents 10% of the total budget and is there to act as a safety buffer.

#### Corporate Income Tax

From our current understanding about taxation of income from a DAO the legal entity will be subject to pay income tax on all DAI distributions we convert to FIAT. We still hope there is another way of dealing with that, in this case this position will become different.

### Budget Distribution

The budget is to be distributed on a monthly basis to the MakerLabs Core Unit Multisig, which is an instance of a Gnosis Safe multisig. Note that the Maker Protocol retains full administrative control of the funds in the MakerLabs Core Unit Multisig. To start, the multisig has 3 signers (see below) with a quorum of 2. This ensures that no rogue member is able to control the funds.

### Budget Implementation

Distribution will be manual until a best-practice distribution method has been adopted by a majority of core units.

#### Initial Setup

* **54,800 DAI** will be transferred to 0x89C5d54C979f682F40b73a9FC39F338C88B434c6 ([`teamwallet.makerlabs.eth`](https://gnosis-safe.io/app/eth:0xb179F0760B1f1D71A447B8c37BBF5ef99E4dF6c9/balances)) on 2021-11-10

#### Lump Sum

* **247,800 DAI** will be transferred to 0x89C5d54C979f682F40b73a9FC39F338C88B434c6 ([`continuity.makerlabs.eth`](https://gnosis-safe.io/app/eth:0x89C5d54C979f682F40b73a9FC39F338C88B434c6/balances)) on 2021-11-10

#### Monthly Payments

* **991,200 DAI** will be streamed to 0xb179F0760B1f1D71A447B8c37BBF5ef99E4dF6c9 ([`teamwallet.makerlabs.eth`](https://gnosis-safe.io/app/eth:0xb179F0760B1f1D71A447B8c37BBF5ef99E4dF6c9/balances)) starting 2022-01-01 and ending 2022-12-31 at a rate of $82,600 DAI per month.

### MakerLabs Core Unit Multisig

Ownership: This multisig ([`teamwallet.makerlabs.eth`](https://gnosis-safe.io/app/eth:0xb179F0760B1f1D71A447B8c37BBF5ef99E4dF6c9/balances) -> `0xb179F0760B1f1D71A447B8c37BBF5ef99E4dF6c9`) will consist of the three members of the MakerLabs Team:

* @urbanisierung -> `urbanisierung.makerlabs.eth` -> `0x02012c3943ee2DEe32FAA35105F4E6bd2bCE6978`
* @colrad  -> `colrad.makerlabs.eth` -> `0x02012c3943ee2DEe32FAA35105F4E6bd2bCE6978`
* @ultraschuppi -> `schuppi.makerlabs.eth` -> `0x2eC2331809F63B64ea1F4f34b51D992fc0D3E683`

This multisig conforms to the requirement ratified by Maker Governance in [MIP47](https://forum.makerdao.com/t/mip40c3-sp15-modify-oracles-core-unit-budget/8047).

### Conditions - Continuous Operation

To ensure 3 months of continuous operation in the event of emergency shutdown or protocol issues or to defund/undeploy the Core unit, the MakerLab Unit is requesting an upfront lump-sum of $247.8k to sit in a multisig controlled by a set of 5 Core Unit Facilitators.

#### Calculation:

The lump sum is the equivalent of 3 months of expenses.

#### Rationale:

If normal protocol operation is not possible due to emergency shutdown or other protocol failure, these funds will be used to ensure employment resources get the system back up and functional.

This will also be used in case the DAO wants to tear down the Core Unit to allow the corresponding legal entity to properly lay off the employees according to local law.

At the conclusion of the year, the lump sum will remain in the multisig for the following year and may be increased at that point in time due to team growth or the need for an increased runway.

Note that this multisig is NOT controlled by Maker Governance but rather exclusively by a set of Core Unit Facilitators. This is intentional to protect the funds in the event of a governance attack. Governance can indirectly transfer these funds back through a consensus of Core Unit Facilitators.

#### Details:

* MakerLabs Emergency Multisig - [`continuity.makerlabs.eth`](https://gnosis-safe.io/app/eth:0x89C5d54C979f682F40b73a9FC39F338C88B434c6/balances) -> `0x89C5d54C979f682F40b73a9FC39F338C88B434c6`
* Designated Contact: @ultraschuppi - `schuppi.makerlabs.eth` -> `0x2eC2331809F63B64ea1F4f34b51D992fc0D3E683`
* Quorum - 3/5
* Signers:
  * @SebVentures -> `0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b`
  * @LongForWisdom -> `0x66f40F044E0e2F77bB746e3275E82e88dCBA2D69`
  * @Nadia -> `0xc8E6c287F6c127AFE5e4CB30bC440607b44c35f8`
  * @Derek -> `0xe3a76328edE8Fd61d5fA7840b878Dd69cdfD67d8`
  * @ultraschuppi -> `0x2eC2331809F63B64ea1F4f34b51D992fc0D3E683`

### MKR Vesting

The MakerLabs Core Unit is proposing to apply the [SES - MKR Incentive Plan](https://docs.google.com/document/d/1oV0E_Eet-sLZ9Gr6jHAi7cPuSOHs2XiMGxwYpnzRLZE/edit#), a linear interpolation model to utilize salary to calculate the amount of MKR each individual will vest.

We want to apply one modification, removing Repricing and Renewal. We propose this modification to remove uncertainty for MKR Holders and suppress MKR Price speculation in the Team.

| Property                       | Value                                                                                                                                                            |
| ------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MKR/USD lock-in Price (New)    | Trailing 6 month average                                                                                                                                         |
| MKR/USD lock-in Price (OG)     | MKR = $ 3072 (26.02.2021 - 26.08.2021)                                                                                                                           |
| Biannual MKR Amount            | Initial Annual Incentive Value (USD) / MKR/USD lock-in Price                                                                                                     |
| Vesting Period                 | 3 years                                                                                                                                                          |
| Cliff Vest                     | 12 months                                                                                                                                                        |
| Vesting Schedule               | After cliff has expired, the Biannual MKR amount vests every 6 months and is distributed on Jan/Jul 1st (assuming the Core Unit starts working in January 2022). |
| Manual Repricing               | no                                                                                                                                                               |
| Auto-Renewal                   | no                                                                                                                                                               |
| MKR After 1 Year 1 FTE / TEAM  | 51.64 / 154.93                                                                                                                                                   |
| MKR After 3 Years 1 FTE / TEAM | 154.93 / 464.79                                                                                                                                                  |
