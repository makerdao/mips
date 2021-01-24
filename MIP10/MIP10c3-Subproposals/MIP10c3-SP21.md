## Preamble
```
MIP10c3-SP#: 21
Author(s): Niklas Kunkel (@NiklasKunkel)
Contributors:
Type: Process Component
Oracle Team Name: Green
Status: RFC
Date Proposed: 2020-01-23
Date Ratified: <yyyy-mm-dd>
```

## Specification

### Introduction

This Oracle would provide the price of NS-DROP/USD as part of the collateral onboarding process for NS-DROP.

### Oracle Data Model 

    |    Source    |  Asset Pair   |Quorum | Feed Model  | Oracle Model |
    | :----------- | :------------ | :---: | :---------: | :----------: |
    |  Centrifuge  |  NS-DROP/USD  |  N/A  |     N/A     |   DSValue    |


### Oracle Supporting Data Model(s)

N/A

 
### Oracle Address
- DSValue - Mainnet - TBD
- DSValue - Kovan - 0x5285d3ae055733c51f43a6e37f1f998b3c6373c4
    
### Supported Tools
- DSValue - unmodified


### Remaining Work

N/A

### Summary

The New Silver DROP token introduces Centrifuge's Real World Asset (RWA) model as a new class of tokens to the Maker Protocol. The Oracle Model presented in this document deserves serious scrutiny and review as it is likely be applied as a design pattern for future Centrifuge DROP tokens.

The Oracle Domain Team has to balance the [community's prioritization to introduce RWA into the Maker Protocol](https://mkrgov.science/poll/304) with the Oracle security implications posed by such assets. As such, the Oracle Domain Team is proposing an iterative Oracle development approach for Centrifuge real world assets. This enables the Maker Protocol to onboard RWA sooner, identify problems with the Oracle model, and iteratively optimize the Oracle while sandboxing risk.

*Phase One*
Phase one of the DROP Oracle uses a simple [DSValue smart-contract](https://github.com/dapphub/ds-value) controlled by Maker Governance. The DSValue contains a static price value that is modified at discrete points in time by Maker Governance via an Executive Vote. A biweekly update schedule is recommended. The biweekly interval should not significantly affect the time to liquidate NS-DROP as the [liquidation mechanism described by the Risk Domain Team](https://forum.makerdao.com/t/ns-drop-collateral-onboarding-risk-evaluation/5418) appears to be a lengthy process. 

This solution sacrifices capital efficiency (limiting the ability to maximize credit) and introduces significant governance overhead, in favor of providing a secure means of validating price information prior to a controlled Oracle update. Should the need arise, the community can change the cadence at which Oracle prices are updated at any time. Prices will be supplied by Centrifuge / New Silver to the Risk Domain Team and included in an Executive Vote by the Oracle Domain Team at the next scheduled biweekly update. This enables the Risk Domain Team to monitor, investigate, and potentially block incoming suspicious prices.

This seemingly convoluted process of intermediation through the Domain Teams rather than through Centrifuge / New Silver updating the Oracle directly is due to the moral hazard present between the asset issuer / borrower and the Maker Protocol. It is of the utmost importance with respect to the security of the Maker Protocol that RWA issuers cannot update their own Oracle.

*Phase Two*
Phase two of the Oracle utilizes an independent auditor to review the status/value of the underlying assets with respect to the price supplied by the asset issuer. Validated prices are signed by the auditor, and subsequently pushed by relayers to a Medianizer-OSM hybrid, which validates the auditor signature and queues the new price with a 24 hour delay. This removes the burden of validating prices from the Risk Domain Team and can potentially provide more frequent price updates supporting capital efficiency.

The Oracle Domain Team welcomes all feedback with regard to the Oracle model for DROP tokens and looks forwarding to working with the community to develop it further.