# MIP40: Budget Process Framework

## Preamble

```
MIP#: 40
Title: Budget Framework
Author(s): @Aes, @adcv, @SebVentures
Contributors: @LongForWisdom, @madshills, @MakerMan
Tags: core-unit-framework, mip-set, core-unit-framework-mipset, budget-framework
Status: Accepted
Date Proposed: 2022-03-27
Date Ratified: 2022-05-23
Dependencies: MIP0, MIP16
Replaces: MIP40
Extra: This MIP has been amended. See [MIP4c2-SP19](https://mips.makerdao.com/mips/details/MIP4c2SP19). The original version can be found [here](https://github.com/makerdao/mips/blob/7fdb552680486bbd84dfd84b64980e0999249043/MIP40/mip40.md).
```

## Sentence Summary

MIP40: Budget Framework contains a framework for managing budgets and modifying them in the DAO Primitives State MIP.

## Paragraph Summary

MIP40: Budget Framework contains a framework for managing budgets and modifying them in the DAO Primitives State MIP. The Framework includes features to provide transparency and clarity for Governance when making decisions around budgets and a design that enables a high degree of flexibility in implementing payment structures for the Core Units.

## Component Summary

**MIP40c1: Budget Framework**
Gives an overview of the most critical characteristics of Budgets.

**MIP40c2: Composition of a Budget**
Describes the components of a Core Unit Budget proposal.

**MIP40c3: Adding/Modifying Core Unit Budget Process**
Describes the process for adding a budget to a new Core Unit or modifying the Core Unit's existing budget.

**MIP40c4: Budget Implementation Details**
Provides clarity on how the budget payouts are addressed from a practical perspective once approved.

## Motivation

The Budget Framework MIP allows Governance to manage Budget Proposal requests for new and existing Core Units in a standardized way. The motivation is to promote transparency regarding the use of MKR-holder funds and increase fairness in the capital allocation decisions Governance must make. Facilitators should be able to manage their plans dynamically, for instance, depending on changing market conditions, in order to achieve the Objectives of the DAO. The Framework can help Governance guide a given Core Unit, as they could vote (or not) to attach multiple budgets to a Core Unit, each with a different, more specific objective. 

## Specification / Proposal Details

### MIP40c1: Budget Framework

Budgets are used to fund the work defined by the Core Units chosen by Maker Governance. A budget is attached to a Core Unit and is meant to be used only for that Core Unit.

The Facilitators of each Core Unit administer Core Unit budgets.

Once a budget has been approved, Facilitators will be encouraged to file correctly tagged expense reports to the appropriate subsection of the governance forums. Actual expenses should be reported on a monthly basis, following reporting recommendations outlined by SF-001 and SES-001. 

Facilitators are further encouraged to leverage internal and external tools to improve communication with MKR holders and to dynamically update reporting standards according to evolving DAO needs.

If a Facilitator is offboarded from their Core Unit, quits, or goes missing, the budget will continue to be available to pay out according to its Budget Implementation to allow the Core Unit to continue with long-term operations as much as possible. See MIP41c6 for details on this process.

Budget Proposal requests must be submitted during a Budget Submission Window. New Core Units can be submitted quarterly (March, June, September, or November Governance Cycles). 

### MIP40c2: Composition of a Budget

Core Unit Budgets can have multiple entries. Having multiple budget entries, each with its implementation and breakdown, enables more advanced compensation and funding structures to be created if desired. Each entry must at least include each of the below elements: 

#### Budget Term

- Start Date is no later than 3mos after the formal submission date
- End Date is no later than 12mos after the Start Date

#### Increasing Value to Maker Tokenholders

- Should demonstrate, over the length of the Budget Term either the potential for revenue growth and/or the potential for a tangible improvement in operational efficiency

#### Roadmap and Objectives
- Provide a timeline for specific deliverables over the course of the Budget Term

#### Reporting Transparency

