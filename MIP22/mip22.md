# MIP22: Centrifuge Direct Liquidation Module

## Preamble
```
MIP#: 22
Title: Centrifuge Direct Liquidation Module
Author(s): Lucas Vogelsang (@spin on forum.makerdoa.com, lucas@centrifuge.io)
Contributor(s): Lea Schmitt (lea@centrifug.io), Lev Livnev (@equivrel on forum.makerdao.com)
Type: Technical
Status: Conception
Date Proposed: 2020-09-02
Date Ratified: yyyy-mm-dd
Dependencies: none
Replaces: none
Licenses: AGPL

```

## References

- Introductory post discussing the economics and legal benefits of this liquidation: [Vault Liquidation Mechanism for Centrifuge Trade Finance Assets - A Pre MIP Discussion](https://forum.makerdao.com/t/vault-liquidation-mechanism-for-centrifuge-trade-finance-assets-a-pre-mip-discussion/3737)
- Relevant MIP6 Proposals for which this liquidation could be used: [Paperchain](https://forum.makerdao.com/t/pc-drop-mip6-application-paperchain-drop-tokenized-music-streaming-invoices/2215), [ConsolFreight](https://forum.makerdao.com/t/cf-drop-mip6-application-consolfreight-drop-tokenized-freight-shipping-invoices/2214), [Harbor Trade Credit](https://forum.makerdao.com/t/htc-drop-mip6-application-harbor-trade-credit-drop-short-term-trade-receivables/3502)


## Sentence Summary

This proposal provides a vault liquidation mechanism for short-term loan collateral that entails letting a portfolio of said short term assets mature and using loan repayments to settle the Vault balance.

## Paragraph Summary

For Vaults of pooled short term loans, auctioning off a portfolio of short term loans is not necessarily the most effective way for Maker to liquidate a vault. When these assets are very illiquid the discount a keeper would want outweights the benefit of just waiting for maturity of the underlying loans. Centrifuge has built the Tinlake contracts to manage the liquidations of loan portfolios on chain. This mechanism allows the Maker smart contracts to get direct access to these repayments without the need for any external keepers.

## Component Summary

**MIP22c1: Collateral Prerequisites**
Describes for which collateral types this adapter can be used.
**MIP22c2: Liquidation Mechanism**
Describes the mechanism by which Vaults are liquidated when the described adapter is used.
**MIP22c3: Definitions**
Definition of the different components.
**MIP22c4: Proposed Code**
An explanation of the logic along with code
**MIP22c5: Usage of Code & Test Cases**
Still outstanding
**MIP22c6: Security Considerations**
Still outstanding
**MIP22c7: License**
The code is licensed under APGL.

## Motivation

As we have stated in previous threads and discussions we believe that adding real world assets (RWA) to MCD is the path forward to scale Dai supply and balance the collateral risk portfolio through uncorrelated assets.

For RWA to be addet to the system, the key problem for Maker has been the absence of a reliable process to liquidate a Maker vault that is backed by these assets.

When a legal entity invests in a Tinlake pool that is backed by RWA they enter a legal contract with the issuer and therefore get a claim on the assets in the SPV.

When Maker liquidates a Vault backed by these tokens it must have a way to get the DAI repaid that was generated in the Vault without having to enter a legal contract with the issuer.

We are proposing a liquidation mechanism that solves for that whenever a Vault is backed by by **short-term loan collateral**. This mechanism does not require an auction and no additional legal structures. We see this solution as a major push towards making RWA in MCD a reality near term.

The solution proposed in this MIP requires that the pool of loans that is tokenized through Centrifuge is either:
1. Of very short maturity and waiting for loan maturity is economically viable.

**or**

2. The loans can be sold off by the asset originator off chain and there is a process in place for the liquidation of the pool in case any DROP token holder (such as Maker)

Whether the proposed liquidation component should be used for a given collateral type should be part of the Risk Assessment and discussed on an asset by asset basis. If that is desired, the below code should be configured to be used when adding a new collateral with the MIP12 executive vote.


## Specification

### MIP22c1: Collateral Prerequisites

Assets that should be able to use this collateral have a few requirements:
* This only works for collateral that is using Centrifuge's Tinlake smart contracts to tokenize their off-chain loans.
* There must be sufficient investors besides the use of the tokens
* The Risk Domain Teams deem this liquidation mechanism for the collateral type sufficient.

---

### MIP22c2: Liquidation Mechanism

When the liquidation of a Vault is kicked, the proposed liquidation adapter forces the Tinlake pool into liquidation by submitting an order to redeem all collateral in the Vault. The Tinlake contracts than automatically allocate all incoming cash-flows from borrowers to investors (i.e. the Maker Vault) for redemptions.

![](https://storage.googleapis.com/centrifuge-hackmd/upload_a65b9b92a17a23596ab4c0d4a2404ff7.png)

---

### MIP22c3: Definitions
* **Tinlake Flipper:** the contract that can liquidate a Vault by going to the Tinlake Pool contracts to redeem DROP for DAI and then transfer the raised DAI to the `Vow`
* **Tinlake GemJoin:** a GemJoin adapter that only allows the pool to add collateral
* **Tinlake Pool:** a pool of asset backed loans settled in DAI
* **DROP:** the senior pool share ERC20 token it is redeemable against a share of the DAI repaid by the loans in the Tinlake Pool

---

### MIP22c4: Proposed Code
The code has been kept to a minimum and any functional changes are shown below. We will publish a repo after collecting some feedback on this proposal (to be ammended). The code in full can be viewed [here](https://gist.github.com/lucasvo/0928dc8118e6f140fe656bb4409c8495).

For each Tinlake pool there will only be one Vault owned by the pool. The pool will have the logic necessary to manage the Vault. We modify the standard GemJoin adapter to only allow the `join` method to be called by `wards` (i.e. it is an authorized call). This will prevent anyone else from opening a CDP with DROP tokens as they would not be able to add the collateral to the system.

The `TinlakeJoin` contract looks as follows. Note the added `auth` modifier in the `join` function. This is the only necessary change.

```
contract DROPJoin is GemJoin {
    function join(address usr, uint wad) external auth note {
        require(live == 1, "GemJoin/not-live");
        require(int(wad) >= 0, "GemJoin/overflow");
        vat.slip(ilk, usr, int(wad));
        require(gem.transferFrom(msg.sender, address(this), wad), "GemJoin/failed-transfer");
    }
}
```

The `Tinlake Flipper` takes all of the collateral from a Vault and requests redemption from the pool. The Tinlake contracts then enforce that any payments on loans are disbursed to the any DROP holder that requests redemption. As DAI is redeemed from the Pool, the adapter transfers the DAI into the `vow` until the `tab` is recovered. At that point any additional DAI that could be redeemed with the DROP is given back to the Pool.

 The auction mechanism is binary: only liquidating part of the collateral would not be desired from an economical perspective. Therefore the mechanism is designed to liquidate everything and only after return any excess DAI raised to the pool.

 When a Vault is liquidated (`Cat.bite` is called), the Cat will call `Flipper.kick` which kicks off the liquidation. At first it withdraws the entire collateral (the DROP tokens) from the system and places a `redeemOrder` on the `pool` contract.

 ```
    function kick(address usr_, address gal, uint256 tab, uint256 lot, uint256 bid)
        public auth returns (uint256 id)
    {
        vow = gal;
        usr = usr_;
        vat.flux(ilk, msg.sender, address(this), lot);

        dropJoin.exit(address(this), lot);
        pool.redeemOrder(lot);
    }
```

The redeem order will now be taken into account whenever loan repayments flow into the pool or other investors want to join the pool. As the pool redeems the DROP any user can call the function `take`. It moves the DAI available for withdrawal from the pool and either repays up outstanding debt (`tab`) to the `vow` or returns it to the pool. This method can be called multiple time to cause the pool to `disburse` more DAI and return it to the pool as funds available for borrowers.

```
    function take() public {
        uint returned, _ = pool.disburse();
        if (tab < returned) {
            dai.transferFrom(address(this), usr, sub(returned-tab));
            returned = tab;
        }
        if (tab != 0) {
            dai.join(vow, returned);
            tab = sub(tab, returned);
        }
    }
```

The Tinlake smart contracts collect redeem orders and return any DAI returned by borrowers proportionally to all DROP token holders first. This means that to receive highest priority on the redemption the liquidation should request the entire DROP to be redeemed.

This can be done by setting the variable `dunk` to `uint(-1)`. This raises the minimum size of the collateral to auction off during the liquidation to above the maximum collateral that can ever exist thus forcing liquidation of the entire Vault and not just part of it.

---

### MIP22c5: Test Cases
Tinlake is undergoing an audit which will be published by Sep 22nd. We will ammend this section with information on the test cases we have covering both the

---
### MIP22c6: Security Considerations

This section will be completed. The core Tinlake contracts have undergone security audits in the past ([reports](https://github.com/centrifuge/security/tree/master/audits/tinlake)) and we will be publishing the audit we are conducting for the next release in the next few weeks as it is ready.

As for the contracts that interact directly with MakerDAO (TinlakeFlipper and DROPJoin) those will be submitted with extensive test coverage and have been written following MakerDAO/DappHub's smart contract style guide, make use of no external libraries and are easy to audit totalling to less than 100 lines of code.

---
### MIP22c7: License

- All code is licensed under the AGPL license

---


