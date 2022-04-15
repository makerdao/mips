# MIP70: Huntingdon Valley Bank Self-Contained Onboarding Strategy & Execution

## Preamble

```
MIP#: 70
Title: Huntingdon Valley Bank Self-Contained Onboarding Strategy & Execution
Author(s): @g_dip
Contributors: @maxrealestate
Tags:
Type:
Status: RFC
Date Proposed: 2022-03-04
Date Ratified: <yyyy-mm-dd>
Dependencies: MIP21
Replaces: None
Forum URL: https://forum.makerdao.com/t/mip70-huntingdon-valley-bank-self-contained-onboarding-strategy-execution/14468
```
## References

* [MIP65: Project Clydesdale: HVBank Arrangement I: Liquid Bond Strategy & Execution](https://forum.makerdao.com/t/mip65-project-clydesdale-monetalis-arrangement-i-liquid-bond-strategy-execution/13148)
* [MIP6: Huntingdon Valley Bank Loan Syndication Collateral Onboarding Application](https://forum.makerdao.com/t/mip6-huntingdon-valley-bank-loan-syndication-collateral-onboarding-application/14219)
* [MIP71: Huntingdon Valley Bank “Collateral Block” Exemption](https://forum.makerdao.com/t/mipxx-huntingdon-valley-bank-collateral-block-exemption/14469)

## Sentence Summary

MIP70 will onboard and activate a RWA vault, with priority, for the purpose of acquiring loans from HVBank (as described in the [MIP6](https://forum.makerdao.com/t/mip6-huntingdon-valley-bank-loan-syndication-collateral-onboarding-application/14219) application).

## Paragraph Summary

MIP70 onboards, with priority, a RWA vault that will onboard HVBank and the MBPT Trust as outlined in the MIP6 application. This MIP, importantly, also set out strict conditions for the setup of the underlying legal and governance structure and verification requirements.

## Component Summary

**MIP70c1: Process Optimisation and Prioritisation enforcement through non-MIP collateral onboarding block**
This component set out a mechanism to ensure prioritisation on this collateral onboarding and an optimised onboarding process.

**MIP70c2: Legal Structure & Asset Strategy conditions of the collateral onboarding**
This component sets out the verification mechanism and conditions ensuring appropriate collateral is onboarded using an appropriate legal structure and governance framework.

**MIP70c3: Technical conditions of the collateral onboarding**
This component contains the technical requirements for unambiguous technical execution of the collateral onboarding

**MIP70c4: Specification of Executive Vote and non-MIP collateral block removal**
This component contains executive vote specifications and conditions.

**MIP70c5: Collateral Onboarding cancellation procedure**
This component sets out how this onboarding can be canceled by the Maker community.

**MIP70c6: Unilateral instant Collateral Onboarding withdrawal**
This component sets out how this onboarding can be withdrawn by RWAC (on behalf of HVBank).

**MIP70c7: Unilateral Instant Collateral Onboarding deferral**
This component sets out how this onboarding can be deferred by RWAC (on behalf of HVBank) for a maximum period of two months, temporarily lifting the collateral block without requiring the need to re-enter the governance cycle with a new MIP.

## Motivation

As proposed, [MIP65](https://forum.makerdao.com/t/mip65-project-clydesdale-monetalis-arrangement-i-liquid-bond-strategy-execution/13148) will temporarily strip Core Units of their power to onboard assets and force a prioritization of counterparties. If accepted, there may be copycat MIPs (such as this one) that push other counterparties to the back of the line, despite their good-faith compliance with the existing procedures. This MIP is a defensive measure to ensure that HVBank is not unfairly deprioritized due to a wave of MIP65-style proposals. This MIP is being proposed in tandem with [MIP71: Huntingdon Valley Bank “Collateral Block” Exemption](https://forum.makerdao.com/t/mip71-huntingdon-valley-bank-collateral-block-exemption/14469/) in the hope that both MIPs pass and HVBank can progress in the onboarding process without concern and maximum flexibility. If the blocking language is removed from MIP65 and similar MIPs, or those MIPs fail, we do not intend to take this MIP out of RFC but will allow it to remain active as a defense mechanism.

## Specification / Proposal Details

### MIP70c1: Process Optimisation and Prioritisation enforcement through non-MIP collateral onboarding block

This proposal is a self-contained collateral onboarding proposal of a RWA collateral construct that is in its final stage and ready for immediate execution upon voter approval, using its own optimized assessment and verification processes.

If this MIP is approved, the MIP70 collateral onboarding is immediately moved to step 5 of [the Collateral Onboarding Process](https://collateral.makerdao.com/introduction-to-collateral-onboarding/high-level-overview-of-the-collateral-onboarding-process#high-level-overview-of-the-collateral-onboarding-process).

However, the standard assessments described in the Collateral Onboarding guide do not apply to MIP70, as they are not relevant for an RWA onboarding of this type. Instead, a process providing equivalent protections to the spirit of those assessments is done as specified in MIP70c2 and MIP70c3, and these assessments take the place of the standard assessments and allow it to move forward in the process.

To ensure the onboarding occurs as fast as is reasonable, and isn’t unnecessarily delayed, no other collateral onboardings with debt-ceiling below DAI 100M can occur, unless those collateral onboardings also have been directly and specifically authorised through a self-contained, stand-alone, numbered MIP similar to this.

This block on non-mip collateral onboarding stays in place until all the conditions in MIP70c2, MIP70c3 and MIP70c4 have been met, or this collateral onboarding has been cancelled through the process specified in MIP70c5 or unilaterally withdrawn as specified in MIP70c6.

### MIP70c2: Legal structure & asset strategy conditions of the collateral onboarding

**Legal structure and Governance**

RWAC, in coordination with HVBank, will set up a legal trust structure, and governance framework, with the necessary contractual relationships and legal protections to make it appropriate to act as large scale RWA collateral for Maker.

This includes, but is not limited to:

* No ability by third parties or HVBank to access the funds or change the terms of the legal structure

* Maker Governance has complete ability to trigger a liquidation with a successful executive vote encoding an instruction to the trustee of the structure.

* It should not be possible for a single third party to block the ability of Maker Governance to make decisions or modify the structure.

* There must be no apparent weak links or edge cases that allow funds to get misappropriated or stuck.

* An Asset Purchase and Allocation Restriction, ensuring only appropriate bond assets and strategies can be acquired by the structure

* All surplus generated by the legal structure must be manually sent to the Maker surplus buffer every quarter.

* All economic metrics and terms outlined in the MIP6 application

This above established structure must set up a relationship with a regulated crypto broker, and an ETH address must be emitted that can be used to construct the smart contracts necessary to complete the next step of the onboarding process specified in MIP70c3.

**Legal structure and governance appropriateness Verification**

The Real-World Finance Facilitator and the “in SES incubation” Facilitator of Legal and Transactions Services must, through a public forum post, provide a verification of the legal and governance structure appropriateness for holding a large amount of low-risk real-world asset collateral for Maker.

**Deal Economics Verification**

The Real-World Finance Facilitator must, also through a public forum post, provide a Verification of the economics of the final deal terms and ensure that they are in line with the best interest of MakerDAO.

For avoidance of doubt, these Verifications are, of course, voluntary in nature. Should one such verification not be forthcoming, for whatever reason, this MIP will not move forward in the collateral onboarding process to eventually fulfill the conditions of MIP70c4 (executive vote and block removal) and the Maker Community can use MIP70c5 (cancellation procedure) to remove the onboarding block, or RWAC (on behalf of HVBank) can use MIP70c6 to unilaterally withdraw the Collateral Onboarding and remove the non-MIP Collateral Onboarding block.

These verifications take the place of the risk assessment described in the Collateral Onboarding guide.

### MIP70c3: Technical conditions of the collateral onboarding

The Collateral Engineering Services Core Unit must, with support from the Protocol Engineering Core Unit and any other relevant Core Units, deploy smart contracts that hard code the ETH Address emitted by the legal structure specified in MIP70c2, and follow the MIP21 framework.

These smart contracts must only allow for the generation of Dai through a vault that is sent to the ETH address of the legal structure as its ultimate destination, and it must not be technically possible to send the Dai elsewhere, in accordance with MIP21.

There must also not be any additional technical features or complexity that goes beyond the minimum necessary smart contracts and dummy constructs to enable the generation of Dai and its transfer to the ETH Address emitted by the legal structure.

The ability to initiate the generation of Dai from the vault and trigger their transfer to the ETH Address emitted by the legal structure is given to an Ethereum address controlled by the Trust Sponsor (or other relevant counterparty, depending on the outcome of structuring discussions). This address must have no ability to access the funds.

### MIP70c4: Specification of executive vote and collateral onboarding block removal

When the collateral onboarding process for MIP70 has progressed to step 7, and with the conditions specified in MIP70c2 and MIP70c3 met, an executive vote must be created (or code must be bundled into a broader executive vote) that activates all permissions for the vault to be onboarded based on the smart contracts specified in MIP70c3.

The vault must provide:

* Debt ceiling of 100 million DAI

* Stability fee of 0% (surplus is paid manually through the legal structure)

* All other parameters must be set to ensure they have no functional impact.

Once the Executive vote has been approved and the vault is operational with its full debt ceiling available and risk parameters as specified, the non-MIP collateral onboarding block described in MIP70c1 is released.

### MIP70c5: Collateral onboarding cancellation procedure

The collateral onboarding can be canceled at any time by the community through a standard or urgent signal request process.

This will remove the block on onboarding collateral through non-MIP processes as specified in MIP70c1, nullify the permission to create the executive vote, or bundle its code into another executive, as specified in MIP70c4, and formally remove MIP70 from the Collateral Onboarding process.

The goal is that this option should never be necessary, as the combination of collaboration/coordination and already undertaken efforts, in and around this subject, should allow the collateral onboarding to happen swiftly after the approval of the MIP.

If it becomes necessary to use the cancellation feature regardless, this would be considered a significant failure of protocol coordination and execution, and in most cases the proposer of this MIP should expect to lose their trust and reputation in the community. This risk helps ensure that only the most serious proposals by the most competent proposers will be willing to use this process.

### MIP70c6: Unilateral Instant Collateral Onboarding withdrawal

After this MIP has been approved, RWAC (on behalf of HVBank) can at any time through a public forum post, unilaterally withdraw the Collateral Onboarding application. This nullifies all aspects of MIP70c1, MIP70c2, MIP70c3 and MIP70c4, and instantly removes the Collateral Onboarding block specified MIP70c1, and formally removes MIP70 from the Collateral Onboarding process.

This option allows the proposer to prevent their reputation from being damaged by forcing the community to spend time and energy on performing a MIP70c5 cancellation procedure, if some unforeseen issue should arise after the approval of the MIP.

### MIP70c7: Unilateral Instant Collateral Onboarding deferral

After this MIP has been approved, RWAC (on behalf of HVBank) can at any time through a public forum post, unilaterally defer all aspects of MIP70c1, MIP70c2, MIP70c3 and MIP70c4 for one or two calendar months. This is intended to be used in the event that there is an unexpected delay in the structuring process. By deferring the collateral block, this seeks to balance the need for prioritization with not inhibiting other counterparties from being onboarded if they are ready. If by the end of a two month period (which would be two months after this MIP passes) the issue has not been solved and the block has not been restored, this MIP should be considered null and void.