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
**[MIP10c3-Subproposal-Template.md](MIP10c3-Subproposal-Template.md)**  
**[MIP10c4-Subproposal-Template.md](MIP10c4-Subproposal-Template.md)**
**[MIP10c6-Subproposal-Template.md](MIP10c6-Subproposal-Template.md)**
**[MIP10c7-Subproposal-Template.md](MIP10c7-Subproposal-Template.md)**

## Sentence Summary

MIP10 defines how oracles are onboarded, offboarded and managed in order to support the Maker Protocol.

## Paragraph Summary

This proposal defines the processes for onboarding, offboarding and managing Oracles. This encompasses a diverse array of components. Beginning with selecting Data Models for assets which are used for computing aggregated data into a canonical price. Continuing onward, processes are defined for adding and removing Feeds, agents who run Data Models and publish the resulting prices. Furthermore, it describes the governance procedures for creating new Oracles for new asset classes, whether they be collateral in the Maker Protocol or request by 3rd parties. Governance controls access to read prices from the Oracles through a whitelist, enabling MKR token holders to earn revenue through regulating whitelist access. It is the responsibility of governance to administer a host of risk parameters including the Oracle Seucrity Module Delay, Oracle Expiration Time, and Oracle Spread.

## Component Summary

### Oracles

**MIP10c1: Oracle Onboarding**  
Defines a process for onboarding new oracles into the Maker Protocol.

**MIP10c2: Process for Community Oracle Onboarding Request**
A process component that defines the method and template for the community to request a new Oracle.

**MIP10c3: Process to Onboard Oracle (OT)**  
A process component that defines the method and template for the Oracle Team to onboard a new Oracle.

**MIP10c4: Process to Offboard Oracle**  
A process component that defines the method and template to offboard an Oracle in the case it has become obsolete or otherwise undesireable.

**MIP10c5: List of Active Oracles**
A list component that is kept-up-to-date with the currently active Oracles and their properties.

**MIP10c6: Process for Community Data Model Update Request**

**MIP10c7: Process to Update Oracle Data Model (OT)**
A process component that defines the method and template to update the Data Model of an Oracle.

**MIP10c8: List of Active Oracle Data Models**  
A list component that is kept up-to-date with the currently active Oracle Data Models.

**MIP10c9: Process to Whitelist Oracle Access**
A process component that defines the method and template to whitelist access for a specific Oracle.

**MIP10c10: Process to Remove Oracle Access**
A process component that defines the method and template to remove whitelist access for a specific Oracle.

**MIP10c11: List of Oracle Whitelists Registry**
A list component that is kept up-to-date with the whitelist for each Oracle.

### Feeds:

**MIP10c12: Process to Appoint Dark Feed**
A process component that defines the method and template to appoint a Dark Feed.

**MIP10c13: Process to Appoint Light Feed**
A process component that defines the method and template to appoint a Light Feed.

**MIP10c14: Process to Remove Feed**
A process component that defines the method and template to remove a Feed.

**MIP10c15: List of Feeds Registry**
A list component that is kept up-to-date with the current Feeds.

**MIP10c16: Process to Update Feed Stipend**
A process component that defines the method and template to update the Feed Stipend.

### Oracle Parameters:

**MIP10c17: Process to Update Oracle Access Fee**
A process component that defines the method and template to update the Oracle Access Fee.

**MIP10c18: Process to Update Oracle Expiration Time**
A process component that defines the method and template to update the Oracle Expiration Time.

**MIP10c19: Process to Update Oracle Security Module Delay**
A process component that defines the method and template to update the Oracle Security Module Delay.

**MIP10c20: Process to Update Oracle Spread**
A process component that defines the method and template to update the Oracle Spread.

## Motivation

In the Maker Protocol, every collateral type has a corresponding Oracle that publishes a reference price that the protocol utilizes. Therefore, the Oracle requirements must be laid out in detail for the collateral onboarding process. Governance may also choose to create Oracles for non-collateral assets for use by 3rd parties.

## Specification / Proposal Details

### MIP10c1: Oracle Onboarding

**The Oracle Onboarding process is as follows:**

1. Oracle Team finds and select data sources
    - Exchange options
    - Pair selection
2. The Oracle Team(s) select an appropriate Data Model (a model detailing how the data is processed to get the desired output) based on the specific asset type and what data is available.
3. The Oracle Team(s) complete the following technical deliverables:
    - Update price querying tool(s) to pull from the selected data sources and implement the Data Model for that specific asset
    - Update the Oracle client(s) to integrate the latest version of the price querying tool(s) and incorporate technical changes
4. Deploy new instances of previously audited smart contracts for the asset type. This includes two smart contracts:
    - Medianizer
    - Oracle Security Module (OSM) - only required for collateral assets
5. Notify the Feeds to update their Oracle clients 
    - Alert sent out on the official Keybase channel
    - Timeline: 1 to 2 weeks to monitor deployment and confirm stability
6. The Oracle Team publishes the Medianizer and OSM smart contract addresses in the onboarding proposal (MIP10c3) itself.

---

### MIP10c2: Process for Community Oracle Onboarding Request

Used by the community to signal demand for onboarding new Oracles for non-collateral assets. Typically this will be a 3rd party with a desire to consume the requested Oracle's data. Requests are reviewed by the Oracle Team(s) who then choose whether to take on the work required to submit MIP10c3 and continue the Oracle Onboarding process.

