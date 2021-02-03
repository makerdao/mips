# MIPX: Streaming Payments via the Keg
```
Preamble

MIP#: X
Title: Streaming Payments via the Keg
Author(s): Payton Rose @prose11, Sam MacPherson (@hexonaut)
Contributors: @amyjung, @LongForWisdom, @Elihu

Type: General
Status: <Assigned by MIP Editor>

Date Proposed: <2021-02-03>
Date Ratified: <yyyy-mm-dd>

Dependencies:
Replaces:
```
## References

* [MIP34: Keg Streaming Payments Module](https://forum.makerdao.com/t/mip34-keg-streaming-payments-module/6013)
* [The Flapper](https://docs.makerdao.com/smart-contract-modules/system-stabilizer-module/flap-detailed-documentation)
* [MIPXc2 Subproposal: Setting Fixed Distributions via the Keg](https://github.com/prose11/mips/blob/Non-Technical-Keg/MIPX/MIPXc2%20Subproposal%20%5BTemplate%5D.md)
* [MIPXc3 Subproposal: Setting Variable Distributions via the Keg](https://github.com/prose11/mips/blob/Non-Technical-Keg/MIPX/MIPXc3%20Subproposal%20%5BTemplate%5D.md)
* [MIPXc4 Subproposal: Stopping Distributions from the Keg](https://github.com/prose11/mips/blob/master/Non-Technical%20Keg/MIPXc4%20Subproposal%20%5BTemplate%5D.md)

## Sentence Summary

MIPX describes how to utilize the Keg, a method of streaming DAI to various addresses, at a defined rate.

## Paragraph Summary

MIPX details what properties must be defined for Maker Governance to utilize the Keg, a tool for distributing DAI. The Keg allows Maker Governance to distribute DAI in “flights,” sets of addresses receiving funds over time at a fixed ratio. Both the Surplus Buffer and the Flapper (Surplus Auctions) may be used as funding sources for the Keg.

## Component Summary

**MIPXc1: Defining Components of the Keg**

Describes the Keg and the components necessary to utilize it.

**MIPXc2:Setting Fixed Distributions via the Keg**

Describes how Maker Governance can dictate payments from the Surplus Buffer through the Keg, by use of a MIPXc2 subproposal.

**MIPXc3:Setting Variable Distributions via the Keg**

Describes how Maker Governance can dictate variable payments by redirecting a percentage of DAI otherwise destined for the Flapper through the Keg, by use of a MIPXc3 subproposal.

**MIPXc4: Stopping Distributions from the Keg**

Describes how Maker Governance can stop or pause payments through the Keg, by use of a MIPXc3 subproposal.

## Motivation

The Keg was created as a way for Maker Governance to stream payments to different wallet addresses. Currently, every allocation of DAI must be dictated by Governance casting a spell for a single distribution. Enabling the Keg will allow Governance to distribute DAI continuously for projects of ongoing importance to the Maker Protocol, rather than requiring initiatives to continually request DAI every Governance cycle.

Additionally, the ability to utilize funds otherwise going to the Flapper (Surplus Auctions) allows Governance to designate DAI to programs as a percentage of surplus revenue. Thus, certain projects can be funded if and when there is a surplus to operational requirements for the Maker Protocol.

## Specification / Proposal Details

**MIPXc1: Defining Components of the Keg**

The Keg is a smart contract implementation that allows DAI to be streamed to different addresses. Utilizing the following parameters, the Keg is able to draw funds from the Surplus Buffer, or redirect funds otherwise going to the Flapper (Surplus Auctions), as dictated by Maker Governance.

A `flight` is defined by the Keg as a set of addresses that will be streamed DAI and the ratio of DAI each address will receive, relative to the entire allocation. Each `flight` represents a stream of funds that will need to be allocated by Governance.

The `rate` is a parameter that must be set to define how much DAI per second will be streamed to a specified flight from the Surplus Buffer. The `rate` parameter is only utilized when Governance wishes to direct DAI from the Surplus Buffer.

The `flow` is a parameter that indicates the percentage of DAI otherwise destined for the Flapper to be redirected to a specific flight. `Flow` is only set for initiatives that wish to utilize the surplus DAI from operational expenses.

These parameters can be utilized to allow Maker Governance to set continuous DAI distributions for any number of initiatives. Particular attention should be paid to the source of DAI for each flight approved by Governance, as DAI streaming from the Surplus Buffer will be constant, whereas DAI streaming from excess revenue will vary based on Protocol performance.

**MIPXc2: Setting Fixed Distributions via the Keg**

When an initiative desires a constant rate of streamed amount of DAI, the funding must be requested through Governance and would be drawn from the Surplus Buffer. A [MIPXc2 subproposal](https://github.com/prose11/mips/blob/Non-Technical-Keg/MIPX/MIPXc2%20Subproposal%20%5BTemplate%5D.md) must be submitted when setting a new flight or updating a current one. The proposal will be subject to the following parameters:

* Feedback Period: 4 weeks
* Frozen Period: 2 weeks

**MIPXc3: Setting Variable Distributions via the Keg**

When an initiative desires DAI to be streamed at a variable rate, based on excess revenue to operational expenses, the funding must be requested through Governance. A [MIPXc3 subproposal](https://github.com/prose11/mips/blob/Non-Technical-Keg/MIPX/MIPXc3%20Subproposal%20%5BTemplate%5D.md) must be submitted when setting a new flight or updating a current one.

Due to contract limitations, only one stream may be taken from funds otherwise going to the `Flapper`. Backend work must be done to define and split the stream from the excess revenues into any Governance approved initiatives. As a result, MIPXc3 subproposals will require a longer feedback period:

* Feedback Period: 6 weeks
* Frozen Period: 2 weeks

**MIPXc4: Stopping Distributions from the Keg**

In some time-sensitive scenarios, the Governance Facilitators may deem a Signal Request appropriate for stopping or pausing payments from the Keg.

For any scenario not deemed urgent by Governance Facilitators, a [MIPXc4 Subproposal](https://github.com/prose11/mips/blob/master/Non-Technical%20Keg/MIPXc4%20Subproposal%20%5BTemplate%5D.md) must be utilized to stop the streaming of DAI to a particular flight. The proposal will be subject to the following parameters:

* Feedback Period: 4 weeks
* Frozen Period: 2 weeks
