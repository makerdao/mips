# MIP13c3-SP6: SourceCred Funding

## Preamble
```
MIP13c3-SP#: 6
Author(s): @LongForWisdom
Contributors:
Status: RFC
Date Proposed: 2020-10-05
Date Ratified: <yyyy-mm-dd>
---
Declaration Statement: Maker Governance intends to fund the use of SourceCred within the Maker Community to incentivize effective governance of the Maker Protocol.
Declaration to Replace: n/a
```
## Specification

### Context and Motivation

The SourceCred algorithm has been in a trial phase on the Maker forums for the past few months and has been generally seen as successful by its participants and the trial working group. 

The big next step for the use of SourceCred within Maker is to set it up such that it can be funded directly by the protocol, this promotes decentralization and separation from the Maker Foundation.

In my view, it is beneficial for MKR Token Holders to fund SourceCred on an ongoing basis for the following reasons:
- It incentivizes involvement in governance. The more humans you have paying attention to governance, the more chance that current issues will be discussed and understood thoroughly. 
- It helps align incentives between members of the Governance forum who do not hold MKR and MKR Holders.
- Larger MKR Holders have thus far been unable or unwilling to participate openly in governance, SourceCred represents a way for them to fund governance through the protocol equally, bypassing the free-rider problem that appears if any large MKR Holder wanted to incentivize governance directly.
- People spend a lot of time on the forums, making proposals and discussing the Maker protocol deeply they deserve to be compensated for their time.


### Declaration Detail

Maker Governance intends to fund the use of SourceCred within the Maker Community to incentivize effective governance of the Maker Protocol. To further this aim, Maker Governance would like to see a technical solution developed that allows funding and distribution according to cred scores.

**This funding should:**
- Come from the Maker Protocol using funds from the surplus buffer or generated through MKR minting.  
- Be distributed according to cred scores generated using weightings ratified by Maker Governance.  

**The technical implementation of this funding system is flexible, but should:**
- Allow variable amounts of value in the form of DAI to be drawn from the Maker Protocol for distribution.
- Follow best practices and be audited by one or more Smart Contracts Domain Team personnel.  
- Be presented to Maker Governance in the form of a technical MIP.  

**The technical implementation of the distribution system is flexible, but should:**
- Allow for variable amounts of any token to be distributed according to cred scores.  
- Ensure that off-chain cred scores are communicated for on-chain distribution in a trust-minimized way.  
- Follow best practices and be audited by one or more Smart Contracts Domain Team personnel.  
- Be presented to Maker Governance in the form of a technical MIP.  

**In addition, the following point should be addressed:**
- Off-chain cred scores should be calculated in a reliable and trust-minimized way.  

Note that both parts of the technical solution should be presented in the same technical MIP if they differ from existing structures.

### Relevant Links
    
**Forum**
- [Maker SourceCred Trial Initial Post](https://forum.makerdao.com/t/maker-sourcecred-trial/2551)  
- [SourceCred Trial: Review of Month 1](https://forum.makerdao.com/t/sourcecred-trial-review-of-month-1-payout-increase/2999)  
- [SourceCred Pilot Extension](https://forum.makerdao.com/t/sourcecred-pilot-extension/3892)  
- [Opting in to SourceCred](https://forum.makerdao.com/t/opting-in-to-sourcecred-wth-is-sourcecred/3913)  


