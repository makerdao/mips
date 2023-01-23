# MIP4c2-SP29: Amend MIP61 to tighten up Recognized Delegate Participation Metrics

## Preamble

```
MIP4c2-SP#: 29
MIP to be amended: MIP61
Author(s): @ultraschuppi
Contributors:
Tags: delegation, mip-amendment, process
Status: Formal Submission
Date Proposed: 2022-11-06
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip4c2-spxx-amend-mip61-to-tighten-up-recognized-delegate-participation-metrics/18696
```

## Specification

### Motivation

This amendment subproposal aims to change two aspects of the current [Recognized Delegate Compensation MIP](https://mips.makerdao.com/mips/details/MIP61).

#### Abstain Modifier

In the current form, MIP61 treats participation in on-chain polls uniformly, regardless of the vote Recognized Delegates are casting. This amendment removes the eligibility for compensation if a Recognized Delegate fails to meet a threshold of non-abstaining votes.

#### Higher Participation Requirements and Weighting for Executive Votes

For security and operational issues surrounding Executive Votes, participation on these should have a higher weight compared to on-chain polls and more strict requirements on timing.

### Amended MIPs and Components

[MIP61: Recognized Delegate Compensation](https://mips.makerdao.com/mips/details/MIP61)

### Amendment Pull Request

* [Abstain Modifier](https://github.com/makerdao/mips/pull/698)
* [Higher Participation Requirements and Weighting for Executive Votes](https://github.com/makerdao/mips/pull/699)

### Voting Scheme

The on-chain Ratification Poll for this subproposal will be of ranked-choice type and have the following options, in addition to Abstain and Reject:

  * Approve only the Abstain Modifier
  * Approve only the Higher Participation Requirements and Weighting for Executive Votes
  * Approve both

### Relevant Information

--
