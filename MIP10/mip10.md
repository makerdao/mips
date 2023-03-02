# MIP10: Oracle Management

## Preamble

```
MIP#: 10
Title: Oracle Management
Author(s): Niklas Kunkel (@NiklasKunkel), Charles St.Louis (CPSTL), Rune Christensen (@Rune23)
Tags: process, oracles, mip-set, collateral-onboarding-mipset
Type: Process
Status: Obsolete
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Dependencies: n/a
Replaces: n/a
Ratification Poll URL:
Forum URL: https://forum.makerdao.com/t/mip17-weekly-actual-debt-ceiling-and-actual-risk-premium-adjustments/3021
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## References

**[MIP10c2-Subproposal-Template.md](MIP10c2-Subproposal-Template.md)**
**[MIP10c3-Subproposal-Template.md](MIP10c3-Subproposal-Template.md)**
**[MIP10c4-Subproposal-Template.md](MIP10c4-Subproposal-Template.md)**
**[MIP10c5-List-of-Active-Oracles.md](MIP10c5-List-of-Active-Oracles.md)**
**[MIP10c6-Subproposal-Template.md](MIP10c6-Subproposal-Template.md)**
**[MIP10c7-Subproposal-Template.md](MIP10c7-Subproposal-Template.md)**
**[MIP10c8-List-of-Oracle-Data-Models.md](MIP10c8-List-of-Oracle-Data-Models.md)**
**[MIP10c9-Subproposal-Template.md](MIP10c9-Subproposal-Template.md)**
**[MIP10c10-Subproposal-Template.md](MIP10c10-Subproposal-Template.md)**
**[MIP10c11-List-of-Oracle-Whitelists.md](MIP10c11-List-of-Oracle-Whitelists.md)**
**[MIP10c12-Subproposal-Template.md](MIP10c12-Subproposal-Template.md)**
**[MIP10c13-Subproposal-Template.md](MIP10c13-Subproposal-Template.md)**
**[MIP10c14-Subproposal-Template.md](MIP10c14-Subproposal-Template.md)**
**[MIP10c15-Subproposal-Template.md](MIP10c15-Subproposal-Template.md)**
**[MIP10c16-Subproposal-Template.md](MIP10c16-Subproposal-Template.md)**
**[MIP10c17-List-of-Feeds.md](MIP10c17-List-of-Feeds.md)**
**[MIP10c18-Subproposal-Template.md](MIP10c18-Subproposal-Template.md)**
**[MIP10c19-Subproposal-Template.md](MIP10c19-Subproposal-Template.md)**
**[MIP10c20-Subproposal-Template.md](MIP10c20-Subproposal-Template.md)**
**[MIP10c21-Subproposal-Template.md](MIP10c21-Subproposal-Template.md)**

## Sentence Summary

MIP10 defines how oracles are onboarded, offboarded and managed in order to support the Maker Protocol.

## Paragraph Summary

This proposal defines the processes for onboarding, offboarding and managing Oracles. This encompasses a diverse array of components. Beginning with selecting Data Models for assets which are used for computing aggregated data into a canonical price. Continuing onward, processes are defined for adding and removing Feeds, agents who run Data Models and publish the resulting prices. Furthermore, it describes the governance procedures for creating new Oracles for new asset classes, whether they be collateral in the Maker Protocol or request by 3rd parties. Governance controls access to read prices from the Oracles through a whitelist, enabling MKR token holders to earn revenue through regulating whitelist access. It is the responsibility of governance to administer a host of risk parameters including the Oracle Security Module Delay, Oracle Expiration Time, and Oracle Spread to ensure the proper operation of the Oracle infrastructure.

## Component Summary

### Oracles

**Description**
The Maker Protocol utilizes the Oracles to obtain a real-time stream of the price of the collateral assets. This price is utilized to ensure positions are sufficiently capitalized and liquidate positions below the collateralization ratio. It also limits the maximum amount of Dai a user can generate against their collateral. Given the widespread effects the Oracles have on the Maker Protocol, it is imperative that the Data Models used in their implementations are refined to mitigate risk and optimize performance. These Data Models define where data is sourced from and how it is filtered into a canonical price.

**MIP10c1: Oracle Onboarding (OT)**
Defines a process for onboarding new oracles into the Maker Protocol.

**MIP10c2: Process for Oracle Onboarding Request**
A process component that defines the method and template to request a new Oracle.

**MIP10c3: Process to Onboard Oracle (OT)**
A process component that defines the method and template for the Oracle Team to onboard a new Oracle.

**MIP10c4: Process to Offboard Oracle**
A process component that defines the method and template to offboard an Oracle in the case it has become obsolete or otherwise undesirable.

**MIP10c5: List of Active Oracles**
A list component that is kept-up-to-date with the currently active Oracles and their properties.

**MIP10c6: Process for Data Model Update Request**
A process component that defines the method and template to request to update a Data Model.

**MIP10c7: Process to Update Oracle Data Model (OT)**
A process component that defines the method and template for the Oracle Team to update the Data Model of an asset pair.

**MIP10c8: List of Oracle Data Models**
A list component that is kept up-to-date with the ratified Oracle Data Models.

### Whitelist

**Description**
The ability to read data from the Oracles is regulated by a whitelist. This enables awareness of who is using the Oracle, and how, which helps mitigate fallout from migrations. Additionally it empowers governance to monetize the Oracle infrastructure as a service, the proceeds of which are funneled to MKR holders to help offset the cost of maintaining the Oracle infrastructure.

**MIP10c9: Process to Whitelist Oracle Access**
A process component that defines the method and template to whitelist access for a specific Oracle.

**MIP10c10: Process to Remove Oracle Access**
A process component that defines the method and template to remove whitelist access for a specific Oracle.

**MIP10c11: List of Oracle Whitelists**
A list component that is kept up-to-date with the whitelist for each Oracle.

**MIP10c12: Process to Update Oracle Access Fee**
A process component that defines the method and template to update the Oracle Access Fee.

### Feeds:

**Description**
Feeds are bots run by individuals and organizations that submit data to the Oracles. There are two types of Feeds; Dark Feeds run by anonymous individuals, and Light Feeds run by public organizations. This hybrid model preserves the hardness properties of Dark Feeds but benefits from the reputation of Light Feeds who are stakeholders in the ecosystem and are effectively staking their reputation. Feeds are paid a monthly Feed Stipend for the service they provide that is determined by governance.

**MIP10c13: Process to Appoint Dark Feed**
A process component that defines the method and template to appoint a Dark Feed.

**MIP10c14: Process to Appoint Light Feed**
A process component that defines the method and template to appoint a Light Feed.

**MIP10c15: Process to Appoint Feed (OT)**
A process component that defines the method and template for the Oracle Team to appoint a Feed.

**MIP10c16: Process to Remove Feed**
A process component that defines the method and template to remove a Feed.

**MIP10c17: List of Feeds**
A list component that is kept up-to-date with the current Feeds.

**MIP10c18: Process to Update Feed Stipend**
A process component that defines the method and template to update the Feed Stipend.

### Oracle Parameters:

**Description**
The Oracle system has several parameters that determine how frequently the Oracles are updated. Updating more frequently leads to a more sensitive Oracle, at the expense of higher costs. The Oracle Security Module (OSM) is the watchdog between the Oracle and the Maker Protocol. It delays prices by a delay interval before the price is utilized by the Maker Protocol. This delay protects the Maker Protocol from Oracle attacks by enabling Governance to take emergency action during the delay period.

**MIP10c19: Process to Update Oracle Expiration Time**
A process component that defines the method and template to update the Oracle Expiration Time.

**MIP10c20: Process to Update Oracle Spread**
A process component that defines the method and template to update the Oracle Spread.

**MIP10c21: Process to Update Oracle Security Module Delay**
A process component that defines the method and template to update the Oracle Security Module Delay.

## Motivation

In the Maker Protocol, every collateral type has a corresponding Oracle that publishes a reference price that the protocol utilizes. Therefore, the Oracle requirements must be laid out in detail for the collateral onboarding process. Governance may also choose to create Oracles for non-collateral assets for use by 3rd parties.

## Specification / Proposal Details

### MIP10c1: Oracle Onboarding (OT)

**The Oracle Onboarding process is as follows:**
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days

1. An Oracle Team publishes the [MIP10c3-Subproposal-Template](MIP10c3-Subproposal-Template.md) to the Oracle section of the Maker Forum for community review as well as submitting a PR to the MIPs GitHub repo.
2. Feedback is incorporated into the [MIP10c3-Subproposal-Template](MIP10c3-Subproposal-Template.md) with changes logged in the changelog section. Changes are reflected both in the Forum thread as well as in the GitHub PR.
3. The Oracle Team submits a Polling Vote to the Governance Portal. If the Oracle is being onboarded as part of the collateral onboarding process, this proposal may be bundled up with other deliverables necessary for collateral onboarding.
4. If the Polling Vote passes, the Oracle Team will alert the Feeds to update their Oracle clients. If the Polling Vote fails the Oracle Team may make changes to the [MIP10c3-Subproposal-Template](MIP10c3-Subproposal-Template.md) and resubmit a new Polling Vote. If the Oracle Team does not, and no other Oracle Team decides to take up this responsibility, the process ends here.
5. Oracle Team Notifies the Feeds to update their Oracle clients
    - Alert sent out on the official Feeds Keybase channels
    - Timeline: 1 week to deploy and 1 week to confirm stability
    - Feeds who do not deploy within the given timeline are given a warning. Given enough warnings, governance may opt to remove the Feed through MIP10c15.
6. If on-chain changes are necessary, the actions are bundled up in the subsequent Executive Vote.

7. The Oracle Team(s) update [MIP10c5: List of Active Oracles](MIP10c5-List-of-Active-Oracles.md) to append the new Oracle and submit a PR to the MIPS GitHub repo.
8. The Oracle Team(s) update [MIP10c8: List of Oracle Data Models](MIP10c8-List-of-Oracle-Data-Models.md) to append the new Data Model and submit a PR to the MIPS GitHub repo.
9. The Oracle Team(s) update [MIP10c11: List of Oracle Whitelists](MIP10c11-List-of-Oracle-Whitelists.md) to append all whitelist entries and submit a PR to the MIPS GitHub repo.

---

### MIP10c2: Process for Oracle Onboarding Request

Used by the community to signal demand for onboarding new Oracles for non-collateral assets.

MIP10c2 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days

MIP10c2 subproposals must use the template located at **[MIP10c2-Subproposal-Template.md](MIP10c2-Subproposal-Template.md)**.

**An Oracle Team may opt to skip this step and submit MIP10c3**

1. A community member or other 3rd party publishes the [MIP10c2-Subproposal-Template.md](MIP10c2-Subproposal-Template.md) in the Oracle section of the Maker Forum. Typically this will be a 3rd party with a desire to consume the requested Oracle's data.

2. At this point the proposal is in limbo until an Oracle Team commits to doing the work required to submit [MIP10c3-Subproposal-Template](MIP10c3-Subproposal-Template.md) and continue the Oracle Onboarding process.

---

### MIP10c3: Process to Onboard Oracle (OT)

Used by the Oracle Team(s) to onboard new Oracles for collateral assets or assets requested by 3rd parties.

MIP10c3 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c3 subproposals must use the template located at **[MIP10c3-Subproposal-Template.md](MIP10c3-Subproposal-Template.md)**.

1. The Oracle Team verifies for each customer whitelisted contract:
    - contract is verified on Etherscan
    - contract uses Oracle data in a permissioned manner so as to prohibit on-chain parasitic behavior by 3rd parties.
    - If Oracle data is saved to storage, it is stored in a private variable accessible exclusively by the protocol.
2. The Oracle Team finds and selects data sources
    - Exchange options
    - Pair options
3. The Oracle Team selects an appropriate Data Model (a model detailing how the data is processed to get the desired output) based on the specific asset type and what data is available.
4. The Oracle Team completes the following technical deliverables:
    - Update price querying tool(s) to pull from the selected data sources and implement the Data Model for that specific asset
    - Update the Oracle client(s) to integrate the latest version of the price querying tool(s) and incorporate technical changes to publish the data.
    - Update Relayers with contract address(es)
5. The Oracle Team deploys and configures new instances of previously audited smart contracts for the asset type. This includes two smart contracts:
    - Medianizer
    - Oracle Security Module (OSM) - only required for collateral assets

6. The Oracle Team publishes the [MIP10c3-Subproposal-Template](MIP10c3-Subproposal-Template.md) to the Oracle section of the Maker Forum for community review as well as submitting a PR to the MIPs GitHub repo.

---

### MIP10c4: Process to Offboard Oracle

Allow anyone to remove an Oracle using a MIP10c4 subproposal.

MIP10c4 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days

MIP10c4 subproposals must use the template located at **[MIP10c4-Subproposal-Template.md](MIP10c4-Subproposal-Template.md)**.

1. A community member or other 3rd party publishes the [MIP10c4-Subproposal-Template.md](MIP10c4-Subproposal-Template.md) in the Oracle section of the Maker Forum for community review as well as submitting a PR to the MIPs GitHub repo.
2. After a period for the community to review and give feedback on the proposal, an Oracle Team may choose to commit to the work required to continue the Oracle Offboarding process.
3. The Oracle Team submits a Polling Vote to the Governance Portal.
4. If the Polling Vote passes, the Oracle Team gives 30 day notice to any customers whitelisted on the Oracle that the Oracle is shutting down.
    - Notice is sent to each customer via the email provided in MIP10c9.
5. The Oracle Team completes the following technical deliverables:
    - Update price querying tool(s) to cease collecting data for the Oracle.
    - Update the Oracle client(s) to integrate the latest version of the price querying tool(s) and cease publishing data for the Oracle.
6. After the 30-day period has elapsed, the Oracle Team Notifies the Feeds to update their Oracle clients
    - Alert sent out on the official Feeds Keybase channels
    - Timeline: 1 week to deploy
    - Feeds who do not deploy within the given timeline are given a warning. Given enough warnings, governance may opt to remove the Feed through MIP10c16.
7. If on-chain changes are necessary, the actions are bundled up in the subsequent Executive Vote.
8. The Oracle Team updates [MIP10c5: List of Active Oracles](MIP10c5-List-of-Active-Oracles.md) to remove the Oracle and submits a PR to the MIPS GitHub repo.
9. The Oracle Team updates [MIP10c11: List of Oracle Whitelists](MIP10c11-List-of-Oracle-Whitelists.md) to remove all whitelist entries and submits a PR to the MIPS GitHub repo.

---

### MIP10c5: List of Active Oracles
A canonical record of the Oracles in active operation by the Maker Protocol.

The active list is located at **[MIP10c5-List-of-Active-Oracles.md](MIP10c5-List-of-Active-Oracles.md)**.

MIP10c5 must be updated when an Oracle is onboarded or offboarded by governance via MIP10c3 and MIP10c4.
It is the responsibility of the Oracle Team(s) to ensure MIP10c5 is kept up to date.

---

### MIP10c6: Process for Data Model Update Request

Used by the community to request to update an Oracle Data Model.

MIP10c6 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days

MIP10c6 subproposals must use the template located at **[MIP10c6-Subproposal-Template.md](MIP10c6-Subproposal-Template.md)**.

**An Oracle Team may opt to skip this step and submit MIP10c7**

1. A community member publishes the [MIP10c4-Subproposal-Template.md](MIP10c4-Subproposal-Template.md) in the Oracle section of the Maker Forum for community review as well as submitting a PR to the MIPs GitHub repo.
2. Feedback is incorporated into the [MIP10c3-Subproposal-Template](MIP10c3-Subproposal-Template.md) with changes logged in the changelog section. Changes are reflected both in the Forum thread as well as in the GitHub PR.
3. At this point the proposal is in limbo until an Oracle Team commits to doing the work required to submit [MIP10c7-Subproposal-Template](MIP10c7-Subproposal-Template.md) and continue the Oracle Data Model Update process.

---

### MIP10c7: Process to Update Oracle Data Model (OT)

Used by the Oracle Team(s) to update an Oracle Data Model.

MIP10c7 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen Period:** 0 days

MIP10c7 subproposals must use the template located at **[MIP10c7-Subproposal-Template.md](MIP10c7-Subproposal-Template.md)**.

1. The Oracle Team completes the following technical deliverables:
    - Update price querying tool(s) to implement the Data Model for the Oracle.
    - Update the Oracle client(s) to integrate the latest version of the price querying tool(s) and implement technical changes to utilize the new Data Model.
2. The Oracle Team publishes the [MIP10c7-Subproposal-Template.md](MIP10c7-Subproposal-Template.md) in the Oracle section of the Maker Forum for community review as well as submitting a PR to the MIPs GitHub repo.
3. Feedback is incorporated into the [MIP10c7-Subproposal-Template](MIP10c7-Subproposal-Template.md) with changes logged in the changelog section. Changes are reflected both in the Forum thread as well as in the MIPS GitHub repo.
4. The Oracle Team submits a Polling Vote to the Governance Portal.
5. If the Polling Vote passes, the Oracle Team gives 30 day notice to any customers whitelisted on the Oracle that the Oracle Data Model is changing.
    - Notice is sent to each customer via the email provided in MIP10c9.
6. After the 30-day period has elapsed, the Oracle Team notifies the Feeds to update their Oracle clients
    - Alert sent out on the official Feeds Keybase channels
    - Timeline: 1 week to deploy
    - Feeds who do not deploy within the given timeline are given a warning. Given enough warnings, governance may opt to remove the Feed through MIP10c16.
7. The Oracle Team updates [MIP10c8: List of Oracle Data Models](MIP10c8-List-of-Oracle-Data-Models.md) to update the Data Model and submits a PR to the MIPS GitHub repo.
8. The Oracle Team updates [MIP10c5: List of Active Oracles](MIP10c5-List-of-Active-Oracles.md) to update the Active Oracle record with the updated Data Model and submits a PR to the MIPS GitHub repo.

---

### MIP10c8: List of Oracle Data Models

A canonical record of the ratified Data Models actively being used by the Oracles.

The ratified list of Oracle Data Models is located at [MIP10c8-List-of-Oracle-Data-Models.md](MIP10c8-List-of-Oracle-Data-Models.md).

MIP10c8 must be updated when a new Data Model is ratified as part of Oracle onboarding via MIP10c1 as well as when an Oracle Data Model is updated via MIP10c7.

It is the responsibility of the Oracle Team(s) to ensure MIP10c8 is kept up to date.

---

### MIP10c9: Process to Whitelist Oracle Access

Used by the community to request whitelist access to an Oracle.

MIP10c9 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c9 subproposals must use the template located at **[MIP10c9-Subproposal-Template.md](MIP10c9-Subproposal-Template.md)**.

1. A community member publishes the [MIP10c9-Subproposal-Template](MIP10c9-Subproposal-Template.md) in the Oracle section of the Maker Forum and submits a PR to the MIPs GitHub repo. Typically this will be the 3rd party with a desire to consume the requested Oracle's data. An Oracle Team may also submit such a proposal on behalf of the interested party.

2. At this point the proposal is in limbo until an Oracle Teams commits to doing the work required to submit [MIP10c3-Subproposal-Template](MIP10c3-Subproposal-Template.md) and continue the Whitelist Oracle Access process.

3. The Oracle Team verifies for each proposed contract to whitelist:
    - contract is verified on Etherscan
    - contract uses Oracle data in a permissioned manner so as to prohibit on-chain parasitic behavior by 3rd parties.
    - If Oracle data is saved to storage, it is stored in a private variable accessible exclusively by the protocol.

4. The Oracle Team submit a Polling Vote to the Governance Portal.

5. If the Polling Vote passes the Oracle Team will bundle the proposal in the subsequent Executive Vote.

6. The Oracle Team updates [MIP10c11: List of Oracle Whitelists](MIP10c11-List-of-Oracle-Whitelists.md) to update the Whitelist for the Oracle(s) and submit a PR to the MIPS GitHub repo.

---

### MIP10c10: Process to Remove Oracle Access

Used by a customer or Oracle Team to remove customer's access to Oracle data.

MIP10c10 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c10 subproposals must use the template located at **[MIP10c10-Subproposal-Template.md](MIP10c10-Subproposal-Template.md)**.

1. A customer, community member, or Oracle Team publishes the [MIP10c10-Subproposal-Template](MIP10c10-Subproposal-Template.md) in the Oracle section of the Maker Forum and submits a PR to the MIPS GitHub repo.

2. At this point the proposal is in limbo until an Oracle Teams commits to doing the work required and continue the Oracle Removal process.

If voluntary:
    3. The Oracle Team contacts the customer via the email provided in MIP10c3/MIP10c9 to verify this action.
    4. The Oracle Team bundles the proposal into the next Executive Vote.
    5. The Oracle Team updates [MIP10c11: List of Oracle Whitelists](MIP10c11-List-of-Oracle-Whitelists.md) to update the Whitelist for the Oracle(s) and submits a PR to the MIPS GitHub repo.

If involuntary:
    3. The Oracle Team gives the customer 30 days notice via the email the customer provided in MIP10c3/MIP10c9.
    4. After the 30 day period has elapsed, the Oracle Team bundles the proposal into the next Executive Vote.
    5. The Oracle Team updates [MIP10c11: List of Oracle Whitelists](MIP10c11-List-of-Oracle-Whitelists.md) to update the Whitelist for the Oracle(s) and submits a PR to the MIPS GitHub repo.

---

### MIP10c11: List of Oracle Whitelists

A canonical record of the whitelist for each Oracle.

The whitelist for each oracle is located at [MIP10c11-List-of-Oracle-Whitelists.md](MIP10c11-List-of-Oracle-Whitelists.md)

MIP10c11 must be updated when an entity is added or removed from the whitelist for an Oracle via MIP10c3/MIP10c9/MIP10c10.
It is the responsibility of the Oracle Team(s) to ensure MIP10c11 is kept up to date.

---

### MIP10c12: Process to Update Oracle Access Fee

Used by the community to update the Oracle Access Fee for an Oracle.

MIP10c13 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

The MIP10c12 template is located at **[MIP10c12-Subproposal-Template.md](MIP10c12-Subproposal-Template.md)**.

1. A community member publishes the [MIP10c12-Subproposal-Template](MIP10c12-Subproposal-Template.md) in the Oracle section of the Maker Forum and submits a PR to the MIPS GitHub repo.

2. Feedback is incorporated into the [MIP10c12-Subproposal-Template](MIP10c12-Subproposal-Template.md) with changes logged in the changelog section. Changes are reflected both in the Forum thread as well as in the MIPS GitHub repo.

3. An Oracle Team submits a Polling Vote to the Governance Portal.

4. If the Polling Vote passes the Oracle Team gives affected customers 30 days notice via the email stored in [MIP10c12](MIP10c12-Subproposal-Template.md).

5. The Oracle Team updates [MIP10c11: List of Oracle Whitelists](MIP10c11-List-of-Oracle-Whitelists.md) to update the fees for each modified entry and submit a PR to the MIPS GitHub repo.

---

### MIP10c13: Process to Appoint Dark Feed Request

Used by the community to appoint a Dark Feed.

MIP10c13 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c13 subproposals must use the template located at **[MIP10c13-Subproposal-Template.md](MIP10c13-Subproposal-Template.md)**.

1. An anon uses VPN/TOR/I2C to post [MIP10c13-Subproposal-Template](MIP10c13-Subproposal-Template.md) to the Oracle section of the Maker Forum and submits a PR to the MIPS GitHub repo using a fresh GitHub Account registered with a throwaway email.

2. At this point the proposal is in limbo until an Oracle Teams commits to doing the work required to validate the information provided. The Oracle Team may ask follow-up questions or request more data from the proposer.

3. The Oracle Team prepares the assessment of the information provided by the proposed Light Feed to prepare MIP10c15.

---

### MIP10c14: Process to Appoint Light Feed Request

Used by the community to appoint a Light Feed.

MIP10c14 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c14 subproposals must use the template located at **[MIP10c14-Subproposal-Template.md](MIP10c14-Subproposal-Template.md)**.

1. An institution publishes [MIP10c14-Subproposal-Template](MIP10c14-Subproposal-Template.md) to the Oracle section of the Maker Forum and submits a PR to the MIPS GitHub repo.

2. At this point the proposal is in limbo until an Oracle Team commits to doing the work required to validate the information provided. The Oracle Team may ask follow-up questions or request more data from the proposer.

3. The Oracle Team verifies the identity of the individual purporting to represent the institution using the domain bonded email provided in MIP10c14 as well their network of contacts in the industry.

4. The Oracle Team prepares the assessment of the information provided by the proposed Light Feed to prepare MIP10c15.

---

### MIP10c15: Process to Appoint Feed (OT)

Used by an Oracle Team to validate submitted Feed appointments.

MIP10c15 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c15 subproposals must use the template located at **[MIP10c15-Subproposal-Template.md](MIP10c15-Subproposal-Template.md)**.

1. The Oracle Team compiles and assesses the information provided in MIP10c13/MIP10c14. The Oracle Team compiles and publishes [MIP10c15-Subproposal-Template](MIP10c15-Subproposal-Template) to the Oracle section of the Maker Forum and submits a PR to the MIPS GitHub repo.

2. The community reviews and gives feedback on the proposal.

3. The Oracle Team submits a Polling Vote to the Governance Portal.

4. If the Polling Vote passes, the Oracle Team requests the proposer to provide a fresh Ethereum public key that will be used to to sign Feed data.

5. The Oracle Team submits the proposal to include the Feed into the subsequent Executive Vote.

6. If the Executive Vote passes, the Oracle Team assists the newly appointed Feed to set up their Feed infrastructure and communication channels.

7. The Oracle Team updates [MIP10c17: List of Feeds](MIP10c17-List-of-Feeds.md)

8. The Oracle Team updates [MIP10c5: List of Active Oracles](MIP10c5-List-of-Active-Oracles.md)

9. The Oracle Team updates [MIP10c8: List of Oracle Data Models](MIP10c8-List-of-Oracle-Data-Models.md)

--

### MIP10c16: Process to Remove Feed

Used by the community to remove a Feed.

MIP10c16 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c16 subproposals must use the template located at **[MIP10c16-Subproposal-Template](MIP10c16-Subproposal-Template.md)**.

1. A community member publishes the [MIP10c16-Subproposal-Template](MIP10c16-Subproposal-Template.md) in the Oracle section of the Maker Forum and submits a PR to the MIPS GitHub repo.

2. At this point the proposal is in limbo until an Oracle Team commits to doing the work required to review and validate the evidence.

3. The Oracle Team submits a Polling Vote to the Governance Portal.

4. If the Polling Vote succeeds, the Oracle Team bundles the proposal into the subsequent Executive Vote.

5. The Oracle Team updates [MIP10c17: List of Feeds](MIP10c17-List-of-Feeds.md)

6. The Oracle Team updates [MIP10c5: List of Active Oracles](MIP10c5-List-of-Active-Oracles.md)

7. The Oracle Team updates [MIP10c8: List of Oracle Data Models](MIP10c8-List-of-Oracle-Data-Models.md)

---

### MIP10c17: List of Feeds

A canonical record of the list of feeds.

The list of feeds is located at **[MIP10c17-List-of-Feeds.md](MIP10c17-List-of-Feeds.md)**.

MIP10c17 must be updated when a Feed is added or removed via MIP10c15/MIP10c16.
It is the responsibility of the Oracle Team(s) to ensure MIP10c17 is kept up to date.

---

### MIP10c18: Process to Update Feed Stipend

Used by the community to update the Feed Stipend amount that is paid monthly to each Feed.

MIP10c18 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c18 subproposals must use the template located at **[MIP10c18-Subproposal-Template](MIP10c18-Subproposal-Template.md)**.

**MIP10c18 is currently frozen until governance takes over the funding of Feed Stipends**

1. A community member publishes the [MIP10c18-Subproposal-Template](MIP10c18-Subproposal-Template.md) in the Oracle section of the Maker Forum and submits a PR to the MIPS GitHub repo.

2. The community reviews the details of the proposal and gives feedback.

3. Feedback is incorporated into the [MIP10c18-Subproposal-Template](MIP10c18-Subproposal-Template.md) with changes logged in the changelog section. Changes are reflected both in the Forum thread as well as in the GitHub PR.

4. An Oracle Team submits a Polling Vote to the Governance Portal.

5. The Oracle Team updates [MIP10c17: List of Feeds](MIP10c17-List-of-Feeds.md)

---

### MIP10c19: Process to Update Oracle Expiration Time

Used by the community to update an Oracle's Expiration Time. This is the maximum period of time the Oracle will not update its price.

MIP10c19 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c19 subproposals must use the template located at **[MIP10c19-Subproposal-Template](MIP10c19-Subproposal-Template.md)**.

**Placeholder MIP component**

---

### MIP10c20: Process to Update Oracle Spread

Used by the community to update an Oracle's Spread. This is the minimum percentage difference between the current Oracle's price and the new price that will trigger the Oracle to update its price.

MIP10c18 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c20 subproposals must use the template located at **[MIP10c20-Subproposal-Template](MIP10c20-Subproposal-Template.md)**.

**Placeholder MIP component**

---

### MIP10c21: Process to Update Oracle Security Module Delay

Used by the community to update an Oracle's Oracle Security Module delay. The delay is the amount of time between the Oracle updating and the Maker Protocol utilizing the new price.

MIP10c21 subproposals have the following parameters:
- **Feedback Period:** 0 days
- **Frozen period:** 0 days

MIP10c21 subproposals must use the template located at **[MIP10c21-Subproposal-Template](MIP10c21-Subproposal-Template.md)**.

**Placeholder MIP component**

---
