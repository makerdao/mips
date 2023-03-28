# MIP59: DssCharter

## Preamble

```
MIP#: 59
Title: DssCharter
Author(s): Tal Baneth (@talbaneth)
Contributors: Sam MacPherson (@hexonaut), Derek Flossman (@Derek) 
Tags: technical, module, smart-contracts
Type: Technical
Status: Obsolete
Date Proposed: 2021-08-26
Date Ratified: 2021-10-25
Dependencies: n/a
Replaces: n/a
License: AGPL3+  
Ratification Poll URL: https://vote.makerdao.com/polling/QmNVWmdU?network=mainnet
Forum URL: https://forum.makerdao.com/t/mip59-dsscharter/10028
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## References

* The proposed [dss-charter](https://github.com/makerdao/dss-charter) implementation.
* The [Forum post](https://forum.makerdao.com/t/institutional-and-long-term-vaults-proposal/9586).

## Sentence Summary

This proposal provides a smart contract implementation of DssCharter, a module which supports institutional and long term vaults. 

## Paragraph Summary

DssCharter interfaces with the dss core contracts to support creating institutional and long term vaults with debt origination fees. It also includes enforcement of a debt ceiling and a minimal collateralization ratio when drawing debt or withdrawing collateral. For institutional vaults (permissioned mode) the fee percentage and the enforcement parameters are set per vault instance. For long term vaults (non-permissioned mode) these parameters are set per collateral type.

## Component Summary

**MIP59c1: Definitions:** defines the parameters used for creating permissioned and non-permissioned vault types.

**MIP59c2: Proposed code:** contains a summary of the proposed implementation.

**MIP59c3: Test Summary:** contains a summary of the existing tests.

**MIP59c4: Security considerations:** comments on the limited nature of the security implications of adding DssCharter.

**MIP59c5: Licensing:** states the license under which the proposal and code are distributed.

## Motivation

The goal of DssCharter is to boost Dai supply by attracting partners and individuals with fixed and sometimes favorable rates, and in return charge origination fees. This setting should incentivise a longer term borrowing commitment.


## Specification

### MIP59c1: Definitions

- **gate**: Whether the ilk (collateral type) is permissioned. Permissioned ilks are used for institutional vaults while non-permissioned ilks are used for long term vaults.
- **Nib** : Per ilk relative origination fee (for non-permissioned ilks).
- **nib** : Per vault relative origination fee (for permissioned ilks).
- **Peace**: Minimal collateralization ratio upon drawing debt or withdrawing collateral (for vaults in non-permissioned ilks).
- **peace**: Per vault minimal collateralization ratio upon drawing debt or withdrawing collateral (for vaults in permissioned ilks).
- **uline** : Per vault debt ceiling (for permissioned ilks).

### MIP59c2: Proposed code
   See [CharterManager.sol](https://github.com/makerdao/dss-charter/blob/master/src/CharterManager.sol). 

Vault creation and modification are performed through the CharterManager contract, which wraps the Vat and the GemJoin adapter. It includes the origination fee collection (which it immediately moves to the Vow) and other proprietary validations. Similarly to the CropJoin design, CharterManager creates proxy accounts for each user, while making sure only these accounts can hold the specific ilk's gem and draw debt.

Most of the new functionality mentioned above resides in the `frob()` function, which wraps the Vat's `frob()`. This includes fetching the user's proxy account through `getOrCreateProxy()`, charging origination fees through `draw()` and adding validations on any drawn debt through `validate()`.

As in CropJoin, liquidations can only be done by users who create a proxy through CharterManager. To support that, the [ProxyManagerClipper](https://github.com/makerdao/proxy-manager-clipper) should be used.


### MIP59c3: Test Summary

See [CharterManager-unit.t.sol](https://github.com/makerdao/dss-charter/blob/master/src/test/CharterManager-unit.t.sol) and [ProxyManagerClipper-integration.t.sol](https://github.com/makerdao/dss-charter/blob/master/src/test/ProxyManagerClipper-integration.t.sol).

The tests cover different configurations of the parameters from the **Definitions** section and simulation of different scenarios. This includes liquidations, invalid configuration testing and bad actors operations. Mainnet fork testing is also done to simulate against real world conditions. 

### MIP59c4: Security considerations

Since CharterManager wraps the core components of the dss system and does not interact with the Vat in an authorized manner it can not directly cause bad debt / solvency issues. Moreover, the logic for interacting with the GemJoin adapter and the Vat is limited in scope and is purposely reduced to necessity.

### MIP59c5: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
