# MIP29: Peg Stability Module

## Preamble

```
MIP#: 29
Title: Peg Stability Module
Author(s): Sam MacPherson (@hexonaut)
Contributors: None
Type: Technical
Status: Accepted
Date Proposed: 2020-11-09
Date Ratified: 2021-01-30
Dependencies: n/a
Replaces: n/a
License: AGPL3+
```

## References

* The proposed [dss-psm](https://github.com/BellwoodStudios/dss-psm) implementation
* [Pre-MIP discussion](https://forum.makerdao.com/t/peg-stabilization-modules-a-pre-mip-discussion/3045)

## Sentence Summary

This proposal provides a smart contract implementation of the Peg Stability Module.

## Paragraph Summary

The PSM acts a special vault which is attached to a permissioned `gemJoin` with 100% Collateralization Ratio and 0% Stability Fees. Instead of crediting `gems` to the supplier of the tokens, it pools them together and takes out a debt position at 100% Collateralization Ratio issuing the newly minted ERC20 Dai to the person who supplied the collateral. In the reverse direction, anyone can go from ERC20 Dai to the collateral token as long as there is debt available to clear. Optional fees `tin` and `tout` can be activated as well which send a fraction of the trade into the `vow`. This implementation conforms to the description laid out in the [Pre-MIP discussion](https://forum.makerdao.com/t/peg-stabilization-modules-a-pre-mip-discussion/3045).

## Component Summary

**MIP29c1: Definitions:** defines Toll In (`tin`) and Toll Out (`tout`).

**MIP29c2: Proposed code:** contains snippet of proposed implementation.

**MIP29c3: Test cases:** lists existing test cases, including integration test

**MIP29c4: Security considerations:** comments on the limited nature of the security implications of adding the `PSM`.

**MIP29c5: Formal verification/audit information:** comments on the amenability of the proposed code to formal verification, even though formal specification, audit, or code review have yet to be conducted.

**MIP29c6: Licensing:** states the license under which the proposal and code are distributed.

## Motivation

### Creating more Dai utility through a stable peg

The number one objective of the Maker protocol and Maker governance is to maintain the stability of Dai, so that the people, businesses and DeFi protocols that rely on it can trust that their money is protected from volatility. Delivering against this promise will drive continued growth of the project. The Peg Stabilization Module can restore the peg and utility of Dai to users around the world, which makes it a very important change to consider.

### Strengthening the collateral portfolio by replacing collateral types that cannot be liquidated

The Maker protocol currently has a lot of Dai generated from the USDC-A collateral type, which has liquidations disabled. This is an undesirable situation, because the Maker Protocol wasn’t designed to support having collateral types with liquidations turned off, and it could potentially result in Vaults with more debt than collateral value that would be abandoned by their owners, yet still remain in the collateral portfolio.

But having liquidations disabled was necessary due to the fact that the current auction system is not well suited for liquidating low-risk assets, so it was done as a short term solution that would be replaced in the future. The Peg Stabilization Module is such a solution that would be able to replace this collateral type. It would allow Maker Governance to altogether remove stablecoin based collateral types from the system in the short run, solving the issue of disabled liquidations entirely, and removing any risk that the system will end up having abandoned, unliquidated Vaults with more debt than collateral value.

### Encouraging natural Dai generation from other collateral types through stability and liquidity

A significant advantage of the Peg Stabilization Module is that it helps with stability and liquidity when the price goes above the peg. It also helps to provide liquidity and stability for when there is Dai supply to sell. This means that it helps encourage vault creation and Dai generation from other assets, such as ETH, because it gives vault users a lot of reliable liquidity to sell their Dai to if they are looking to pull fiat currency out from their vault.

Generally, a reliable peg makes Vault holders more willing to generate Dai. In contrast, an uncertain peg makes it riskier to generate Dai, since it is less clear if it will be possible to later unwind the position again without having to buy back Dai at a price different from the peg. Providing a solution to this issue with the Peg Stabilization Module is a significant advantage in the short run to try to get the Protocol back into a natural balance. Still, it will also continue to be a substantial advantage in the long term. It generally improves the user experience and value proposition the system offers to its users, both Dai users and Vault users.

### Natural unwinding

During times when the Maker Protocol is out of balance, the Peg Stabilization Module will keep the Dai peg stabilized by building up potentially large amounts of stablecoins as collateral. Since the Peg Stabilization Module encourages natural Dai generation, the built-up stablecoins within the Peg Stabilization Module will be used by new Vault users to exit to fiat if there is a significant buildup (this will only be temporary).

This means that the Peg Stabilization Module naturally unwinds itself as the system goes back into a balanced state. Therefore, the Peg Stabilization Module will not contribute to the long-term buildup of stablecoins as collateral in the system. Instead, it will work against it by helping to bring the system back into balance quickly. This ultimately minimizes the amount of time the Maker Protocol needs to have substantial exposure to stablecoins.

### Becoming the trading hub for stablecoin swaps

Another long term advantage that the Peg Stabilization Module offers is the ability to become a hub for trading different stablecoins against each other.

If Maker Governance adds multiple stablecoins to Peg Stabilization Modules and enables low-fee 1:1 trading for each of them (against Dai), it would allow the trading of different stablecoins against each other as a side-effect. As a result, this would ultimately help with overall liquidity in the DeFi ecosystem. At the same time, Maker would be compensated by charging the Peg Stabilization Module spread twice for providing the service.

## Specification

### MIP29c1: Definitions

- **Toll In**: The fraction of the Gem -> Dai transaction sent to the `vow` as a fee. Encoded as `tin` in `wad` units.
- **Toll Out**: The fraction of the Dai -> Gem transaction sent to the `vow` as a fee. Encoded as `tin` in `wad` units.

### MIP29c2: Proposed code
   see [psm.sol](https://github.com/BellwoodStudios/dss-psm/blob/master/src/psm.sol). The core functionality is simple:

```
function sellGem(address usr, uint256 gemAmt) external {
    uint256 gemAmt18 = mul(gemAmt, to18ConversionFactor);
    uint256 fee = mul(gemAmt18, tin) / WAD;
    uint256 daiAmt = sub(gemAmt18, fee);
    gemJoin.join(address(this), gemAmt, msg.sender);
    vat.frob(ilk, address(this), address(this), address(this), int256(gemAmt18), int256(gemAmt18));
    vat.move(address(this), vow, mul(fee, RAY));
    daiJoin.exit(usr, daiAmt);

    emit SellGem(usr, gemAmt, fee);
}
function buyGem(address usr, uint256 gemAmt) external {
    uint256 gemAmt18 = mul(gemAmt, to18ConversionFactor);
    uint256 fee = mul(gemAmt18, tout) / WAD;
    uint256 daiAmt = add(gemAmt18, fee);
    require(dai.transferFrom(msg.sender, address(this), daiAmt), "DssPsm/failed-transfer");
    daiJoin.join(address(this), daiAmt);
    vat.frob(ilk, address(this), address(this), address(this), -int256(gemAmt18), -int256(gemAmt18));
    gemJoin.exit(usr, gemAmt);
    vat.move(address(this), vow, mul(fee, RAY));

    emit BuyGem(usr, gemAmt, fee);
}
```

### MIP29c3: Test cases

see [psm.t.sol](https://github.com/BellwoodStudios/dss-psm/blob/master/src/psm.t.sol)

- testFail_sellGem_over_line
- test_sellGem_fee
- test_swap_both_other_small_fee
- test_swap_both_other
- test_swap_both_fees
- testFail_swap_both_small_fee_insufficient_dai
- testFail_sellGem_insufficient_gem
- testFail_direct_deposit
- test_swap_both_no_fee
- testFail_two_users_insufficient_dai
- test_swap_both_zero
- test_sellGem_no_fee

### MIP29c4: Security considerations

The proposed solution is simple and non-invasive, interacting with only the permissioned `gemJoin`. The rest of the function calls are all calls into the Maker system that anyone can make.

### MIP29c5: Formal verification/audit information

The proposed contract is written in a way which is amenable to formal specification and verification, in accordance with the style and practices of the core multi-collateral DAI contracts, though it has not been formally specified. No audit or code review has taken place yet.

### MIP29c6: Licensing

   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
