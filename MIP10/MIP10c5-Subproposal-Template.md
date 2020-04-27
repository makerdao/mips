# MIP10c5: Subproposal for List of Active Oracles

## Preamble
```
MIP10c5-SP#: 
Author(s):
Contributors:
Type: List Component
Status:
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

|   Oracle Name  |      Type     | Is Collateral? | Feeds | Quorum |  Data Model | Oracle Spread (%) | Oracle Expiration (s) |  Medianizer  |     OSM     | OSM Delay (s) |
| :------------- | :------------ | :------------- |:----- | :----- |:----------- | :---------------- | :-------------------- | :----------- | :---------- | :------------ |
|    < name >    |    < data >   |    < bool >    | < # > |  < # > |  < model >  |       < # >       |          < # >        |  < address > | < address > |     < # >     |

### Active Oracle List

|      Oracle    |       Type    | Is Collateral? | Feeds | Quorum |  Data Model | Oracle Spread (%) | Oracle Expiration (s) |  Medianizer  |     OSM     | OSM Delay (s) |
| :------------- | :------------ | :------------- |:----- | :----- |:----------- | :---------------- | :-------------------- | :----------- | :---------- | :------------ |
|     BAT/USD    |     Price     |       Yes      |  20   |   13   |   BAT/USD   |          1        |          15500        | 0x18B4633D6E39870f398597f3c1bA8c4A41294966 | 0xB4eb54AF9Cc7882DF0121d26c5b97E802915ABe6 | 3600 |
|     BTC/USD    |     Price     |       No       |  20   |   13   |   BTC/USD   |         0.5       |          15500        | 0xe0F30cb149fAADC7247E953746Be9BbBB6B5751f | | N/A |
|     ETH/BTC    |     Price     |       No       |  20   |   13   |   ETH/BTC   |         0.5       |          15500        | 0x81A679f98b63B3dDf2F17CB5619f4d6775b3c5ED | | N/A |
|     ETH/USD    |     Price     |       Yes      |  20   |   13   |   ETH/USD   |         0.5       |          15500        | 0x64DE91F5A373Cd4c28de3600cB34C7C6cE410C85 | 0x81FE72B5A8d1A857d176C3E7d5Bd2679A9B85763 | 3600 |
|     USDC/USD   |     Price     |       Yes      |  N/A  |  N/A   |   USDC/USD  |         N/A       |           N/A         | 0x77b68899b99b686F415d074278a9a16b336085A0 | | N/A |