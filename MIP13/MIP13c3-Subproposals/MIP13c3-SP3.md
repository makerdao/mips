# MIP13c3-SP3: Declaration of Intent - Strategic reserves fund (SRF)

## Preamble

```
MIP13c3-SP#: 3
Author(s): Sébastien Derivaux (@SebVentures)
Contributors: n/a
Status: Accepted
Date Proposed: 2020-08-21
Date Ratified: 2020-10-28
---
Declaration Statement: Creation of a Strategic Reserves Fund to have a financial power and autonomy
Declaration to Replace: n/a
```

## Sentence Summary

MIP13c3-SP3 is the Declaration of Intent for the creation of a Strategic Reserves Fund to have a financial power and autonomy.

## Specification

### Context and Motivation

* Maker will need at some point financial resources to pay for its own expenses (observers and staff). Currently, the foundation is providing for that but it isn’t expected to last forever.
* DAI is insured by the surplus buffer (owned by MKR holders) and MKR issuance. The DAI surplus buffer can be redeemed by DAI holders with an ES. MKR issuance in time of crisis is detrimental to MKR holders as it can come with a low issuance price ([Maker buy and burn MKR when the price is high and issue MKR when the price is low](https://forum.makerdao.com/t/risk-of-pro-cyclical-mkr-issuance/1693)).
* Maker doesn’t have any financial resources to encourage DAI usage or enforce the peg.
* The strategic reserves fund (SRF) intent is to provide financial resources and processes to MakerDAO in order to address those 3 concerns.

A poll on such idea gained support with the Maker community: [[Poll] Creation of a MakerDAO strategic reserves (solving the peg)](https://forum.makerdao.com/t/poll-creation-of-a-makerdao-strategic-reserves-solving-the-peg/3638). This Declaration of Intent is the next step.

### Declaration Detail

* The overall intent is to raise and manage Maker funds by defining a new component of Maker Protocol : The strategic reserves fund (SRF)
* Main goals of the SRF are:
  * Allows MakerDAO to cover operational expenses in the future and stop being dependent on the foundation for that.
  * Increase DAI product utility by conducting operations in the open markets (DAI product utility should be correlated with MKR price)
  * Provide a revenue stream uncorrelated from DAI stability fees
  * Provide funds in case of DAI subsystem failure to avoid issuing MKR at a low price and dilute existing MKR holders
  * Due to the novelty and the complexity of the task, all implementation details provided here are only tentative and the final implementation can deviate. All details are provided for illustration on the intent.
* There are 4 subcomponents in the SRF intent: Fund raising, Strategy, Tactics and Gouvernance.
* The Maker Protocol is currently composed mainly (only?) by the DAI Credit System that contains all the vaults and the surplus buffer. The SRF is not connected to the DAI Credit System. The failure of one doesn’t impact the other (in case of ES, SRF is not affected). The net asset value of the SRF belongs to MKR holders with no recourse from DAI holders or vault owners.

### Fund raising

This intent recognizes that strategic reserves can’t be minted. The SRF will start with MKR tokens as assets. Those will be sold on the market as needed. A floor price will be decided by MakerDAO governance under which MKR can’t be sold in order to protect MKR price.

3 sources of MKR are considered:

* Issuance of a fixed amount of MKR tokens (e.g., 20k) at the creation of the SRF
* Transfer of some MKR tokens from the foundation in exchange of taking some foundation expenses (using a net present value of future expected expenses)
* Issuance of MKR tokens when MKR tokens are burnt through flap auctions (keeping the MKR outstanding amount fixed). This is the most likely way. An alternative would be to suck() DAI from the Surplus Buffer to the Strategic Reserves.

### Strategy

MakerDAO governance will set the strategy of the SRF as general guidance and operational boundaries with an on-chain vote.

Initial guidance can be:

* Main objective: Buy and burn MKR tokens when the price is cheap
* Secondary objective: Generate yield by providing liquidity to pools that improve DAI usability

A boundary framework can be set as follow to begin with:

* Allowed assets:
  * MKR
  * DAI
  * USDC: max 50% of assets
  * PAX: max 50% of assets
  * TUSD: max 50% of assets
  * ETH: max 10% of assets
  * Uniswap liquidity pools: max 50% of assets, with underlying assets limits
* Allowed smart contracts:
  * Maker Vaults
  * Maker Oasis
  * Uniswap trade: only to sell MKR tokens above $500 or to buy MKR tokens below $300
  * Uniswap liquidity pools
* Allowed external wallets:
  * None
* Maximum amount per transaction: $110k

### Tactics

MakerDAO governance will also set the tactic that should be used to implement the strategy. While strategy contains broad objectives, hard boundaries and is not expected to change frequently, tactics are like a script to follow. The tactics can be changed more frequently depending on the environment while staying within the boundaries of the strategy. There can be many concurrent tactics.

For instance, here is some tactics:

#### MKR price protection

* If net asset value of the reserves are > $10M and MKR price below the boundary framework ($300)
  * Buy up to $100k MKR tokens per day on Uniswap

#### DAI peg enabler

* Sell up to $100k of MKR tokens per day to USDC on Uniswap with a selling price above $600.
* Add the proceed to a USDC-A vault
* Generate the maximum allowed DAI
* Sell those DAI to USDC, PAX and TUSD on Oasis.
  * The selling price should be between 1.005 and 1.015
  * Inside this range, it should be the price obtained on coingecko for the previous day minus 0.1%

The scripts are executed by the SRF gouvernance. The SRF governance is mandated to follow the script. It is nevertheless expected that unexpected circumstances will override the script by doing nothing and asking for MakerDAO to update the tactics. For example: strong suspicion on a USDC issue, USDC $ price outside of [0.995,1.005], ...

### SRF Governance

While tactics are implementations of the overall strategy, they are set in motion by the SRF governance. The SRF might be implemented as a multisig wallet that will require 4 out of 7 validators.

Those 7 validators will represent the SRF governance. They are elected or removed by an on-chain vote by the MKR holders.

The SRF Governance elect a Treasurer that will report each week the evolution of the SRF. A template report will be defined.

There might be a need to create a [Treasury domain team](https://forum.makerdao.com/t/signaling-request-should-maker-make-a-treasury-to-manage-revenue/1122) in the future, espacially when the Strategic Reserves Fund will be used to pay for MakerDAO expenses (staff and oracles). This will also require work on MIP14: Protocol DAI Transfer.

## Relevant Links

* [[Poll] Creation of a MakerDAO strategic reserves (solving the peg)](https://forum.makerdao.com/t/poll-creation-of-a-makerdao-strategic-reserves-solving-the-peg/3638)
* [System Reserves](https://forum.makerdao.com/t/system-reserves/2069)
* [MIP14: Protocol DAI Transfer](https://forum.makerdao.com/t/mip14-protocol-dai-transfer/2462)
* [Signal Request: Increase System Surplus Threshold](https://forum.makerdao.com/t/signal-request-increase-system-surplus-threshold/3316)
* https://forum.makerdao.com/t/risk-of-pro-cyclical-mkr-issuance/1693
* https://forum.makerdao.com/t/proposal-system-reserve-vault/1841/5
* https://forum.makerdao.com/t/signaling-request-should-maker-make-a-treasury-to-manage-revenue/1122
