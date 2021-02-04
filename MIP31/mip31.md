# MIP31: Active Reserve AMM (`dss-ara`)

## Preamble

```
MIP#: 31
Title: Active Reserve AMM (`dss-ara`)
Author(s): Alexis
Contributors: n/a
Type: Technical
Status: TBD
Date Proposed: <2020-12-15>
Date Ratified: <yyyy-mm-dd>
Dependencies:  keg module
Replaces: n/a
License: AGPL3+
```

## References

* [pre implementation](https://github.com/alexisgayte/dss-ara/)
* [Uniswap V2 contract AMM](https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2Pair.sol)

## Sentence Summary

This MIP is a technical proposal for an active reserve based on Uniswap V2 contract.

## Paragraph Summary

This MIP will adapt the open source contract from Uniswap to create a reserve DAI/MKR. 

It will keep the main method, the swap, remove the fix fees to be changeable via a governance parameter.
It will also remove the 'share' token creation as we will be the only owner and modify the add and remove liquidity part to be more direct, accessible only by the governance and fees-less.

It will also refactor the flash minting part to be independent from the swap and add a poke call during the update.

## Component Summary

**MIP31c1: Parameter Definitions:** List of governance parameters

**MIP31c2: Functions:** List of functions

**MIP31c3: swap():** Specification for the swap function

**MIP31c4: deposit():** Specification for the deposit function

**MIP31c5: withdraw():** Specification for the withdraw function

**MIP31c6: flashLoan():** Specification for the flash loan functionality

**MIP31c7: flashMint():** Specification for the flash mint functionality

**MIP31c8: extra feature:** extra feature not linked to any functions

**MIP31c9: Proposed code:** Contains snippet of proposed implementation.

**MIP31c10: Test cases:** Lists existing test cases, including integration tests

**MIP31c11: Spell:** Spell for deployment/install 

**MIP31c12: Security:** Comments on the security implications of using `CropJoin`

**MIP31c13: Economic / Governance considerations:** Discusses insolvency and liquidity risks, governance and example parameters

**MIP31c14: Licensing:** States the license under which the proposal and code are distributed.


## Motivation

Currently, governance uses the `surplus buffer` as reserve, but in fact the `surplus buffer` hasn't been designed to serve this purpose due to the nature of it. 
The surplus buffer is meant to be a protocol security reserve for Dai owners in case of failure. Therefore to some extent, It should be considered part of the collateral as it is redistributed to Dai Owner in case of emergency.
This proposal aims to add an missing piece to Maker, the `Maker Reserve`.

It is a technical proposal to create a Maker Owner active reserve based on Uniswap V2 AMM. It uses DAI and MKR 
as asserts inside the liquidity pool. The DAI/MKR will be the trading pair.
As a side effect it should bring :
 - burn process efficiency - swap vs dutch auction
 - more MKR price stability by creating a buffer
 - an important piece for future improvement 
   - small amount Liquidation
   - decrease burning inefficiency
   - Oasis swap
   - onchain oracle
   - etc ... (DeFi is based on AMM) 

The AMM on DAI/MKR pair will have a similar effect of the burn mechanism. Instead of burning we will stack 1/2 of MKR and 1/2 of DAI. The module will allow governance to withdraw DAI, MKR or Both. It will be plugged to the `keg`.

### How does it work?

The initial deposit (50% DAI,50% MKR) needs to be relatively high to have some liquidity - probably around 1M each. 
Smaller the deposit is, higher the slippage is.

Then the idea here is to divert some % of the DAI from the MKR burning mechanism and redirect it into the AMM. 
When the Dai is inside the AMM, it will move the MKR price down and create an incentive to buy the MKR against the market. 
Note, the slippage should decrease when the liquidity increase. ( with 1M Dai inside the AMM and a 1000 Dai put inside we should have around 0.1% slippage)
We can adjust the % taken to control the slippage.

A small fee is collected each swap and the fee is managed by governance (Uniswap uses a fixed percentage). 
Although I would advise to match the PSM fee, 0.1% or event less 0.04% as curve. We should not forget that we charge 
for the DAI inside and MKR was supposed to be burned.

Ultimately, I expert the AMM to be more efficient than the dutch auction.

Furthermore, 
we can add more reserve based on Dai. We can redirect small liquidation to it and decrease the dust. We can swap MKR to burn.
We can add the swap to oassis. etc ... 

## Specification

The overall logic is based on [uniswapV2 contract](https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2Pair.sol)

The swap mechanism won't change dramatically, we will add fee as parameter, a poke() call during the update and non used mechanism will be clean up.
`mint` and `burn`, will be replaced by `deposit` and `withdraw`. 

The flash minting part will be moved out side the main method to be independent and fees can be setted separately. They will respect the new standard introduced by Sam.

### MIP31c1: Parameter Definitions
 - `fees`       : percentage of the amount takes as fees for each swap.
 - `flash_fees` : percentage of the amount takes as fees for each flashmint/flashloan.
 - `period`     : period of time between each poke() call
 - `poker`     : pocker contract interface with the poker.
   
### MIP31c2: Functions

5 functions :
 - `swap()` : uniswap function to swap two token.
 - `deposit()` : to deposit some liquidity or reserve.
 - `withdraw()` : to withdraw the reserve.
 - `flashLoan()` : Allow flash loan on the token from the reserve.
 - `flashMint()` : Allow flash mint on the dai from the reserve.

### MIP31c3: swap()

 * Three parameters are needed `amount0Out`, `amount1Out`, `addressTo`

 * Should allow swap between two tokens using uniswap formula.
 
 * A fees is taken during the swap `amount` * `fees` parameter

 * Update the reserve after each swap  

### MIP31c4: deposit()

 * No parameter is needed

 * Should be allowlisted.

 * The call will update the reserve and take into account the tokens send to the contract.

### MIP31c5: withdraw()

 * Three parameters are needed `amount0Out`, `amount1Out`, `addressTo`

 * Should be allowlisted.

 * Should be able to withdraw any amount of both tokens.


### MIP31c5: flashLoan()

 * Three parameters are needed `receiver`, `amount`, `data`
 
 * Allow flashLoan on the token inside the AMM 

 * A fee is taken, the fee is equal at : `amount` * `flash_fees`

 * The amount is return before the end of the transaction.
 
  * Update the reserve after each flashLoan

### MIP31c6: flashMint()

 * Three parameters are needed `receiver`, `amount`, `data`
 
 * Allow flashMint on the dai inside the AMM 

 * A fee is taken, the fee is equal at : `amount` * `flash_fees`

 * The amount is return before the end of the transaction.
 
 * Update the reserve after each flashMint

### MIP31c7: extra feature

 * poker.poke() is called during the update phase.
 
 * poke() sends 5 parameters `addressToken`, `priceDaiCumulativeLast`, `priceTokenCumulativeLast`, `daiReserve`, `tokenReserve`

 * It is call only if the `period` after the last call is over.
 
 * The balance is updated after poke() is called 

### MIP31c8: Proposed Code

[dss-ara](https://github.com/alexisgayte/dss-ara/blob/main/src/DssAra.sol)

### MIP31c9: Test Cases

[dss-ara test](https://github.com/alexisgayte/dss-ara/blob/main/src/DssAra.t.sol)

### MIP31c10: Spell
[ActiveReserveSpell](https://github.com/alexisgayte/dss-ara/blob/main/src/spell/ActiveReserveSpell.sol)

### MIP31c11: Security

##### Uniswap contract

Errors or security vulnerabilities in the Uniswap contract. The contract has been used and well tested.

##### Contract Modification technical risk

In addition to the technical risk inherent to Uniswap contract, this implementation add some risk too. 
However, due to the design and the separation from the main system, the worst-case losses is limited to the deposited inside the AMM.

### MIP31c12: Economic / Governance considerations

#### Economic risks

impermanent losses

#### Difference between AMM and burn

- 1/2 MKR and 1/2 DAI are locked vs 100% MKR burn
- With the AMM, MKR supply doesn't decrease 
- Due to impermanent losses and the AMM nature, amount of token stacked inside will change depending of the price fluctuation.
- AMM reserve can be retrieve. MKR burn can't be retrieve but can be minted again.

**Nice plus** The Dai reserve increase when MKR decrease which it is probably when we will need the reserve.
On the other hand Dai reserve decrease when the MKR increase, but that should not be a problem as we can mint MKR instead.

### MIP31c13: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
