# MIP84c10-SP1: Modify Emulated Surplus Buffer Upper Limit

## Preamble

````
MIP84c10-SP#: 1
Author(s): @psychonaut
Contributors:
Tags: 
Status: RFC
Date Proposed: <2022-10-11>
Date Ratified: <yyyy-mm-dd>
````

## Sentence Summary

Set the upper limit way above the size of the surplus buffer (a.k.a. defuse the MIP84 bomb).

## Motivation

* Risk has [commented](https://forum.makerdao.com/t/mip84-activate-protocol-owned-vault-emulation/17713/45) on the loss reserves needed for on-chain assets, but not real world assets. It [remains unclear](https://forum.makerdao.com/t/mip84-activate-protocol-owned-vault-emulation/17713/21) where the loss reserves for real world assets are suppose to come from.
* Leveraged purchase of stETH puts Maker in serious risk of insolvency in the case of a market downturn.
* The size of the Surplus Buffer already limits our ability to invest. See [1](https://forum.makerdao.com/t/makerdao-alm-forecast/16881) and [2](https://forum.makerdao.com/t/aggressive-growth-strategy/13958).
* It would be good to raise the [Dai Savings Rate](https://manual.makerdao.com/parameter-index/core/param-dai-savings-rate) above zero to grow the demand to hold DAI.
* It would be nice to return some money back to MKR holders through flap auctions.
* There is pending engineering work:
  * DssKiln is not deployed in production yet
  * We need a detailed analysis of what happens to "protocol owned" vaults in the event of [Emergency Shutdown](https://docs.makerdao.com/smart-contract-modules/shutdown)

## New Emulated Surplus Buffer Upper Limit parameter

The new Emulated Surplus Buffer Upper Limit parameter shall be set to 1B.