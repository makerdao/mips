# MIP13c3-SP4 Declaration of Intent & Commercial Points - Off-Chain Asset Backed Lender to onboard Real World Assets as Collateral for a DAI loan

## Preamble
```
MIP13c3-SP#: 4
Author(s): Matthew V Rabinowitz (@mrabino1 or mr@6s.capital)
Contributors: n/a
Status: Accepted
Date Proposed: 2020-09-01
Date Ratified: 2020-10-27
---
Declaration Statement: Maker Governance Intends to Utilize an Off-Chain Asset Backed Lender to onboard Real World Assets into the Maker Protocol to borrow DAI and deploy in the “Real World”.
Declaration to Replace: n/a
```

## Specification

### Context and Motivation

As the MKR protocol evolves and new collateral is added to the collateral portfolio, there is a direct need to diversify away from on-chain crypto assets and bring in uncorrelated “Real World Assets” (especially collateral that is backed with credit quality). Furthermore, in addition to bringing stability, an economically motivated independent real world party and sound legal structure will add liquidity to the DAI ecosystem helping to tame the DAI price and use market forces to pull it towards its reference currency, the US Dollar. In doing so, a series of legal structures will be used to secure protections for MakerDAO to allow the lending of DAI to LendCo (an off-chain asset backed lender). This DAI will be converted to USD, and the USD, along with equity that LendCo has and will continue to raise, will then be used by LendCo to provide secured loans to willing Borrowers (“BorrowCo”).

### Declaration

MakerDAO desires to engage 6s, as an off-chain asset backed lender, to cause the addition of a new collateral type (real world assets) along with new roles that would need to be filled from a person(s) / entity nominated by MKR holders. As an off-chain asset-backed lender, 6s would then engage the MKR community in a compliant way to execute a revolving credit facility loan agreement to help bring DAI loans to the “real world,” complementing the business operations of 6s.

6s would then fundamentally put a revolving credit facility loan agreement inside a trust for the benefit of MakerDAO. As a result, MakerDAO will need to create a new role (or expand the roles of others) of a “Maker Representative(s)” as a person and/or legal entity that will be authorized to sign the legal documents necessary to set up the real world side of the transaction including, sponsoring the trust and engaging the regulated Trust Company that will serve as trustee of the trust.

Please see the rest of this document for all supporting documentation, reference links, and associated historical posts.

## Supporting Materials

1. Introduction to 6s

2. How is this different?

3. The Maker Representative

4. The Legal Structure + Compliance

5. Core Operative Documents

6. Oracles

7. Liquidations

8. Capital Flow

9. Real World Asset module

10. Why is this important?

11. Time Horizon

12. Legal Structure Selection

13. 6s Capital LLC (“6s”) / Maker Community (“MKR”)

14. Matthew Rabinowitz’s Bio

15. Projects First in Line

16. General Next Steps

### Introduction to 6s

6s Capital LLC & 6s Capital Partners LLC (together “6s”), Delaware USA, along with any future international tax optimized feeder structures

6s works with multiple commercial real estate developers throughout the United States. Those developers build buildings that include a long-term lease. 6s provides secured loans equal to 100% Loan-to-Cost for construction and the underlying real estate acquisition until completion. Those buildings are customized (build-to-suits) and ground leases for Credit Tenant Leases.

Specifically:

Real-Estate

---Commercial

-----Credit Tenant Lease

-------Single-Tenant Net Lease