Processes to onboard Oracles for new collateral types are handled through the collateral onboarding process in MIP#####.

MIP10c2 subproposals must use the template located at **[MIP10c2-Subproposal-Template.md](MIP10c2-Subproposal-Template.md)**.

---

### MIP10c3: Process to Onboard Oracle (OT)

Used by the Oracle Team(s) to onboard new Oracles for collateral assets or assets requested by 3rd parties. This component compels the Feeds to update their Data Models in preparation for deploying a new Oracle. 

MIP10c3 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days
- **Update Interval:** Feeds have a period of 1 week during which to upgrade their systems to include the Oracle type and Data Model(s). Any Feeds not upgraded during this interval are presumed to be in breach of their responsibilities and potentially subject to removal.

MIP10c3 subproposals must use the template located at **[MIP10c3-Subproposal-Template.md](MIP10c3-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.
    
---

### MIP10c4: Process to Offboard Oracle

Allow anyone to remove an Oracle using a MIP10c4 subproposal. MIP10c4 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days

MIP10c4 subproposals must use the template located at **[MIP10c4-Subproposal-Template.md](MIP10c4-Subproposal-Template.md)**. This template is considered ratified once this MIP moves to Accepted status.

--- 

### MIP10c5: List of Active Oracles
A canonical record of the Oracles in active operation by the Maker Protocol. 
MIP10c5 must be updated when an Oracle is onboarded or offboarded by governance.

---

### MIP10c6: Process for Community Data Model Update Request

---

### MIP10c7: Process to Update Oracle Data Model (OT)


---

### MIP10c8: List of Active Oracle Data Models

MIP10c7 is a List Component that serves as a canonical record of the ratified Data Models actively being used by the Oracles.
MIP10c7 must be updated when a Data Model is ratified by governance.

**Oracle Data Model Template Explanation:**
- **Source:** The data source for the Oracle Feed
- **Asset Pair:** The asset pair is a price quote of the exchange rate for two different assets traded on the market.
- **Quorum:** The number of Feeds you need to reach a consensus on a price.
- **Feed Model:**  Model for how a Feed processes all sourced data into a singular price
- **Oracle Model:** Model for how an Oracle processes all Feed data into a singular price
- **Example Template**:

| Source        |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :----: | :---------: | :----------: |
| <data source> |   <param>     |  <#>   |   <model>   |    <model>   |

**Active Oracle Data Models:**

**BAT/USD Data Model**

    |    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
    | :------------ | :------------ | :----: | :---------: | :----------: |
    |   Binance     |    BAT/BTC    |   13   |    Median   |    Median    |
    |   Bittrex     |    BAT/BTC    |
    |   Coinbase    |    BAT/USDC   |
    |   Upbit       |    BAT/KRW    |

**BTC/USD Data Model**

|    Source     |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :---: | :---------: | :----------: |
|   Binance     |    BTC/USDT   |   13  |    Median   |    Median    |
|   BitFinex    |    BTC/USDT   |
|   Bitstamp    |    BTC/USD    |
|   Bittrex     |    BTC/USD    | 
|   Coinbase    |    BTC/USD    |
|   Gemini      |    BTC/USD    |
|   Kraken      |    BTC/USD    |

**ETH/BTC Data Model**

|    Source     |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
| :------------ | :------------ | :---: | :---------: | :----------: |
|   Binance     |    ETH/BTC    |   13  |    Median   |    Median    |
|   BitFinex    |    ETH/BTC    |
|   Coinbase    |    ETH/BTC    |
|   Huobi       |    ETH/BTC    |
|   Kraken      |    ETH/BTC    |
|   Poloniex    |    ETH/BTC    | 

**ETH/USD Data Model**

    |    Source     |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :------------ | :------------ | :---: | :---------: | :----------: |
    |   Binance     |    ETH/BTC    |   13  |    Median   |    Median    |
    |   Bitstamp    |    ETH/USD    |
    |   Coinbase    |    ETH/USD    |
    |   Gemini      |    ETH/USD    |
    |   Kraken      |    ETH/USD    |


**USDC/USD Data Model**

    |    Source     |  Asset Pair   | Quorum | Feed Model  | Oracle Model |
    | :------------ | :-----------: | :----: | :---------: | :----------: |
    |      1        |      N/A      |   N/A  |     N/A     |      N/A     |

---

### MIP10c9: Process to Whitelist Oracle Access

---

### MIP10c10: Process to Remove Oracle Access

---

### MIP10c11: List of Oracle Whitelists Registry
A canonical record of the the whitelist for each Oracle.
MIP10c10 must be updated when an entity is added or removed from the whitelist for an Oracle.

---

### MIP10c12: Process to Appoint Dark Feed

---

### MIP10c13: Process to Appoint Light Feed

---

### MIP10c14: Process to Remove Feed

---

### MIP10c15: List of Feeds Registry**

---

### MIP10c16: Process to Update Feed Stipend**

---

### MIP10c167: Process to Update Oracle Access Fee

---

### MIP10c18: Process to Update Oracle Expiration Time

---

### MIP10c19: Process to Update Oracle Security Module Delay

---

### MIP10c20: Process to Update Oracle Spread

---

