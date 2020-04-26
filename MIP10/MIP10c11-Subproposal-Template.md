# MIP10c11: Subproposal for List of Oracle Whitelists

## Preamble
```
MIP10c11-SP#: 
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: List Component
Status: <proposed/accepted>
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
``` 

## Specification

### Glossary

- **Oracle Name:** The name of the Oracle that is indicative of the data is broadcasts
- **Type:** The type of data that this Oracle broadcasts
- **Collateral(?):** Is the Asset Pair a collateral type in the Maker Protocol
- **Feeds** The number of Feeds submitting prices to the Oracle
- **Quorum:** The number of Feeds needed to reach consensus on a price
- **Data Model:** The model that defines where data is sourced and how it is processed
- **Oracle Spread:**  The maximum difference in price before an Oracle price is updated
- **Oracle Expiration:** The maximum time interval before an Oracle price is updated
- **Medianizer:** The address of the Medianizer smart contract
- **OSM:** The address of the Oracle Security Module smart contract
- **OSM Delay** The amount of time before an Oracle price is utilized by the Maker Protocol


### Template Spec

**Oracle Name:** < name in MIP10c5 >    
**Oracle Classification:** <Medianizer/Oracle Security Module   
**Contract Address:**    
| Customer |  Date Joined   |   Email   | Fee (Dai) | Whitelisted Contract |           Origin            |
| :------- | :------------- | :-------- | :-------- | :------------------- | :-------------------------- |
| < name > | < yyyy-mm-dd > | < email > |   < # >   |     < address >      | < link to MIP10c3/MIP10c9 > |

### Oracle Whitelists

**Oracle Name:** BAT/USD    
**Oracle Classification:** Medianizer   
**Contract Address:** 0x18B4633D6E39870f398597f3c1bA8c4A41294966   
|     Customer   |  Date Joined   |   Email   | Fee (Dai) |             Whitelisted Contract           |           Origin            |
| :--------------| :------------- | :-------- | :-------- | :----------------------------------------- | :-------------------------- |
| Maker Protocol |   2019-11-18   |    N/A    |    N/A    | 0xB4eb54AF9Cc7882DF0121d26c5b97E802915ABe6 | [Spell](https://etherscan.io/address/0xf44113760c4f70afeeb412c63bc713b13e6e202e#code) |

**Oracle Name:** BAT/USD    
**Oracle Classification:** Oracle Security Module    
**Contract Address:** 0xB4eb54AF9Cc7882DF0121d26c5b97E802915ABe6   
|    Customer    |  Date Joined   |   Email   | Fee (Dai) |              Whitelisted Contract          |           Origin            |
| :------------- | :------------- | :-------- | :-------- | :----------------------------------------- | :-------------------------- |
| Maker Protocol |   2019-11-18   |     N/A   |     N/A   | 0x65C79fcB50Ca1594B025960e539eD7A9a6D434A3 | [Spell](https://etherscan.io/address/0xf44113760c4f70afeeb412c63bc713b13e6e202e#code) |

**Oracle Name:** BTC/USD    
**Oracle Classification:** Medianizer   
**Contract Address:** 0xe0F30cb149fAADC7247E953746Be9BbBB6B5751f   
|     Customer   |  Date Joined   |   Email   | Fee (Dai) |             Whitelisted Contract           |           Origin            |
| :--------------| :------------- | :-------- | :-------- | :----------------------------------------- | :-------------------------- |
|  Set Protocol  |   2020-04-25   |    N/A    |   ROMP    | 0xbf63446ecF3341e04c6569b226a57860B188edBc | [Governance Vote](https://vote.makerdao.com/polling-proposal/qmealoapl7e1yzabsobg9wckj3bs8hb8pgquc5jx7r8qpo) |
|      dYdX      |   2020-04-25   |    N/A    |   ROMP    | 0x538038E526517680735568f9C5342c6E68bbDA12 | [Governance Vote](https://vote.makerdao.com/polling-proposal/qmealoapl7e1yzabsobg9wckj3bs8hb8pgquc5jx7r8qpo) |

**Oracle Name:** ETH/BTC   
**Oracle Classification:** Medianizer   
**Contract Address:** 0x81A679f98b63B3dDf2F17CB5619f4d6775b3c5ED   
|     Customer   |  Date Joined   |   Email   | Fee (Dai) |             Whitelisted Contract           |           Origin            |
| :--------------| :------------- | :-------- | :-------- | :----------------------------------------- | :-------------------------- |
|      tBTC      |   2020-04-25   |    N/A    |   ROMP    |                      TBD                   | [Governance Vote](https://vote.makerdao.com/polling-proposal/qmeymkw5rhenzsevpvnhequj9glvq6n5buzapyrvestcdg) |

**Oracle Name:** ETH/USD  
**Oracle Classification:** Medianizer   
**Contract Address:** 0x64DE91F5A373Cd4c28de3600cB34C7C6cE410C85   
|     Customer   |  Date Joined   |   Email   | Fee (Dai) |             Whitelisted Contract           |           Origin            |
| :--------------| :------------- | :-------- | :-------- | :----------------------------------------- | :-------------------------- |
| Maker Protocol |   2019-11-18   |    N/A    |    N/A    | 0x81FE72B5A8d1A857d176C3E7d5Bd2679A9B85763 | [Spell](https://etherscan.io/address/0xf44113760c4f70afeeb412c63bc713b13e6e202e#code) |
|  Set Protocol  |   2020-04-25   |    N/A    |   ROMP    | 0x97C3e595e8f80169266B5534e4d7A1bB58BB45ab | [Governance Vote](https://vote.makerdao.com/polling-proposal/qmzfpgr8hwabpycsq6vnnzp2cebh8uzxjpor8rtzenhkop) |

**Oracle Name:** ETH/USD  
**Oracle Classification:** Oracle Security Module   
**Contract Address:** 0x81FE72B5A8d1A857d176C3E7d5Bd2679A9B85763   
|    Customer    |  Date Joined   |   Email   | Fee (Dai) |              Whitelisted Contract          |           Origin            |
| :------------- | :------------- | :-------- | :-------- | :----------------------------------------- | :-------------------------- |
| Maker Protocol |   2019-11-18   |     N/A   |     N/A   | 0x65C79fcB50Ca1594B025960e539eD7A9a6D434A3 | [Spell](https://etherscan.io/address/0xf44113760c4f70afeeb412c63bc713b13e6e202e#code) |