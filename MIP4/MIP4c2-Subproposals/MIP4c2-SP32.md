# MIP4c2-SP32: Remove MIP14c4: Protocol DAI Transfer Ceiling

## Preamble

```
MIP4c2-SP#: 32
MIP to be amended: 14
Author(s): @Patrick_J
Contributors:
Tags: mip-amendment
Status: RFC
Date Proposed: 2022-12-08
Date Ratified: <yyyy-mm-dd>
```
## Specification

### Motivation

With the coming transition to the Endgame state, GovAlpha is anticipating an increase in funding requests through [MIP14: Protocol DAI Transfer](https://mips.makerdao.com/mips/details/MIP14) and [MIP55: Special Purpose Fund](https://mips.makerdao.com/mips/details/MIP55). [MIP14c4](https://mips.makerdao.com/mips/details/MIP14#MIP14c4) places a cap on the total amount of DAI that can be distributed through MIP14. The number chosen, 250,000 DAI, is arbitrary and amendment requires a full Monthly Governance Cycle.

Consequently, a failure state exists where the sum of all fund requests in a Governance Cycle through [MIP14](https://mips.makerdao.com/mips/details/MIP14) will exceed the ceiling and/or it will not be possible to raise with sufficient lead-time to distribute Maker Governance approved funds in a timely manner. Rather than dealing with sequential subproposals to raise the Protocol DAI Transfer Ceiling, or setting it to an arbitrarily high number that renders it useless, it makes more sense to simply remove this restriction.

The remaining content of [MIP14](https://mips.makerdao.com/mips/details/MIP14) remains appropriate, in my opinion. There is no need to replace the whole MIP.

### Amended MIPs and Components

- [MIP14c4](https://mips.makerdao.com/mips/details/MIP14#MIP14c4) is removed by this subproposal.

### Amendment Pull Request

- [Pull Request](https://github.com/makerdao/mips/pull/726)

### Relevant Information

We have already received two MIP14c2 proposals that sum to 182,454 DAI:

* [MIP14c2-SP1](https://mips.makerdao.com/mips/details/MIP14c2SP1)
* [MIP14c2-SP2](https://mips.makerdao.com/mips/details/MIP14c2SP2)