- List expenses by type, per the [Core Unit Operating Expense Budget Template](https://docs.google.com/spreadsheets/d/1dyrRelt5X5kD8CyRd6inyKXZV9PwF4RExPLgK3PQIRE/edit?usp=sharing)
- Also describe how much of the budget is to be utilized towards 'on-going' fixed services, and how much is applied to one-time type services/events (planned/unplanned/contingency)
- Disclose full-time equivalent headcount, by month

#### Contingency Planning
- Explain how this Core Unit could guarantee minimally viable business continuity if the approved Budget Proposal was operating during a Bear/Superbear context: 10%/20% lower
    - Facilitators should formulate operational budgets capable of operating at lower funding levels
    - Facilitators are encouraged to transparently communicate with collaborators regarding potential impact on compensation during downturns
- Explain how this Core Unit could operate if the approved Budget Proposal were operating during a Bull context: With corresponding roadmap oriented around stretch targets 

#### Unwinding and Defunding

- Define how the Core Unit will be wound down in the event of a Governance vote to defund it, with accompanying rationale (period, use of funds, return of funds)
    - Describe what costs will be paid during this period and what costs will not be paid for, including but not limited to:
        - Finishing current initiatives. 
        - Handing initiatives off to another unit
        - Archiving initiatives
    - Describe how funds will be returned to the DAO
    - Describe one-time expenses that would be needed to wind down the core unit.  This also should be included in the one-time expenses to spin up
    - Detail how the Core Unit will treat non-DAI funds, including MKR, whether vested or not, during the offboarding

#### Submission Period
- Budget Proposals should be submitted during a budget submission window
    - Quarterly (March, June, September, or November Governance Cycles)

#### Considerations for Budget Modifications

- If an already approved Core Unit is requesting a >10% increase in budget, the new budget proposal must include:
    - Variance analysis by expense type comparing proposed vs existing budget, including spend and headcount
    - Variances of >10% require disclosure of driver(s)
- Detailed business case to justify the increase in investment
    - Explain why the DAO should make this investment
    - What problem does making this investment solve?
    - Why is now the right time to make the investment?
    - Detailed incremental deliveries expected as a result of increased investment

#### Considerations for Unwinding and Defunding

- Reducing DAO overhead is critical, so managing an offboarding must execute with grace and clarity
- Please itemize which costs need inclusion for winding down or which will return to the DAO (eg., travel etc.)
- To conduct a smooth unwinding, it's suggested to have a 2 of 3 multisig with the ex or interim facilitator executing the wind down

### MIP40c3: Adding/Modifying Core Unit Budget Process

Once a MIP40c3-SP subproposal passes, the Governance Facilitators or the MIP Editors will update the domain state MIP (MIP38) accordingly.

This is a technical process component that can have on-chain effects that alter the Maker Protocol's state. When subproposals generated from this component reach the executive vote stage of the MIPs cycle, the executive vote must include a technical state change to authorize the budget implementations specified in the subproposal to draw funds from the Maker Protocol.

#### Proposal Parameters

- **Minimum Feedback Period**: 1 Month.
- **Minimum Frozen Period**: 1 Week.
- Ratification Polls for MIP40c3 subproposals involving a Core Unit Budget Modification will have different requirements to MIP51c2. Instead of binary voting, they must use ranked-choice voting, with the options as follows:
    - A: Approve existing budget only (Business as usual)
    - B: Approve increased budget
    - C: Reject budget
    - D: Abstain

In order for this Ratification Poll to conclude successfully and the contained proposal(s) move to Accepted status, each of the following conditions must be true:

* `A` or `B` vote-weight must exceed `C` vote-weight when the poll closes.
* Winning vote-weight must exceed the `Minimum Positive Participation` value of 10,000 MKR when the poll closes.

MIP40c3 subproposals must use the template located at [MIP40c3-Subproposal-Template](https://github.com/makerdao/mips/blob/master/MIP40/MIP40c3-Subproposal-Template.md).

### MIP40c4: Budget Implementation Details

Once a Budget Proposal is approved, the Core Unit's Facilitators can begin drawing payments to fund their Core Unit according to their Budget Implementation. The Budget Implementation defines when and how the Core Unit Facilitators will receive the funds that make up their budget. This budget implementation standard to be used is available on [this](https://forum.makerdao.com/t/core-unit-budget-implementation-standardization/10758) forum post. Variations from this standard must be explained.

The Budget Implementation is binding. It should be understood to directly authorize the proposed funds to be drawn from the funding source (either the Maker Protocol or a treasury contract controlled by Maker Governance).

Core Unit Budgets are paid out through Budget Implementations, which are smart contracts authorized by Maker Governance to draw funds from the Protocol. It can also be a manual (not smart contract-based) pre-approval by Governance.

Maker Governance can explicitly turn a budget implementation off.

Budget Implementations create a scheduled rate or transfer of funds taken from the Protocol and given directly to the Core Unit's Facilitators.

Advanced Budget Implementations can be used for more innovative cases, such as incentive payments or unpredictable expenses. They can be implemented in various ways, such as relying on multi-sig access or dependent on system variables such as Protocol auctions, Dai supply or Stability Fees.

#### Different Fund Types

The Budget Implementation could draw funds from the Protocol in various ways, depending on the implementation's objective. It could draw Dai from the Surplus Buffer and other sources, such as Governance owned smart contracts or reserves that are compatible with Budget Implementations.

Printing MKR through this MIP is only allowed if the MKR is to be distributed with a programmed time-lock of at least 12 months. Budget Implementations that don't verifiably distribute MKR with at least a 12-month time lock cannot be proposed through this MIP.

#### Return of Funds
Every three months starting September 30th, 2022 Core Units will be required to return all funds in excess of three months of budget, defined as the most recent three months budget proceeding the return fund date (e.g. for September 30th deadline, July, August, and September budgets will be used). Exempt are funds destined for any outstanding payments for specific projects that the budget was originally approved for.

*Calculation Example:*
Core Unit A's budget is 100,000 Dai per month for 12 months.
If actual spend by the end of the budget period is 600,000, then the minimum that must be returned to the DAO is 300,000. 

*Budget Remaining - (3 * Monthly Budget) = Minimum Amount to Return
600,000 - (3 x 100,000) = 300,000*

Transfers should be made to the DssBlow contract, simply send a standard ERC20 Dai transaction:
0x0048fc4357db3c0f45adea433a07a20769ddb0cf
