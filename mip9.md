# MIP9: Community Greenlight


## Preamble
```
MIP#: 9
Title: Community Greenlight
Author(s): Rune Christensen (@Rune23), Charles St.Louis (@CPSTL), Leo Jsaraceno (@Mitote), Helge Andreas Qvam (@planet_X)
Type: Process
Status: <Assigned by MIP Editor>
Date Proposed: 2020-04-06
Dependencies: MIP6, MIP8
Replaces: n/a
```

### Components
**MIP9c1:** The Community Greenlight Requirements and Process  
**MIP9c2:** Governance Poll Template  

## Summary

This proposal aims to standardize the process for allowing MKR Token Holders to inform the Domain Teams of their preferences for collateral types that have been proposed through MIP6. The preferences of the MKR Token holders are expressed in the form of an on-chain governance poll. The governance poll (Greenlight poll) runs at the end of the governance cycle and will run for a period of two weeks.

## Motivation

While domain teams are free to choose their own workload, an on-chain governance poll provides the Domain Teams key insights into the community's sentiment for each collateral type that has been proposed. In addition to this, it is important to gather the opinion of MKR Token Holders towards the proposed collateral asset before the full domain work takes place. This helps prevent work from being wasted on undesirable collateral types.


## Specification / Proposal Details

In this stage, the Governance Facilitator (GF) will create an on-chain governance poll in the template format defined in MIP9c2 and the community will vote with their preferences.

### MIP9c1: The Community Greenlight Requirements and Process

1.  The process begins when an interested party (collateral type proposer) informs the Governance Facilitator(s) that the collateral application process has reached the Community Greenlight phase.
	- The collateral form (MIP6) has been submitted to the forum and/or has received Domain Greenlight approval (MIP8) from each of the domain teams (smart contracts, risk and oracles).
2.  From then on, the Governance Facilitator(s) are responsible for creating a Community Greenlight Poll for the collateral type in question.
	- Note that an individual approval poll is created for each collateral asset. This poll will use the format defined in MIP9c2 (Governance Poll Template), using ETH as an example collateral type.
	-  The greenlight polls happen at a fixed time each governance cycle, from the 4th Monday of the month to the 4th Friday of the month.
3.  The Governance Facilitator(s) are responsible for maintaining a list of collaterals based on the outcome of the individual Community Greenlight Polls. This list should include collateral types that have both passed and failed to pass their Community Greenlight Polls.
4.  The collateral assets in the polls will be listed and ranked based on their score. As noted above (3), the list includes the collateral types that have both passed and failed to pass in the Community Greenlight Polls. It's important to include assets that have failed (negative score) to still be considered based on the domain teams judgment call, because you could have situations where competitors are trying to use MKR to suppress each other's assets in order to get a competitive edge and thus, unfairly put them at a disadvantage by denying them funding from Maker.
5.  Any collateral asset that has passed MIP8, and not had any of its MIP8 greenlight approvals revoked again, including assets that have already had a greenlight poll before, will be included in the MIP9 community greenlight polls, except when for technical reasons there is not enough capacity to hold all the votes, in which case the governance facilitator decides the most important assets to include, prioritizing those that haven't had a vote before.
    
**Important Note:** MIP9 may happen in parallel with MIP8 (Domain Greenlight).

**Key Outcomes from the Governance Poll**

-   Once the Community Greenlight Poll is complete. The Domain teams proceed to perform their respective work defined in their mandates.
	-   **Example:** The Smart contracts team will build the collateral adaptor and the risk team will build their risk construct for the specified collateral type.
-   If the Community Greenlight Poll passes and Domain Greenlight (MIP8) fails in one or more domains, the community must find a substitute for the rejecting domain teams before this process can proceed.
-   If the Community Greenlight Poll fails the Domain teams are free to work on the collateral if they hold confidence that governance will approve it in the future.
    

### Overall Process Overview Diagram

<img width="686" alt="mip9" src="https://user-images.githubusercontent.com/32653033/79087697-23b06b80-7d0e-11ea-8411-82d6b4f0a0e5.png">


---
### MIP9c2: Governance Poll Template 

**Governance Poll Template:**  

**Poll Title:** 
Should we add ETH (Ether) to the Maker Protocol?
      
**Description:**  
      
If passed, this poll is to be taken as a signal to domain teams that MKR Token Holders have approved further domain work with the aim of adding ETH (Ether) as a collateral asset to the Maker Protocol.  
      
Background and discussion can be found at the following forum thread: <link to the community introduction thread created by the interested party>  
      
**Poll Options:**  

-   [ ] Yes
-   [ ] No
    

**Duration of Poll:**  
  
The poll will run for two weeks . 

---
