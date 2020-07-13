# Target Price Adjustment Module (`Vox`)

## Preamble
```
MIP#: <# to be assigned>
Title: Target Price Adjustment Module (`Vox`)
Author(s): Lev Livnev (@equivrel), ￼🌧️ McRainface
Contributors: n/a
Type: Technical
Status: <Assigned by MIP Editor>
Date Proposed: 2020-07-08
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: n/a
License: AGPL3+
```
## References

- The proposed [dss-vox](https://github.com/livnev/dss-vox) implementation
- [target price adjustment in purple paper](https://makerdao.com/purple/#sec-4-3)
- [target price adjustment in sai](https://github.com/makerdao/sai/blob/master/src/vox.sol#L63)

## Sentence summary

This proposal provides a smart contract implementation of `Vox`, a module which adjusts the target price of Dai according to a governance defined rate, allowing the institution of negative effective interest rates.

## Paragraph summary

The Dai Stablecoin System is intended to reliably maintain DAI's exchange rate with respect to a reference asset (USD). Certain parameters of the System, such as the Stability Fee, are administered by Maker governance on an ongoing basis in response to evolving market conditions. This MIP implements the `Vox` module, which allows Maker governance to institute negative effective interest rates.

## Component summary

#### MIP20c1: Definitions
#### MIP20c2: Desired properties
#### MIP20c3: Proposed code
#### MIP20c4: Test cases
#### MIP20c5: Security considerations
#### MIP20c6: Other considerations
#### MIP20c7: Formal verification/audit information
#### MIP20c8: Licensing

## Motivation

In an environment where the supply of DAI is too low to meet demand, monetary policy might find itself at the "zero lower bound" where stimulus can no longer be effected through lowering interest rates. In this case, it may necessary to purseu a policy of negative interest rates, in which the direction of the cashflow is reversed, with savers possibly paying borrowers. In the system as it exists today, the combination of the CDP Stability Fee and Dai Savings Rate serves as a cash flow from borrowers (CDP users) to savers (DAI holders), or in other words, an interest rate. However, that interest rate is effectively constrained to be positive: though it is technically possible to accrue a negative interest rate to CDPs, depositing DAI into the Savings Contract is optional so savers would be able to avoid negative rates simply by not using it, leaving a deficit on MakerDAO's balance sheet.

A crucial requirement in the implementation of this policy is for all DAI holders to be exposed to the negative rate. For technical reasons, it is not feasible to continuously manipulate on-chain user token balances, since this behaviour would undermine the implicit assumptions of well-behaved token semantics and could break integrations into other smart contract systems. A more compliant way of implementing negative interest rates is to manipulate the target price of DAI itself: this MIP implements such a system.

## Specification

### MIP20c1: Definitions

- **Target Price**: the system accounting price of 1 dai in USD. This is currently represented as `spot.par()`, and is set to $1.00.
- **Target Rate**: the annualised compounding rate of change of the Target Price (short for Target Price Adjustment Rate).
- **Target Price Adjustment Module**: the smart contract which periodically adjusts the Target Price by the Target Rate.
- **Target Price Cap**: the maximum Target Price that the Target Price Adjustment Module is able to set.

### MIP20c2: Desired properties

- At every call to `vox.prod()`, `spot.par()` should change by the target rate accrued over the period of time since the last call to `vox.prod()`.
- The Target Rate should be initialised at 0% per year, which results in no change to the Target Price.
- The Target Price should not be adjusted after Emergency Shutdown, regardless of the value of the Target Rate prior to Emergency Shutdown.
- The Target Price should not be adjusted above the Target Price Cap. When the Target Price Cap is reached, the Target Price should be set to exactly the Target Price Cap and further upward adjustments should have no effect.

### MIP20c3: Proposed code
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

### MIP20c4: Test cases

see [vox.t.sol](https://github.com/livnev/dss-vox/blob/master/src/vox.t.sol)

- `test_prod_noop`
- `test_prod_basic`
- `test_prod_cap`
- `test_mainnet_target_adjustment`

### MIP20c5: Security considerations

The proposed solution is simple and non-invasive, interacting with only one other component of the system (the `Spotter`) through an existing method for adjusting the `par` price. Even though the core system was designed with the possibility of a changing `par` in mind, peripheral components and integrations should be carefully inspected for reliance on a fixed `par`.

### MIP20c6: Other considerations

Upon adoption of this MIP, the Target Rate parameter can be adjusted by governance as an additional monetary policy lever, similar to the current notion of "Base Rate". Monetary policy processes may have to be amended in order to leverage this facility, and this MIP may be expanded in order to specify them.

### MIP20c7: Formal verification/audit information

The proposed contract is written in a way which is amenable to formal specification and verification, in accordance with the style and practices of the core multi-collateral dai contracts. No formal audit or code review has taken place yet.

### MIP20c8: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
