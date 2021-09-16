# MIP 54: DssVest

## Preamble

```
MIP#: 54
Title: DssVest
Author(s): Derek Flossman, Brian McMichael
Contributors: None
Tags: technical
Type: Technical
Status: Accepted
Date Proposed: 2021-05-12
Date Ratified: 2021-06-28
Dependencies: n/a
Replaces: n/a
License: AGPL3+
```

## Sentence Summary

DssVest is a module that automates token vesting once the vesting plan has been approved by Governance. 

## Paragraph Summary

This module allows scheduling, cliff vesting, specification of vesting period as well as third-party revocation. The plan variables must be specified by the party submitting their proposal to Governance. Once the vesting cliff has been reached it puts the user in control of redeeming their tokens without any third-party interaction. DssVest also supports a number of vesting variants, including; minting MKR, minting DAI via vat.suck as well as paying out pre-deposited tokens.

## Motivation

* A safe and secure mechanism to provide protocol contributors with MKR incentives
* Reduce future Governance overhead to a minimum
* Enable team facilitators to manage/remove token bonuses themselves when team members leave
* Promote transparency by making it easier to keep track of outstanding MKR mint amounts
* Enable independent user control once cliff dates have been reached

The following gives an explanation of the module interactions and functionality:

## DssVest Specifications:

### DssVest Setup and Variables:

* DssVest allows a recipient to have a vesting start date and an end date
* DssVest will be initiated in a governance executive
* The starting date for a DssVest Award can be back-dated if necessary
* Variables in DssVest include: 
    * `_usr` : The plan beneficiary/recipient
    * `_tot` : The total amount of the vesting plan, in token units
        * Ex 100 MKR = `100 * 10**18`
    * `_bgn` : A unix-timestamp of the plan start date
    * `_tau` : The duration of the vesting plan (in seconds)
    * `_clf` : The cliff period, in which tokens are accrued but not payable. (in seconds)
    * `_mgr` : (Optional) The address of an authorized manager. This address has permission to remove the vesting plan when the contributor leaves the project
        * Note: auth users on this contract always have the ability to `yank` a vesting contract

### DssVest Interaction:

* The following user interactions are possible with DssVest:
    * `vest(_id)`: The vesting plan participant calls `vest(id)` after the cliff period to pay out accrued and unpaid tokens
    * `move(_id, _dst)` : The vesting plan participant can transfer their contract `_id` control and ownership to another address `_dst`
    * `unpaid(_id) returns (amt)` : Returns the amount of accrued, vested, unpaid tokens
    * `accrued(_id) returns (amt)` : Returns the amount of tokens that have accrued from the beginning of the plan to the current block
    * `valid(_id) returns (bool)` : Returns true if the plan id is valid and has not been claimed or yanked before the cliff
    * `yank(_id)` : An authorized user (ex. governance) of the vesting contract, or an optional plan manager, can `yank` a vesting contract. If the contract is yanked prior to the plan cliff, no funds will be paid out. If a plan is yanked after the contract cliff period has ended, new accruals will cease and the participant will be able to call vest to claim any vested funds
    * `yank(_id, _end)` : Allows governance to schedule a point in the future to end the vest. Used for planned offboarding of contributors

### Optional Vesting Cliff:

* If a cliff is included, it will not be possible for the recipient to receive any award until the timestamp of the cliff is reached
* Once the cliff date is reached, only the recipient can call `vest` through a UI or Etherscan

### Authorization:

* DssVest will be managed by an operator
* The operator will include the core unit multisig and Governance
* There is a function called `yank` to remove a recipient from being eligible for awards
* Both the multisig and Governance will be able to `yank` a recipient’s award - i.e. remove a recipient from the award they are due in the event that they e.g. leave the team
* The multisig will be capable of removing a recipient without the need for approval from governance
* The multisig can only `yank`, it cannot create new recipients and/or awards. These must be approved solely by Governance

### Recipient Awards:

* Token reward before the cliff equals zero. Once the cliff is  reached, the recipient will be entitled to claim the cliff amount
* Following the cliff being reached, streaming rewards will be linearly accrued across the remaining vesting period. This will be calculated from block-to-block
* As per the above point, it is up to the recipient when and at which interval they wish to claim their tokens
* Awards are minted only at the point at which they are redeemed

### Minting:

* MKR will be minted at the time a user calls `vest`. This function calls the contract to redeem the MKR award available to them at that block. As stated above, this will be calculated from block-to-block
* If a recipient wishes to change their address, they will be able to specify a new recipient address by calling the `move` function
* Every recipient will have an on-chain  ID from which DssVest will emit an Award ID so that users can scan events to see what is available to them for transparency
* Once the vesting period ends and the streaming award is over, the Award ID will be removed from the DssVest module

### Transparency:

* Each award is represented with an ID and can be tracked as an ID to award mapping
* The contract includes an `unpaid` function so anyone can take a look at it and see what the unpaid amount is on that contract
* This is an arbitrary token vesting contract, not specific to MKR, and can easily be adapted for any token

### Removing Awards:

* In the instance an award is yanked before it has vested, it will not be possible to claim any reward
* In the instance an award is yanked after an award has vested, and is now linearly accruring block-by-block, it will only vest up to the timestamp at which it was cancelled. The user will then be able to claim up to that timestamp

### Resources:

* Github [makerdao/dss-vest](https://github.com/makerdao/dss-vest)

---
### Next Steps:

* MIP Governance process
* Contract audits
* Expectation management: secondary importance relative to core protocol contracts/collateral onboarding
