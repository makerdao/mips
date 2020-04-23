# MIP10: Oracle Management


## Preamble

    MIP#: 10
    Title: Oracle Management 
    Author(s): Niklas Kunkel (@NiklasKunkel), Charles St.Louis (@CPSTL), Rune Christensen (@Rune23)
    Type: Process
    Status: Request for Comments (RFC)
    Date Proposed: 2020-04-06
    Date Ratified: <yyyy-mm-dd>
    Dependencies: n/a
    Replaces: n/a
    

## References
No referenced materials.

## Sentence Summary

MIP10 defines how oracles are onboarded, offboarded and managed in order to support the collateral onboarding process.

## Paragraph Summary

This proposal defines the process for onboarding, offboarding and managing oracles.

## Component Summary

**MIP10c1: Oracle Onboarding**  
Defines a process for onboarding new oracles into the Maker Protocol.

**MIP10c2: List of Active Oracle Data Models**  
A list component that is kept up-to-date with the currently active oracle data models.

**MIP10c3: Process for onboarding**  
A process component that defines the method and template to be used to onboard new oracles for collateral assets.

**MIP10c4: Process for offboarding**  
A process component that defines the method and template to be used to offboard oracles in the case they have become obsolete or otherwise undesireable.

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
**Subproposal Template:** (link)
    
---

### MIP10c4: Process for Offboarding

If an Oracle has been made obsolete, anyone can make a proposal to remove it, in order to reduce unnecessary costs such as gas fees. 
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days
- **Subproposal Template:** (link)

---
