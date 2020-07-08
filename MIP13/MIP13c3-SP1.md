Forward Guidance

## Preamble
```
MIP13c3-SP#: 1
Author(s): Akiva Dubrofsky (@akiva)
Contributors: @vitalyr
Status: Request for Comments (RFC) 
Date Proposed: <2020-07-08>
Date Ratified: <yyyy-mm-dd>
```

## Specification

### Context and Motivation

Aware, of the efforts within the Maker community by companies to help Vault users hedge their exposure to the base rate via various derivative contracts,

Acknowledging, the importance of the aforementioned services being necessary to the scalability of MakerDAO, due to the historic volatility in the DSR (and SF during SCD),

Recognizing, the necessity of Risk Teams and voters having the ability to react to any risk presented to the system at any time, and enact measures to protect the system,

Supporting, the ongoing work of providing full transparency and fairness to its users, 

The following is declared:

### Declaration Detail

1. MakerDAO will adjust the Risk Premia of specific collateral types in order to have proper System Surplus, and to avoid System Deficit, in the following list of scenarios:
a. A change deemed significant by a Risk Team in the nature of the collateral object
b. Some new piece of information is found previously unknown to a risk team
c. An event that was unforeseeable (“a black swan” event)
2. MakerDAO will, whenever possible, seek to minimize/mitigate any causal relationship between the actions of some given “Party A” (some user of Vaults) with some unrelated “Party B” (another Vault user’s) risk parameters. Whereas Party A and Party B have no relationship with one another other than merely both being users of the Maker system.
3. MakerDAO will not adjust Risk Parameters without due cause and proper consideration of its impacts on Vault users, specifically those sensitive to such changes.
4. The MakerDAO community, while reserving its right to react at any time to any given risk, will create a working group to identify particular factors that would result in events a,b,c, listed above in Article 1 thereby providing forward guidance to Vault users. In no situation will any list be considered exhaustive.

This declaration is flexible in implementation while aiming to improve fairness for users.

### Relevant Links
- https://forum.makerdao.com/t/soft-locks-and-future-guidance-a-pre-mip-discussion/2875
- https://forum.makerdao.com/t/rate-stabilization-for-makerdao/2274
