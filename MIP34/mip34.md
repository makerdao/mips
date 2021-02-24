# MIP34: Keg Streaming Payments Module

## Preamble

```
MIP#: 34
Title: Keg Streaming Payments Module
Author(s): Sam MacPherson (@hexonaut)
Contributors: None
Type: Technical
Status: Formal Submission
Date Proposed: 2021-01-11
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: n/a
License: AGPL3+
```
## References

* The proposed [keg](https://github.com/makerdao/keg)
* [Flapper Distributor](https://forum.makerdao.com/t/flapperdistributor-a-way-to-distribute-system-surplus-while-minimizing-governance/4591) - one use-case of the keg

## Sentence Summary

This proposal provides a smart contract implementation of a Streaming Payments System for Maker.

## Paragraph Summary

The Keg is a tool for streaming ERC20 DAI to a preset group of addresses. These address groups can be targetted by specifying a human-friendly name to the Keg. These address groups are called `flights`. Anyone can make a payment into the Keg provided they specify the destination `flight` and have enough DAI. Also included are two contracts `Tap` and `FlapTap` to facilitate payments from the Surplus Buffer and Flapper respectively.

## Component Summary

**MIP34c1: Keg:** summary of `Keg` contract.

**MIP34c2: Tap:** summary of `Tap` contract.

**MIP34c3: FlapTap:** Summary of `FlapTap` contract.

**MIP34c4: Test cases:** lists existing test cases, including integration test

**MIP34c5: Security considerations:** comments on the limited nature of the security implications of adding the `PSM`.

**MIP34c6: Licensing:** states the license under which the proposal and code are distributed.

## Motivation

A mechanism to fund domain team work is required in order to reduce/eliminate the Maker Foundation as a dependency of the Maker protocol. This could be achieved by one-time governance votes for a lump sum, but this introduces overhead on the governance process. This module aims to reduce this overhead by having governance pre-approve budgets at a fixed rate. Additionally, the `FlapTap` provides a mechanism to redirect a fixed fraction of the surplus auctions (`Flapper`) towards another target. This will give governance a way to control protocol profits.

## Specification

### MIP34c1: Keg

The `Keg` contract defines `flights` which are a list of target addresses along with the relative weights of how much each address should get. Governance can create, update or delete flights by calling the `seat()` and `revoke()` functions.

Once a `flight` is registered then anybody can `approve` DAI to be sent to the `Keg` via the `pour()` method. The `flight` bytes32 descriptor is a human-friendly name for the list of targets which could be for example "operations-smartcontracts".

The keg also defines a `stoppable` modifier to allow governance to pause payments.

### MIP34c2: Tap

The `Tap` allows governance to define streaming payments from the Surplus Buffer at a fixed rate. The `flight` is the target group of addresses in the keg. The `rate` is the per-second rate of DAI to stream from the Surplus Buffer. Once initiated anyone can call `pump()` to pull funds from the Surplus Buffer via `vat.suck()` to the target flight. `Tap` also supports the `stoppable` modifier to allow governance to pause payments.

### MIP34c3: FlapTap

The `FlapTap` sits between the `vow` and the `flapper`. It is used to redirect a portion of the funds to the `Keg`. The `flow` parameter controls what % of the funds go to the `keg` - the rest go to the `flapper` as usual. The `FlapTap` is designed to be as non-invasive as possible by preserving all the assumptions of `kick()` and `cage()`. One unavoidable behaviour change is that `vow.bump` is no longer one to one with the amount sent to auction, but is instead the amount to send to the auction + keg.

### MIP34c4: Test cases

see [Keg.t.sol](https://github.com/makerdao/keg/blob/master/src/Keg.t.sol)

- test_flap_tap_cage
- test_pour_flight
- test_keg_deploy
- test_seat
- testFail_seat_bad_shares
- test_tap_rate_change_with_pump
- testFail_flap_tap_invalid_flow
- testFail_tap_rate_change_without_pump
- test_pour_flight_one_wei
- test_flap_tap_deploy
- testFail_seat_zero_address
- test_tap_pump
- testFail_seat_zero_length
- testFail_pour_flight_invalid
- testFail_seat_unequal_length
- testFail_pour_flight_not_enough_dai
- testFail_pour_flight_zero

### MIP34c5: Security considerations

The `Keg` does not require any permissions into the Maker system and as such does not have any security risks. The `Tap` is simple and only interacts with `vat.suck()` in a permissioned way. The attack surface is minimal and easy to audit. The most significant risk comes from `FlapTap` which requires a modification to the core protocol to sit between the `vow` and the `flapper`. The code itself is simple, but the modification to the core protocol should be carefully considered.

### MIP34c6: Licensing

- [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
