# MIP44: Reward Join Adapter (`RewardJoin`)

## Preamble
```
MIP#: 44
Title: Reward Join Adapter (`RewardJoin`)
Author(s): Alexis
Contributors: n/a
Type: Technical
Status: Conception
Date Proposed: 2021-01-24
Date Ratified: <yyyy-mm-dd>
Dependencies: n/a
Replaces: n/a
License: AGPL3+
```
## References

- The proposed [RewardJoin](https://github.com/alexisgayte/dss-reward-join) implementation

## Sentence summary

MIP44 proposes a generic vault solution for all tokens with reward.

## Paragraph summary

MIP44 is a generic vault solution which can by applied to any tokens with reward.

At the difference of cropJoin, the interface is generic and work exactly as a normal join.  
It is less specific but it works with any vault independently of the reward.
Therefore, It can be applied to any uniswap pair as we don't know which one will be the next rewarded pool.  
If we want to use the current cropJoin implementation as far as I am aware of, Maker will be forced to deploy a specific vault everytime the uniswap vote a new rewarded pool and stop it when the reward end.

### Probably not an MIP but more an addon on the Uniswap MIPs
I am not too sure how to formalize it but I believe this is not a proper MIP but a complement to the uniswap vault creation.

###How does it work?

Instead of redistributing UNI to share holder (Which is the difficult part that cropJoin deal with) we trade in UNI with fees. 
The contract allows the withdrawal of the bonus token, which is sent to a delegator.  
Governance can turn the fees to 0% and sell UNI instead.

As said this solution is probably less specific than cropJoin but allow more flexibility.

The delegator can be built after as the UNI will be inside the contract.

## Component summary

**MIP44c2: Reward Join:** 

**MIP44c2: Parameter:** list of parameter for the contract

**MIP44c2: Funtions:** list of function accessible from the contract

**MIP44c2: join():** list of function accessible from the contract

**MIP44c2: exit():** list of function accessible from the contract

**MIP44c2: harvest():** list of function accessible from the contract

**MIP44c1: Proposed code:** contains snippet of proposed implementation.

**MIP44c2: Test cases:** lists existing test cases, including integration tests

**MIP44c3: Security considerations:** comments on the security implications.

**MIP44c6: Licensing:** states the license under which the proposal and code are distributed.


## Motivation

Currently we use a normal join, for all uniswap tokens. for example [UNI-V2-ETH-USDT](https://forum.makerdao.com/t/uni-v2-eth-usdt-erc20-token-smart-contract-technical-assessment/6231) 

```
-Can use existing MCD collateral type adapter?
Partially, the standard GemJoin adapter 1 works if you ignore rewards. A custom gem join adapter is required to distribute UNI rewards.
```
Here is the issue if we don't allow the join contract to withdraw UNI right now, all uni token will be lost for ever.

While it is probably less interesting for user than deploying a cropJoin contract, it allows a rapid and effort-less management for makerdao.

My understanding is that both contracts have a different value while the normal uniswap vault can stay up with this join, a new cropjoin for the same pair can be deployed.

The join is 100% compatible with the existing system and it is also as gas efficient for the holder as a normal join.

It can be deploying before the UNI reward is voted, doesn't need any switch from the user.

## Specification

### MIP44a1: Reward Join

the Join and the exit are exactly the same as a normal join

### MIP44a2: Parameter
one parameter:
 - bonus_delegator
 
### MIP44a3: Funtions

3 functions:
 - join(address guy, uint256 wad) 
 - exit(address guy, uint256 wad)
 
 - harvest()

### MIP44a4: join()

it is exactly the normal join

### MIP44a5: exit()

it is exactly the normal exit

### MIP44a6: harvest()

 * harvest is behind an auth
 * harvest can be called from an authenticated contract
 * harvest will stop if no delegator contrat (0 address) is set up.
 * harvest will move the UNI/Bonus token to delegator contract which will sell/store/whatever we want to do with the token.

### MIP44a7: Proposed code

[rewardJoin](https://github.com/alexisgayte/dss-reward-join/blob/main/src/RewardJoin.sol)

### MIP44a8: Test cases

[rewardJoin test](https://github.com/alexisgayte/dss-reward-join/blob/main/src/RewardJoin.t.sol)

### MIP44c9: Security considerations

The join is a sensible part of maker as it hold the token, however the harvest is behind an auth and manipulate only UNI.
The risky part will be when we deploy the contract that call harvest and the delegator.

### MIP44c10: Licensing
   - [AGPL3+](https://www.gnu.org/licenses/agpl-3.0.en.html)
