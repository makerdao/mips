# MIP33: Maker Stability Price Module

## Introduction
Following [some discussion](https://forum.makerdao.com/t/technical-mipxx-throttled-surplus-buffer-pre-mip-discussion/5577), 
this MIP is to formalize the request for a Maker Stability Price Module. 

## Preamble
```
MIP#: 33
Title: Maker Stability Price Module.
Author(s):  Alexis
Tags: technical, MKR
Type: Technical
Status: Request for Comments (RFC)
Date Proposed: 2020-12-27
Dependencies:
Replaces: 
```

## Sentence Summary
MIP33 defines the Maker Stability Price Module (MCD_MSM), allowing the governance to defend a MKR price by pre-allocating dai to buy at pre-defined level.

## Paragraph Summary
This MIP introduces the Maker Stability Price Module which permits the governance to define a defensive low ceiling price as well as a high price both voted by Governance.

Governance will vote a buying price and a selling price. Then the governance will send dai inside the contract, when an opportunity will happen market maker will use this contract to hedge the market using the dai pre-allocated.

### Overview Logic

![global logic](https://user-images.githubusercontent.com/7965274/105838778-78d11b80-5fc8-11eb-816b-f9a541bf83b9.png)

## Component Summary

**MIP33c1: Parameter Definitions**

**MIP33c2: Maker Stability Price Module**

**MIP33c3: Function**

**MIP33c4: Proposed Code**

**MIP33c5: Test Cases**

**MIP33c6: Spell**

**MIP33c7: Security Considerations**   

**MIP33c8: Licensing**  

## Motivation

For the last couple of months we have seen the MKR price going at a level which is not acceptable and had put governance at risk. 
This situation has been driven as far as I am aware of by one partner exiting his position. But not only this event created this type of deep, for reference, the same situation happen during the black thursday. 
This module aims, by creating this support to allow partner to exit their position at a good price for maker as well as fighting speculation and black thursday event.

It will also create a natural support amplifying its effect. 

The reserve can be top it up at any time and should be seen as a buffer or a good opportunity buyer for makerDao.

## Specification

The following variables define the parameters that can be set by Governance through an executive vote.

### MIP33c1: Parameter Definitions
* `price` - MKR Price
* `tin` - Percentage toll in of the MKR Price (can be 0%, but can be increased in case we can't defend the support, or change the management at price - tin).
* `tout` - Percentage toll out of the MKR Price and therefore the high price (if it is set to 100% that double the price).
* `reserve` - MKR Reserve
* `burn` - burn : true allow assert burning other case we don't burn.


### MIP33c2: Maker Stability Price Module
* The Dai and the MKR inside the module can't be withdraw. - it is a sort of insurance, to give more trust.
* Anyone can sell MKR for (price - price*tin) Dai. MKR is taken from the seller and Dai is return in exchange if there is enough DAI.
* if there is not enough DAI the transaction fails.
* Anyone can buy MKR for (price + price*tout) Dai. Dai is taken from the seller and MKR is return in exchange if there is enough MKR.
* if there is not enough MKR the transaction fails.
* The MKR from the selling direction is locked inside the contract.
* If `burn` is true and the reserve is reached we burn the excess to keep the MKR amount at 90 % of the full reserve, leaving 10% buffer for future transaction before we burn again. 
* If `burn` is false we don't burn and stock pill MKR.

### MIP33c3: Function
there are 3 fonctions based on PSM interface:
- `file() ` : to allow governance to change parameters
- `sell(address usr, uint256 gemAmt)` : to sell the MKR
- `buy(address usr, uint256 gemAmt)` : to buy the MKR
- `getReserves()` : return token reserves and last time the price change based on unisawp interface

### MIP33c4: Proposed Code

[dss-msm](https://github.com/alexisgayte/dss-msm/blob/main/src/DssMsm.sol)

### MIP33c5: Test Cases

[dss-msm test](https://github.com/alexisgayte/dss-msm/blob/main/src/DssMsm.t.sol)

### MIP33c6: Spell
[MCD_MSM_MKR](https://github.com/alexisgayte/dss-msm/blob/main/src/spell/Spell.sol)

### MIP33c7: Security Considerations

Low level of contract risk, as it is not connected to the system and there is no interaction with outside contract.

Exiting from this position can be processed by increasing the price to the market price and decreasing the reserve to 0. 


### MIP33c8: Licensing
[AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
