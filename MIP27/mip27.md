# MIP27: Debt Ceiling Instant Access Module

## Introduction
Following the [Pre-MIP Discussion](https://forum.makerdao.com/t/debt-ceiling-instant-access-module-pre-mip-discussion/3924), this MIP formalises the Maker Improvement Proposal request for a Debt Ceiling Instant Access Module. Since further work has also been done on  [MIP17](https://forum.makerdao.com/t/mip17-weekly-actual-debt-ceiling-adjustments/4312) it is worth noting that this MIP does not render MIP17 redundant. It will be for the community to decide at which point they wish to move towards using an Instant Access Module for controling debt ceilings.

## Preamble
```
MIP#: 27
Title: Debt Ceiling Instant Access Module
Author(s):  Smart Contracts Domain Team
Type: Technical
Status: Request for Comments (RFC)
Date Proposed: 2020-10-07
Dependencies:
Replaces: Weekly governance executive debt ceiling adjustments
```

## Sentence Summary
MIP27 defines the Debt Ceiling Instant Access Module (DC-IAM) allowing any user to adjust the debt ceiling within constraints that are voted on by Governance.

## Paragraph Summary
An Instant Access Module contains components to create direct, bounded changes to the Maker Protocol without consensus in DSChief (or DssGov). This MIP introduces a Debt Ceiling Instant Access Module that permits anyone to adjust the debt ceiling within constraints that are voted in by Governance. This flexibility introduces concepts such as the minimum time required to wait before it is possible to increase the debt ceiling, as well as the maximum amount that the ceiling can be adjusted to, which will be discussed below.

The parameters and boundaries included herein should be considered examples and will be voted in at the time of implementation. There is an expectation that MIP17 and ongoing community governance experience will help inform the correct risk boundaries and governance parameters.

## Motivation
The Debt Ceiling Instant Access Module decentralises debt ceiling control to the broader community by allowing all stakeholders to control this important risk variable. It helps solve the somewhat frequent problem where the community finds itself having reached the debt ceiling and now needs to wait for an executive vote to pass in order to make further adjustments. The same occurs in reverse when it becomes necessary to lower the debt ceiling in the event there is a reduction in Dai supply.

This capability will be available once the community has a good idea of the logic defined in MIP17 and then once the DC-IAM has been voted in by Governance, after which point, executive votes would not be necessary to adjust the debt ceiling within a predefined upper boundary. An executive vote can however always be used to overrule the behavior of an IAM.

Below outlines the system variables that allow this module to function, and then explores how these variables are applied to adjust the debt ceiling. In the interest of simplicity, target risk premiums have been omitted from this design, however, once we better understand the relationship between debt ceilings and stability fees, these could also be explored.

## Specification
The following checks and variables define the parameters of the DC-IAM and can be set and amended by Governance through an executive vote.

### MIP27c1 Definitions
* `on` - A check to see that the `ilk` is enabled and part of the `vat`
* `line` - The maximum debt ceiling possible. This variable is determined by Governance and can only be updated through a governance vote as it prevents the DC-IAM from exceeding an upper limit.
* `top` - The amount that it is possible to adjust the ceiling over the existing `ilk` debt ceiling. This can be a percentage or an absolute value, which will be determined by Governance.
* `lineNew` - The new target debt ceiling once the new variable `top` is introduced. This value is a calculation based on the actual collateral debt plus the `top` as long as the final value falls within the maximum debt ceiling allowed (`line`). If it falls beyond the maximum allowed debt ceiling, then the `line` itself will be the highest possible value for the new debt ceiling.
* `DDC` - the defensive debt ceiling acts as a minimum floor preventing the debt ceiling from being reduced any lower.
* `ttl` - The minimum time required to wait before it is possible to increase the debt ceiling. Note, the `ttl` is not required when lowering the debt ceiling.
* `last` - The reference point in time that `ttl` uses to determine the last time the ceiling was increased.

### MIP27c2 Adjusting the Debt Ceiling
* The Debt Ceiling Module is independent for each collateral type and will work for any `ilk` in the `vat`.
* There will be a minimum time interval required to pass before setting a new increase. This is determined by the `ttl`.
* `ttl` will consider the OSM upgrade schedule so it takes into consideration the new OSM price before allowing an increase in the debt ceiling.
* Anyone can trigger a transaction to adjust the debt ceiling if supply conditions are met and the required amount of time since the last debt ceiling increase has also been met.
* The debt ceiling can only be increased if the underlying supply is also increasing. The amount of increase possible will always be a single value, known as the `top`. This can be defined as an absolute value or a percentage relative to the existing `ilk` debt.
* If the supply is equal to or lower than the current debt ceiling and trending down, then it will be possible to reduce the debt ceiling - again, using top relative to the supply.
* Note that the reduction of the debt ceiling does not need to check the `ttl` which is what sets the interval for how often the debt ceiling raise can be implemented. This means that there is no waiting period required for reducing the debt ceiling.

### MIP27c3 Example
After enabling this module through an executive vote, any individual with a web3 browser will be able to adjust the debt ceiling per accepted collateral type. Let’s use the below example values:
* The current supply is 100M for a particular collateral type
* Max limit is 150M
* % increase is set to 10%
* Once the ttl passes, let’s say the supply has since gone from 100M to 108M, anyone can increase the debt ceiling 10% higher, to 118.8M. [10% * 108M = 10.8M. 10.8M + 108 = 118.8M]
* Once again, after the next ttl, let’s say the supply has gone up to 115M, meaning anyone can at that point increase the debt ceiling to 126.5M. [10% * 115M = 11.5M. 11.5M + 115M = 126.5M]

<img width="314" alt="Increase" src="https://user-images.githubusercontent.com/55456013/95357680-75eed580-08c8-11eb-904c-ee0e53f2354e.png">

This process can be repeated until the limit value of 150M is reached, which will be determined by governance. It would then be up to governance to make changes to the hard limit (via an executive vote) if there was appetite to increase this limit.
* If Governance wanted to decrease the debt ceiling due to a reduction in supply, it is possible to do so without waiting on the ttl time. This ensures that the ability to draw be kept tight against supply.
* Let’s say supply is at 115M and the debt ceiling is at 126.5M. If the supply were to decrease to 112M, then the debt ceiling could immediately be reduced to 123.2M in order to retain the 10% buffer that Governance has deemed safe.

![New DDC](https://user-images.githubusercontent.com/55456013/95357833-a59ddd80-08c8-11eb-92fe-7252c58f5a7c.png)

* Calculation for the above: when the dai supply is reduced to 112M, the module takes 10% of that value (11.2M) and adds it to the Dai Supply amount (112 +11.2 = 123.2), therefore, the new debt ceiling will be 123.2M. The DC-IAM is always based off of the Dai Supply and either moves up or down 10% (or another value as determined by governance).


### MIP27c4 Defensive Debt Ceiling

In the event of a contracting market as in the above example, the community should ensure that the debt ceiling defensively tracks the contracting Dai supply to minimise excessive exposure. There is a level, called the Defensive Debt Ceiling (`DDC`) that prevents the Debt Ceiling from being reduced any further. This will be a fixed absolute number per collateral type, determined by Governance and Risk.

### MIP27c5 Authority

Any individual with a web3 browser will be able to change the Debt Ceiling as long as the intended changes meet the parameters as voted in by Governance.

### MIP27c6 Security

The `ttl` acts as a pause that prevents any individual from hitting the debt ceiling, increasing it, hitting the debt ceiling and repeating all the way up to the `line` limit. This function will allow governance to control the velocity at which the actual debt ceiling is able to increase.

If for any reason the DC-IAM module is misbehaving (e.g. our ttl time period or upper boundary is too inflexible), it will be possible to bypass it through an executive vote where governance can also vote to skip the delay in the GSM.


### MIP27c7 DC-IAM Onboarding of Collateral Types

The onboarding of collateral types into the DC-IAM will require independent executive votes whereby the values described above (MIP27c1 Definitions) will need to be confirmed by Governance. It is expected that the community will want collateral types to have a track record before we hand DC control to the IAM.


### MIP27c8 Licensing
[AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)

