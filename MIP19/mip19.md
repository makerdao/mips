# MIP19: Liquidations System 1.1 Upgrade

## Preamble
```
MIP#: 19
Title: Liquidations System 1.1 Upgrade
Author(s): Mariano Conti (@nanexcool), Charles St.Louis (@CPSTL) 
Contributors: Kurt Barry (@kmbarry1)
Type: Technical
Status: Accepted
Date Proposed: 2020-07-06
Date Ratified: 2020-07-28
Dependencies: n/a
Replaces: n/a
License: AGPL v3.0
```
## References

- [Executive Vote: Unblock the remaining Debt Auctions Blog Post](https://blog.makerdao.com/executive-vote-march-26-2020/)
- [Debt Auction Blocking in the Dai Credit System Presentation by Kurt Barry](https://docs.google.com/presentation/d/1nnpPBiOLEWi81q8zrHoIWH4s3iQaKrCSaR68AafzQJo/edit#slide=id.p)
    - [Video recording of the presenation](https://www.youtube.com/watch?v=erh25lnaIo0)
- [Formal Verification Run](https://reports.makerfoundation.com/k-dss/dcc4d3a8fcab50a5af6f/)


## Sentence Summary

MIP19 proposes an upgrade to the Maker Protocol's auction contracts to avoid the need for extra funds when a bidder modifies a bid they have already made ("double liquidity" issue) as well as to fix the "stuck debt auctions" bug.

## Paragraph Summary

This proposal defines an implementation to improve the current liquidation system of the Maker Protocol. The new implementation will make changes to the collateral ([flip](https://github.com/makerdao/dss/blob/master/src/flip.sol)), surplus ([flap](https://github.com/makerdao/dss/blob/master/src/flap.sol)), and debt ([flop](https://github.com/makerdao/dss/blob/master/src/flop.sol)) auction contracts to fix this "double liquidity" requirement by only taking the necessary amount for the new bid when the bidder is the same as the previous bidder. Additionally, there is a fix for the debt auction contract, where on the first bid ("dent"), the system tries to clear as much `Ash` (on-auction debt) as possible. This prevents any further debt auctions from becoming stuck.


## Component Summary

**MIP19c1: Definitions** 
Defines terms that relate to the liquidations system fix. 

**MIP19c2: Proposed Code**
Proposed code for both the double liquidity fix and the stuck debt (flop) auctions.  

**MIP19c3: Test Cases**
References the tested code and how to run the test suite. 

**MIP19c4: Security Considerations**
Defines any security-relevant design information and potential failure modes related to the proposed change. 

**MIP19c5: Formal Verification / Audit Information** 
Describes relevant information regarding the auditing / formal verification of the proposed code.

**MIP19c6: Licensing**
States the license used for the proposed code. 

## Motivation

As of today, the collateral, surplus, and debt auction contracts expect bidders to have the full amount of their bid in their wallet. Thus, if they are increasing a bid they already made (i.e. they were the most recent bidder on the auction), they cannot simply supply the additional amount over their previous bid. Instead, they must have the full amount of the previous bid plus the additional amount in their wallet; after supplying this, their previous bid is refunded. 

**Example**

- **Current implementation:** If someone is bidding 5k DAI and wants to up their bid to 6k DAI, the system would first take 6k DAI from their account and then return 5k DAI to their account, requiring a total of 11k DAI.
- **Proposed implementation:** If someone is bidding 5k DAI and wants to up their bid to 6k DAI, the system knows it is the same bidder and only takes 1k DAI from their account, requiring a total of 6k DAI.

Additionally, the possibility of stuck debt (flop) auctions occurring is a bug. While auctions can be "unstuck" via a governance action (ex: March 26 Executive Vote), this requires time and effort from the Maker community. With the implementation change proposed here, stuck debt auctions would be prevented entirely, reducing the work needed to manage the system. As for the double liquidity issue, the proposed implementation is more efficient and accessible because it requires less total capital for certain bidding strategies.


## Specification


### MIP19c1: Proposed Code

**[Double Liquidity Fix](https://github.com/makerdao/dss/commit/881f331fa790188c6e7941ee7033c4809e89d21e)**

For example, in the `Flipper` contracts, instead of first taking an amount of Dai from a bidder and then returning the previous bid, the following code checks if the new bidder is different than the current bidder:

```
if (msg.sender != bids[id].guy) {
    vat.move(msg.sender, bids[id].guy, bids[id].bid);
    bids[id].guy = msg.sender;
}
```

The same checks are done in the `Flapper` and `Flopper` contracts.

**[Stuck Debt Auctions (Flops) Fix](https://github.com/makerdao/dss/commit/5b2dec8a26db5e5e837848c4d8b16575abf0a110)**

If this is the first bid on a Flop auction, the following code will try to clear as much `Ash` (current on-auction debt) as possible:
```
// on first dent, clear as much Ash as possible
if (bids[id].tic == 0) {
    uint Ash = VowLike(bids[id].guy).Ash();
    VowLike(bids[id].guy).kiss(min(bid, Ash));
}
```
---

### MIP19c2: Test Cases

The Smart Contracts team added tests to check the above code changes and we can say they cover 100% of the new functionality.

**[Tests for the Double Liquidity Fix](https://github.com/makerdao/dss/commit/881f331fa790188c6e7941ee7033c4809e89d21e)**

Added tests in `flip.t.sol`:
- `test_tend_dent_same_bidder`

Added tests in `flap.t.sol`:
- `test_tend_same_bidder`

Added tests in `flop.t.sol`:
- `test_dent_same_bidder`


**[Tests for the Stuck Debt Auctions (Flops) Fix](https://github.com/makerdao/dss/commit/5b2dec8a26db5e5e837848c4d8b16575abf0a110)**

Modified tests in `flop.t.sol`:
- `test_kick`
- `test_dent`
- `test_dent_same_bidder`
- `test_tick`
- `test_no_deal_after_end`
- `test_yank`
- `test_yank_no_bids`

Modified tests in `vat.t.sol`:
- `test_floppy_bite`

Added test in `flop.t.sol`:
- `test_dent_Ash_less_than_bid`

To run the test suite, follow the instructions in the following `README` [here.](https://github.com/makerdao/dss)

---
### MIP19c3: Security Considerations

This is a small upgrade to the Auction Contracts; thus, the implementation risks are minimal. Due to this, any security-relevant design information, decisions, or potential failure modes can be found in the already existing Maker Protocol documentation. More specifically:

- [System Stabilizer Module Documentation](https://docs.makerdao.com/smart-contract-modules/system-stabilizer-module#4-gotchas-potential-sources-of-user-error)
	- [Flopper Documentation](https://docs.makerdao.com/smart-contract-modules/system-stabilizer-module/flop-detailed-documentation#4-gotchas-potential-source-of-user-error)
	- [Flapper Documentation](https://docs.makerdao.com/smart-contract-modules/system-stabilizer-module/flap-detailed-documentation#4-gotchas-potential-source-of-user-error)
- [Collateral Module Documentation](https://docs.makerdao.com/smart-contract-modules/collateral-module#4-gotchas-potential-sources-of-user-error)
    - [Flipper Documenation](https://docs.makerdao.com/smart-contract-modules/collateral-module/flipper-detailed-documentation#4-gotchas-potential-source-of-user-error)
---
### MIP19c4: Formal Verification / Audit Information 

The Smart Contracts Domain Team updated the Formal Verification specifications for the `DSS` system with the following implementations [here](https://github.com/makerdao/k-dss/tree/staging).

Specifications added:

- `behaviour tend-guy-same of Flipper`
- `behaviour dent-guy-same of Flipper`
- `behaviour tend-guy-diff of Flapper`
- `behaviour tend-guy-same of Flapper`
- `behaviour dent-guy-diff of Flopper`
- `behaviour dent-guy-same of Flopper`

A full run of the Formal Verification process can be explored [here](https://reports.makerfoundation.com/k-dss/dcc4d3a8fcab50a5af6f/).

**Note:** All specification proofs are passing on the `Flipper`, `Flapper` and `Flopper` with the proposed changes.

---
### MIP19c5: Licensing

[GNU Affero General Public License v3.0](https://github.com/makerdao/dss/blob/staging/COPYING)

---
