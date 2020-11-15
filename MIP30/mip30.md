# MIP30: Farmable cUSDC Adapter (`CropJoin`)

## Preamble
```
MIP#: 30
Title: Farmable cUSDC Adapter (`CropJoin`)
Author(s): Lev Livnev (@equivrel), ￼🌧️ McRainface
Contributors: n/a
Type: Technical
Status: <Assigned by MIP Editor>
Date Proposed: 2020-11-16
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: n/a
License: AGPL3+
```
## References

- The proposed [CropJoin](https://github.com/rainbreak/crop) implementation

## Sentence summary

This is a proposal for the technical implementation of a USDC collateral
type which would allow a CDP user to benefit from the COMP "farming"
reward, by depositing the collateral into Compound and optimising its
COMP yield through "tactical resupply".

## Paragraph summary


COMP farming offers an attractive yield on USDC with very little risk,
and the ability to receive additional leverage from a CDP is likely to
present an attractive opportunity for a yield-seeking investor, so this
collateral type could be expected to produce very high dai issuance,
while generating significantly higher fees for MakerDAO than what is
currently collected on MakerDAO's significant stablecoin exposure. We
propose a new USDC based collateral adapter that performs COMP farming
on behalf of depositors.

## Component summary

**MIP30c1: Proposed code:** contains snippet of proposed implementation.

**MIP30c2: Test cases:** lists existing test cases, including integration tests

**MIP30c3: Security considerations:** comments on the security implications of using `CropJoin`

**MIP30c4: Other considerations:**

**MIP30c5: Formal verification/audit information:** comments on the amenability of the proposed code to formal verification, even though formal specification, audit, or code review have yet to be conducted.

**MIP30c6: Licensing:** states the license under which the proposal and code are distributed.


## Motivation

### Background

Since Black Thursday, the MakerDAO governance community has faced issues
with managing the supply and demand of dai, with dai trading on the
market consistently above the target price of $1.00. In July, the market
demand for dai began to increase significantly, due to dai [becoming the
dominant asset for "COMP farming"][comp-farming]. Further to that, other
"farming"/"liquidity mining" schemes emerged, similarly boosting dai
demand.

[comp-farming]: https://forum.makerdao.com/t/upcoming-comp-farming-change-could-impact-the-dai-peg/2965

With interest rates near the zero lower bound, governance was left with
limited options for scaling supply to meet the new demand. Measures that
have been considered to address this problem have included:

- the addition of fiat stablecoin collateral types, with
  collateralisation ratios close to 100%
- [open market operations to buy stablecoins with DAI, aka PSM][PSM]
- [the implementation of negative interest rates using TPAM, aka `Vox`][TPAM]
- accelerating the timeline for real-world assets using [MIP 21] and [MIP 22]


[PSM]:    https://forum.makerdao.com/t/peg-stabilization-modules-a-pre-mip-discussion/3045
[TPAM]:   https://forum.makerdao.com/t/mip30-target-price-adjustment-module-vox/3196
[MIP 21]: https://forum.makerdao.com/t/mip21-real-world-assets-off-chain-asset-backed-lender/3917
[MIP 22]: https://forum.makerdao.com/t/mip22-centrifuge-direct-liquidation-module/3930

with the first of these being the current _status quo_ policy (at the
time of writing there is around 406MM DAI issued against USDC-A, 57MM
against TUSD-A, and 21MM against PAX-A).

### The case for farmable collateral

Since July, dai supply has struggled to keep up with the seemingly
insatiable demand created by yield farming opportunities in Defi. One
way to think of the effect this has on the dai market is to consider the
farming yields as an artificial, "exogeneous DSR" which is very high,
(perceived to be) low risk, and beyond the control of MakerDAO
governance, which has the expected effect of exerting a strong positive
influence on dai demand. Another way to view the problem is that a large
portion of the dai supply is locked away, and taken off the market by
contracts offering depositors an attractive yield for depositing their dai.
Most prominently:

- 363MM DAI sitting inside Compound
- 197MM DAI in the Uniswap ETH/DAI pool (though the liquidity mining
  incentive is expected to end on the 17th of November)
- 34MM DAI deposited in Curve

Currently, collateral tokens (such as USDC) that are deposited in a CDP
to generate dai cannot be further deployed to generate yield for the
system or for the user. This means that users borrowing dai against USDC
collateral are subject to a significant opportunity cost by forgoing
yield on USDC, which decreases the incentive to sell the dai on the
market (and it is only when dai is sold on the market that increasing
supply has the desired effect on the peg). As a result, stablecoin
collateral types are now only effective due to their very low collateral
requirement, with the 101% collateral ratio acting as an effective
ceiling on the DAI/USD premium, by arbitrage.

If instead the CDP user could benefit from a farming yield on their
deposited collateral, then dai borrowing could present an attactive way
to lever up on that yield and generate an attractive carry. For example,
if a yield farm is currently paying 10% APY on USDC deposits, and a CDP
can be used to borrow DAI at 5% against those deposits, up to a 110%
collateralisation, then a user can earn `(10 - 5) * 11 = 55% APY` at
maximum leverage. In doing so, they would have borrowed and sold onto
the market 10 DAI for every 1 USDC they deposit, and the system would be
earning a material interest rate of 5% on this DAI issuance.

We believe that the introduction of farmable collateral types presents
the most effective avenue in the short term for scaling up DAI supply in
a way which rewards the system adequately for risk taking, by directly
leveraging the underlying source of the dai demand.

#### The case for farmable cUSDC

The technical implementation underlying this proposal aims to support
arbitrary collateral rehypothecation, meaning that in the future it
could be adapted to deploy farming collateral adapters for yield farms
other than Compound.

Compound is currently the largest "yield farm" on the market, and
probably also the one perceived to carry the lowest risk for depositors.
Indeed, depositors who simply deposit and borrow USDC face no price
risk, liquidation risk (provided the position is prudently managed) or
"impermanent loss" risk, and the Compound platform has been live with
very large amounts of locked capital for a long period of time, having
undergone numerous audits. The [MIP6 for cUSDC collateral][cusdc-mip6]
has already been decisively green-lit by governance.

[cusdc-mip6]: https://forum.makerdao.com/t/cusdc-mip6-collateral-onboarding-application/4135

Additional reasons to start with cUSDC farming include:

- Compound is arguably the most well respected, battle-tested, and
  thoroughly-audited smart contract system that offers yield farming
- MakerDAO already has significant exposure to USDC, and it is the
  collateral asset with the largest amount of DAI issued
- Compound currently sets the COMP yield on each asset proportionally to
  the total amount borrowed, meaning there is a 2nd order effect by
  which an increase in USDC farming would reduce the COMP yield on DAI
  farming, potentially helping to reduce DAI demand

Farmable cUSDC collateral can be viewed as an alternative to other
solutions which involve fiat stablecoin exposure (such as the current
stablecoin collateral types, or the PSM), and compared directly from a
risk, reward, and effectiveness perspective.

## Specification

### MIP30c1: Proposed code

See [crop.sol] for the core adapter implementation, and [wind.sol] for
the Compound leverage optimisation.

#### Rewards distribution

In `CropJoin` we implement a general purpose farming rewards adapter,
that distributes income from a given token proportionally. This adapter
can be used for a variety of income generating tokens, e.g. cTokens,
UNI-LP, SNXRewards, and will also distribute income from direct token
transfers.

To specialise to a given token, a single method must be overriden to
implement the claim logic for the given token (e.g. `.getReward()`,
`.claimComp(...)`).

Existing approaches to this problem were considered (e.g. `SNXRewards` aka
`UniPool`, and Sushi's `MasterChef`), but were unsuitable due to
reliance on specified reward rates and Maker contract idiosyncracies. In
particular, designing a reward contract for Maker requires solving the
"double reward" problem posed by Maker collateral always being
transferrable within the system (see the [`crop` README] for more information).

[crop.sol]: https://github.com/rainbreak/crop/blob/main/src/crop.sol
[wind.sol]: https://github.com/rainbreak/crop/blob/main/src/wind.sol
[`crop` README]: https://github.com/rainbreak/crop/blob/main/README.md

#### Levered COMP Farming

COMP rewards are determined by the total assets that a user has supplied
and borrowed from Compound. Effective COMP farming requires "leverage":
a cToken is supplied, and the underlying is then borrowed and resupplied
again. This is repeated to maximise the total amount that a user has
supplied / borrowed, up to _four times_ the initial amount in the case
of USDC^.  This repeated supply / borrow method is in use by the majority
of large Compound Dai deposits today, and is the reason why the total
supply of cDai greatly exceeds the real supply of Dai.

^: the upper limit of supply `s = s0 / (1 - cf)`, where `cf` is the
maximum utilisation allowed by Compound (e.g. `cf=0.75` for usdc, i.e.
`s = 4 * s0`).

In [wind.sol] we extend the rewards adapter described above, specialising
it to receiving COMP rewards for supplying / borrowing cUSDC, via an
iterative method with optional user-provided loans. There are two
methods:

- `wind` supplies adapter USDC to Compound and maximises leverage up to
  a given target.
- `unwind` reduces leverage when over the target, and allows for USDC to
  be redeemed from Compound prior to user `exit`.


### MIP30c2: Test cases

Tests can be found in [crop.t.sol]. The basic rewards adapter is covered
for a mock token reward and this base is extended to test against mock
and real Compound behaviour (via RPC). The effect of flash loans on gas
costs and collateral reachability is explored, and a number of more
complex scenarios are tested against on-chain Compound, e.g. interest
accumulation, liquidation, and arbitrary seizure. The mathematical
behaviour of Compound is considered in depth in the documentation and
tests.

[crop.t.sol]: https://github.com/rainbreak/crop/blob/main/src/test/crop.t.sol

### MIP30c3: Security considerations

Security risks of cUSDC-CROP include:

##### Compound technical risk

Errors or security vulnerabilities in the Compound system could cause
the cUSDC-CROP adapter to behave unexpectedly, or could result in the
underlying USDC deposits to be lost or stolen.

##### `CropJoin` implementation technical risk

In addition to the technical risk inherent to Compound, the adapter
implementation itself is non-trivial and could increase the attack/error
surface.

Due to the design of multi-collateral DAI, worst-case losses should
be limited to the collateral deposited in the adapter, and the debt
ceiling should be set with this in mind.

### MIP30c4: Other considerations

#### MIP30c4A: Economic risks

It is fair to say that cUSDC-CROP collateral inherits the risks of USDC,
and includes the following additional risks, as a minimum:

##### Compound insolvency contagion risk
If the value of collateral/outstanding borrows in the Compound system
drops/rises (respectively) too quickly before collateral can be liquidated
to cover debts, it is possible for the system to become insolvent (similarly
to how underwater CDPs in MakerDAO can exhaust the surplus buffer and eventually
lead to insolvency). In that case, users of this adapter may take a loss, and if
the loss is great enough, cUSDC-CROP CDPs may become underwater too, resulting
in Compound insolvency spreading to MakerDAO.

##### Compound liquidity risk
Even if the Compound system is solvent, there is no theoretical guarantee
that it is possible at any time to withdraw a supplied asset, since the
reserves of the supplied asset may be tied up in outstanding borrows. In
that case, it may be impossible to withdraw USDC from the adapter until
a USDC reserve is accumulated in the contract, either through repaid borrows
or additional supply. In order to prevent illiquidity events, Compound adjusts
supply and borrow rates dynamically based on utilisation, incentivising supply
and repayment with very high interest rates when reserves run low. Historically,
the Compound platform has been successful at managing liquidity with this technique.

#### MIP30c4B: Governance considerations

In order for the cUSDC-CROP collateral type to stay competitive relative to other
Defi yield opportunities, while maximising returns for MakerDAO, it may be necessary
to periodically adjust the stability fee to reflect prevailing market rates and the
Compound COMP-adjusted yield on USDC.

In the future, the same mechanism can be used to  deploy adapters for leveraging other
"yield farming" schemes.

#### MIP30c4C: Example parameters
_n.b. see [predictions.exchange](https://www.predictions.exchange/compound/%5B%5B'0',%20'0'%5D,%20%5B'0',%20'0'%5D,%20%5B'0',%20'0'%5D,%20%5B'0',%20'0'%5D,%20%5B'0',%20'0'%5D,%20%5B'0',%20'0'%5D,%20%5B'0',%20'0'%5D,%20%5B'400',%20'300'%5D,%20%5B'0',%20'0'%5D,%20%5B'0',%20'0'%5D,%20%5B'0',%20'0'%5D%5D) or [stat.farm](stat.farm) for useful COMP-adjusted yield calculators_

At the time of writing, a "levered" Compound USDC deposit (with LTV of 67.4%) yields
a COMP-adjust APY of about 14.6%.

We consider some example risk parameters to illustrate the economics: with a liquidation
ratio of 110%, and stability fee of 10%, a user maintaining a collateral ratio of 111%
will have levered up around 10x on their net interest of `14.6% - 10.0%`, earning a net
carry of around 46% APY.

From the perspective of the user, this is well above the USDC yield on most established
"yield farms". From the perspective of MakerDAO, the stability fee is much higher than that
of any existing major collateral type, and the high collateralisation ratio of 110% allows
liquidations to be initially disabled (similarly to the _status quo_ with USDC-A) with
interest still being effectively collectable for at least one year following the opening of
a CDP.

### MIP30c5: Formal verification/audit information

The proposed contract is written in a way which is amenable to formal
specification and verification, in accordance with the style and
practices of the core multi-collateral DAI contracts, though it has not
been formally specified. Full formal specification would be a challenge
due to the dependence on Compound supply / borrow / reward logic, which
is non-trivial compared to a simple token transfer as it would require
modelling of much of Compound.

No audit or code review has taken place yet.


### MIP30c6: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
