# MIP39c3-SP10: Removing GovAlpha Core Unit

## Preamble

```
MIP39c3-SP#: 10
Author(s): @Patrick_J
Contributors:
Tags: cu-gov-001, offboarding
Status: Accepted
Date Proposed: 2023-08-30
Date Ratified: 2023-08-30
Forum URL: https://forum.makerdao.com/t/mip39c3-sp10-removing-govalpha-core-unit/21809
```

## Sentence Summary

This subproposal formalises the unwinding of the GovAlpha Core Unit (GOV-001).

## Paragraph Summary

As per this [post](https://forum.makerdao.com/t/advance-notice-of-govalpha-offboarding/21281), we have spent the last two months performing a slow wind down of the GovAlpha Core Unit. This post serves to formalise the status of the CU as offboarded. This offboarding is voluntary and will take effect as of 17:00 UTC on 2023-09-01 (tomorrow).

## Specification

### Motivation

As covered in the advance notice, our decision is largely based on the recent changes to the role of GovAlpha following the transition to Endgame. This shift has reduced our enjoyment and sense of fulfillment in our work, as we spend more time guiding others through a complex, ever-changing governance landscape. We feel that staying with GovAlpha and continuing to draw salaries while not fully invested in these changed responsibilities would not fully serve the DAO or ourselves.

#### Core Unit Unwinding -- Work

Governance has approved three [Reserve Facilitators](https://forum.makerdao.com/t/govalpha-succession-candidate-evaluations/21696/10) for the Governance Scope. These individuals have been part of a handover process over the past two months. We wish them well in the role.

#### Core Unit Unwinding -- Funds

Wallet address: [0x01D26f8c5cC009868A4BF66E268c17B057fF7A73](https://etherscan.io/address/0x01D26f8c5cC009868A4BF66E268c17B057fF7A73).

Current multisig holdings:

- 215,816.57 DAI.
- 89,993.83 USDC.
- 55.69 MKR.
- 2.73 ETH.

Plus unvested contents of streams (approx 66k DAI and 54 MKR at the time of writing).

Unwinding will proceed as follows:

- 2023-08-30 executive spell - `yank` Dai and MKR streams.
- Once executed, `vest` remaining stream contents to GovAlpha multisig.
- Settle outstanding payments (DAI and MKR) to GovAlpha contributors.
- Settle ETH reimbursement to multisig signers (all signing wallets were self funded initially).
- Pre-fund three months of expenses for [r/makerdao subreddit](https://www.reddit.com/r/MakerDAO/) moderation - this was inherited from GovComms by GovAlpha, we recommend the DAO continues to fund this, although the optimal mechanism remains unclear to us. We have provided this buffer in case the governance process takes longer than expected.
- Pre-fund six months of expenses for [daistats.com](https://daistats.com/) - this has been funded by GovAlpha since inception of the Core Unit. The monthly stipend to cover expenses is currently 550 DAI, we recommend the DAO continues to fund this. We are prefunding six months of expenses to ensure coverage during this changeover period.
- Transfer 30,000 DAI to the Governance Security multisig to cover 1 month of expenses for the Reserve Facilitators. This should be replaced by formal budgets as soon as possible.
- Exchange all USDC to DAI.
- Exchange all ETH to DAI.
- Return any remaining MKR to Pause Proxy.
- Return any remaining DAI to the Surplus Buffer via DssBlow.

Our goal is to have this budget return finalised as early as possible next week. The limiting factor is the spell executing so that the streams are `yank`ed and we can `vest` all remaining amounts to clear the streams and remove any potential liability for the Protocol.

#### Possible remedy to avoid offboarding

None

### Core Unit ID

GOV-001
