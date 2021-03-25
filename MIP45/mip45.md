# MIP45: Liquidations 2.0 (LIQ-2.0) - Liquidation System Redesign

## Preamble
```
MIP#: 45
Title: Liquidations 2.0 - Liquidation System Redesign
Author(s):  Smart Contracts Domain Team
Type: Technical
Status: Formal Submission
Date Proposed: 2021-02-03
Dependencies:
Replaces: Liquidation System 1.2 (LIQ-1.2)
```

## Sentence Summary
This MIP defines a new Liquidation System for the Maker Protocol.

## Paragraph Summary
If accepted, this MIP would resolve some [inefficiencies](https://forum.makerdao.com/t/a-liquidation-system-redesign-a-pre-mip-discussion/2790) in the current liquidation system by replacing the current English style auction system, where bids start low, with a new Dutch style auction system, where auction prices generally start high and drop over time.  The key advantage to the new liquidation system is that the entire Vault's collateral is available at a given price.  As time passes, the DAI the protocol is willing to take for the collateral falls.  This allows keepers to leverage all liquidity available on-chain using single block composability.  The design is intended to reduce the risk that auctions clear at lower-than-market prices, while removing most liquidity constraints from keepers.  Liquidations 2.0 is also intended to reduce price volatility risk from keepers.

This document supersedes the [Liquidations 2.0: Technical Summary](https://forum.makerdao.com/t/liquidations-2-0-technical-summary/4632).

## Specification


### MIP45c1 Governance Parameters

#### `Abacus/LinearDecrease` -- **tau** [seconds]
Seconds after auction start when the price reaches zero.

#### `Abacus/StairstepExponentialDecrease` -- **cut** [ray]
Per-step multiplicative factor.
`cut = 0.99 * RAY` is 1% drop on each `step`.

#### `Abacus/StairstepExponentialDecrease` -- **step** [seconds]
Length of time between price drops.

#### `Clipper` -- **buf** [ray]
The multiplicative factor to increase the starting price of an auction.
E.g. if the current OSM price of an asset is 1,000 and `buf = 1.2 * RAY` (20% above), then the initial price of that auction will be 1,200.

#### `Clipper` -- **calc** [address]
The contract address of the price calculator function. Adheres to `Abacus` interface. Some examples of price functions are found in `abaci.sol` file.

#### `Clipper` -- **chip** [wad]
Percentage of `tab` to `suck` from `vow` to incentivize keepers when liquidating a vault or resetting an already existing auction.
`chip = 0.02 * WAD` is 2%.

#### `Clipper` -- **cusp** [ray]
Percentage price drop that can occur before an auction must be reset. Together with `tail`, this parameter determines when an auction needs to be reset.
E.g. if the initial price of an auction (`top`) is set to 1,200 and `cusp = 0.6 * RAY` (60% of the starting price), then the auction will need to be reset when reaching just below the price of 720.

#### `Clipper` -- **dog** [address]
The address of the liquidation module contract.

#### `Clipper` -- **spotter** [address]
The Collateral price module contract address.

#### `Clipper` -- **tail** [seconds]
Seconds that can elapse before an auction must be reset. Together with `cusp`, this parameter determines when an auction needs to be reset.
E.g. if `tail` is 1800 seconds, then if an auction is not complete after 30 minutes have elapsed, it will need to be reset.

#### `Clipper` -- **tip** [rad]
Flat fee to `suck` from `vow` to incentivize keepers when liquidating a vault or resetting an already existing auction.
`tip = 100 * RAD` is 100 DAI.

#### `Clipper` -- **vow** [address]
The address of the accounting system contract. The recipient of DAI raised in auctions.

#### `Dog` -- **Hole** [rad]
Max DAI needed to cover debt + liquidation penalty of active auctions.
`Hole = 10,000,000 * RAD` is 10M DAI.

#### `Dog` -- **ilk.chop** [wad]
Liquidation Penalty per collateral (`ilk`).
E.g. if there is a vault ready to be liquidated that has a debt of 1,000 DAI and `chop = 1.13 * WAD` (13% above), then the max amount to be raised by the auction will be 1,130 DAI.

#### `Dog` -- **ilk.clip** [address]
The address of the auction module contract. One `clip` per collateral (`ilk`).

#### `Dog` -- **ilk.hole** [rad]
Max DAI needed to cover debt + liquidation penalty of active auctions per collateral (`ilk`).
`hole = 10,000,000 * RAD` is 10M DAI.

#### `Dog` -- **vow** [address]
The address of the accounting system contract. The recipient of the bad debt coming from a vault when it's liquidated.


### MIP45c2 Vault Liquidation
[https://github.com/makerdao/dss/blob/liq-2.0/src/dog.sol](https://github.com/makerdao/dss/blob/liq-2.0/src/dog.sol)

#### The Vault liquidation function (`Dog.bark`) takes three caller supplied arguments:
- `ilk`: the collateral ilk
- `urn`: the Vault to be liquidated
- `kpr`: the address where DAI incentives will be sent

#### `Dog.bark` performs several actions:
- confiscates the given Vault `urn` if it's undercollateralized and
    - sends the collateral to the `ilk`'s `Clipper`
    - increments the `vow`'s bad debt accumulator
- pushes the bad debt onto the debt queue
- adds the bad debt to the `Hole` with the `Dirt` accumulator
- adds the bad debt to the `ilk.hole` with the `ilk.dirt` accumulator
- initiates the auction by calling `Clipper.kick()`
- fires the `Bark()` event

In the context of the Maker protocol, a "liquidation" is the automatic transfer of collateral from an insufficiently collateralized Vault, along with the transfer of that Vault's debt to the protocol. In both the current liquidation contract (the `Cat`) and the 2.0 version (the `Dog`), an auction is started promptly to sell the transferred collateral for DAI in an attempt to cancel out the debt now assigned to the protocol. This makes the behavior of the new contract very similar to that of the current one, but there are some important differences, explained below.

#### MIP45c3 Partial vs. Total Liquidations
In the current system, in each call to the liquidation function (`Cat.bite`) transfers a fixed amount of debt (the `dunk`) from the affected Vault, along with a proportional amount of the Vault's collateral to the protocol. For example, if 50% of a Vault's debt is taken by the protocol, then half of its collateral is taken as well. If the Vault's debt is less than the `dunk`, then all debt and collateral is taken. In 2.0, all debt is taken when the liquidation function (`Dog.bark`) is called, and no analogue of the `dunk` parameter exists. The reasoning behind this change is that because the new auctions allow partial purchases of collateral, the liquidity available to a participant no longer limits their ability to participate in auctions, so instead the total number of auctions should be minimized.  Just to emphasize, there is no longer a minimum DAI liquidity requirement for the sale of collateral on a per-participant basis.

#### MIP45c4 Limits on DAI Needed to Cover Debt and Fees of Active Auctions
In situations involving large amounts of collateral at auction, the current and new designs modify the behavior described in the previous section. Both liquidations 1.2 and 2.0 implement a limit on the total amount of DAI needed to cover the summed debt and liquidation penalty associated with all active auctions.  In `LIQ-1.2` this is called the `box`, and in `LIQ-2.0` we call this the `Hole`.  Whenever the maximum possible addition to this value is less than the amount of debt+fees that would otherwise be sent to auction, a partial liquidation is performed so as not to exceed this amount. In the current system there is only a global limit; in 2.0, in addition to the global limit, there is also a per-collateral limit as well.  Similar to how there is an `ilk.line` for a collateral's debt ceiling and a `Line` for the overall system debt ceiling, there is now an `ilk.hole` to correspond with the `Hole`.  This ensures that typical market depth against DAI can be taken into account on a per-collateral basis by those determining risk parameters.

### MIP45c5 Auction Initiation
[https://github.com/makerdao/dss/blob/liq-2.0/src/clip.sol](https://github.com/makerdao/dss/blob/liq-2.0/src/clip.sol)

#### The auction initiation function (`Clipper.kick`) takes four caller supplied arguments:
- `tab`: the target DAI to raise from the auction (`debt` + `stability fees` + `liquidation penalty`)
- `lot`: the amount of collateral available for purchase
- `usr`: the Vault under liquidation
- `kpr`: the address where DAI incentives will be sent

#### `Clipper.kick` performs several checks and actions:
- checks that the caller is authorized (only the `Dog` or governance may call `Clipper.kick`)
- checks that liquidations are enabled in the four-stage circuit breaker
- increments a counter and assigns a unique numerical `id` to the new auction
- inserts the `id` into a list tracking active auctions
- creates a structure to record the parameters of the auction; this includes:
    - it's position in the active auctions list
    - the target amount of DAI to raise from bidders (`tab`)
    - the amount of collateral available for purchase (`lot`)
    - the Vault that was liquidated to create this auction
        - allows return of collateral if not all of it is sold
        - allows the return of collateral and `tab` when `Clipper.yank` is called by `End.snip`
    - the timestamp of the auctions creation (as a Unix epoch)
    - the initial price of collateral in the auction (`top`)
- sends an incentive denominated in DAI to the `kpr`
- fires the `Kick()` event

The initial price is set by reading the current price in the corresponding [Oracle Security Module](https://docs.makerdao.com/smart-contract-modules/oracle-module/oracle-security-module-osm-detailed-documentation) (OSM) and multiplying by a configurable percentage (the `buf` parameter). Note that the *current* OSM price is between one and two hours delayed relative to the actual market price.  A keeper doesn't make a call to `Clipper.kick` directly, but rather makes a call to `Dog.bark` which in turn calls `Clipper.kick`.

### MIP45c6 Liquidation Incentive Mechanism
In this design, there is less incentive to quickly liquidate Vaults than in the current system, because there is no inherent advantage obtained by doing so. In contrast, the current auction system grants the account triggering a liquidation the privilege of making the first bid in the resulting auction. It is unclear whether this matters significantly in practice, or whether some stronger incentive should be added (for example, a small DAI reward paid to liquidators).

To ensure there was a remedy for this potential issue, an incentive mechanism was added for liquidators. The form of the incentive is, on a per-collateral type basis, a constant amount of DAI plus an amount of DAI that scales linearly with the amount of debt associated with the liquidation. Either contribution can be set to zero. Such a structure is justified by the following:

- The reward is set per-collateral to give maximum flexibility to include not just per-collateral risk parameters like `mat` (collateralization ratio) and `chop` (liquidation penalty) in its setting, but also to allow for unique market conditions that might only apply to one or a few collateral types.
- The component of the reward that increases linearly with the total Vault debt is intended to be used to reward liquidators for reducing risk to the system, as risk itself scales with the size of undercollateralized Vaults—a Vault that is twice as big as another represents twice the risk of bad debt accrual. Or viewed another way, liquidating two vaults of size X represents the same risk reduction as liquidating one Vault of size 2X—thus the reward to a liquidator ought to be similar. Further, the system can *afford* to pay more for larger liquidations, because the liquidation penalty is also proportional to the amount of debt outstanding for a given Vault.
- The constant component of the reward can be used to cover gas costs (which are per-Vault for liquidators) or to allow MKR holders to effectively pay Keepers to clear small Vaults that would otherwise not be attractive for liquidation.

These parameters must be set extremely carefully, lest it be possible to exploit the system by "farming" liquidation rewards (e.g. creating Vaults with the intention of liquidating them and profiting from the too-high rewards). Generally, the liquidation reward should remain less than the liquidation penalty by some margin of safety, at least to ensure the system is not accruing a deficit from liquidations.

### MIP45c7 Four-Stage Liquidation Circuit Breaker

In this section, we'll cover the four stages of the liquidation circuit breaker. In contrast to `LIQ-1.2`, Liquidations 2.0 comes with a four-stage circuit breaker built into the `Clipper` contract. The stages are:

- **liquidations enabled**(`0`): This means the breaker is not tripped and the protocol can liquidate new Vaults as well as service old liquidations.
- **new liquidations disabled**(`1`): This means no new liquidations (`Clipper.kick`).
- **new liquidations and resets disabled**(`1`): This means no new liquidations (`Clipper.kick`), and auctions that have reached either a price or time endpoint cannot be reset (`Clipper.redo`).
- **liquidations disabled**(`2`): This means no new liquidations (`Clipper.kick`), no takes (`Clipper.take`), and no resets (`Clipper.redo`).

Just like in `LIQ-1.2`, the circuit breaker will be available through a `ClipperMom` contract giving governance the ability to bypass the `GSM` delay for circuit breaker actions.

### MIP45c8 Bidding (Purchasing)
[https://github.com/makerdao/dss/blob/liq-2.0/src/clip.sol](https://github.com/makerdao/dss/blob/liq-2.0/src/clip.sol)

#### The purchasing function (`Clipper.take`) takes five caller supplied arguments:
- `id`: the numerical id of the auction to bid on
- `amt`: the maximum amount of collateral to buy (`amt`) — a purchase behaves like a limit order
- `max`: the maximum acceptable price in DAI per unit collateral (`max`)
- `who`: address that will receive the collateral (`who`)
- `data`: an arbitrary bytestring (if provided, the address `who`, if it is neither the `Dog` nor `Vat` address stored by the Clipper, is called as a contract via an interface described below, to which this data is passed)

#### `Clipper.take` performs several initial checks:
- a reentrancy check to ensure the function is not being recursively invoked
- that the four-stage circuit breaker is not tripped
- that the auction id corresponds to a valid auction
- that the auction does not need to be reset, either due to having experienced too large a percentage decrease in price, or having existed for too long of a time duration
- that the caller's specified maximum price is at least the current auction price

Then, the amount of collateral to attempt to purchase is computed as the minimum of the collateral left in the auction (`lot`) and the caller's specified quantity (`amt`)—the resulting value is the `slice`. This value is then multiplied by the current price of the auction to compute the DAI owed in exchange (`owe`). If `owe` exceeds the DAI collection target of the auction (`tab`), then `owe` is adjusted to be equal to `tab`, and `slice` is set to `tab / price` (i.e. the auction will not sell more collateral than is needed to cover debt+fees from the liquidated Vault).

Once the collateral to buy and corresponding DAI owed are determined, a check is done to ensure that the remaining DAI collection target either exceeds a minimum amount or is zero; **if not, the function reverts. Callers should be aware of this possibility and account for it when possible.**

Next, collateral is transferred (within the protocol's [accounting module](https://docs.makerdao.com/smart-contract-modules/core-module/vat-detailed-documentation)) to the `who` address provided by the caller. If the caller provided a bytestring with greater than zero length, an external call is made to the `who` address, assuming it exposes a function, follow Solidity conventions, with the following signature:

```jsx
clipperCall(
    address,            // recipient of DAI
    uint256,            // owe   [rad]
    uint256,            // slice [wad]
    bytes calldata
)
```

The first argument is the recipient of DAI.  That is, this is the address the `clipperCallee` must return DAI to.  The second argument is DAI owed (as a 45 decimal digit fixed-precision integer, or `rad`), the third argument is the collateral being purchased (as an 18 decimal digit fixed-precision integer, or `wad`), regardless of the precision of the external token contract, and the last argument is identical to what bytestring the caller originally supplied to the purchase function. As mentioned earlier, a locking mechanism prevents reentry into the purchase function during this external call, and the `Clipper.redo` call, for security reasons.

After the external call completes (or immediately following the transfer of collateral, if no external call was executed), DAI is transferred (internally, within the core [accounting module](https://docs.makerdao.com/smart-contract-modules/core-module/vat-detailed-documentation)) from `msg.sender` to the protocol.

Lastly, various values are updated to record the changed state of the auction: the DAI needed to cover debt and fees for outstanding auctions, and outstanding auctions of the given collateral type, are reduced (via a callback to the liquidator contract) is reduced by `owe`, and the `tab` (DAI collection target) and `lot` (collateral for sale) of the auction are adjusted as well. If all collateral has been drained from an auction, all its data is cleared and it is removed from the active auctions list. If collateral remains, but the DAI collection target has been reached, the same is done and excess collateral is returned to the liquidated Vault.

#### MIP45c9 Example Liquidation

![](https://i.imgur.com/BgOFMyZ.gif)
**Figure MIP45c9.1**: NOTE: in the above figure, `tau` is `tail`.

In this example we can see a linear decrease function (`calc`), with an `ETH-A` OSM price of **200 DAI**, a `buf` of **20%**, a `tail (tau)` of **21600** seconds, a `tab` of ***60,000 DAI** with a `lot` of `347.32` ETH.  There are two bidders, **Alice** and **Bob**.  **Alice** calls `take` first and is willing to give ***50,000 DAI** in return for **256.41** ETH collateral, a price of **195 DAI** per ETH.  The price of ETH continues to fall over time, and **Bob** picks up the remaining **90.91** ETH for **10,000 DAI**, a price of **110 DAI** per ETH.  If more than `tail` seconds have elapsed since the start of the auction, or if the price has fallen to less than `cusp` percent of `top`, then `Clipper.take` would revert if called, and the auction would need to be reset with a `Clipper.redo` call.

#### MIP45c10 Features

As discussed previously, collateral auctions are being changed from English to Dutch style. The current auction functionality is described in the official Maker documentation; here, we will focus on the new Dutch design, and only reference some contrasting points relative to the current design.

##### MIP45c11 Instant Settlement
Unlike the current English auctions, in which DAI bids are placed, with a participant's capital remaining locked until they are outbid or until the auction terminates, Dutch auctions settle instantly. They do so according to a price calculated from the initial price and the time elapsed since the auction began. Price versus time curves are discussed more later. The lack of a lock-up period mitigates much of the price volatility risk for auction participants and allows for faster capital recycling.

##### MIP45c12 Flash Lending of Collateral
This feature, enabled by instant settlement, eliminates any capital requirement for bidders (excepting gas)—in the sense that even a participant with zero DAI (and nothing to trade for DAI) could still purchase from an auction by directing the sale of the auction's collateral into other protocols in exchange for DAI. Thus, all DAI liquidity available across DeFi can be used by any participant to purchase collateral, subject only to gas requirements. The exact mechanics are discussed above, but essentially a participant needs to specify a contract `who` (which conforms to a particular interface), and `calldata` to supply to it, and the auction contract will automatically invoke whatever logic is in the external contract.

##### MIP45c13 Price as a Function of Time
[https://github.com/makerdao/dss/blob/liq-2.0/src/abaci.sol](https://github.com/makerdao/dss/blob/liq-2.0/src/abaci.sol)

Price-versus-time curves are specified through an interface that treats price at the current time as a function of the initial price of an auction and the time at which that price was set. How to determine the most effective price curve for a given collateral is still an active area of research; some initial options (linear and stair-step exponential) have been implemented for research purposes. Other candidates besides these include a piecewise linear curve and a piecewise exponential curve. This module is configurable and can be replaced in the course of innovation. Feedback or suggestions are particularly welcome in this area.

##### MIP45c14 Resetting an Auction

As mentioned above, auctions can reach a defunct state that requires resetting for two reasons:

- too much time has elapsed since the auction started (controlled by the `tail` governance parameter)
- the ratio of the current price to the initial price has fallen below a certain level (specified by the `cusp` governance parameter).

The reset function, when called, first ensures that at least one of these conditions holds. Then it adjusts the starting time of the auction to the current time, and sets the starting price in exactly the same way as is done in the initialization function (i.e. the current OSM price increased percentage-wise by the `buf` parameter). This process will repeat until all collateral has been sold or the whole debt has been collected (unless the auction is canceled via `yank`, e.g. during Emergency Shutdown); contrast this behavior with the current auctions, which reset until at least one bid is received.

##### MIP45c15 Improved Keeper Wallet Security

If keepers decide to use the `clipperCallee` pattern, then they need not store DAI or collateral on that account.  This means a keeper need only hold enough ETH to execute transactions that can orchestrate the `Clipper.take` call, sending collateral to a contract that returns DAI to the `msg.sender` to pay for the collateral all in one transaction.  The `Clipper.take` call can send any remaining collateral or DAI beyond `owe` to a cold wallet address inaccessible to the keeper. **NOTE: If the keeper chooses to behave as an EOA address, then the DAI and collateral would be exposed just as in `LIQ-1.2` unless special care is taken to create a proxy contract.**

## MIP45c16 Incentive to call `redo()`
[https://github.com/makerdao/dss/blob/liq-2.0/src/clip.sol](https://github.com/makerdao/dss/blob/liq-2.0/src/clip.sol)

#### The auction initiation function (`Clipper.redo`) takes two caller supplied arguments:
- `id`: the current auction id
- `kpr`: the address where DAI incentives will be sent

#### `Clipper.redo` performs several checks and actions:
- a mutex check to ensure the `Clipper.take` function is not already being invoked from `clipperCallee`
- that the four-stage circuit breaker is not tripped
- that the auction id corresponds to a valid auction
- that the auction needs to be reset, either due to having experienced too large a percentage decrease in price, or having existed for too long of a time duration
- updates several fields of the existing auction
    - `tic` to reset the auction start time
    - `top` with the current OSM price and `buf` percent
- `vat.suck`s DAI to the `kpr` as an incentive if eligible
- fires the `Redo()` event

An auction that has expired or which is currently offered at a value higher than the oracle threshold will likely not complete at favorable values. The system therefore provides a direct incentive to `Clipper.redo` the auction, resetting it's expiration and setting the starting price to match the current oracle price + buf. The redo includes the same Dai incentive to the keeper as the `Clipper.kick`, which is based on the flat fee plus the governance-defined percentage of collateral.  There is one exception to this incentive.  If the `tab` or `lot * price` remaining is under the `ilk.dust` limit, then there will be no incentive paid to `redo` the auction.  This is to help prevent incentive farming attacks where no keepers bid on dusty lots, and `Clipper.redo` is called repeatedly.  If auctions in this state build up, governance may choose to pay a keeper to clean them up.

### MIP45c17 Shutdown (Global Settlement, Emergency Shutdown)
[https://github.com/makerdao/dss/blob/liq-2.0/src/end.sol](https://github.com/makerdao/dss/blob/liq-2.0/src/end.sol)

A started auction can be reverted via the `auth` function called `yank` in `Clipper` contract.
This function requires that the auction exists and executes the following actions:
- calls `dog.digs` in order to increment its `Hole` and `ilk.hole` values by the remaining auction `tab`
- sends the remaining collateral to its `msg.sender`
- removes the auction struct data
- fires the `Yank()` event

This function might be thought of as a general purpose operation to migrate existing auctions to a new contract; however, the only use-case now is in the `End` module, which takes care of system shutdown.

The `End` module will be upgraded together with the auction contracts as a new function `End.snip` is required.

This function `End.snip` is responsible for calling `Clipper.yank` for any running auction when shutdown is triggered.  It will receive the collateral from `Clipper.yank` and will send it back to the vault owner together with the remaining debt to recover.  One consideration to note is that the debt that the vault owner will receive includes the liquidation penalty part already charged.

### MIP45c18 Interfaces

#### `Dog` Interface

```
function wards(address) external view returns (uint256);
function rely(address) external;
function deny(address) external;
```

Standard MakerDAO authorization structure.


```
function vat() external view returns (address);
function vow() external view returns (address);
```

DSS core address introspection.

```
function ilks(bytes32 ilk) external view returns (
    address clip, uint256 chop, uint256 hole, uint256 dirt);
```

Returns values configured for a given ilk (ex. `ETH-A`)

```
function live() external view returns (uint256);
```
Returns `1` if the system is active.

```
function Hole() external view returns (uint256);
function Dirt() external view returns (uint256);
```
Getters for the global Hole and Dirt configuration.

```
function file(bytes32 what, address data) external;
function file(bytes32 what, uint256 data) external;
function file(bytes32 ilk, bytes32 what, address data) external;
function file(bytes32 ilk, bytes32 what, uint256 data) external;
```
(Authenticated) Parameter modification functions, available to governance.

```
function chop(bytes32 ilk) external view returns (uint256);
```
Getter for the `chop` value of a given `ilk`.


```
function bark(bytes32 ilk, address urn, address kpr)
    external returns (uint256 id);
```
The main liquidation function. Initiates an auction. A keeper calls this function to begin the auction of `urn` for a particular `ilk`. `kpr` is the address where the keeper incentive is sent, allowing keepers to have liquidation rewards sent to a different address than the caller.

```
function digs(bytes32 ilk, uint256 rad) external;
```
(Authenticated) Removes collateral from the accumulator. Called by the `Clipper`.

```
function cage() external;
```
(Authenticated) Deactivates the `Dog` and sets `live` to 0.


#### `Clipper` Interface

```
function wards(address) external view returns (uint256);
function rely(address) external;
function deny(address) external;
```

Standard MakerDAO authorization structure.


```
function ilk() external view returns (bytes32);
```
The ilk that this Clipper is associated with.

```
function dog() external view returns (address);
function vow() external view returns (address);
function spotter() external view returns (address);
```
DSS core address introspection.


```
function calc() external view returns (address);
```
The address of the pricing function used by this Clipper.

```
function buf() external view returns (uint256);
function tail() external view returns (uint256);
function cusp() external view returns (uint256);
function chip() external view returns (uint256);
function tip() external view returns (uint256);
```
Getters for governance-configured auction parameters.

```
function kicks() external view returns (uint256);
```
Auction counter. Increments each time an auction is initiated.
```
function active(uint256 pos) external view returns (uint256);
```
Returns the id of the auction at index `pos` in the list of active auctions.
```
function sales(uint256) external view returns (
        uint256 pos,
        uint256 tab,
        uint256 lot,
        address usr,
        uint96  tic,
        uint256 top);
```
Returns information on a particular auction. Completed auctions are removed from the mapping.
```
function stopped() external view returns (uint256);
```
Returns the current circuit breaker status. `0` for all functions allowed, `1` if `kick` cannot be called, `2` if `kick` and `redo` cannot be called, and `3` if `kick`, `redo` and `take` cannot be called.
```
function file(bytes32 what, uint256 data) external;
function file(bytes32 what, uint256 data) external;
```
(Authenticated) Parameter modification functions, available to governance.

```
function kick(uint256 tab, uint256 lot, address usr, address kpr)
    external returns (uint256 id);
```
(Authenticated) Initiates the auction. Called by the `Dog`.

```
function redo(uint256 id, address kpr) external;
```
Called to reset an auction due to expiry or price deviation.
```
function take(uint256 id, uint256 amt,
        uint256 max, address who, bytes calldata data) external;
```
Called to purchase collateral.

```
function list() external view returns (uint256[] memory);
function count() external view returns (uint256);
```
Helpers for iterating the list of active auctions. Use `list()` to get the unsorted array of auctions. Get the number of active auctions with `count()`. The function `active(uint256 pos)` (see above) can be used to access individual entries without needing to call `list()`.
```
function getStatus(uint256 id) external view returns (bool needsRedo, uint256 price);
```
Returns a bool if the auction is eligible for redo and the current price.
```
function updust() external;
```
Updates the `dust` value stored in the contract to equal that for the corresponding `ilk` in the `Vat`. This allows `take` and `redo` to obtain `dust` with a single `SLOAD` (reading it from the `Vat` requires 5 `SLOAD` operations due to how the API is structured).
```
function yank(uint256 id) external;
```
(Authenticated) Allows an auction to be removed during Emergency Shutdown or via a goveranance action.


## Known Risks

This section covers some of the known risks with Liquidations 2.0

### MIP45c19 Incentive Farming
Periodically, governance may increase the `ilk.dust` amount.  When this happens, it's usually because gas has become so expensive it impacts the efficiency of liquidations.  That is, the cost of calling `Dog.bark()`, `Clipper.take()`, or `Clipper.redo()` may exceed the collateral offered.  Incentives may be used as a remedy to this potential issue and possibly a way for the protocol to keep `ilk.dust` lower; however, governance must take care when increasing the `ilk`s `dust`, `tip`, or `chip` not to incentivize the creation of many Vaults to farm this incentive.  An example of an exploit is as follows:

1. governance decides to increment `dust` by **1500 DAI** at the same time they scale `ilk.tip` to subsidize auctions.
2. an attacker realizes it would be profitable between gas and the `chop` to shard (`fork`) their existing Vault into many Vaults or create many new Vaults.
3. the spell is voted on and passed
4. using one transaction the attacker puts their Vaults at the edge of unsafe, `poke()`s the OSM when next price is going down, then calls `Dog.bark()` on all their Vaults to collect the incentive.
5. Using the gains, they can also slightly overbid for their Vaults auctions.

In order to thwart this attack governance must be careful when setting `ilk.tip` and `ilk.chip` so as not to create this perverse incentive.

### MIP45c20 Price Decrease Function Too Fast

If the price function decreases too fast it can have the following consequences:

- the auction ends without any bid, then it needs to be reset and possibly this will keep happening
- bidders end up having reverts due the auction ended before tx confirmation
- bidders end up paying much less than what they were willing to pay (possibly generating permanent bad debt)

### MIP45c21 Price Decrease Function Too Slow

If the price function decreases too slow it can have the following consequences:

- auction price never catches up with the market price, eventually being reset
    - After the reset the price catches up, but is less than an optimal market price
    - After the reset the price catches up, but still leaves bad debt
    - After the reset the auction price still might not catch up, causing more resets and very likely leaving bad debt

### MIP45c22 Front-Running
In `LIQ-1.2` there is limited front-running risk as it requires capital to participate in auctions; however, in liquidations 2.0 if a keeper chooses to participate with no capital, there is substantial front-running risk from generalized front-running bots.  The easier it is to replace the `from` address of the transaction with one's own, the greater the risk.  To mitigate this risk keepers are encouraged to used authorized proxy contracts to interact with liquidations 2.0 and provide some amount of their own capital when bidding.  More aggressive gas prices may also work.  Unfortunately, we found no great way to prevent generalized front-running that preserves single-block composability.

### MIP45c23 OSM Risk for Start Price
Because `Clipper.kick` and `Clipper.redo` consult the OSM for the collateral price, we are vulnerable to an oracle attack that can only be mitigated by the oracle delay, `Dog.Hole`, and `ilk.hole`.  We must rely on the number of guards in place to prevent price manipulation and oracle attacks.

### MIP45c24 Setting Hole or ilk.hole Too High
While `Dog.Hole` and `ilk.hole` can be set much higher in liquidations 2.0, there are still risks to setting this too high.  A value for `Dog.Hole` that's set too high could result in far too much DAI demand, breaking the peg high.  This is somewhat mitigated by the PSM and stablecoin collateral types, but should still factor in to how this parameter is set.  An `ilk.hole` that is set too high, may have the additional result of causing a downward spiral as the liquidations push the asset price lower.  In addition, if there is an oracle attack, this parameter can be thought of as our maximum exposure.

### MIP45c25 Setting Hole or ilk.hole Too Low
If we set either `Dog.Hole` or `ilk.hole` too low, we run the risk of not being able to liquidate enough collateral at once.  This could lead to a buildup of undercollateralized positions in the system, eventually causing the accrual of bad debt.

## Audits

There are a number of auditors engaged on Liquidations 2.0.  As audit reports come in this MIP will be updated.

## Formulas

### MIP45c26 `Dog.bark` formulas

The following formulas are still a work in progress, they might contain errors.

#### FV considerations

This function computes `tab`, the target amount of DAI to be raised in an auction and `lot`, the collateral to put for sale.

They are defined as:

```
tab = dart * ilk.rate * ilk.chop / WAD
lot = dink = urn.ink * dart / urn.art
```

`room` is defined as the remaining space of available DAI to be collected in auctions:
```
room = min(Hole - Dirt, ilk.hole - ilk.dirt)
```

Then `dart` is defined as:
```
if    urn.art < room * WAD / ilk.rate / ilk.chop
   || (urn.art - room * WAD / ilk.rate / ilk.chop) * ilk.rate < ilk.dust:
     dart = urn.art
otherwise
     dart = room * WAD / ilk.rate / ilk.chop
```

Leaving the final formulas as:
```
if    urn.art < room * WAD / ilk.rate / ilk.chop
   || (urn.art - room * WAD / ilk.rate / ilk.chop) * ilk.rate < ilk.dust:
     tab = urn.art * ilk.rate * ilk.chop / WAD
     lot = urn.ink
otherwise
     # approximately equal to room, but in general not exactly equal due to rounding error
     tab = room * WAD / ilk.rate / ilk.chop * ilk.rate * ilk.chop / WAD
     lot = urn.ink * (room * WAD / ilk.rate / ilk.chop) / urn.art
```

##### Invariants:
```
dink <= urn.ink
```
```
dart <= urn.art
```
```
dart / urn.art == dink / urn.ink
```
```
urn.art' / urn.art == urn.ink' / urn.ink
```
```
tab <= min(ilk.hole + ilk.dust - ilk.dirt, Hole + max(ilk[*].dust) - Dirt)
considering ilk[*].dust can't change after set up
```

#### Implementation breakdown

This function computes `tab`, the target amount of DAI to be raised in an auction, and `lot`, the collateral to be auctioned off. They are defined as:

    tab = dart * ilk.rate * ilk.chop / WAD                                  (A)
    lot = dink = urn.ink * dart / urn.art                                   (B)

##### Liquidations and normalized debt

The debt of a vault is expressed in normalized terms:

    vault.debt = vault.art * ilk.rate                                       (C)

This normalized debt is decreased after a liquidation is triggered:

    vault.art' = vault.art - dart                                           (D)

This `dart` value stands for `delta art` and it is equal to or less than the normalized debt:

    dart <= vault.art                                                       (E)

The computation of `dart` depends on the `hole` and `dust` restrictions as explained below.

##### `hole` restrictions

When a liquidation is successfully started, its `tab` value is added to the collateral's `dirt` value and to the global Dirt value:

    ilk.dirt' = ilk.dirt + tab                                              (F)
    Dirt'     = Dirt     + tab                                              (G)

To prevent too much DAI liquidity demand from being created at once, the Dog.bark function reverts if:

    Hole <= Dirt || ilk.hole <= ilk.dirt                                    (H)

Note that Dirt may exceed Hole, or ilk.dirt may exceed ilk.hole, by a small margin if the Vault would be left in a dusty (urn.art * ilk.rate < dust) by a partial liquidation;
in such a case, the entire Vault is liquidated in order to avoiding creating Vaults that will never be liquidated due to unprofitability. The size of the excess should be bounded as follows
(assuming the values of the parameters appearing in the formula did not change since the last time time the bound held true):

    ilk.dirt <= ilk.hole +       (ilk.dust - 1) * ilk.chop / WAD - 1        (I)
        Dirt <=     Hole + max { (ilk.dust - 1) * ilk.chop / WAD - 1 }      (J)

The maximum in (J) is taken over all valid ilks.

##### Definition of `dart` in terms of `room`

`room` is defined as the remaining space of available DAI to be offered in auctions:

    room = min(Hole - Dirt, ilk.hole - ilk.dirt)

Then `dart` is defined as:

    dart = vault.art
                                             , for vault.art * ilk.rate <= room
                                                || (vault.art * ilk.rate > room
                                         && vault.art * ilk.rate < room + dust)
    dart = room / ilk.rate / ilk.chop                               , otherwise

##### `dust` restrictions

When a vault is partially liquidated because of `hole` restrictions, its new debt value cannot be dusty. This means that it has to be either zero, or at least equal to the collateral's `dust` value:

    vault.art' * ilk.rate >= ilk.dust                                      , or
    vault.art' = 0                                                          (J)

Solving for `dart` in both cases using equation `D`,

    vault.art' >= ilk.dust / ilk.rate
    vault.art - dart >= ilk.dust / ilk.rate
    -dart >= ilk.dust / ilk.rate - vault.art
    dart <= vault.art - ilk.dust / ilk.rate                                , or

    vault.art - dart = 0
    dart = vault.art                                                        (K)

When the value of `dart` is one such that `vault.art'` will be dusty, the whole vault is liquidated instead, even if it surpasses the `hole` restrictions. In order to obtain the range in which this is the case, we negate equation `J` and solve for `dart`:

    vault.art' * ilk.rate < ilk.dust && vault.art' > 0
    vault.art' < ilk.dust / ilk.rate && vault.art' > 0
    0 < vault.art' < ilk.dust / ilk.rate
    0 < vault.art - dart < ilk.dust / ilk.rate
    -vault.art < -dart < ilk.dust / ilk.rate - vault.art
    vault.art > dart > vault.art - ilk.dust / ilk.rate
    vault.art - ilk.dust / ilk.rate < dart < vault.art                      (L)

##### General equation for `tab` in terms of `dart`

    tab = min(
            dart * ilk.rate * ilk.chop,
            ilk.hole - ilk.dirt,
            Hole - Dirt
          )                       , for dart <= vault.art - ilk.dust / ilk.rate

    tab = vault.art * ilk.rate * ilk.chop
                      , for vault.art - ilk.dust / ilk.rate < dart <= vault.art

##### General equations for `tab` and `lot`

    tab = vault.art * ilk.rate * ilk.chop
    lot = vault.ink                          , for vault.art * ilk.rate <= room
                                                 || (vault.art * ilk.rate> room
                                                    && vault.art < room + dust)

    tab = room
    lot = vault.ink * (room / ilk.rate / ilk.chop) / vault.art      , otherwise


### MIP45c27 `Clipper.take` formulas

The following formulas are still a work in progress, they might contain errors.

#### FV considerations


This function computes `owe` as the amount of DAI to pay in the auction
and `slice` as the amount of collateral being bought for that DAI paid

```
amt = desired max amount of collateral being purchased
tab = current amount of DAI to be recovered in the auction
lot = maximum amount of collateral available for selling
abacus.price = current price of collateral
```

The values of `owe` and `slice` will be
defined according to these different cases:

```
if min(lot, amt) * abacus.price >= tab
    owe = tab
    slice = tab / abacus.price
otherwise
    if amt < lot && tab - amt * abacus.price < ilk.dust
        if tab > ilk.dust
            owe = tab - ilk.dust
            slice = owe / abacus.price
        otherwise
            tx fails
    otherwise
        owe = min(lot, amt) * abacus.price
        slice = min(lot, amt)
```

#### Implementation breakdown

This function computes `owe`, i.e. the amount of DAI needed to purchase
`amt` of collateral at the current price, as determined by the auction's
abacus:

    owe = amt * abacus.price

If `amt` is equal or higher than the auction's `lot`, it means that all
the available collateral is being bought.

    owe = auction.lot * abacus.price             , for amt >= auction.lot
    owe = amt * abacus.price                                  , otherwise

Note that the first case means that the auction is over.
Additionally, `owe` needs to be less than or equal to the auction's
`tab`:

    owe = min(auction.lot * abacus.price, auction.tab)
                                                 , for amt >= auction.lot
    owe = min(amt * abacus.price, auction.tab)                , otherwise

After each successful call to this function, the auction's `tab` value
decreases:

    auction.tab' = auction.tab - owe

However, there is a restriction regarding the resulting `tab` value: it
cannot be less than the `dust` value of its collateral type:

    auction.tab' >= collateral.dust

Solving for `owe` in the two equations above:

    auction.tab - owe >= collateral.dust
    -owe >= collateral.dust - auction.tab
    owe <= auction.tab - collateral.dust

Thus, if the auction is to continue, a valid `owe` amount has to be less
than or equal to the difference between the auction's `tab` and the
collateral's `dust` value:

    owe = min(auction.lot * abacus.price, auction.tab)
                                                 , for amt >= auction.lot
    owe = min(amt * abacus.price, auction.tab - collateral.dust)
                                                              , otherwise

Note that, since the first case means that the auction is over, the dust
restriction does not apply to it.
Another case in which the auction is over is when

    owe = auction.tab

In this case, the `dust` value is also irrelevant. On the other hand, we
know that

    owe = amt * abacus.price

Solving for `amt` in the two equations above:

    auction.tab = amt * abacus.price
    amt = auction.tab / abacus.price

Thus, the general computation of `owe` can be expressed as:

    owe = min(auction.lot * abacus.price, auction.tab)
                                                 , for amt >= auction.lot
    owe = auction.tab              , for amt = auction.tab / abacus.price
    owe = min(amt * abacus.price, auction.tab - collateral.dust)
                                                              , otherwise


## Licensing
[AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
