# Target Price Adjustment Module (`Vox`)

## Preamble
```
MIP#: <# to be assigned>
Title: Target Price Adjustment Module (`Vox`)
Author(s): Lev Livnev (@equivrel)
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

_WIP_

- A description of what the Maker Improvement Proposal (MIP) is focused on. Suggest 100 words max.

## Component summary

#### MIP20c1: Definitions
#### MIP20c2: Desired properties
#### MIP20c3: Proposed code
#### MIP20c4: Test cases
#### MIP20c5: Security considerations
#### MIP20c6: Other considerations
#### MIP20c6: Auditor information and report
#### MIP20c7: Licensing

## Motivation

- A short description of the motivation behind the proposed technical solution.

## Specification

### Definitions

- **Target Price**: the system accounting price of 1 dai in USD. This is currently represented as `spot.par()`, and is set to $1.00.
- **Target Rate**: the annualised compounding rate of change of the Target Price.
- **Target Price Adjustment Module**: the smart contract which periodically adjusts the Target Price by the Target Rate.
- **Target Price Cap**: the maximum Target Price that the Target Price Adjustment Module is able to set.

### Desired properties

- At every call to `vox.prod()`, `spot.par()` should change by the target rate accrued over the period of time since the last call to `vox.prod()`.
- The Target Rate should be initialised at 0% per year, which results in no change to the Target Price.
- The Target Price should not be adjusted after Emergency Shutdown, regardless of the value of the Target Rate prior to Emergency Shutdown.
- The Target Price should not be adjusted above the Target Price Cap. When the Target Price Cap is reached, the Target Price should be set to exactly the Target Price Cap and further upward adjustments should have no effect.

### Proposed code
   see [vox.sol](https://github.com/livnev/dss-vox/blob/master/src/vox.sol). The core price adjustment functionality is simple:

```
function prod() external {
  if (way == ONE) return;        // optimised
  uint256 age = sub(now, tau);
  if (age == 0) return;          // optimised
  tau = now;

  // no adjustment after cage
  if (spot.live() == 0) return;
  uint256 par = max(cap, rmul(rpow(way, age, ONE), spot.par()));
  spot.file("par", par);
}
```

### Test cases

_WIP_ see [vox.t.sol](https://github.com/livnev/dss-vox/blob/master/src/vox.t.sol)

```
test_prod_noop
```

### Security considerations

_WIP_

### Other considerations

_WIP_

### Auditor information and report

_WIP_

### Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
