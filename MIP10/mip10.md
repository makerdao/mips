# MIP10: Oracle Management


## Preamble

    MIP#: 10
    Title: Oracle Management 
    Author(s): Niklas Kunkel (@NiklasKunkel), Charles St.Louis (@CPSTL), Rune Christensen (@Rune23)
    Type: Process
    Status: <Assigned by MIP Editor>
    Date Proposed: 2020-04-06
    Dependencies: n/a
    Replaces: n/a
    

### Components
**MIP10c1:** Oracle Onboarding  
**MIP10c2:** List of Active Oracle Data Models  
**MIP10c3:** Process for onboarding  
**MIP10c4:** Process for offboarding  

### References
No referenced materials.

## Summary

This proposal defines the process for onboarding, offboarding and managing oracles.

## Motivation

In the Maker Protocol, every collateral type has a corresponding Oracle that publishes a reference price that the protocol utilizes. Therefore, the Oracle requirements must be laid out in detail for the collateral onboarding process. Governance may also choose to create Oracles for non-collateral assets for use by 3rd parties.

## Specification / Proposal Details

### MIP10c1: Oracle Onboarding

**The Oracle Onboarding process is as follows:**

1. Oracle Team(s) find and select data sources
    - Exchange options
    - Pair selection
2. The Oracle Team(s) select an appropriate Data Model (a model detailing how the data is processed to get the desired output) based on the specific asset type and what data is available.
3. The Oracle Team(s) complete the following technical deliverables:
    - Update price querying tool(s) to pull from the selected data sources and implement the Data Model for that specific asset
    - Update the Oracle client(s) to integrate the latest version of the price querying tool(s) and incorporate technical changes
4. Deploy new instances of previously audited smart contracts for the asset type. This includes two smart contracts:
    - Medianizer
    - Oracle Security Module (OSM) 
5. Notify the Feeds to update their Oracle clients 
    - Alert sent out on the official Keybase channel
    - Timeline: 1 to 2 weeks to monitor deployment and confirm stability
6. The Oracle Team publishes the Medianizer and OSM smart contract addresses in the onboarding proposal (MIP10c3) itself.

---

### MIP10c2: List of Active Oracle Data Models

**Oracle Data Model Template Explanation:**
- **Source:** The data source for the Oracle Feed
- **Asset Pair:** The asset pair is a price quote of the exchange rate for two different assets traded on the market.
- **Quorum:** The number of Feeds you need to reach a consensus on a price.
- **Feed Model:**  Model for how a Feed processes all sourced data into a singular price
- **Oracle Model:** Model for how an Oracle processes all Feed data into a singular price
- **Example Template**:

| Source |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :----: | :---------: | :----------: |
| < data source >  |   < param >     |  < # >   |   < mode >   |    < model >    |

**Active Oracle Data Models:**

**ETH/USD Data Model**

    |    Source     |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :------------ | :------------ | :---: | :---------: | :----------: |
    |   Binance     |    ETH/BTC    |   13  |    Median   |    Median    |
    |   BitFinex    |    ETH/USDT   |
    |   Bitstamp    |    ETH/USD    |
    |   Coinbase    |    ETH/USD    |
    |   Gemini      |    ETH/USD    |
    |   Kraken      |    ETH/USD    |

**BAT/USD Data Model**

    |    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
    | :------------ | :------------ | :----: | :---------: | :----------: |
    |   Binance     |    BAT/BTC    |   13   |    Median   |    Median    |
    |   Bittrex     |    BAT/BTC    |
    |   Coinbase    |    BAT/USDC   |
    |   Upbit       |    BAT/KRW    |

**USDC/USD Data Model**

    |    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
    | :------------ | :-----------: | :----: | :---------: | :----------: |
    |      1        |      N/A      |   N/A  |     N/A     |      N/A     |

---
### MIP10c3: Process for Onboarding


This process MIP component is used by the Oracle Team(s) to onboard new oracles for collateral assets as well as compel the Feeds to update their Data Models in preparation for deploying a new Oracle.

- **Feedback Period:** 0 days
- **Frozen period:** 0 days
- **Update Interval:** Feeds have a period of 2 weeks during which to upgrade their systems to include the Oracle type and data models. Any Feeds not upgraded during this interval are presumed to be in breach of their responsibilities and potentially subject to removal.

**Subproposal Template:**

    Introduction
    
    - Oracle Team Name:
    - Oracle Data model Name:
    - Oracle Data Model: 
    
    |    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
    | :------------ | :------------ | :----: | :---------: | :----------: |
    | <data source> |   <param>     |  <#>   |   <model>   |    <model    |
    
    - Date of Proposed Inclusion: <date created on, in (yyyy-mm-dd) format>
    
    - Supported Tools: 
        - <tool name> <version commit hash> <link to github repo>
    	 
    
    Specification
    
    - Communication Medium(s)
    	- Oracle Team Posting the MIP on the Maker Forum
    	- Oracle Team posting the MIP in the Keybase Feeds channel
    
    - Update Interval
    	- Feeds have a period of 2 weeks during which to upgrade their systems to include the Oracle type and data models. Any Feeds not upgraded during this interval are presumed to be in breach of their responsibilities and potentially subject to removal.
    
---

### MIP10c4: Process for Offboarding

If an Oracle has been made obsolete, anyone can make a proposal to remove it, in order to reduce unnecessary costs such as gas fees. 
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days
- **Subproposal Template:**
```

Introduction
    
    - Oracle Team Name:  
    - Oracle Type Name: 
    - Date of Proposed Removal: <date created on, in (yyyy-mm-dd) format>
    
Specification
        
    - Removal Motivation:
        - An explanation behind the motivation for the removal of the Oracle. Possible reasons include:
                - An asset ceasing to exist 
                - Removal of a collateral type from the Maker Protocol
                - Oracle not being utilized by neither the Maker Protocol nor a 3rd party
                - Failure to upgrade their systems to include an Oracle type and data models.
    				
    - Relevant Information:
    	-  Links to evidence further backing the motivation behind the removal of the Oracle

```
---