Construction Time Lapse for an already-completed project - [Sample](https://6s.capital/constructiontimelapse/)

6s was born during the COVID-19 banking credit squeeze when its sister company, 6s Development LLC, had challenges with banks no longer wanting to provide credit. The principals of 6s Development LLC have been doing Credit Tenant Lease development for 15 years and have built well over a thousand locations. 6s Capital LLC aims to permanently replace and ensure a future is built on a financial foundation of rock, not sand. None of the locations built by 6s Development have defaulted.

### How is this different?

MakerDAO as a credit facility fundamentally provides credit in exchange for risk-adjusted ability to foreclose on assets used as collateral. In this context, MakerDAO would be bringing on “Real World Assets” as collateral, and in doing so, how liquidations would be caused/triggered needs to be adopted for this context.

In the real world, a digital oracle to automate the decision of whether a “breach” has occurred that would then trigger a liquidation will not work. 6s and MKR governance* first must agree on the type of real world events that would trigger a liquidation of a loan to 6s. The most common would be a breach of a covenant by 6s. A digital oracle cannot walk into a court of law and file a breach of contract claim or a foreclosure claim against 6s. Only a “person” with standing to sue in Court can do that. MakerDAO and 6s can agree on the obligations/requirements/covenants and memorialize those terms in a vote, but those same agreed terms must next be memorialized in a written credit facility agreement that is signed by a real “person” to be enforced by law in the real world. (as opposed to purely numeric with a pricing oracle) or code.

**Note**: As MKR Governance itself cannot execute a legal document, MKR Governance will need to appoint and nominate one (or more) “Maker Representatives” (natural persons or legal entity). The “Maker Representatives” will first sign the written agreements necessary to execute the understanding between 6s and MakerDAO and will require approval by a vote of MakerDAO governance members. This same authorized Maker Representative will be expected to carry out duties assigned to it by MakerDAO itself. For example, one responsibility will be to set up the trust and hire the trustee, which will require signed physical written agreements. Another duty will be informing the trustee what MakerDAO expects the trustee to do. Another duty might be to review the reporting/reports from 6s or the trustee of the trust to attest to the community whether or not 6s remains in compliance with the revolving credit facility agreement. Other duties will be general real world administrative matters that cannot be decentralized or automated on a blockchain. This representative will be an indemnified role.

### The Maker Representative

• Appointed by MakerDAO
• Given specific written authority by MakerDAO to take only particular actions approved by MakerDAO
• Sign real world legal documents on behalf of MakerDao as needed to carry out the will of MakerDao in the real world with respect to the DAI being lent and the approved real world collateral being received
• Represent the will and the rights of MakerDAO
• Sponsor the formation of the Trust for the benefit of MakerDAO
• Engage and instruct the Trust Company to be the Trustee of the Trust
• Instruct the Trustee to execute the revolving credit facility agreement and other documents between the trust and LendCo in accordance with the authority approved by MakerDAO
• Oversee movement for DAI from MakerDAO to the Trust (through a series of steps)
• Oversee exchange of DAI to USD
• Oversee Trustee actions
• Review reports from 6s and/or trust and attest to the revolving credit facility agreement's compliance by 6s and compliance of the trust agreement by the trustee to the MKR community.
• If also a legal entity, the Maker Representative Entity (“MRE”) and the TFE could be the same. Further, it is the TFE that will provide the actual DAI to the Trust.

Pursuant to the terms of the revolving credit facility agreement, 6s and MKR governance would agree on a set of reporting requirements that 6s would be required to deliver to a Maker Representative quarterly (with some spot inspection rights). Should 6s be in breach of the agreement, and all cure periods have expired, the Maker Representative would report this information to MakerDAO. After that, MakerDAO would and should liquidate the vault and instruct the Maker Representative to notify the Trustee to commence real world liquidation on 6s loans (which would then wind-down the affairs of 6s and sell any remaining assets). All USD proceeds would then be delivered to the Trust to repay the loan of 6s; the trustee would convert the USD to DAI and return the DAI to MakerDAO. 

### The Legal Structure + Compliance

**Compliance includes, but is not limited to:**
 * Annual audited financial statements of 6s
 * Quarterly Independently reviewed financial statements
 * List of all outstanding loans
   * In construction
   * Performing
   * Non-performing
   * Equity Requirement Reports per loan

The Maker Representative’s role will be to report on compliance of 6s and execute the operative documents between 6s and MKR holders. However, MakerDAO could decide to assign other duties to the Maker Representative.

Further, and subject to MKR consent, a legal entity is also recommended to hold a Maker Representative role, which may also be the Tax Favorable Entity (“TFE”), providing the DAI loan proceeds to the Trust, thus consolidating the two.

Subject to legal & tax requirements, verification, and MKR discussion, a Cayman Islands legal entity may be recommended.

* https://www.treasury.gov/resource-center/tax-policy/treaties/Documents/FINAL%20US%20-%20Cayman%20Islands%20-%20Cayman%20alternat.pdf
* https://wagnerduys.com/resources/resource/withholding-exemptions-to-cross-border-interest-payments/

Regardless of the jurisdiction, that Maker Representative Entity (“MRE”) would be the party authorized by MakerDAO to sponsor of the Trust and cause its formation and engagement with the Trustee, a regulated Trust Company. This Maker Representative Entity shall also serve as an administrative role (e.g., paying bills/questions about MKR governance, etc.). To clearly define the MRE role, MakerDAO should assign the MRE duties and approve them in the vote. Thus, all parties (6s, MakerDAO, the trustee, auditor, etc.) know precisely what the MRE can and cannot do on behalf of MakerDAO. Also, the trust agreement will include provisions stating that:

1. Underlying trust agreement cannot be changed without a vote from MakerDAO community with notice of the vote delivered to the trustee
2. Underlying trust agreement cannot cause a liquidation without getting direction from the MakerDAO from etherscan.io or vote.MakerDAO.com
3. Underlying trust agreement allows that an MKR vote (vote.MakerDAO.com) can replace the MRE at its sole discretion and will notify the trustee of this change.

As contemplated, the Trust should have minimal taxation as the TFE / Maker Representative Entity would receive the taxable interest income.

After the final jurisdiction of the TFE is determined, someone / some group in the community, in collaboration with Matthew Rabinowitz and with local counsel, will form the entity (or cause it to be created). The TFE will explicitly *not* be run / owned / affiliated with LendCo or its officers.

### Core Operative Documents

* Revolving credit facility agreement (between 6s and Trust for benefit of MakerDAO)
* Promissory note and security documents (between 6s and Trust for benefit of MakerDAO)
* Trust Agreement (between the sponsor, the Trust and the Trust Company, as trustee and with MakerDAO and trust beneficiary.)

As this structure may exist for decades, a Trustee is being engaged to follow the Trust Agreement in the event of a 6s breach or MKR liquidation of the vault. This ensures that the liquidation proceeds are held “in-trust” in favor of the beneficiary of the Trust (which shall be the same smart contract as outlined above under how LendCo would repay its debt).

6. Diagram of Operative Documents and Flow:

![image2](https://user-images.githubusercontent.com/4902221/91903313-50f0bc80-eca3-11ea-83fa-ff4bd1f8797e.jpg)
<img width="688" alt="image3" src="https://user-images.githubusercontent.com/4902221/91903317-50f0bc80-eca3-11ea-98f7-2e87f317e7d9.png">

### Oracles

No data feed Oracle for this collateral type. However, the revolving credit facility agreement will have data reporting requirements maintained to remain in compliance and keep MKR governance from liquidating the vault. The Maker Representative shall be the “trusted” interface between 6s, the trustee, and the MKR governance. Fundamentally, this reporting shall comprise an “analog oracle.” The foregoing notwithstanding, the 6s team will actively communicate with the community in addition to the Maker Representative.

Further, a Technical MIP is being submitted for review. Please see the reference section at the bottom of this document.

### Liquidations

The Trustee (a regulated Trust Company) will follow the Trust Agreement and the revolving credit facility agreement established for this transaction. If given a liquidation signal from MKR governance, it will liquidate all assets pursuant to the revolving credit facility agreement and the trust agreement for the benefit of the trust beneficiary and deliver proceeds to pay down the Vault balance.

### Capital Flow

1. Mint new DAI to TFE
2. TFE lends DAI to Trust

   * Send DAI to a U.S. broker-dealer FBO the trust (Ethereum address)
   * Trustee instructs broker-dealer to exchange DAI for USD inside the trust account with the broker-dealer
   * Trustee instructs broker-dealer to transfer USD to a bank account in the name of the trust
3. Trust lends USD to LendCo (1*)
   *  Send to title company in escrow for a closing between LendCo and its borrower
4. LendCo conduct lending operations and either repays the loans to the Trust or recycles the capital back into another approved scope transaction
5. LendCo repays the Trust in USD (1*)
   * Trustee wires USD to trust’s account with broker-dealer and instructions BD to exchange USD for DAI
   * The Trust repays DAI to the TFE (Ethereum address)
6. The TFE repays DAI to the vault

---

### Real World Asset module

The below structure contemplates FIVE fundamental levers that MKR governance can control to influence LendCo’s behavior:

1. Aggregate Debt Ceiling
2. Risk Premium - Interest Rate
3. Scope (may be modified by MKR governance ratification of a LendCo request)
4. Equity Requirement per LendCo transaction (may be modified by MKR governance ratification of a LendCo request)
5. Liquidation

Given the operational business needs of LendCo and the possible (if not likely) need to tweak parameters for the benefit of DAI stability, the frequency surrounding modifications should be on a weekly cycle with proper forum posts in advance.

Once the legal entities and legal contracts are in place, MKR Governance need only modify the five levers above to control / incentivize LendCo (regardless of how many BorrowCos are behind LendCo).

### Why is this important?

This proposal for the community introduces a new market force to help stabilize the DAI ecosystem. Further, it is a natural counterbalance to helping push DAI to its reference currency, the US Dollar. By introducing an external economically incentivized third-party, further liquidity will be added using an approved “capital sink.”

1. It is critically important that any DAI that overflows into this structure for Real World Asset Backed Loans have the community’s pre-approval for credit quality.
2. A “capital sink” or a “capital battery” in this context means a known holding “pool” for capital that has been / can be deployed with the known credit in an approved structure.

By implementing legal structures that help secure the MakerDAO from the “hit by the bus scenarios,” the DAI ecosystem will have an overflow value for excess DAI (when above $1) and a mechanism for encouraging repayment below $1. In doing this, a needed dampening effect is created that will help smooth out the DAI price.

- Graphical Objective: 

![image1](https://user-images.githubusercontent.com/4902221/91903307-4f26f900-eca3-11ea-89ca-ce60a2891aab.png)

The above is achieved by using market forces and an economically motivated off-chain structure.

* Every time the market price is above 1, an economically motivated off-chain party should mint DAI to deploy off-chain. In reverse, when DAI is below 1, that same party should seek to repay the debt.
* When DAI is materially above 1, that party is well motivated to scale-up operations to deploy capital in-bulk.
* That capital could be held off-chain for weeks / months / years.

### Time Horizon

This proposal does not have a time restriction on how long the DAI will be borrowed by the TFE / the Trust / LendCo (1*). Rather LendCo is economically incentivized to respond to market forces and deploy / repay capital accordingly. As such, if the market conditions continue, the overflow DAI may be deployed (and recycled) off-chain for months / years.

This size of the overflow / capital sink is constrained by:

1. Community approved debt ceiling
2. LendCo operations (scope)
3. LendCo economics

### Legal Structure Selection

The combination of a bankruptcy remote Trust + an Operating LLC (as a Lender, LendCo) is needed for a few essential reasons:

1. MakerDAO is a collection of unknown people or legal entities. A legal construct is needed to give them standing in a Court of Law to enforce a contract. A Trust with MakerDAO as beneficiary meets this requirement.
2. Legal precedence with a bankruptcy remote Trust
   * If the trustee goes bankrupt, the assets of the trust will not become part of the bankruptcy estate of the trustee. The trust assets will always be separate and held for the beneficiary MarkerDAO. Industry familiarity with how to liquidate real-estate assets should a liquidation be triggered
   * The Revolving Credit Facility Agreement is commonplace for most large companies to access inexpensive costs of capital from a bank. A bank does not need a Trust to foreclose on assets in the event of a breach / liquidation. For MKR, since those rights are held by an unknown group, a Trust (above) is needed
   * Concentration of compliance and audit requirements to LendCo
   * Individually, a Trust structure is not new. The Revolving Credit Facility Agreement is not new. Pushing them together with MakerDAO as the beneficiary with an MKR community defined scope is novel.
   * As a result of the above, from the big picture LendCo can borrow DAI / USD (1*) in significant scale without increasing the cognitive load on the MKR community / Maker Representative.
   * The independent accountants handle the scale of transactions while the auditors ensure the books are being kept in accordance with GAAP. The Maker Representative then needs to review the aggregate work done by everyone else to attest to the community that things are in compliance.

The ending structure for 6s looks like(2*):

<img width="1040" alt="6s" src="https://user-images.githubusercontent.com/32653033/95021451-16ca6000-063f-11eb-8058-fe337ee7349b.png">

(2*) as further described in the term sheet below.

![6s2](https://user-images.githubusercontent.com/32653033/95021452-17fb8d00-063f-11eb-80d7-b00cc2a50ad4.png)

### 6s Capital LLC (“6s”) / MakerDAO (“MKR”)

<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"></head><body class="c46"><p class="c45 c13"><span class="c19"></span></p><p class="c45"><span class="c19">6s Capital &nbsp;LLC (&ldquo;6s&rdquo;) / Maker Community (&ldquo;MKR&rdquo;)</span></p><p class="c13 c45"><span class="c19"></span></p><p class="c45"><span class="c19">TERM SHEET</span></p><p class="c45 c13"><span class="c19"></span></p><p class="c45"><span class="c19">FOR DISCUSSION PURPOSES ONLY - PUBLIC DRAFT</span></p><p class="c45 c13"><span class="c19"></span></p><p class="c7"><span class="c52 c34"></span></p><a id="t.f01c88a76475c2e34fa5fcbde0b997b863ab1e5d"></a><a id="t.0"></a><table class="c54"><tbody><tr class="c51"><td class="c32" colspan="1" rowspan="1"><p class="c21"><span class="c28">Purpose / Objective</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c0">To structure a real world credit facility for an asset backed lender utilizing the MKR DAI ethereum facility to deploy capital into commercial real estate projects by structuring and marrying the debt capital with preferred equity such that 100% of the capital stack can be constructed and then lent to a willing borrower on commercially reasonable terms. Further, by utilizing a Trust structure with an independent and regulated Trust Company together with a revolving credit facility agreement, we can provide a mechanism to protect MKR holders in the event of a liquidation </span></p></td></tr><tr class="c51"><td class="c32" colspan="1" rowspan="1"><p class="c21"><span class="c28">Parties</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c0">Matthew V Rabinowitz, Managing Director of 6s Capital LLC</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c37 c38">6s Capital LLC, a Delaware limited liability company (&ldquo;6s&rdquo;), manager of LendCo (</span><span class="c17 c47"><a class="c30" href="https://www.google.com/url?q=http://6s.capital&amp;sa=D&amp;ust=1598980951309000&amp;usg=AOvVaw2iKpi4ZXEqHXtZQelCgYbq">http://6s.capital</a></span><span class="c0">)</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">6s Capital Partners LLC, a Delaware series limited liability company and possible future offshore feeder sourcing structures, for tax optimization purposes only (&ldquo;LendCo&rdquo;)</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Maker Community (&ldquo;MKR&rdquo;)</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c17">&nbsp; TBD &nbsp; </span><span class="c0">&nbsp;Trust, a Delaware Statutory Trust (&ldquo;Trust&rdquo;), or a different jurisdiction, as needed</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c17">&nbsp; TBD &nbsp; </span><span class="c0">&nbsp;Trust Company (&ldquo;TrustCo&rdquo; or &ldquo;Trustee&rdquo;), a regulated Trust Company</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Maker Representatives (1 primary with 2 backups and an updated ETH address controlled exclusively by governance that may be updated at MKR governance discretion to nominate new people). Maker Representative may also be a legal entity in a jurisdiction of its choosing provided that it is approved by MKR Governance. Maker Representative shall be indemnified by 6s.</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Tax Favorable Entity (&ldquo;TFE&rdquo;) provides a revolving DAI loan to the Trust. The TFE may also be a Maker Representative Entity. </span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c17">&nbsp; TBD &nbsp; </span><span class="c0">&nbsp;LLC, a Delaware limited liability company (&ldquo;BorrowCo&rdquo;)</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">collectively known as the &ldquo;Parties.&rdquo;</span></p></td></tr><tr class="c33"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">LendCo Operational Scope</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c37 c38">Make </span><span class="c37 c38">asset-backed loans, starting with: construction </span><span class="c0">of new credit tenant lease single-tenant locations throughout the United States (with no State specific restriction) or refinance stabilized inventory for the same. Tenant lease shall be Ground Lease or Build-to-Suit which is either a double-net or triple-net lease in place. LendCo must have a first position senior lien on the collateral provided by its borrower.</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Scope may be modified by MKR governance ratification of a LendCo request.</span></p></td></tr><tr class="c43"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">General Sequence</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><ol class="c11 lst-kix_24ss04rmvdct-0 start" start="1"><li class="c1"><span class="c0">BorrowCo approaches LendCo for a construction or refinance loan for a project with a credit tenant with a lease that is already executed and valid.</span></li><li class="c1"><span class="c0">LendCo Reviews Loan request &nbsp;to see if it meets lending requirements.</span></li><li class="c1"><span class="c0">LendCo Rejects / Approves Loan</span></li><li class="c1"><span class="c0">LendCo Raises Preferred Equity, if needed</span></li><li class="c1"><span class="c0">BorrowCo and LendCo execute all loan documents with all title review and legal work complete and a closing date is set</span></li><li class="c1"><span class="c0">LendCo deploys its equity at the closing (if needed and if within the equity requirement constraint), LendCo borrows against its credit limit with a DAI loan. </span></li></ol><ol class="c11 lst-kix_24ss04rmvdct-1 start" start="1"><li class="c20"><span class="c0">Upon Closing LendCo now has a senior lien on BorrowCo&rsquo;s real-estate and the project as a whole.</span></li></ol><ol class="c11 lst-kix_24ss04rmvdct-0" start="7"><li class="c1"><span class="c0">If a DAI loan is needed, LendCo borrows DAI and sells on the open spot market for USD. </span></li><li class="c1"><span class="c0">Project continues with progress checks from LendCo (pursuant to the Loan Agreement between LendCo and BorrowCo until such time as BorrowCo divests the project or is foreclosed upon by LendCo).</span></li><li class="c1"><span class="c0">To sell to a third-party, BorrowCo must get LendCo to release its senior lien. It then requests a payoff letter from LendCo to know precisely how much to repay LendCo in exchange for a release of the lien and all aspects under the loan documents.</span></li><li class="c1"><span class="c0">A closing date is scheduled, BorrowCo sells / refinances the project with a third-party. In doing so, the LendCo receives all remaining principal + interest and in exchange it releases the senior lien. </span></li><li class="c1"><span class="c0">LendCo repays the DAI loan (or revolves it into the next project) and repays the preferred equity investors pursuant to their subscription agreements.</span></li></ol><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">The cycle then repeats and is done in parallel with many borrowers.</span></p></td></tr><tr class="c43"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">LendCo Restrictions</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><ul class="c11 lst-kix_rkclm3ggussv-0 start"><li class="c1"><span class="c0">No speculative project risk. All projects must be either stabilized or &ldquo;shovel-ready&rdquo; pursuant to the scope, as amended and ratified by MKR Governance from a LendCo request.</span></li></ul></td></tr><tr class="c55"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">Operative Documents between MKR (or the Trust on MKR behalf) and LendCo</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><ul class="c11 lst-kix_miyb061lzrmb-0 start"><li class="c1"><span class="c0">Revolving Credit Facility Agreement (&ldquo;RCFA&rdquo;) - Based on a bank&rsquo;s traditional credit facility agreement but modified for MKR governance and liquidation to a Trust</span></li><li class="c1"><span class="c0">Statutory Trust Agreement (&ldquo;STA&rdquo;) that creates and governs the Trust</span></li><li class="c1"><span class="c0">Security Agreement (which includes an unconditional irrevocable assignment of all rights from LendCo in favor of the Trust (e.g. a pre-arranged divorce before you are married))</span></li><li class="c1"><span class="c0">LendCo ETH address: 0x000000000000000000000000000 (TBD)</span></li><li class="c1"><span class="c0">LendCo ERC-20: (TBD)</span></li></ul><ul class="c11 lst-kix_miyb061lzrmb-1 start"><li class="c20"><span class="c0">No economic value / No redemption value / No voting value (even if stolen)</span></li></ul></td></tr><tr class="c22"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">Operative Documents between LendCo and BorrowCos </span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><ul class="c11 lst-kix_ez1lxw988xq9-0 start"><li class="c1"><span class="c0">Loan Agreement (w/ draw schedule requirement) and term of up two calendar years (with 6 month extensions possible) - Construction to Bridge</span></li><li class="c1"><span class="c0">Promissory Note</span></li><li class="c1"><span class="c0">Deed of Trust / Mortgage</span></li><li class="c1"><span class="c0">Consents</span></li></ul><ul class="c11 lst-kix_ez1lxw988xq9-1 start"><li class="c20"><span class="c0">General Contractor </span></li><li class="c20"><span class="c0">Architecture </span></li><li class="c20"><span class="c0">Engineering</span></li></ul><ul class="c11 lst-kix_ez1lxw988xq9-0"><li class="c1"><span class="c0">Environmental Indemnification Agreement</span></li><li class="c1"><span class="c0">Personal Guarantee / Completion Guarantee with &ldquo;Bad Boy&rdquo; carve-outs</span></li><li class="c1"><span class="c0">Bank Account Control Agreement</span></li><li class="c1"><span class="c0">Equity Pledge Agreement</span></li><li class="c1"><span class="c0">Operating Agreement (Common for all BorrowCos)</span></li></ul></td></tr><tr class="c22"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">Revolving credit facility agreement - Modified for MKR governance and liquidation to a Trust</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c17 c34">General</span></p><ul class="c11 lst-kix_i8tmjyjs27ld-0 start"><li class="c1"><span class="c0">Debt-to-Equity / Equity Requirement per loan</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-1 start"><li class="c20"><span class="c37 c38">Required equity must be completely deployed into a given project </span><span class="c17">before</span><span class="c0">&nbsp;any MKR proceeds may be used for that project.</span></li><li class="c20"><span class="c0">Approved Tenants</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2 start"><li class="c25 c14"><span class="c0">Starting ratio of 30% equity requirement for new construction and 15% for refinance / stabilized inventory.</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-1"><li class="c20"><span class="c0">Discretionary Tenants</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2 start"><li class="c25 c14"><span class="c0">Starting ratio of 30% equity requirement for new construction and 20% for refinance / stabilized inventory.</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-1"><li class="c20"><span class="c0">MKR governance may modify the equity requirement higher or lower at its discretion, but in no case shall the equity requirement be higher than 30% equity per transaction (as measured at closing for that specific transaction)</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2 start"><li class="c25 c14"><span class="c0">However, if MKR governance subsequently lowers the equity requirement, all outstanding loans with a higher equity requirement are automatically internally &quot;refinanced&#39;&#39; with the new equity requirement. However, if the equity component is raised, the equity requirement shall only apply to transactions that occur after that &nbsp;governance decision.</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-1"><li class="c20"><span class="c0">Equity shall be &quot;released&quot; from a given project and recycled elsewhere within LendCo when a given project is stabilized (specific to if the equity requirement is different). </span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2 start"><li class="c25 c14"><span class="c0">Stabilized shall be determined when the project is either rent paying or the project is accepted by or handed over to the tenant where the credit tenant is then obligated to pay and the operational obligations of the BorrowCo are complete. </span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-1"><li class="c20"><span class="c0">Gap Collateral - At LendCo&rsquo;s discretion, equity may be substituted for evidence of capital deployed (with supporting documentation) by BorrowCo or the difference between the appraised stabilized value and an existing loan outstanding when LendCo will have the senior lien over the entire project (e.g. a given project is worth $8MM and the outstanding debt is $5MM, the $3MM difference (or a portion thereof) can be considered as equity if LendCo has a lien over the entire project, at LendCo discretion). Further, Gap Collateral may also take the form of capital locked and controlled via the Bank Account Control Agreement.</span></li><li class="c20"><span class="c0">Equity may be shifted internally within LendCo provided that all Debt-to-Equity ratios / equity requirements are not in breach on a project-by-project basis as projects complete.</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-0"><li class="c1"><span class="c0">Term </span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-1 start"><li class="c20"><span class="c0">After the first 36 months, the Term of the engagement shall change to be renewed for an additional 12 calendar months while the authorized MKR debt ceiling is above zero and the DAI outstanding is greater than 0. Further and after the initial 36 months, either party will be able to terminate the agreement with 12 months notice to the other or by LendCo repaying the outstanding balance (including all interest and principal) in full. The foregoing notwithstanding, should LendCo be in material breach of the revolving credit facility agreement, LendCo shall not be able to borrow any additional capital and must wind down operations. </span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-0"><li class="c1"><span class="c0">Reporting</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-1 start"><li class="c20"><span class="c0">LendCo must deliver the following after the execution of the RCFA to the Maker Representative: </span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2 start"><li class="c25 c14"><span class="c0">Annually on or before August 01 </span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-3 start"><li class="c2"><span class="c0">Audit of financial statements</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2"><li class="c25 c14"><span class="c0">Quarterly within 45 calendar days after the end of each time period</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-3 start"><li class="c12 c24 c39"><span class="c0">Independently reviewed financial statements (consolidated and consolidating)</span></li><li class="c2"><span class="c0">List of all loans outstanding with each closing binder for each transaction </span></li><li class="c2"><span class="c0">List of all loans in default (if any)</span></li><li class="c2"><span class="c0">Equity compliance report per loan outstanding</span></li></ul><p class="c25 c13 c39"><span class="c0"></span></p><ul class="c11 lst-kix_i8tmjyjs27ld-1"><li class="c20"><span class="c0">Inspections</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2 start"><li class="c25 c14"><span class="c0">Random Spot Inspections </span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-3 start"><li class="c2"><span class="c0">LendCo shall make its books available to a Maker Representative with 10 calendar day notice one time per calendar year in between reporting periods</span></li></ul><p class="c25 c13 c27"><span class="c0"></span></p><ul class="c11 lst-kix_i8tmjyjs27ld-1"><li class="c20"><span class="c0">Maker Representatives</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2 start"><li class="c25 c14"><span class="c0">Individual(s) or legal entity(ies) selected by MKR Governance to represent the best interests of the community.</span></li><li class="c14 c25"><span class="c0">All reporting requirements will be made to either the Maker Representative (that will have executed a Non-Disclosure Agreement with LendCo less to attest to compliance) or to nominated parties from MKR governance that will execute the same</span></li><li class="c25 c14"><span class="c0">LendCo will indemnify the Maker Representatives</span></li><li class="c25 c14"><span class="c0">LendCo will not be determined to be in breach if all of the appointed Maker Representative refuses to execute a non-disclosure agreement</span></li><li class="c25 c14"><span class="c0">Maker Representative subsequently attests to the MKR community LendCo&rsquo;s compliance in the following reporting areas</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-3 start"><li class="c2"><span class="c0">Annual Audit</span></li><li class="c12 c24 c39"><span class="c0">Quarterly Independently-reviewed &nbsp;Financial Statements Delivered</span></li><li class="c12 c24 c39"><span class="c0">No operations outside of approved scope</span></li><li class="c12 c24 c39"><span class="c0">No loans above portfolio threshold issued</span></li><li class="c12 c24 c39"><span class="c0">Debt-to-Equity ratios / equity requirements for all loans in compliance</span></li><li class="c12 c24 c39"><span class="c0">All loans issued are either performing or under construction</span></li></ul><ul class="c11 lst-kix_i8tmjyjs27ld-2"><li class="c12 c14"><span class="c0">Maker Representative may also be in the form of a legal entity. </span></li></ul><p class="c25 c13 c48"><span class="c0"></span></p><p class="c25"><span class="c0">Liquidations</span></p><ul class="c11 lst-kix_z9wlmxtqbkx5-0 start"><li class="c1"><span class="c0">In the event that MKR governance determines there has been a breach of the RCFA or that MKR determines that it no longer wants to continue to engage with LendCo, by MKR governance passing an executive vote, the Trustee will follow the trust agreement and allow a 12 month period to wind-down the facility. Should LendCo fail to do so, the Trustee will force the liquidation of the assets of LendCo and send proceeds to the Trust (which shall be held and ultimately transferred to MKR).</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Initial Operational Asset-Backed Lending Scope:</span></p><ul class="c11 lst-kix_dgkrkamgacs1-0 start"><li class="c1"><span class="c0">Commercial Real-Estate - Credit Tenant Leases</span></li></ul><ul class="c11 lst-kix_dgkrkamgacs1-1 start"><li class="c20"><span class="c0">LendCo must have a first position senior lien as a result of a transaction (or a legally perfected equivalent in the event of a white label structure)</span></li><li class="c20"><span class="c0">Tenant list may be modified by MKR governance ratification of a LendCo request.</span></li><li class="c20"><span class="c0">Compliance shall be measured at the time of loan closing to determine breach</span></li><li class="c20"><span class="c0">Starting List of Tenants for Build-to-Suit or Ground Leases</span></li></ul><ul class="c11 lst-kix_dgkrkamgacs1-2 start"><li class="c25 c14"><span class="c0">Commercial</span></li></ul><ul class="c11 lst-kix_dgkrkamgacs1-3 start"><li class="c2"><span class="c0">Dollar General</span></li><li class="c2"><span class="c0">Service King</span></li><li class="c2"><span class="c0">Caliber Collision</span></li><li class="c2"><span class="c0">O&rsquo;Reilly Auto Parts</span></li><li class="c2"><span class="c0">Wawa</span></li><li class="c2"><span class="c0">Tractor Supply</span></li><li class="c2"><span class="c0">Grocery Outlet</span></li><li class="c2"><span class="c0">Dutch Brothers Coffee</span></li><li class="c2"><span class="c0">Starbucks Coffee</span></li><li class="c2"><span class="c0">7-Eleven</span></li></ul><ul class="c11 lst-kix_dgkrkamgacs1-2"><li class="c25 c14"><span class="c0">Industrial</span></li></ul><ul class="c11 lst-kix_dgkrkamgacs1-3 start"><li class="c2"><span class="c0">Amazon</span></li><li class="c2"><span class="c0">FedEx</span></li><li class="c2"><span class="c0">UPS</span></li><li class="c2"><span class="c0">Chep</span></li></ul><ul class="c11 lst-kix_dgkrkamgacs1-0"><li class="c1"><span class="c0">LendCo may have up to 15% of its loan portfolio be discretionary so long as underwriting lending criteria are met</span></li><li class="c1"><span class="c0">Operational Asset Backed Lending Scope may be modified by MKR governance ratification of a LendCo request.</span></li></ul><ul class="c11 lst-kix_dgkrkamgacs1-1 start"><li class="c20"><span class="c0">2021 Target - Expand Scope to include a new investment grade industry for a capital sink</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Pricing</span></p><ul class="c11 lst-kix_vdmjcpfhauko-0 start"><li class="c1"><span class="c0">Proposed Risk Premium Range</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-1 start"><li class="c20"><span class="c0">Ceiling</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-2 start"><li class="c25 c14"><span class="c0">Wall Street Prime + 100 bps per annum</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-1"><li class="c20"><span class="c0">Floor</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-2 start"><li class="c25 c14"><span class="c0">50 bps per annum</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-0"><li class="c1"><span class="c0">Proposed Starting Risk Premium (subject to MKR governance modification) with any modification to the rate taking effect the first day of the subsequent month</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-1 start"><li class="c20"><span class="c0">Debt Ceiling: 0-25MM</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-2 start"><li class="c25 c14"><span class="c0">Wall Street Prime - 25bps (currently computed as 3.00%)</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-1"><li class="c20"><span class="c0">Debt Ceiling: 25-50MM</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-2 start"><li class="c25 c14"><span class="c0">Wall Street Prime + 0 bps (currently computed as 3.25%)</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-1"><li class="c20"><span class="c0">Debt Ceiling: &gt;50MM</span></li></ul><ul class="c11 lst-kix_vdmjcpfhauko-2 start"><li class="c25 c14"><span class="c0">Wall Street Prime + 25bps (currently computed as 3.50%)</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Initial Revolving Facility Size</span></p><ul class="c11 lst-kix_y9ih0sg51zpl-0 start"><li class="c1"><span class="c0">15MM DAI (subject to future modification by MKR governance)</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Forward Guidance / Target Revolving Facility Size</span></p><ul class="c11 lst-kix_y9ih0sg51zpl-0"><li class="c1"><span class="c0">~100MM DAI in 12 calendar months</span></li><li class="c1"><span class="c0">&gt;100MM DAI thereafter based on project demand and community sentiment</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Annual Revolving Facility Paydown Requirement</span></p><ul class="c11 lst-kix_qz01e4a1fd8y-0 start"><li class="c1"><span class="c0">If the revolver debt ceiling limit is hit, LendCo will pay down any amount accrued in excess of the Facility limit at least annually.</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">LendCo may further constrain its lending operations by &quot;Other Lending Constraint.s. </span></p></td></tr><tr class="c57"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">Trust Agreement</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c0">The Trust embodies the rights of MKR holders and lends the DAI to LendCo. The Trust shall be used in event of liquidation.</span></p><p class="c25"><span class="c0">&nbsp;</span></p><p class="c25"><span class="c0">Should a liquidation event occur whereby the Trustee had to pursue legal action against LendCo, all proceeds would be held &ldquo;in-trust&rdquo; for the benefit of the beneficiaries of the Trust. </span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">The beneficiaries of the Trust are to be explicitly defined as those who own MKR (or its subsequent replacement / relaunch). The Trustee will direct and send all liquidation proceeds to the repayment smart contract for LendCo.</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">LendCo shall repay its DAI loan directly to MKR or via the Trustee. Failure to do so, will cause the Trustee to liquidate LendCo assets and repay the DAI loan.</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">The Trustee will be directed to file all appropriate filing, formations, and tax returns for the Trust. </span></p></td></tr><tr class="c58"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">BorrowCo Requirements</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c0">Newly formed Delaware limited liability company in good standing with the State of Delaware</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">The principals behind any BorrowCo:</span></p><ul class="c11 lst-kix_db7ervnl4brb-0 start"><li class="c1"><span class="c0">No Bankruptcies</span></li><li class="c1"><span class="c0">Cleared independent background checks</span></li><li class="c1"><span class="c0">10 years minimum real-estate development experience</span></li><li class="c1"><span class="c0">Must disclose a Personal Financial Statement (PFS) to the satisfaction of LendCo</span></li><li class="c1"><span class="c0">Must disclose last 3 years of personal tax returns to LendCo</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Reporting:</span></p><ul class="c11 lst-kix_axwcyk19h7wz-0 start"><li class="c1"><span class="c0">Weekly construction reports</span></li><li class="c1"><span class="c0">Annual tax returns </span></li><li class="c1"><span class="c0">Quarterly financial statements </span></li><li class="c1"><span class="c0">Monthly Budget vs Actuals</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Guarantor:</span></p><ul class="c11 lst-kix_bvsfzy6mgwxj-0 start"><li class="c1"><span class="c0">Personal guarantee / Parent guarantee / completion guarantee (at LendCo discretion) with &quot;Bad Boy&quot; carve-outs from the principals of BorrowCo and its parent (if applicable)</span></li></ul><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">Legal Opinion:</span></p><ul class="c11 lst-kix_bvsfzy6mgwxj-0"><li class="c1"><span class="c0">Closing requirement per transaction of an enforceability opinion that the agreements and lien are enforceable in the jurisdiction of the loan</span></li></ul></td></tr><tr class="c59"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">Other Lending Constraints / Consideration</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c0">In addition to the equity requirement per loan, LendCo may also further constrain its lending activities by:</span></p><ul class="c11 lst-kix_gf2djmq0qdl-0 start"><li class="c1"><span class="c0">Loan-to-Value (measured at closing)</span></li><li class="c1"><span class="c0">Loan-to-Cost (measured at closing)</span></li><li class="c1"><span class="c0">Debt Service Coverage Ratio (DSCR, measured at closing)</span></li><li class="c1"><span class="c0">Developer exit spread compared to market</span></li><li class="c1"><span class="c0">Amount of loans outstanding to the principals of BorrowCo</span></li><li class="c1"><span class="c0">Portfolio exposure to a given tenant</span></li></ul></td></tr><tr class="c43"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">Governing Law</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c0">The Revolving Credit Facility Agreement shall be governed by New York law.</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">The Delaware Statutory Trust Agreement shall be governed by Delaware law.</span></p><p class="c25 c13"><span class="c0"></span></p><p class="c25"><span class="c0">The Borrower Loan Documents shall be governed by New York law with State specific enforceability provisions included per loan.</span></p></td></tr><tr class="c22"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">Sustainable Plan Objectives / International Expansion</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c0">Target:</span></p><ul class="c11 lst-kix_tnqvj4k9fcov-0 start"><li class="c1"><span class="c0">Starting with year 2 and by year 7</span></li></ul><ul class="c11 lst-kix_tnqvj4k9fcov-1 start"><li class="c20"><span class="c0">40% of all outstanding loans will be for renewable sustainable projects</span></li></ul><ul class="c11 lst-kix_tnqvj4k9fcov-0"><li class="c1"><span class="c0">Starting with year 5 to year 10 </span></li></ul><ul class="c11 lst-kix_tnqvj4k9fcov-1 start"><li class="c20"><span class="c0">30% international projects (subject to having EuroDAI (or other target reference currency available)</span></li></ul></td></tr><tr class="c53"><td class="c32" colspan="1" rowspan="1"><p class="c9"><span class="c28">Time Lapse - Sample</span></p></td><td class="c26" colspan="1" rowspan="1"><p class="c25 c13"><span class="c0"></span></p></td><td class="c41" colspan="1" rowspan="1"><p class="c25"><span class="c17 c47"><a class="c30" href="https://www.google.com/url?q=https://6s.capital/constructiontimelapse/&amp;sa=D&amp;ust=1598980951346000&amp;usg=AOvVaw1s-lWpecHZTGZ3-X6nK13t">https://6s.capital/constructiontimelapse/</a></span></p></td></tr></tbody></table><p class="c7"></div></body></html>

---

### Matthew Rabinowitz’s Bio

Matt is an execution driven business strategy and corporate finance professional with overall responsibility for 6s Capital LLC including managing the financial resources (banking, financing, equity capital) as well as the financial service providers (accounting, audit, insurance and tax). He has run point on strategic planning / business development / creating strategic alliances / contract negotiation / SPV implementations & management including assisting in the overall strategy, negotiations and contract support for the large (~10GW) renewable energy consortium including Boone Pickens, Fluor Corp. BNSF Railways, ABB, and Siemens. Thereafter, he assisted in the overall strategy, negotiations and contract support for two Life Settlement Trust Certificate bond offerings. He co-managed for two private placement debt arbitrage pooled investment funds. To achieve the best pricing on debt securities, he co-founded and ran back office operations for both an SEC Registered Investment Advisor and a subsequently acquired FINRA Broker/Dealer. He co-managed an oil & gas SPV to acquire an operating oil field asset which was subsequently divested. Finally, he co-founded a commercial real-estate development firm and designed its corporate structure. Matt earned a Master in Business Administration from the University of Texas at Dallas and a Bachelor of Science in Electrical Engineering from Texas Tech University.

### Projects first in line

The 6s team has identified two projects that have already cleared underwriting for financing after the above structure is put in place. Neither project has any construction/development risks. The two projects are both Ground Leases and have been “handed over” to the tenant. The Lease for each project is in force with the credit tenant on the hook to make rental payments with a store opening or date specific (whichever occurs first). No LOI or commitment to fund has been executed.

- Transaction #1 Required Closing Proceeds: $3,700,000
  - (Last Appraisal: $5,620,000)

- Transaction #2 Required Closing Proceeds: $5,200,000
  - (Last Appraisal: $7,140,000)

- Both transactions will require refreshed appraisals prior to a possible closing.

### Underlying Legal Documents

* Documents are still being drafted and should be posted in this thread prior to the deadline for the final executive vote.

* **Note:** The Trust Agreement will use the form provided by the selected corporate trustee. As one has not been finalized yet, we will provide a basic template; however, until a trustee is selected the “actual” draft cannot be provided. That said, we are proposing a Delaware statutory trust which means most of the terms of the trust agreement will come directly form the Delaware Trust Statute.

### General Next Steps

* Declaration of Intent (submitted)
* Community discussion / debate (RFC)
* Formal submission of proposals for Governance cycle
* Inclusion of polls for proposals
* Governance poll for proposals
* Executive vote for proposals (including the appointment of the Maker Representative(s)
  * If this proposal is accepted along with MIP21,
    * the initial debt ceiling would be voted on *but* would be conditionally set to zero following the Maker Representative report (below)
    * 6s team then deploys the structure contemplated herein alongside with the Maker Representative
 * Once the Maker Representative & 6s report to the community that all legal documents / entities are completely in place, a second executive vote would be held to implement the first debt ceiling as agreed in the first executive vote.
   * With this final action, 6s would be able to borrow DAI pursuant the revolving credit facility agreement.

## Relevant Links

* https://forum.makerdao.com/t/mip21-real-world-assets-off-chain-asset-backed-lender/3917
* https://forum.makerdao.com/t/how-makerdao-can-be-a-competitive-lender-in-the-credit-tenant-lease-marketplace/3521
* https://forum.makerdao.com/t/adding-real-world-assets-rwa-as-dai-collateral-is-a-critical-step-for-maker-to-stabilize-the-peg-and-in-doing-so-we-change-the-world/3653
* https://forum.makerdao.com/t/real-world-assets-ctl-document-roadmap-getting-started-v1/
* https://forum.makerdao.com/t/translucent-finance-off-chain-lenders/3800
* https://forum.makerdao.com/t/economics-behind-real-world-assets-rwa-part-1/3801
* https://forum.makerdao.com/t/economics-behind-real-world-assets-rwa-part-2/3893
* https://delcode.delaware.gov/title12/c038/sc01/
* https://docs.google.com/document/d/1sf0NIib9z8YXVlsEgur4twjlBp4HhN8jCS_epHKKZYw/edit?usp=sharing
* [FAQs based on commentary from the community](https://docs.google.com/document/d/1sf0NIib9z8YXVlsEgur4twjlBp4HhN8jCS_epHKKZYw/edit?usp=sharing)
* [CBRE - Q2 2020 Net Lease Investment](https://6s.capital/wp-content/uploads/2020/09/US-Q2-2020-Net-Lease-Investment.pdf)
* https://forum.makerdao.com/t/state-of-6s-business/4420?u=mrabino1
* https://forum.makerdao.com/t/agenda-discussion-collateral-onboarding-call-8-wednesday-september-16-17-00-utc/4062?u=mrabino1
* https://forum.makerdao.com/t/doi-off-chain-asset-backed-lender-to-onboard-real-world-assets-extended-q-a/4296?u=mrabino1

## Footnotes

1* - At present, it is unknown if the Trustee will require direct engagement to provide the loans from the Trust to LendCo to facilitate each closing or not. Further, it is unknown if the Trustee will allow the conversion of DAI to USD to be done at LendCo or if they will require that they do the conversion with an account that is in their name F/B/O the Trust. This Declaration of Intent is giving latitude for adjustment surrounding the flow of DAI / USD to meet the requirements of the Trust Company to be willing to serve as the Trustee of the Trust.
