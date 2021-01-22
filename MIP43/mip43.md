# MIP43: Term Lending Module (TLM)

## Preamble
```
MIP#: 43
Title: Term Lending Module (TLM)
Author(s): Alberto Cuesta Cañada (@acuestacanada), Lev Livnev(@equivrel), Allan Niemerg (@niemerg)
Contributors: n/a
Type: Technical
Status: <Assigned by MIP Editor>
Date Proposed: <2021-01-21>
Date Ratified: <yyyy-mm-dd>
Dependencies: <List of depdendent MIPs>
Replaces: n/a
License: AGPL3+
```

## Disclosure
This MIP proposes an integration with Yield Protocol. Authors Allan and Alberto are employees of Yield, Inc. a company working to build Yield Protocol. Lev is an advisor to Yield, Inc.

## References

* The proposed [dss-tlm](https://github.com/yieldprotocol/dss-tlm) implementation

## Sentence Summary

We propose a new Maker module to buy and hold tokenized fixed-rate, fixed-term loans to maturity in order to encourage a fixed-rate lending market.

## Paragraph Summary

Extending Dai lending to fixed-rate loans by MakerDAO would encourage further Dai adoption, accrue fixed income to the protocol, and provide a new tool to improve the peg by influencing the supply and demand for Dai. We propose a new Maker module called the “Term Lending Module” (the TLM) that would enable Maker to buy tokenized fixed-rate, fixed-term loans. The Term Lending Module stands available to buy loans at governance-set interest rates up to a corresponding debt limit. 


## Component Summary

**MIP43c1: Proposed code:** contains snippets and a description of the proposed implementation.

**MIP43c2: Test cases:** lists existing test cases, including integration tests

**MIP43c3: Security considerations:** comments on the security implications of using the TLM 

**MIP43c4: Economic / Governance considerations:** discusses insolvency and liquidity risks, governance and example parameters

**MIP43c5: Formal verification/audit information:** comments on the amenability of the proposed code to formal verification, even though formal specification, audit, or code review have yet to be conducted.

**MIP43c6: Licensing:** states the license under which the proposal and code are distributed.


## Motivation

### Background

With the advent of yield farming, the Maker governance community has struggled to manage the supply and demand of Dai as excess demand has caused Dai to trade above the target price of $1.00 for an extended period of time. At one point, Maker lowered stability fees all the way to the zero bound, leaving few additional tools for scaling supply. New tools, such as the Peg Stability Module (“PSM”), have improved the situation, but the problem is not solved, and more tools are needed for the management of the supply and demand of Dai. 

Additionally, the Maker ecosystem is currently disadvantaged relative to traditional finance because it lacks one of the most popular classes of financial products: fixed-rate, fixed-term loans. From mortgages to car loans, fixed-rate collateralized loans are enormously popular. And for good reason: fixed-rate borrowing and lending enable borrowers and lenders to better manage their interest rate risk. 

However, nearly all lending in Dai is done at floating rates: from Maker itself, to Compound, Aave, and others, the primary way to borrow Dai is at a floating rate. It will be challenging for the Maker ecosystem to compete with legacy financial products without effective ways to provide a fixed rate. 

Fortunately, the Dai ecosystem has evolved new kinds of fixed-rate borrowing products based on Dai. Last year, we launched Yield Protocol to bring fixed-rate, “long-term” (three months or more) fixed-term loans to Dai. Yield Protocol tokenizes ETH-collateralized fixed-rate, fixed-term loans into a new class of tokens that have been named “fixed yield tokens” (or “fyTokens” for short). FyTokens are similar to zero-coupon bonds and provide a fixed payout at a future maturity date. FyTokens for Dai are called “fyDai.”

FyDai is already tightly integrated with Maker. At maturity, fyDai becomes redeemable for Dai and fyDai vaults are automatically converted into Maker vaults and begin paying the current stability fee. The Yield Protocol enables this by maintaining a vault on Maker, in which it stores all of its ETH collateral, and which it uses to issue Dai when users redeem after maturity. FyDai has no admin or governance of its own; its parameters (such as liquidation ratio) automatically mirror Maker’s. 

Fixed-rate loans from protocols like Yield Protocol may be able to help Maker fill the gap with the legacy financial system. This increases the utility of holding Dai and will help drive additional adoption. But, there are challenges. While very promising, the market to borrow and lend at a fixed-rate for long-term loans is new and nascent. And it is unclear whether a fixed-rate lending and borrowing market in Dai can succeed without support from Maker. 

If Maker were to enter the long-term fixed-rate market, it may be able to earn a higher rate of return on issued Dai. For example, yield farmers may be willing to pay a higher interest rate if they can lock in Dai funding for an extended period. Buying fyDai, then, might be considered a form of balance sheet optimization which has been a topic of interest in the Maker community lately (for example, see [this post examining makerdao accounting](https://forum.makerdao.com/t/makerdao-accounting-and-implications/5346)). 

Alternatively, if borrowers continue to prefer to borrow at floating rates, Maker may be able increase its income by raising the stability fee, while maintaining the peg by “inverting the yield curve” and targeting longer term interest rates below current Maker stability fees. This might be considered as a form of “price discrimination”--borrowers with a strong preference to borrow short-term at floating rates will pay a higher price, while still expanding the Dai supply via long-term borrowers. 

A successful market in long-term loans also provides opportunities to build additional tools for the management of Dai supply and demand. Before the PSM, the primary tool Maker used to maintain the Dai peg was the stability fee and the Dai Savings rate. In response to yield farming, both of these rates hit the zero lower bound, ending the effectiveness of adjusting these interest rates to encourage Dai creation. The PSM remains effective at the zero lower bound, but increases Maker’s exposure to USDC (which is already at historically high levels). 

By buying loans in the long-term loans market, Maker may continue to increase the supply of Dai even when floating rates are zero. This is a well-known tool in traditional finance. (When performed by the Federal Reserve, it is known as an open market operation.) So, for example,  if the ETH-A stability fee is lowered to 0%, it may be possible to continue to expand the Dai supply by targeting 3 month borrowing at 2%. 

In sum, we see an opportunity for Maker to encourage the development of long-term fixed-rate loans, improve earnings, and add a new tool for the management of Dai supply and demand via the TLM. 

### Background on the Yield Protocol

The goal of the Yield Protocol is to bring fixed-term, fixed-rate borrowing and lending to decentralized finance. Version 1 of the Yield Protocol launched in October 2020 and permits ETH-collateralized borrowing of Dai. Users of the protocol deposit ETH and may mint a new token called fyDai. fyDai tokens are Ethereum-based tokens (ERC20) that may be redeemed one-for-one for Dai after a predetermined maturity date. fyDai are analogous to zero-coupon, or discount, bonds.

Borrowers mint fyDai and sell them to lenders to lock in a fixed rate of interest. There are several “series” of fyDai, each with a different maturity date. After the maturity date is reached, lenders holding fyDai may redeem the fyDai for Dai. The Yield Protocol borrows Dai on behalf of borrowers to pay off fyDai redemptions. This is done by placing all ETH collateral into a Maker Vault and borrowing Dai as needed. 

Yield Protocol v1 is tightly integrated with — and complementary to — Maker. Maker users are able to use Yield’s RateLock tool to migrate their Dai vaults into fyDai vaults, locking in a fixed interest rate for a period. In the future, Yield plans to add functionality to enable users to easily migrate Yield vaults back to Maker after maturity.

More information about Yield can be found in this [introductory article](https://medium.com/yield-protocol/introducing-ydai-43a727b96fc7) and in the [Yield Whitepaper](https://yield.is/Yield.pdf). 


## Specification

### MIP43c1: Proposed code
   
See [tsm.sol](https://github.com/yieldprotocol/dss-tlm/blob/main/src/tlm.sol).

#### Term Lending Module General Design

The TLM will permit Maker governance to encourage liquidity/target lower rates for fixed-term Dai loans by providing a standing offer to buy loans at a target interest rate. Holders of fyDai may sell their tokens to the TLM at a price determined based on the target rate. The target rates are set by MakerDao governance and may be adjusted as market conditions change. 

Let’s consider a hypothetical example of the use of the TLM. Suppose the MakerDao governance process has set a target rate of 5% for Dec 2021 fyDai. Alice notices that the market rate for Dec 2021 fyDai is currently trading at 6%. Since prices of fyTokens rise as interest rates fall (according to the Yield-to-Maturity formula described below), the TLM is paying higher prices for fyTokens than they are trading in the market. Accordingly, Alice buys the Dec 2021 fyDai at 6% and then sells them to the TLM at 5% netting a profit. (The actual price received by Alice is calculated based on the target rate and the current time.)

Like the PSM, the TLM acts as a special vault which is attached to one or more permissioned `gemJoin` contracts with 100% Collateralization Ratio and 0% stability fees. Each `gemJoin` is associated with a single series of fyDai tokens. Instead of crediting fyDai `gems` to the supplier of the tokens, it pools them together and takes out a debt position corresponding to the price paid on the fyDai. The newly created Dai is issued to the fyDai seller. The PSM is only able to buy fyDai tokens at a discount to the redemption value of the Dai. 

The TLM module will be able to accept ERC-20 fyDai that conform to a standard design shown in the `MaturingGemAbstract` interface. Governance can add any acceptable fyDai by deploying an `AuthGemJoin` for the fyDai series and calling the `init()` function and specifying the `gemJoin` address of the token. For each added fyDai as collateral, Governance may also assign and update a target yield via the TLM and may also set a debt ceiling in the normal manner. 

To sell fyDai, users may call sellGem(bytes32 ilk, address usr, uint256 gemAmt) a function that lets a user (usr) specify a particular token to sell (ilk) and an amount to sell (gemAmt). sellGem() transfers the tokens from ‘src’ and calculates the price of the provided amount of the token based on the target rate and maturity date of the token. Based on the calculated price, the TLM calculates the amount of Dai paid on the fyDai, adds the amount to its current debt (reverting if it would exceed the ceiling), mints new Dai equal to the purchase amount, and transfers the purchase amount of Dai to the ‘dst’ address. The TLM will revert if a user attempts to sell fyDai after maturity. 

The price of fyDai at any given time is calculated using the Yield-To-Maturity formula. (See https://www.investopedia.com/terms/y/yieldtomaturity.asp for background information.) Specifically, where ‘Y’ is the target yield (expressed as an annual percentage rate) and ‘T’ equals the time to maturity, the price ‘P’ of fyDai in terms of Dai is calculated by the following formula:

$$
P = \frac{1}{(1 + Y)^{T}}
$$

The TLM module will hold the fyDai to maturity. After maturity, the fyDai are redeemable for Dai. The Dai income after Dai redemption is forwarded to the surplus buffer. 

At some future time, Maker governance may decide that selling fyDai on the open market before maturity is desirable. While that is not supported by this incarnation of the TLM, the TLM has features that may be used to upgrade to a new TLM in the future. 


### MIP43c2: Test Cases
See [tlm.t.sol](https://github.com/yieldprotocol/dss-tlm/blob/main/src/tlm.t.sol). 

- Test cases include:
- Testing governance adding a new fyDai series
- Testing selling of fyDai to TLM at target yield of 0% 
- Testing selling of fyDai to TLM at a positive target yield 
- Testing redemption of fyDai for Dai after fyDai maturity with any surplus going to the surplus buffer


### MIP43c3: Security Considerations

Security risks of the TLM include:

#### Yield Protocol Security Risks

Like all protocols, Yield Protocol may have undiscovered security issues or bugs that may result in the inability to redeem fyDai for Dai at some future point. As is standard, Yield Protocol has been [audited by Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/YieldProtocol.pdf). Additionally, Yield Protocol has been operational since October 2020 with no currently known issues. 



### MIP43c4: Economic / Governance considerations

#### MIP43c4A: Economic risks

*Yield Protocol Insolvency*

Yield Protocol permits collateralized borrowing of Dai with ETH. From a collateral risk perspective, fyDai should be considered as being related to the existing ETH-A collateral type. If the value of the ETH collateral in the system drops too fast before collateral can be liquidated to cover debts, it is possible for the system to become insolvent. In that case, the Maker ecosystem may not be able to redeem fyDai for Dai at maturity, resulting in losses. Yield Protocol uses the same liquidation parameters as MakerDao ETH-A vaults. Any user may initiate the liquidation of an undercollateralized vault in Yield. When liquidated, ETH collateral is sold for Dai in a reverse Dutch auction. Auctions last for one hour. 

Yield Protocol insolvency risks are mitigated by the fact that all Yield collateral is held in MakerDao, thus there may be steps that Maker governance may be able to take to prevent losses. 

*FyDai Interest Rate Risk* 

The price of a fyDai token in terms of Dai is determined by the interest rates in the market. If interest rates go up, the market value of fyDai goes down. Thus, fyDai purchased by Maker may lose value when marked to market in an environment with rising interest rates. 

However, that loss can only be realized if fyDai are later sold. Since fyDai tokens may be redeemed one-for-one for Dai after a predetermined maturity date, Maker may always redeem the Dai after maturity for a profit. For this reasons, the TLM does not include a mechanism to sell fyDai. The TLM always holds fyDai to maturity and does take any risk of loss from the changing market value of fyDai. 


#### MIP43c4B: Governance considerations

The TLM includes two parameters that must be set for each fyDai series: an interest rate at which to buy, and a ceiling for total purchases. 

The interest rate chosen for purchasing fyDai of a given series should reflect governance priorities. For example, Governance may choose to initially start purchasing fyDai at an interest rate below the ETH-A stability fee. This may encourage use of the TLM and the growth of the long-term loan market. Over time, the rate may be adjusted to cool long-term lending, or lowered to encourage further long-term Dai lending growth. There is a considerable body of research on the use (and misuse) of monetary policy tools to influence the supply and demand of monetary assets like Dai, and that understanding may be applied to adjust the interest rate over time. 

Since yield curves tend to be upward-sloping, there is an opportunity for MakerDAO to increase its net interest margin by engaging in fixed-term lending at higher rates than what it can charge for similar loans on an open-term basis with CDPs. Moreover, allocating to fixed-term lending can diversify the rates risk of the loan portfolio, and smooth out fluctuations in stability fee income as market rates vary.

The ceiling parameter for each fyDai series may be set to manage the risk and exposure that the TLM introduces to the Maker ecosystem. Some of these considerations are listed in the Risk Considerations section. As is standard practice, the TLM may be introduced with a very low ceiling that is raised over time as a better understanding of the risks is developed, and the Yield Protocol becomes more proven. 

#### MIP43c4C: Example parameters

Initial parameters may be chosen to encourage initial adoption of the TLM while limiting its potential risks. For example, the initial target yield might be chosen to be equal to the current ETH-A stability fee plus a small additional amount of interest, and the initial ceiling might be chosen to be a fraction of the current surplus. So for a 3.5% stability fee and 4 million surplus, initial values might be 3.75% for yield, and 2 million for ceiling. 

Over time, the yield may be raised in response to strong demand, or lowered if governance sees value in further encouraging long-term lending. Likewise, as a better understanding of the fixed-rate market is developed by the community, the ceiling may be raised to encourage further Dai borrowing. 


### MIP43c5: Formal verification/audit information 

The proposed contract is written in a way which is amenable to formal specification and verification, in accordance with the style and practices of the core multi-collateral DAI contracts, though it has not been formally specified. In the current implementation, the redeemGem function performs an external call into the fyDai token’s redeem method, in order to convert fyDai into DAI after maturity. Performing external call to third party code is usually undesirable outside of adapter contracts. Alternatives are being considered that could remove this call entirely, improving the scrutability of the implementation.

### MIP43c6: Licensing

[AGPL3+]( https://www.gnu.org/licenses/agpl-3.0.en.html])
