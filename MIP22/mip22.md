# MIP22: Centrifuge Direct Liquidation Module

## Preamble
```
MIP#: 22
Title: Centrifuge Direct Liquidation Module
Author(s): Lucas Vogelsang (@spin on forum.makerdao.com, lucas@centrifuge.io)
Contributor(s): Lea Schmitt (lea@centrifuge.io), Lev Livnev (@equivrel on forum.makerdao.com)
Type: Technical
Status: Formal Submission (FS)
Date Proposed: 2020-09-02
Date Ratified: yyyy-mm-dd
Dependencies: none
Replaces: none
Licenses: AGPL

```

## References

- Introductory post discussing the economics and legal benefits of this liquidation: [Vault Liquidation Mechanism for Centrifuge Trade Finance Assets - A Pre MIP Discussion](https://forum.makerdao.com/t/vault-liquidation-mechanism-for-centrifuge-trade-finance-assets-a-pre-mip-discussion/3737)
- Relevant MIP6 Proposals for which this liquidation could be used: [Paperchain](https://forum.makerdao.com/t/pc-drop-mip6-application-paperchain-drop-tokenized-music-streaming-invoices/2215), [ConsolFreight](https://forum.makerdao.com/t/cf-drop-mip6-application-consolfreight-drop-tokenized-freight-shipping-invoices/2214), [Harbor Trade Credit](https://forum.makerdao.com/t/htc-drop-mip6-application-harbor-trade-credit-drop-short-term-trade-receivables/3502)
- Example code: `tinlake_flip.sol` and `drop_join.sol` in this repository

## Sentence Summary

This proposal provides a vault liquidation mechanism for Tinlake based short-term loan collateral that entails letting a portfolio of said short term assets mature or refinance them off-chain and using loan repayments to settle the Vault balance.

## Paragraph Summary

For Vaults of Centrifuge pooled short term loans, auctioning off a portfolio of short term loans is not necessarily the most effective way for Maker to liquidate a vault. When these assets are very illiquid the discount a keeper would want outweights the benefit of just waiting for maturity of the underlying loans. Centrifuge has built the Tinlake contracts to manage the liquidations of loan portfolios on chain. This mechanism allows the Maker smart contracts to get direct access to these repayments without the need for any external keepers.

## Component Summary

**MIP22c1: Collateral Prerequisites**
Describes the requirements for the collateral type to make use of the proposed liquidation module.

**MIP22c2: Liquidation Mechanism**
Describes the mechanism by which Vaults are liquidated when the described adapter is used.

**MIP22c3: Definitions**
Adapter Component Definitions

**MIP22c4: Design Constraints**
An explanation of design tradeoffs taken in this code

**MIP22c5: Proposed Code**
An explanation of the logic along with code

**MIP22c6: Usage of Code & Test Cases**
Still outstanding

**MIP22c7: Security Considerations**
Still outstanding

**MIP22c8: License**
The code is licensed under APGL.

## Motivation

As we have stated in previous threads and discussions we believe that adding real world assets (RWA) to MCD is the path forward to scale Dai supply and balance the collateral risk portfolio through uncorrelated assets.

A key issue preventing the addition of RWA to the Maker Protocol has been the absence of a reliable process to liquidate a Maker vault that is backed by these assets.

When a legal entity invests in a Tinlake pool that is backed by RWA they enter a legal contract with the issuer and therefore get a legal claim on the underlying collateral (the real world asset).

When Maker liquidates a Vault backed by these tokens it must have a way to get the DAI repaid that was generated in the Vault without having to enter a legal contract with the issuer.

We are proposing a liquidation mechanism that solves for that whenever a Vault is backed by by **short-term loan collateral**. This mechanism does not require an auction and no additional legal structures. We see this solution as a major push towards making RWA in MCD a reality near term.

The solution proposed in this MIP requires that the pool of loans that is tokenized through Centrifuge is either:

1. Of very short maturity and waiting for loan maturity is economically viable.

**or**

2. The loans can be sold off (refinanced) by the issuer off chain and there is a process in place for the liquidation of the pool in case any DROP token holder (such as Maker)

Whether the proposed liquidation component should be used for a given collateral type should be part of the Risk Assessment and discussed on an asset by asset basis. If that is desired, the below code should be configured to be used when adding a new collateral with the MIP12 executive vote.


## Specification

### MIP22c1: Collateral Prerequisites

Assets that should be able to use this collateral have a few requirements:
* This only works for collateral that is using Centrifuge's Tinlake smart contracts to tokenize their off-chain loans.
* The Risk Domain Teams deem this liquidation mechanism for the collateral type sufficient.

---

### MIP22c2: Liquidation Mechanism

When the liquidation of a Vault is kicked, the proposed liquidation adapter forces the Tinlake pool into liquidation by submitting an order to redeem all collateral in the Vault. The Tinlake contracts than automatically allocate all incoming cash-flows from borrowers to investors (i.e. the Maker Vault) for redemptions.

![](https://storage.googleapis.com/centrifuge-hackmd/upload_a65b9b92a17a23596ab4c0d4a2404ff7.png)

---

### MIP22c3: Definitions
* **TinlakeManager:** privileged contract managing creation of DAI and subsequent liquidations
* **Tinlake Pool:** a pool of asset backed loans settled in DAI
* **DROP:** the senior pool share ERC20 token which is redeemable against a share of the DAI repaid by the loans in the Tinlake Pool

---

### MIP22c4: Design Constraints
#### Vow Debt Queue
Because the Vow debt queue only knows a single `wait` time we run into issues when using the `Cat.kick` method to trigger liquidations. This is a design oversight coming from the assumption that auctions would largely have similar run times. With both MIP22 as well as MIP21 this is not a given anymore.

The current implementation of the `Vow` does not work with Vault liquidations that vary greatly in length. The delay (`wait`) it uses to add debt to the sin is a system global which means:
* If it was extended to support the slower liquidations for RWA then flop auctions would be greatly delayed for short auction collateral (e.g. ETH) because it would sit in the queue for 90+ days.
* If it was kept as is, a collateral liquidation of RWAs would result in first a `flop` auction (selling MKR for DAI) being triggerd while the collateral is liquidated but before it's repaid with a subsequent `flap` auction when the liquidation finishes buying MKR for DAI unecessarily yanking the price of MKR around.

This MIP proposes a workaround: it implements the liquidation internally in a first phase and only intends to use the `Cat` when a write off is expected. A long term fix for this would be modifying the Vow, for which there exists a [draft PR](https://github.com/makerdao/dss/pull/147/files).

#### Simple Single Use Adapter
In case of a liquidation or writeoff the adapter is not designed to recover. This is for a few reasons:
* Liquidations don't occur under normal operation. These assets should have a very low chance of default (&lt; 1% probability of default per year). Given the unlikelyness just redeploying in case it happens is safer than adding the complexity to deal with recovery from previous liquidations.
* It is likely that Maker governance would want to vote whether to allow a once liquidated collateral back into the system. This would mean a vote has to happen no matter what.
* These pools are limited in size with in a first test balloon. There will likely be technical improvements in the Tinlake contracts but also on Maker specific parts such as adding sources to the price feed. These adapters are not designed to run forever and will likely be redeployed before a liquidation ever happens.

This collateral type will not be used by the general public but by a predefined set of addresses (the Tinlake smart contracts) to mint and wipe DAI and only one Vault is created per collateral type. This greatly simplifies the adapter code as it does not need to support multiple vaults and generic interactions.

#### No generic Vault interactions
This manager is used directly directly from the Tinlake contracts and don't need a generic Vault interface. For each collateral type only a single urn exists. The manager is controlled by the `owner` address set on the contract.

Due to how this adapter is used, we don't need have the flexibility regular collateral types offer. The contracts interacting with this adapter don't have the capability to to make use of these features anyway. Therefore from `dss`'s perspective, this adapter contract is the owner of the urn and does the CDP manipulation and gem creation in combined methods:

* `draw` & `wipe` methods take `wad` DAI use DaiJoin to join/exit it and `Vat.frob` to increase/decrease `art`.
* `lock` & `unlock` methods call the DROP ERC20 token `transferFrom` function to move it to `TinlaakeManager`, create/remove the `gem` using `Vat.slip` and `Vat.from` to manipulate the `ink`


---

### MIP22c5: Proposed Code
The code is available at [github.com/centrifuge/tinlake-maker-lib](https://github.com/centrifuge/tinlake-maker-lib). It implements the functions that would typically be implemented in the `Flip`, the `Join` and CDP-manager.

### Three Phases
There are three phases that the contract can go through (besides global settlement which is treated separately). There are two boolean flags to track the state:

```
    bool public safe; // Liquidation not triggered
    bool public glad; // Write-off not triggered
```

The adapter can go from safe to unsafe and from glad to not glad. The three phases are:
1) Normal Operation (safe && glad): DAI can be minted and wiped from collateral.
2) Soft Liquidation (!safe && glad): Winding down of the Vault is triggered but collateral still has value within the system
3) Writeoff (!glad): Collateral is written off and bad debt is put on the debt queue

### Phase 1: Normal Operation
In normal operation gem is created by the manager when it receives gem tokens. The contract combines both the functionality of `GemJoin.join/exit` and a `Vat.frob` to move it into the `urn`.

```
    // join & exit move the gem directly into/from the urn
    function join(address usr, uint wad) public ownerOnly note {
        require(safe && glad && live);
        require(int(wad) >= 0, "TinlakeManager/overflow");
        gem.transferFrom(owner, address(this), wad);
        vat.slip(ilk, usr, int(wad));
        vat.frob(ilk, address(this), address(this), address(this), int(wad), 0);
    }

    function exit(address usr, uint wad) external ownerOnly note {
        require(safe && glad && live);
        require(int(wad) >= 0, "TinlakeManager/overflow");
        vat.slip(ilk, owner, -int(wad));
        vat.frob(ilk, address(this), address(this), address(this), -int(wad), 0);
        gem.transfer(usr, wad);
    }

```

The DAI functions `draw/wipe` similarly combine the `vat.frob` call along with calling
`DaiJoin.join/exit` to move DAI to the owner.

```
    // draw & wipe call daiJoin.exit/join immediately
    function draw(uint wad) public ownerOnly note {
        require(safe && glad && live);
        require(int(wad) >= 0, "TinlakeManager/overflow");
        vat.frob(ilk, address(this), address(this), address(this), 0, int(wad));
        daiJoin.exit(owner, wad);
    }

    function wipe(uint wad) public ownerOnly note {
        require(safe && glad && live);
        require(int(wad) >= 0, "TinlakeManager/overflow");

        daiJoin.join(address(this), wad);
        vat.frob(ilk, address(this), address(this), address(this), 0, -int(wad));
    }
```

### Phase 2: Soft Liquidation
Soft liquidation can be triggered by governance (casting a spell that calls `tell`) or by a the price feed calling it based on the liquidation criteria. How this is called remains outside of the scope of the `TinlakeManager`.

The Tinlake contracts redeem DAI prorata to the amount of DROP the redeemer wants to redeem. While there are situations where liquidating just part of the collateral would be enough it's always safer to trigger liquidation of the entire collateral. For simplicity reasons, this manager therefore implements only a full liquidation.

When triggering the `tell()` function the following happens:

```
    function tell() public auth note {
        require(safe && glad && live);
        safe = false;
        debt = add(debt, gem.balanceOf(address(this)));
        pool.redeemOrder(gem.balanceOf(address(this)));
    }
```

The most important line here is the call to `pool.redeemOrder` which notifies the
Tinlake contracts that the manager contract wants the DROP it owns redeemed for DAI. As loans in the Tinlake pool are repaid DAI becomes available for the redeemer. The redeemer has to call the `pool.disburse` function periodically.

As DAI is redeemed from the Pool, the manager transfers the DAI into the `vow` until the `tab` is recovered. At that point any additional DAI that could be redeemed with the DROP is given back to the Pool.

The redeem order will now be taken into account whenever loan repayments flow into the pool or other investors want to join the pool. As the pool redeems the DROP any user can call the function `unwind`. It moves the DAI available for withdrawal from the pool and either repays up outstanding debt (`art`) in the `vat` using `vat.frob` or returns it to the pool. This method can be called multiple time to cause the pool to `disburse` more DAI and return it to the pool as funds available for borrowers.

```
    function unwind(uint endEpoch) public note {
        require(glad && !safe && live, "TinlakeManager/not-soft-liquidation");
        (, , ,uint remainingDrop) = pool.disburse(endEpoch);
        uint dropReturned = sub(debt, remainingDrop);
        debt = remainingDrop; // assert(debt == gem.balanceOf(address(this))

        // Calculate DAI cdp debt
        (uint art, ) = vat.urns(ilk, address(this));
        ( , uint rate, , ,) = vat.ilks(ilk);
        uint daitab = mul(art, rate);

        uint payBack = max(dai.balanceOf(address(this)), divup(daitab, ONE));

        daiJoin.join(address(this), payBack);

        // Repay dai debt up to the full amount
        vat.frob(ilk, address(this), address(this), address(this),
                 -int(dropReturned), -int(payBack));

        // Return possible remainder to the owner
        dai.transfer(owner, dai.balanceOf(address(this)));
    }
```

### Phase 3: Writeoff
A **writeoff** is triggered by the `Cat` when the price feed reports an undercollateralized vault. The price feed outside of the scope of the `TinlakeManager`.

Functionally `kick/recover` and `tell/unwind` achieve the same thing: DAI owed to the Maker system is repaid by the pool. Their implementation varies du to the Vow debt queue (described above) and with the proposed modification to the `Vow` and `Cat` we could get rid of `tell/unwind` and only use `kick/recover`.

The `Cat` expects a `Flipper` to implement a fixed interface with a `kick()` method that the `TinlakeManager` implements. When `Cat.bite(urn)` is called, the debt is moved from the urn to the `Vow`.

```
    function kick(address dest_, address gal, uint256 tab_, uint256 lot, uint256 bid)
        public auth returns (uint256 id)
    {
        vow = gal;
        dest = dest_;
        tab = tab_;
        vat.flux(ilk, msg.sender, address(this), lot);
        dropJoin.exit(address(this), lot);
        pool.redeemOrder(drop.balanceOf(address(this)));
        emit Kick(id, lot, bid, tab_, dest, vow);
    }
```

As DAI is redeemed from the Pool, the manager transfers the DAI into the `vow` until the `tab` is recovered. At that point any additional DAI that could be redeemed with the DROP is given back to the Pool.

The redeem order will now be taken into account whenever loan repayments flow into the pool or other investors want to join the pool. As the pool redeems the DROP any user can call the function `recover`. It moves the DAI available for withdrawal from the pool and either repays up outstanding debt (`tab`) to the `vow` or returns it to the pool. This method can be called multiple time to cause the pool to `disburse` more DAI and return it to the pool as funds available for borrowers.

```
    function recover(uint endEpoch) public {
        require(!safe && !glad && live, "TinlakeManager/Pool-healhty");
        (uint returned, , ,) = pool.disburse(endEpoch);

        uint tabWad = tab / ONE; // always rounds down, this could lead to < 1 RAY to be lost in dust
        if (tabWad < returned) {
            dai.transfer(owner, sub(returned, tabWad));
            returned = tabWad;
        }
        if (tab != 0) {
            daiJoin.join(vow, returned);
            tab = sub(tab, mul(returned, ONE));
        }

    }
```


To ensure that the `Cat` always `bites` the entire vault, the `dunk` of the collateral type should be set to a multiple of the debt ceiling but safely below MAX_UINT (to prevent it from overflowing). This raises the minimum size of the collateral to auction off during the liquidation to above the maximum collateral that can ever exist thus forcing liquidation of the entire Vault and not just part of it.

---

### MIP22c6: Test Cases
Tinlake is undergoing an audit which will be published by Sep 22nd. We will ammend this section with information on the test cases we have covering both the

---
### MIP22c7: Security Considerations

This section will be completed. The core Tinlake contracts have undergone security audits in the past ([reports](https://github.com/centrifuge/security/tree/master/audits/tinlake)) and we will be publishing the audit we are conducting for the next release in the next few weeks as it is ready.

As for the contracts that interact directly with MakerDAO (TinlakeManager) those will be submitted with extensive test coverage and have been written following MakerDAO/DappHub's smart contract style guide, make use of no external libraries and are easy to audit totalling to less than a few hundred lines of code.

---
### MIP22c8: License

- All code is licensed under the AGPL license

---


