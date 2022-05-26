# MIP50: Direct Deposit Module

## Preamble

```
MIP#: 50
Title: Direct Deposit Module
Author(s): Sam MacPherson (@hexonaut)
Contributors: None
Tags: technical, integrations
Type: Technical
Status: Accepted
Date Proposed: 2021-04-07
Date Ratified: 2021-05-25
Dependencies: n/a
Replaces: n/a
License: AGPL3+  
Ratification Poll URL: https://vote.makerdao.com/executive/template-executive-vote-approve-may-2021-governance-cycle-may-24-2021?network=mainnet#proposal-detail  
Forum URL: https://forum.makerdao.com/t/mip50-direct-deposit-module/7356
```

## References

* The proposed [code](https://github.com/BellwoodStudios/dss-direct-deposit)
* [D3M Proposal](https://forum.makerdao.com/t/discussion-direct-deposit-dai-module-d3m/7357)

## Sentence Summary

This proposal provides a smart contract implementation of a Direct Deposit Module for Maker.

## Paragraph Summary

The Direct Deposit Module interfaces with third party lending protocols to enforce a maximum variable borrow rate for selected assets. Maker Governance is able to pick a target variable borrow rate, and the module will automatically deposit/remove liquidity to ensure that target rate is hit.

## Component Summary

**MIP50c1: DssDirectDeposit:** summary of `DssDirectDeposit` contract.

**MIP50c2: Testing:** summary of tests.

**MIP50c3: Risk considerations:** comments on risk implications of adding Direct Deposit Modules.

**MIP50c4: Security considerations:** comments on security implications of adding Direct Deposit Modules.

**MIP50c5: Licensing:** states the license under which the proposal and code are distributed.

## Motivation

A big problem with third party lenders is they are unable to offer a stable variable borrow rate. This is undesirable for end users as they may be stuck paying extremely high interest rates during borrow demand spikes. By providing extra liquidity from the Maker protocol, these lending markets will be able to offer certainty to their users. In exchange, Maker is able to earn interest off this excess borrow demand.

## Specification

### MIP50c1: DssDirectDeposit

The Direct Deposit Module will provide a number of implementations to connect with any third party lender governance desires. This section describes the general format of how these modules should behave.

All Direct Deposit Modules implementations must provide a way for governance to set the target interest rate `bar`. They will then provide a function to automatically add/remove liquidity based on the difference between the current borrow interest rate and the target. This automatic re-adjustment should take into account things such as the ilk debt ceiling, available debt to pay back as well as available liquidity in the lending pool.

Direct Deposit Modules should be equipped with a permissionless `cage()` function which can gracefully close out the position in the event one of the underlying assumptions changes (such as the interest rate model changes) or `vat.cage()` is called. There should be a time limit imposed on closing out the position such that bad debt can be pushed to the vow in the case no liquidity is ever available.

An initial implementation for [Aave DAI](https://github.com/BellwoodStudios/dss-direct-deposit/blob/master/src/DssDirectDepositAaveDai.sol) is provided, but this document is not intended to be specific to that lender / asset.

### MIP50c2: Test Summary

Mainnet fork tests should be added for each new contract to test against real world conditions. The tests should cover all possible scenarios.

Tests for Aave DAI can be found [here](https://github.com/BellwoodStudios/dss-direct-deposit/blob/master/src/DssDirectDepositAaveDai.t.sol).

### MIP50c3: Risk considerations

The primary risk comes from the inability to close out the deposit in the event the lending pool runs out of liquidity. Most third party lenders operate on an interest rate curve which can spike to very large numbers if all the liquidity is removed. It is because of this interest curve the risk due to lack of liquidity alone is small.

### MIP50c4: Security considerations

When interfacing with third party lenders we are assuming some of the risks of the protocol. If an exploit is found for the lender then it’s possible to lose the deposited amount. Deposit modules should take this into account by providing defensive programming structures to protect against known attack vectors. It is better to err on the side of caution and close out the direct deposit from a false positive then have something preventable slip by.

### MIP50c5: Licensing

- [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
