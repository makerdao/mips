# MIP10c19-SP1: Update Oracle Expiration Time for All Oracles

## Preamble

```
MIP10c19-SP#: 1
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Status: Formal Submission
Date Proposed: 2022-05-17
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip10c19-sp1-update-oracle-expiration-time-for-all-oracles/15236
```

## Specification

### Abstract

The frequency of Oracle Medianizer updates is a function of the spread and expiration parameters. The Oracle Core Unit’s analysis of Oracle costs found that the expiration timer accounted for a significant proportion of Medianizer updates relative to spread. A generous reduction of Oracle costs can be achieved by extending the expiration time from 15,500 seconds to 24 hours. If passed this proposal will set the default Oracle expiration time in the Relayer configuration to 24 hours (86,400 seconds)

### Introduction

The Oracle Core Unit has spent a significant amount of resources investigating how to reduce the costs of operating the Oracles. Various approaches are being evaluated. Among these is an increase in the Oracle expiration time parameter to 24 hours.

Behaviorally, the Oracle expiration time parameter is meant to serve as a heartbeat for on-chain smart contracts to recognize when an Oracle has gone offline. However, since this parameter was an offline parameter and not an on-chain value in the Medianizer smart contract, no Oracle consumers have implemented a check for this heartbeat.

### Configuration Change

```solidity
Oracle Expiration Time: 15500 (s) -> 86400 (s)
```

### Impact Analysis

Modifying the expiration time requires no implementation changes, neither on-chain nor off-chain. It simply requires updating the value in a configuration file utilized by the Oracle Relayer clients. This parameter change is considered low risk from a technical perspective.

As noted above, this parameter’s purpose as a heartbeat is almost vestigial in nature as it is not used by any Oracle consumer, including the Maker Protocol. Therefore, this parameter change is considered low risk from a behavioral perspective.

From data sampled between June 1, 2021 and December 31, 2021, setting the oracle expiration time parameter to 24 hours reduced costs on average by 62% for Oracle Medianizer updates. Note that the scope of this gas cost reduction is exclusively in reference to Oracle Medianizer updates and does not include Oracle Security Module, Spotter, and LP Oracle updates. 

### Supporting Data

These visualizations illustrate the cost reduction for the ETH/USD and BTC/USD Oracle Medianizers for various expiration times. The complete set of raw data and charts can be found below:

[https://docs.google.com/spreadsheets/d/1iHm1TfoPHeX-q7CsIrjc4EmHqwZ9mmtQCmCtEls-o8Y/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1iHm1TfoPHeX-q7CsIrjc4EmHqwZ9mmtQCmCtEls-o8Y/edit?usp=sharing)

![](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c19/supporting_materials/SP1/0.png)
*Estimated BTC/USD Oracle Medianizer gas usage for various Expiration Times*

![](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c19/supporting_materials/SP1/1.png)
*Proportion of BTC/USD Oracle Medianizer Updates triggered by Expiration (red) vs Spread (blue)*

![](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c19/supporting_materials/SP1/2.png)
*Percentage Gas Reduction for different Expiration Times for the BTC/USD Oracle Medianizer*

![](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c19/supporting_materials/SP1/3.png)
*Estimated ETH/USD Oracle Medianizer gas usage for various Expiration Times*

![](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c19/supporting_materials/SP1/4.png)
*Proportion of ETH/USD Oracle Medianizer Updates triggered by Expiration (red) vs Spread (blue)*

![](https://github.com/makerdao/mips/blob/master/MIP10/MIP10c19/supporting_materials/SP1/5.png)
*Percentage Gas Reduction for different Expiration Times for the ETH/USD Oracle Medianizer*

### **Changelog**
***
- Update Relayer Configuration [https://github.com/chronicleprotocol/oracles/blob/master/omnia/config/relayer.conf](https://github.com/chronicleprotocol/oracles/blob/master/omnia/config/relayer.conf)