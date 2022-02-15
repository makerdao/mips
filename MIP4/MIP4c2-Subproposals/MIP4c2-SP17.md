# MIP4c2-SP17: Rapid Payment for Small Bug Bounties (MIP64, MIP40c3-SP42 Amendment)

## Preamble

```
MIP4c3-SP#: 17
MIP to be amended: MIP64, MIP40c3-SP42
Author(s): @psychonaut
Contributors: @travinimmunefi
Tags: mip-amendment
Status: RFC
Date of Amendment Submission: 2022-01-26
Date of ratification: <yyyy-mm-dd>
```
## Specification

### Motivation

The current bug bounty payment process is adequate for large payouts, but inconvenient for small payouts. This MIP adds a small payout process.

- Small payouts can be made without delay from the Core Unit's operational wallet. No need for bounty hunters to wait for a monthly executive spell.
- IS-001 Core Unit decides which payment process to use.

This amendment would increase the CU's budget by `100 000 * 115% = 115 000 DAI` per month.

In addition, there are some minor corrections:

- Add a budget line item for gas fees
- Round up the Facilitator's compensation to a round number of USD (no cents)

### Amended MIPs and Components

- [Immunefi Security CU DAI budget](https://mips.makerdao.com/mips/details/MIP40c3SP42)
- [Bug Bounty Program](https://mips.makerdao.com/mips/details/MIP64)

### Amendment Pull Request

- [PR containing the amendment](https://github.com/makerdao/mips/pull/463)
