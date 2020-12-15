# MIP31: Active Reserve AMM (`dss-ara`)

## Preamble

```
MIP#: 31
Title: Active Reserve AMM (`dss-ara`)
Author(s): Alexis
Contributors: n/a
Type: Technical
Status: TBD
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
Dependencies:  the keg(https://github.com/makerdao/keg) module
Replaces: n/a
License: AGPL3+
```

## References

* [pre implementation](https://github.com/alexisgayte/dss-ara/)
* [Uniswap V2 contract AMM](https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2Pair.sol)

## Sentence summary

This MIPs is a technical proposal for an active reserve based on Uniswap V2 contract.

## Paragraph summary

Currently, governance uses the `surplus buffer` as reserve, but in fact the `surplus buffer` hasn't been designed to serve this purpose due to the nature of it. 
The surplus buffer is meant to be a protocol security reserve for Dai owners in case of failure. Therefore to some extent, It should be considered part of the collateral as it is redistributed to Dai Owner in case of emergency .
This proposal aims to add an missing piece to Maker, the `Maker Reserve`.

It is a technical proposal to create a `Maker owner reserve` based on Uniswap V2 AMM. It uses DAI and MKR 
as asserts inside the liquidity pool for trading pair. The proposal will allow MakerDAO to build its own reserve. 
As a side effect it should bring :

* burn process efficiency - swap vs dutch auction
* more MKR price stability by creating a buffer
* an important piece for future improvement
  * small amount Liquidation
  * decrease burning inefficiency
  * Oasis swap
  * etc ... (DeFi is based on AMM)
* an onchain oracle

The AMM on DAI/MKR pair will have a similar effect of the burn mechanism. Instead of burning we will stack 1/2 of MKR and 1/2 of DAI. The module will allow governance to withdraw DAI, MKR or Both. It will be plugged to the `keg`.

## Component - new feature

The overall logic is based on uniswapV2: https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2Pair.sol

The swap mechanism won't change, only fee parameters and non used mechanism will be clean up. 
`mint` and `burn`, will be replaced by `deposit` and `withdraw`. 
To secure eventual issue these new methods will be placed behind an allow-list. Only the swap needs to be "external".

List of modification to apply:

#### Fees

##### *swap()*  
 **MIP31a1:**   
fees need to be parametrized and managed by governance with `fees` parameter

##### *_mintFee()*  
 **MIP31a2:** _mintFee need to be removed The entrance fees doesn't apply here we need to remove the method and call to the method.

##### *skim()*  
 **MIP31a3:** can be removed.

#### Mint and Burn


##### *UniswapV2ERC20* 
**MIP31b1:** Remove the token implementation

##### *Mint()* 
 **MIP31c1:** Remove the token generation - _mint() method

**MIP31c2:** Rename method to deposit() method

**MIP31c3:** No parameter is needed

**MIP31c4:** should be allowlisted and accessible by keg and gov to withdraw.

##### *Burn()*  
**MIP31d1:** Remove the token destruction. _burn() method

**MIP31d2:** Rename method to withdraw() method

**MIP31d3:** should be allowlisted and accessible by keg and gov to withdraw.

###### two options here 

####### option 1:

**MIP31e1:** should be able to withdraw any amount of both tokens.

**MIP31e2:** three parameters are needed amount0Out, amount1Out, addressTo

####### option 2: (secure option)

**MIP31g1:** Should be able to ask for withdraw any amount of DAI.

**MIP31g2:** the withdrawal action will take an equal amount of DAI and MKR, the MKR is burn.

**MIP31g3:** The DAI is transferred to the surplus buffer or any vault pass as parameter at the creation.

**MIP31g4:** One parameter needed `amountOut`

### MIP31: How does it work?

The initial deposit (50% DAI,50% MKR) needs to be relatively high to have some liquidity - probably around 500K each. 
Smaller the deposit is, higher the slippage is.

Then the idea here is to divert some % of the DAI from the MKR burning mechanism and redirect it into the AMM. 
When the Dai is inside the AMM, it will move the MKR price down and create an incentive to buy the MKR against the market. 
Note, the slippage should decrease when the liquidity increase. ( with 500000 Dai inside the AMM and a 10000 Dai put inside we should have around 1% slippage)
We can adjust the % taken to control the slippage.

*There are two options for the withdraw method,*
first option, we can withdraw any amount of DAIs or MKRs or both, but slippage will apply. 
DAI can be withdraw for whatever reason to any address, the address is pass as parameter (the method is behind a whitelist - governance), same for MKR. 
We can withdraw the same amount of MKR and DAI without any slippage, Burn the MKR and use the DAI.
The second option, is a more secure option. *Note using whitelist only (first option) is common in MakerDao.*
We won't let the contract withdrawing any coins, instead we burn the MKR and transfer the Dai into the surplus buffer or any vault predefined. 
That way even if the contract/method is compromised, we don't allow an easy way to transfer the deposit to any address.

A small fee is collected each swap and the fee is managed by governance (Uniswap uses a fixed percentage). 
Although I would advise to match the PSM fee, 0.1% or event less 0.04% as curve. We should not forget that we charge 
for the DAI inside and MKR was supposed to be burned.

Ultimately, I expert the AMM to be more efficient than the dutch auction.

Furthermore, 
we can add more reserve based on Dai. We can redirect small liquidation to it and decrease the dust. We can swap MKR to burn. 
We can add the swap to oassis. etc ...

### MIP31: Security

##### Uniswap contract

Errors or security vulnerabilities in the Uniswap contract. The contract has been used and well tested.

##### Contract Modification technical risk

In addition to the technical risk inherent to Uniswap contract, this implementation add some risk too. 
However, due to the design and the separation from the main system, the worst-case losses is limited to the deposited inside the AMM. 
I believe we would like to audit it.

### MIP31: Economic / Governance considerations

#### Economic risks

impermanent losses

#### Difference between AMM and burn

* 1/2 MKR and 1/2 DAI are locked vs 100% MKR burn
* With the AMM, MKR supply doesn't decrease
* Due to impermanent losses and the AMM nature, amount of token stacked inside will change depending of the price fluctuation.
* AMM reserve can be retrieve. MKR burn can't be retrieve but can be minted again.

**Nice plus**,The Dai reserve increase when MKR decrease which it is when we need the reserve). 
On the other hand Dai reserve decrease when the MKR increase, but that should not be a problem as we can mint MKR instead.

### MIP31: Licensing

* [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)