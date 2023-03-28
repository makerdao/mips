# MIP74: Permissionless Open Market Operations

## Preamble

```
MIP#: 74
Title: Permissionless Open Market Operations
Author(s): Marko Štemberger (@rema)
Contributors: LFW (@LongForWidsom), Sean Taylor (@Sean), Payton Rose (@prose11), Derek (@derek), Brian L. McMichael (@brianmcmichael)
Tags: governance
Type: General
Status: Obsolete
Date Proposed: 2022-05-11
Date Ratified: 2022-06-27
Dependencies: None
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip74-permissionless-open-market-operations/15095
Ratification Poll URL: https://vote.makerdao.com/polling/QmaivXCv
Extra: This MIP has been made obsolete by the passage of [MIP102c2-SP1](https://mips.makerdao.com/mips/details/MIP102c2SP1)
```

## References

* [DssKiln - a permissionless token purchasing tool](https://forum.makerdao.com/t/dsskiln-a-permissionless-token-purchasing-tool/14943); a forum post introducing the module.
* [MIP74c1-Subproposal-Template](https://github.com/makerdao/mips/blob/master/MIP74/MIP74c1-Subproposal-Template.md).

## Sentence Summary

MIP74 defines the process used to agree and action Permissionless Open Market Operations with funds controlled by MakerDAO.

## Paragraph Summary

MIP74 defines the process that will be used to agree and take action on a number of Permissionless Open Market Operations with funds controlled by MakerDAO. The MIP proposes the utilization of the DssKiln module in order to make Permissionless Open Market Operations over a predetermined time period. The DssKiln module can be used for but is not limited to: (i) altering asset allocations of the surplus buffer, (ii) DAO treasury management, and/or (iii) management of possible future funds controlled by Core Units or other bodies of MakerDAO. For example, the DssKiln is able to perform certain actions that the Maker community has previously proposed and discussed. Including an alternative mechanism for MKR burning, and/or purchasing ETH with DAI from the surplus buffer.

## Motivation

The Maker community has had several ideas and discussions regarding potential asset management strategies controlled by MakerDAO governance. The DssKiln module is general enough to address the needs of several previously discussed ideas. DssKiln can be used to manage MakerDAO’s surplus buffer, treasury, or any other assets on the Maker Protocol’s balance sheet. There are other, possibly better, solutions that would require a greater time commitment from several Core Units and other stakeholders in the Maker community. This MIP, however, can be implemented relatively fast. It can fulfill a large spectrum of needs which are currently present. The DssKiln can serve its purpose until a better solution is identified, developed, and implemented.

## Component Summary

**MIP74c1: Adding & Modifying a Permissionless Open Market Operation**

Defines the Governance process for altering existing Permissionless Open Market Operations and proposing new Open Market Operations.

**MIP74c2: Urgent Cancellation of a Permissionless Open Market Operation**

Defines the processes for cancelling an existing Permissionless Open Market Operation quickly.

**MIP74c3: Input by Bodies of MakerDAO Organizational Structure and Possible Limitations**

Defines the recommended input from bodies of MakerDAO.

**MIP74c4: DssKiln For Actioning Permissionless Open Market Operations**

Describes the DssKiln smart contract and defines the general parameters that all instances share.

**MIP74c5: DssKiln Examples**

Describes two specific examples that can be achieved with the DssKiln smart contract: (i) an alternative MKR buy back and burn mechanism, and (ii) periodically purchase tokens for the Maker Protocol treasury in a permissionless manner.

**MIP74c6: DssKiln Audit**

Confirms that DssKiln will be professionally audited prior to production use.

## Specification

### MIP74c1: Adding & Modifying a Permissionless Open Market Operation

MIP74c1 subproposals must use the template located at [MIP74c1-Subproposal-Template](https://github.com/makerdao/mips/blob/master/MIP74/MIP74c1-Subproposal-Template.md).

This section of the MIP can have large consequences on the protocol's solvency, reserves, and its financial resistance. A successful subproposal under this component will result in a technical state change to action and the proposal being included in an Executive Proposal within 1 month, absent any external factors.

#### The proposal parameters

New Permissionless Open Market Operation which amounts to less than 3M DAI (or USD equivalent value) on annual basis, or total per duration of the strategy at the time of proposal may go into the Weekly Governance Cycle, provided the Feedback and Frozen Periods have been fulfilled. Anything above 3M DAI (or USD equivalent) on an annual basis or total per duration of strategy at the time of proposal must go through the Monthly Governance Cycle.

Parameters for Permissionless Open Market Operations with less or equal to 3M DAI (or USD equivalent value) at the time of proposal on annual basis or total per duration of operation proposal:

* **Minimum Feedback Period:** 2 Weeks.
* **Minimum Frozen Period:** 1 Week.

Parameters for Permissionless Open Market Operations with above 3M DAI (or USD equivalent value) at the time of proposal on annual basis or total per duration of operation proposal:

* **Minimum Feedback Period:** 4 Weeks.
* **Minimum Frozen Period:** 1 Week.

### MIP74c2: Urgent Cancellation of a Permissionless Open Market Operation

Any Permissionless Open Market Operation which is implemented can be shutdown by:

* (i) a Signal Request process which must last at least 1 week and,
* (ii) a shutdown process which does not require a Signal Request can be initiated by Facilitators of relevant Core Units. It is recommended, but not limited to, that Facilitators propose the shutdown to the on-chain poll and propose the immediate shutdown directly via Executive Vote only in the case of an emergency which is time-sensitive.

### MIP74c3: Input by Bodies of MakerDAO Organizational Structure and Possible Limitations

* Relevant bodies of MakerDAO are strongly recommended to provide input on MIP74c1 subproposals prior to formal submission.
* Expected bodies input which might be required and their potential tasks:
    * (i) Protocol Engineering Core Unit (PE-001): Input on audit requirements and estimated cost (monetary and workforce related); input on the recommended destination market or similar.
    * (ii) Risk Core Unit (RISK-001): Input on general and strategy specific parameters; input on recommended destination market or similar.

### MIP74c4: DssKiln For Actioning Permissionless Open Market Operations

DssKiln is a permissionless token-purchasing and disposition module for protocols that need to permissionlessly participate in open market activities.

The following parameters are available for definition in DssKiln by Governance:

* `sell`: The token to be deposited into DssKiln and sold.
* `buy`: The token to be bought in exchange for the sold token.
* `hop`: Duration specified in seconds. It represents a minimum number of seconds that must pass before the `lot` can be sold.
* `lot`: The maximum quantity of tokens to be sold per hop.

### MIP74c5: DssKiln Examples

DssKiln can be implemented to interact with various on-chain markets. The specific operation which the DssKiln module is designed to perform is called a “Permissionless Open Market Operation”. Each Permissionless Open Market Operation implementation, depending on which contracts it interacts with, requires operation specific parameters which are defined at contract creation.

The following are example parameters specific to `DssKilnUNIV3SaveStrategy`. Other operations may require a different set of parameters:

* `uniV3Router`: The address of the current Uniswap V3 router.
* `fee`: The UniswapV3 fee pool DssKiln Strategy will participate in.
* `receiver`: The destination address for the purchased token.

The following are example parameters specific to `DssKilnUNIV3BurnStrategy`. Other operations may require a different set of parameters:

* `uniV3Router`: The address of the current Uniswap V3 router.
* `fee`: The UniswapV3 fee pool DssKiln Strategy will participate in.

Note that this operation requires a token to have a `burn()` function, therefore there is no `receiver` because the DssKiln calls the `burn()` directly.

### MIP74c6: DssKiln Audit

DssKiln will be formally audited before implementation. The audit will be financed and facilitated by PECU and their existing budget. The probable next technical steps are: (i) an internal PECU team review based on updated use cases and (ii) an external contract audit. These can be done in parallel.

## Resources

* GitHub [brianmcmichael/dss-kiln](https://github.com/brianmcmichael/dss-kiln)
