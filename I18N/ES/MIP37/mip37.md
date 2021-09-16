# MIP37: Static Reserve For Governance

## Preamble

```
MIP#: 37
Title: Static Reserve For Governance
Author(s):  Alexis
Type: Technical
Status: Withdrawn
Date Proposed: 2021-01-15
Dependencies: None
Replaces: Nothing
```

## Sentence Summary
MIP37 defines a static reserve which can receive any tokens from anyone *as any contract* and allow the Governance to withdraw them.

## Paragraph Summary

Following the [MIP Discussion](https://forum.makerdao.com/t/mip34-keg-streaming-payments-module/6013/6) and the long time on-going discussion about having a reserve, 
this MIP formalises the need for the governance to have a proper reserve to store Dai or any tokens.

Currently, makerDao doesn't have any contract where tokens can be stored/sent/withdrew. This MIP will try to fix it.

This simple contract will allow governance to receive tokens/fees/payment from other parties or side component such as PSM, vow etc ... 

This contract gives to the governance the only functionality to withdraw tokens previously sent.


## Component Summary

**MIP37c1: Parameter Definitions**

**MIP37c2: Function**

**MIP37c3: Authorisation**

**MIP37c4: Static Reserve For Governance**

**MIP37c5: Proposed Code**

**MIP37c6: Test Cases**

**MIP37c7: Spell**

**MIP37c8: Security Considerations**   

**MIP37c9: Licensing**  

## Motivation
As simple as it is, currently makerDao doesn't have any place where tokens can be stored/sent/withdrew. As we move towards to the governance 
independence we need to have the ability to have some founding visibility. This founding must be independent of an eventual protocol issue which could bring the governance without the ability to either mint MKR or withdraw from the `wov` due to a negative Surplus Buffer.  

I would define this reserve as the current account. 
 
Also the Dao protocol cannot receive any tokens without passing via a debt position which is sent to the `vow`. 
It is how the PSM is currently sending fees, but by doing that we are also degrading the value of the fees as it goes to the future income from the repayment of the debt. 
In another word if the Surplus Buffer is in negative position PSM fees or other types of income stream are assimilated to the Vaults interest fees. 
And fees from vaults are future income we only recover when all debts are paid which is never the case, they are **future income**.

Ideally we would like to send others income stream to a separate account. This simple contract will allow governance to have this functionality. 
Some of us might think that the Surplus Buffer is exactly this reserve. 
Well,   

1 . Surplus buffer is in case of shut down first at destination to the Dai owner, I believe the foundation will still need to pay for the current expense at least the time to close down everything.  
2 . Surplus buffer is not safe in case of bad liquidation the surplus can go negative, would governance allow withdrawing from a negative Surplus Buffer.  
3 . Surplus buffer is a **buffer** not a current account.

## Specification

### MIP37a1 Parameter Definitions
 - no parameter

### MIP37a2: Functions
there is only one function :
- `withdraw(address asset_, address recipient_, uint256 amount_) ` : to withdraw any tokens to an address for a certain amount. 

And `auth` functions :
- `rely(address usr)` 
- `deny(address usr)`

### MIP37a3 Authorisation

Only Governance or any authorized address set by Governance vote will be able to call `withdraw()`.


### MIP37a4: Static Reserve For Governance

* The Dai or any token inside the module can be withdraw by calling `withdraw(address asset_, address recipient_, uint256 amount_)`.  
main code :
```
    function withdraw(address asset_, address recipient_, uint256 amount_) external lock auth returns (uint256) {

        emit Withdraw(msg.sender, asset_, recipient_, amount_);

        require(GemAbstract(asset_).approve(recipient_, amount_), "StaticReserve/failed-approve");
        require(GemAbstract(asset_).transfer(recipient_, amount_), "StaticReserve/failed-transfer");

        return amount_;
    }
```

* re-entrance check in case of malicious approve/transfer from malicious token we try to withdraw.

Well, that is it.

### MIP37a5: Proposed Code

[dss-srg](https://github.com/alexisgayte/dss-srg/blob/main/src/DssSrg.sol)

### MIP37a6: Test Cases

[dss-srg test](https://github.com/alexisgayte/dss-msm/blob/main/src/DssSrg.t.sol)

### MIP37a7: Spell
[StaticReserveSpell](https://github.com/alexisgayte/dss-msm/blob/main/src/spell/StaticReserveSpell.sol)

### MIP37a8: Security Considerations

Low level of contract risk, as it is not connected to the system and there is no interaction with outside contract, 
except the token via `approve` and `transfer`. However as any token transaction there is a risk to call exotic token contract.

The maximum risk is the lost of the reserve inside the contract via key lost or what so ever.

### MIP37a9: Licensing
[AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
