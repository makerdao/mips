# MIP20: Target Price Adjustment Module (`Vox`)

## Preamble

```
MIP#: 20
Title: Target Price Adjustment Module (`Vox`)
Author(s): Lev Livnev (@equivrel), ￼🌧️ McRainface
Contributors: n/a
Tags: technical, pending-implementation, governance, smart-contracts
Type: Technical
Status: Accepted
Date Proposed: 2020-07-08
Date Ratified: 2020-10-27
Dependencies: n/a
Replaces: n/a
License: AGPL3+
```

## References

- The proposed [dss-vox](https://github.com/livnev/dss-vox) implementation
- [target price adjustment in purple paper](https://makerdao.com/purple/#sec-4-3)
- [target price adjustment in sai](https://github.com/makerdao/sai/blob/master/src/vox.sol#L63)
- [The Target Rate Feedback Mechanism: An Introduction](https://forum.makerdao.com/t/the-target-rate-feedback-mechanism-an-introduction/2319)

## Sentence Summary

This proposal provides a smart contract implementation of `Vox`, a module which adjusts the target price of DAI according to a governance defined rate, allowing the institution of negative effective interest rates.

## Paragraph Summary

The Dai Stablecoin System is intended to reliably maintain Dai's exchange rate with respect to a reference asset (USD). Certain parameters of the System, such as the Stability Fee, are administered by Maker governance on an ongoing basis in response to evolving market conditions. This MIP implements the `Vox` module, which allows Maker governance to institute negative effective interest rates. In contrast to the Target Rate Feedback Mechanism (TRFM), the mechanism in this proposal does not adjust rates algorithmically using a DAI price oracle. Instead, the target rate is set directly by governance, similarly to how the Stability Fees and Dai Savings Rate are set today.

## Component Summary

**MIP20c1: Definitions:** defines Target Price, Target Rate, Target Price Adjustment Module, and Target Price Cap.

**MIP20c2: Desired properties:** lists important properties that the `Vox` implementation must satisfy.

**MIP20c3: Proposed code:** contains snippet of proposed implementation.

**MIP20c4: Test cases:** lists existing test cases, including integration test

**MIP20c5: Security considerations:** comments on the limited nature of the security implications of adding the `Vox`.

**MIP20c6: Other considerations:** describes the changes to governance of monetary policy, and contrasts the proposal in this MIP with the TRFM.

**MIP20c7: Formal verification/audit information:** comments on the amenability of the proposed code to formal verification, even though formal specification, audit, or code review have yet to be conducted.

**MIP20c8: Licensing:** states the license under which the proposal and code are distributed.

## Motivation

In an environment where the supply of DAI is too low to meet demand, monetary policy might find itself at the "zero lower bound" where stimulus can no longer be effected through lowering interest rates. In this case, it may necessary to pursue a policy of negative interest rates, in which the direction of the cashflow is reversed, with savers possibly paying borrowers. In the system as it exists today, the combination of the CDP Stability Fee and Dai Savings Rate serves as a cash flow from borrowers (CDP users) to savers (DAI holders), or in other words, an interest rate. However, that interest rate is effectively constrained to be positive: though it is technically possible to accrue a negative interest rate to CDPs, depositing DAI into the Savings Contract is optional so savers would be able to avoid negative rates simply by not using it, leaving a deficit on MakerDAO's balance sheet.

A crucial requirement in the implementation of this policy is for all DAI holders to be exposed to the negative rate. For technical reasons, it is not feasible to continuously manipulate on-chain user token balances, since this behaviour would undermine the implicit assumptions of well-behaved token semantics and could break integrations into other smart contract systems. A more compliant way of implementing negative interest rates is to manipulate the target price of DAI itself: this MIP implements such a system.

Adjusting the target price of DAI up or down causes an implicit value transfer from DAI borrowers to DAI holders, or from DAI holders to DAI borrowers, respectively, meaning that Target Price adjustment at a fixed rate of change acts like an effective interest rate, with a negative Target Rate corresponding to a negative effective interest rate.

## Specification

### MIP20c1: Definitions

- **Target Price**: the system accounting price of 1 DAI in USD. This is currently represented as `spot.par()`, and is set to $1.00. Multi-collateral Dai uses the Target Price in two places: when measuring the collateral ratio of a CDP, and when calculating the redemption value of DAI after Emergency Shutdown. The governance community may also use the Target Price as the price target for DAI/USD when setting interest rates and other risk parameters.
- **Target Rate**: the annualised compounding rate of change of the Target Price (short for Target Price Adjustment Rate).
- **Target Price Adjustment Module**: the smart contract which periodically adjusts the Target Price by the Target Rate.
- **Target Price Cap**: the maximum Target Price that the Target Price Adjustment Module is able to set.

### MIP20c2: Desired Properties

- At every call to `vox.prod()`, `spot.par()` should change by the target rate accrued over the period of time since the last call to `vox.prod()`.
- The Target Rate should be initialised at 0% per year, which results in no change to the Target Price.
- The Target Price should not be adjusted after Emergency Shutdown, regardless of the value of the Target Rate prior to Emergency Shutdown.
- The Target Price should not be adjusted above the Target Price Cap. When the Target Price Cap is reached, the Target Price should be set to exactly the Target Price Cap and further upward adjustments should have no effect.

### MIP20c3: Proposed Code

   see [vox.sol](https://github.com/livnev/dss-vox/blob/master/src/vox.sol). The core price adjustment functionality is simple:

```
function prod() external {
    uint256 age = sub(now, tau);
    tau = now;

    if (age == 0) return;          // optimised
    if (way == ONE) return;        // optimised
    if (spot.live() == 0) return;  // no adjustment after cage

    uint256 par = min(cap, rmul(rpow(way, age, ONE), spot.par()));
    spot.file("par", par);
}
```

### MIP20c4: Test Cases

see [vox.t.sol](https://github.com/livnev/dss-vox/blob/master/src/vox.t.sol)

- `test_prod_noop`
- `test_prod_basic`
- `test_prod_cap`
- `test_mainnet_target_adjustment` (this one is an integration test using the mainnet deployment of `dss`)

### MIP20c5: Security Considerations

The proposed solution is simple and non-invasive, interacting with only one other component of the system (the `Spotter`) through an existing method for adjusting the `par` price. Even though the core system was designed with the possibility of a changing `par` in mind, peripheral components and integrations should be carefully inspected for reliance on a fixed `par`.

### MIP20c6: Other Considerations

Upon adoption of this MIP, the Target Rate parameter can be adjusted by governance as an additional monetary policy lever, similar to the current notion of "Base Rate". Monetary policy processes may have to be amended in order to leverage this facility, and this MIP may be expanded in order to specify them.

This MIP can be compared with the folkloric Target Rate Feedback Mechanism (TRFM), an unused implementation of which was present in single-collateral Dai. The TRFM relies on the same notion of adjusting the target price of DAI as a monetary policy tool. The crucial difference between the TRFM and the mechanism proposed in this MIP is that while the TRFM algorithm sets the Target Rate automatically and continuously depending on a DAI price oracle, this MIP does not propose for the Target Rate to be set algorithmically.

### MIP20c7: Formal Verification/audit Information

The proposed contract is written in a way which is amenable to formal specification and verification, in accordance with the style and practices of the core multi-collateral DAI contracts, though it has not been formally specified. No audit or code review has taken place yet.

### MIP20c8: Licensing

- [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
