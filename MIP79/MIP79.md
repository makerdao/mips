# MIP79: Recognized Delegate MKR Compensation

## Preamble

```
MIP#: 79
Title: Recognized Delegate MKR Vesting
Author(s): @Patrick_J
Contributors: @psychonaut, @LongForWisdom, @prose11
Tags: delegates, mip-set, delegates-mip-set, process, delegate-compensation
Type: Process
Status: RFC
Date Proposed: 2022-07-29
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP77, MIP78
Replaces: N/A
Forum URL: https://forum.makerdao.com/t/mip79-recognized-delegate-mkr-compensation/16907
Ratification Poll URL:
```

## Note

This MIP is intended to be voted on as a MIP Set along with:

* [MIP77: Delegates in the Maker Protocol](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905).
* [MIP78: Recognized Delegate DAI Compensation](https://forum.makerdao.com/t/mipyy-recognized-delegate-dai-compensation/16906).

## References

* [MIP77: MakerDAO Delegates](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905)
* [MIP78: Recognized Delegate DAI Compensation](https://forum.makerdao.com/t/mipyy-recognized-delegate-dai-compensation/16906)

## Sentence Summary

MIP79 is a proposal for MKR vesting streams for Recognized Delegates.

## Paragraph Summary

MIP79 defines how MKR vesting streams for Recognized Delegates will be calculated and executed.

## Component Summary

**MIP79c1: Definitions**
MIP79c1 defines key terms.

**MIP79c2: MKR Vesting Calculation**
Defines how MKR Vesting for Recognized Delegates is calculated.

**MIP79c3: MKR Distribution Process**
Describe how MKR Vesting for Recognized Delegates is handled at the execution level.

**MIP79c4: Retrospective MKR Vesting**
Describes how MKR will be vested based on retrospective DAI compensation for Recognized Delegates active before this MIP was ratified.

## Motivation

While compensation for Recognized Delegates is primarily in DAI, which is beneficial due to its stability compared to the Dollar, MKR vesting is a valuable tool for allowing Recognized Delegates to establish intertwined incentives with the MKR holders delegating to them. These aligned incentives have not been present for Recognized Delegates; this MIP seeks to change that.

By linking MKR vesting to DAI compensation received by Recognized Delegates (defined in [MIPyy: Recognized Delegate DAI Compensation](https://forum.makerdao.com/t/mipyy-recognized-delegate-dai-compensation/16906)) we can indirectly tie the amount of MKR vested to both the amount of MKR received as well as the performance of Recognized Delegates.

By using DssVest to stream MKR over twelve months, we can encourage long-term thinking from Recognized Delegates to maximize the value of the MKR they will receive when the stream completes. In addition, this will align them more fully with the MKR holders delegating to them.

## Specification / Proposal Details

### MIP79c1: Definitions

* **Recognized Delegate:** Any delegate that meets the requirements defined in [MIP77c2](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905#mipxxc2-becoming-a-recognized-delegate-15).
* **Recognized Delegate DAI Compensation:** DAI compensation paid to Recognized Delegates as defined in [MIP78: Recognized Delegate DAI Compensation](https://forum.makerdao.com/t/mipyy-recognized-delegate-dai-compensation/16906).

### MIP79c2: MKR Vesting Calculation

Once a Recognized Delegate has been active for six months, in effect, six months since they completed the steps to become a Recognized Delegate defined in [MIP77c2](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905#mipxxc2-becoming-a-recognized-delegate-15) and received their first delegated MKR tokens, the Governance Facilitators will calculate the total DAI compensation the Recognized Delegate has received in that time. This value will be divided by the 12-month rolling average price of the MKR token in DAI. This will calculate the amount of MKR vesting to which the Recognized Delegate is entitled.

This process will repeat every six months that the Recognized Delegate is active. Recognized Delegates are not eligible for MKR Vesting if they step-down before they reach six months as a Recognized Delegate. Once a Recognized Delegate has served for six months, they will be entitled to a pro-rata amount of MKR vesting if they step down.

#### Examples

Delegate A has completed six months as a Recognized Delegate. During this time, they received 50,000 DAI compensation for their work. In addition, the 12-month rolling average price of MKR for this period is 1,000 DAI. Consequently, Delegate A qualifies for 50 MKR to be streamed to them using DssVest.

After another six months, Delegate A has received an additional 62,500 DAI as compensation, and the MKR token 12-month rolling average price in DAI is now 2,000 DAI. Therefore, delegate A qualifies for  31.25 MKR to be streamed to them using DssVest for this period.

After three months, Delegate A decides they no longer wish to be a Recognized Delegate and follows the process described in [MIP77c7](https://forum.makerdao.com/t/mipxx-delegates-in-the-maker-protocol/16905/3#mipxxc7-recognized-delegate-resignation-30). They will receive MKR streamed to them using DssVest based on the DAI they earned in these three months.

Delegate B has completed four months as a Recognized Delegate before stepping down. As they did not complete the minimum six months as a Recognized Delegate, they do not qualify for any vested MKR.

### MIP79c3: MKR Distribution Process

MKR will be distributed to Recognized Delegates using DssVest to an address of their choice. Streams must have a twelve-month duration and a cliff date of twelve months.

Governance Facilitators will post the amount of MKR to be streamed, stream dates, and cliff date to the Maker Governance Forum in advance of the relevant Executive Vote.

Recognized Delegates are responsible for confirming the target address for the stream with the Governance Facilitators. If this is not done promptly, the stream will not be included in the next possible Executive Vote but will instead be delayed until it is possible for the Governance Facilitators to include it in a subsequent Executive Vote.

Maker Governance will create the MKR streams through an Executive Vote. MKR vesting stream set-up does not have the same anti-bundling requirements as Recognized Delegate DAI compensation and may go into any Executive Vote. Unlike other MKR vesting streams, Recognized Delegate streams can be bundled with Recognized Delegate DAI payments.

### MIP79c4: Retrospective MKR Vesting

Recognized Delegates that were active before this MIP was ratified will be entitled to receive MKR vesting for the periods they were active and compensated under either MIP61, the Delegate Compensation Trial, or any one-off payments directly related to their role as a Recognized Delegate. This includes Recognized Delegates that have stood down from the role as long as they completed the minimum requirement of six months as a Recognized Delegate.

Retrospective payments will be included in the first calculation of MKR vesting for Recognized Delegates six months after they started their work as Recognized Delegates in the Maker Protocol. Therefore, for Recognized Delegates that have been active for more than six months, their first stream will include the entire period since they started work as a Recognized Delegate.

This will be calculated using the method described in MIP79c2.
