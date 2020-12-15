# MIP32: Peg Stability Module - Compound Mixed Exposure

## Preamble
```
MIP#: 32
Title: Peg Stability Module - Compound Mixed Exposure
Author(s): Alexis
Contributors: None
Type: Technical
Status: TBD
Date Proposed: 2020-12-18
Date Ratified: <yyyy-mm-dd>
Dependencies: PSM
Replaces: n/a
License: AGPL3+
```
## References

* The proposed implementation : [dss-psm-cme](https://github.com/alexisgayte/dss-psm-cme)

## Sentence Summary

This proposal provides an extension for Peg Stability Module. 
The extension allows the PSM to leverage USDC via dai using cdai. 
It also convert USDC to cusdc using the same `join` (lending join).

## Paragraph Summary

The extension acts exactly as the PSM but with a second join to leverage the position by 2X with Dai.
Part of the proposal comes also a "lending gem join" which is use to convert dai to cdai and usdc to cusdc.

**The join** is a generic 'maker join' and can be plugged to any vaults. The join use a generic interface but it is tighly linked to `compound`.
The join takes as input a collateral and lend it to compound, on the join `exit` it acts on the opposite way, it redeems the gem and return it to the buyer. It can be applied to Dai or any compound collaterals.

And as proposed for this PSM Compound Mixed Exposure, we can also use it as leverage using Dai.

Optional fees `tin` and `tout` can be activated as well which send a fraction of the trade into the `vow`.

As this PSM will have X2 leverage with compound on the input (USDC) using Dai, 
We have 2 urns one `cDai` and one `cUsdc`, but the position of the PSM is still on 1 uscd and 1 dai.

## Component Summary

**MIP32a1: PSM extension:** Very simple modification of the existent PSM.

**MIP32a2: Lending Join:** The join is based on existing join-5-auth and a new join-x-auth for 18 decimals.

## Motivation

Currently the usdc inside the PSM is inefficient and needs to be diversified. 
Using `cDai` and `cUsdc` will bring this diversification. The leverage is motivated by a better outcome.

## Specification

### MIP32a1: Proposed code

a simple duplication of the PSM main code, to introduce the second two join (leverageGemJoin):
```

        gemJoin.join(address(this), gemAmt, msg.sender);
        vat.frob(ilk, address(this), address(this), address(this), int256(gemAmt18), int256(gemAmt18));
        daiJoin.exit(address(this), gemAmt18);

        leverageGemJoin.join(address(this), gemAmt18, address(this));
        vat.frob(leverageIlk, address(this), address(this), address(this), int256(gemAmt18), int256(gemAmt18));
        leverageDaiJoin.exit(usr, daiAmt);

        vat.move(address(this), vow, mul(fee, RAY));
```

vs

```
        gemJoin.join(address(this), gemAmt, msg.sender);
        vat.frob(ilk, address(this), address(this), address(this), int256(gemAmt18), int256(gemAmt18));
        vat.move(address(this), vow, mul(fee, RAY));
        daiJoin.exit(usr, daiAmt);

```

Plus a couple of new parameter inside the constructor.

Here a diagram:
![dss-psm-cme](https://github.com/alexisgayte/dss-psm-cme/blob/master/dss-psm-cme.png?raw=true)

#### Test cases
Based on psm test :
see [DssPsmCme.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCme.t.sol)

### MIP32a2: Proposed code

The code is very generic here as well, however there is an exotic method `callDelegator` to siphon off the bonus token.
The delegator can be set up by governance. 
(No delegator is implemented yet, tho different strategy can be used, I would recommand to sell it via uniswap on DAI/COMP)

```
    function join(address urn, uint256 wad, address _msgSender) public note auth {
        require(live == 1, "LendingAuthGemJoin/not-live");
        uint256 wad18 = mul(wad, 10 ** (18 - dec));
        require(int256(wad18) >= 0, "LendingAuthGemJoin/overflow");
        vat.slip(ilk, urn, int256(wad18));

        require(gem.transferFrom(_msgSender, address(this), wad), "LendingAuthGemJoin/failed-transfer");
        gem.approve(address(ltk), wad);
        assert(ltk.mint(wad) == 0);
        _callDelegator();
    }

    function exit(address guy, uint256 wad) public note {
        uint256 wad18 = mul(wad, 10 ** (18 - dec));
        require(int256(wad18) >= 0, "LendingAuthGemJoin/overflow");
        vat.slip(ilk, msg.sender, -int256(wad18));

        require(ltk.redeemUnderlying(wad) == 0, "LendingAuthGemJoin/failed-redemmUnderlying");
        require(gem.transfer(guy, wad), "LendingAuthGemJoin/failed-transfer");
        _callDelegator();
    }

    function _callDelegator() private {
        if (address(bonus_token) != address(0) && address(bonus_delegator) != address(0)) {
            uint256 balance = bonus_token.balanceOf(address(this));
            if (block.timestamp - last_timestamp > duration && balance > 0) {
                last_timestamp = block.timestamp;
                require(block.timestamp !=0, "LendingAuthGemJoin/failed-transfer");
                bonus_token.transfer(address(bonus_delegator), balance);
                bonus_delegator.call();
                emit Delegate(balance);
            }
        }
    }

```
see [DssPsmCmeLending.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/DssPsmCmeLending.t.sol)

see [join-lending-auth.t.sol](https://github.com/alexisgayte/dss-psm-cme/blob/master/src/join-lending-auth.t.sol)

Here a diagram:
![lending-join](https://github.com/alexisgayte/dss-psm-cme/blob/master/lending-join.png?raw=true)


### MIP32b1: Security considerations

- Compound token and interaction.

### MIP32b2: Risk considerations
Risk is mainly about code, in this implementation as we don't use leverage on compound and the token can't be sized.

### MIP32b3: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)