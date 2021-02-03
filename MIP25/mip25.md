# MIP25: Flash Mint Module

## Preamble
```
MIP#: 25
Title: Flash Mint Module
Author(s): Sam MacPherson (@hexonaut)
Contributors: Chris Mooney (@godsflaw), Brian McMichael (@brianmcmichael)
Type: Technical
Status: Request for Comments (RFC)
Date Proposed: 2020-09-25
Date Ratified: <yyyy-mm-dd>
Dependencies: n/as
Replaces: n/a
License: AGPL3+
```
## References

* The proposed [dss-flash](https://github.com/hexonaut/dss-flash) implementation
* [Declaration of Intent](https://forum.makerdao.com/t/mip13c3-sp2-declaration-of-intent-dai-flash-mint-module/3635)

## Sentence Summary

This proposal provides a smart contract implementation of `Flash`, a module which enables any user to execute a flash mint of Dai.

## Paragraph Summary

Flash mints allow anyone to mint as much Dai as they need with the one condition that they pay it all back in the same transaction with a fee. This allows anyone to exploit arbitrage opportunities in the DeFi space without having to commit upfront capital. This implementation conforms to the description laid out in the [MIP13c3-SP2](https://forum.makerdao.com/t/mip13c3-sp2-declaration-of-intent-dai-flash-mint-module/3635).

## Component Summary

**MIP25c1: Definitions:** defines Debt Ceiling (`line`) and Minting Fees (`toll`).

**MIP25c2: Proposed code:** contains snippet of proposed implementation.

**MIP25c3: Test cases:** lists existing test cases, including integration test

**MIP25c4: Security considerations:** comments on the limited nature of the security implications of adding the `Flash`.

**MIP25c5: Formal verification/audit information:** comments on the amenability of the proposed code to formal verification, even though formal specification, audit, or code review have yet to be conducted.

**MIP25c6: Licensing:** states the license under which the proposal and code are distributed.

## Motivation

`Flash` can provide many benefits to the Dai ecosystem including, but not limited to:

* Improved market efficiencies for Dai.
* Democratization of arbitrage - anyone can participate.
* Exploits requiring a large amount of capital will be found quicker which makes the DeFi space safer overall.
* Fees provide an income source for the protocol.

## Specification

### MIP25c1: Definitions

- **Debt Ceiling**: The maximum amount of Dai any single transaction can borrow. Encoded as `line` in `rad` units.
- **Minting Fees**: How much additional Dai must be returned to the `Flash` module at the end of the transaction. This fee is transferred into the `vow` at the end of a successful `mint`. Encoded as `toll` in `wad` units.

### MIP25c2: Proposed code
   see [flash.sol](https://github.com/hexonaut/dss-flash/blob/master/src/flash.sol). The core minting functionality is simple:

```
function mint(
        address _receiver,      // address of conformant IFlashMintReceiver
        uint256 _amount,        // amount to flash mint [wad]
        bytes calldata _data    // arbitrary data to pass to the _receiver
    ) external lock {
        uint256 arad = rad(_amount);

        require(arad > 0, "DssFlash/amount-zero");
        require(arad <= line, "DssFlash/ceiling-exceeded");

        IFlashMintReceiver receiver = IFlashMintReceiver(_receiver);

        vat.suck(address(this), _receiver, arad);
        uint256 fee = wmul(_amount, toll);
        uint256 bal = vat.dai(address(this));

        receiver.execute(_amount, fee, _data);

        require(vat.dai(address(this)) == add(bal, rad(add(_amount, fee))), "DssFlash/invalid-payback");

        vat.heal(arad);
        vat.move(address(this), vow, rad(fee));
    }
```

The IFlashMintReceiver interface:

```
interface IFlashMintReceiver {

    /**
    * Must transfer _amount + _fee back to the flash mint contract when complete.
    */
    function execute(uint256 _amount, uint256 _fee, bytes calldata _params) external;

}
```

### MIP25c3: Test cases

see [flash.t.sol](https://github.com/hexonaut/dss-flash/blob/master/src/flash.t.sol)

- test_dex_trade
- test_mint_with_fee
- testFail_mint_zero_amount
- testFail_mint_amount_over_line
- testFail_mint_insufficient_dai
- testFail_mint_too_much_dai
- testFail_mint_line_zero
- testFail_mint_unauthorized_suck
- testFail_mint_reentrancy
- test_mint_data
- test_mint_no_fee_payback
- test_preexisting_dai_in_flash

### MIP25c4: Security considerations

The proposed solution is simple and non-invasive, interacting with only one other component of the system (the `Vat`) through an existing method for `suck`. A `lock` modifier has been added to  `mint` to prevent any possible re-entrancy bugs.

### MIP25c5: Formal verification/audit information

The proposed contract is written in a way which is amenable to formal specification and verification, in accordance with the style and practices of the core multi-collateral DAI contracts, though it has not been formally specified. No audit or code review has taken place yet.

### MIP25c6: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)