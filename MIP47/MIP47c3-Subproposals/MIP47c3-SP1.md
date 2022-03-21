# MIP47c3-SP1: Dissolution of Content Production (MKT-001) Multi-Sig Request

## Preamble

```
SP#: 1
Title: Dissolution of Content Production (MKT-001) Multi-Sig Request
Author(s): @prose11
Contributors:
Tags: multi-sig
Status: RFC
Date Proposed: 2022-03-17
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip47c3-sp1-dissolution-of-content-production-mkt-001-multi-sig-request/13991
```

## Specification

* **Group or Individual Seeking to Dissolve Multi-Sig**: @prose11
    * Members (if applicable): N/A, but cc: @GovAlpha-Core-Unit
* **Address and Name of Multi-Sig**: Content Production (MKT-001) Multi-Sig: [0xDCAF2C84e1154c8DdD3203880e5db965bfF09B60](https://gnosis-safe.io/app/eth:0xDCAF2C84e1154c8DdD3203880e5db965bfF09B60/balances)
* **List of what is being revoked (funds/permissions)**:
    * Removing wallet from recognized multi-sig list following the vote to [offboard the Core Unit](https://vote.makerdao.com/polling/QmYk1XN5#poll-detail)
   * Claiming and then revoking remaining funds from the DssVest budget stream, [Stream ID #20](https://makerburn.com/#/expenses/vesting)

## Motivation

Now that the Content Production Core Unit has been offboarded, their wallet should be removed from the recognized multi-sig list. Currently, no funds are available in the multi-sig, but it can still claim ~3.8k DAI from their canceled budget stream.

Seeing as the Content Production Core Unit is no longer an active Core Unit for the DAO, there is only downside to leaving their multi-sig Governance recognized. Given the small amount of funds that can still be claimed, there is little danger to publicly announce our intentions to close the loop with the DssVest stream. However, this process is clearly vulnerable to front running until the procedure for reclaiming funds and permissions is improved.

If this subproposal is accepted, there will be the technical work of claiming the budget funds and returning them to the surplus buffer, to be completed in a future executive proposal.
