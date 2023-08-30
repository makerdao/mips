# MIP102c2-SP4: MIP Amendment Subproposals

## Preamble

```
MIP102c2-SP#: 4
MIP(s) to be amended: MIP104
Author(s): @GFXlabs
Contributors:
Tags: subproposal, endgame, scope-framework
Type: General
Status: RFC
Date Proposed: 2023-03-02
Date Ratified: N/A
Forum URL: https://forum.makerdao.com/t/mip102c2-spxxx-mip-amendment-subproposals/20035
Ratification Poll URL: 
```

## Specification

### Motivation

This subproposal will amend MIP104 to better codify and standardize Arranger reporting requirements.

### Amended MIPs and Components

MIP104 Section 5

### Amendment Pull Request

<https://github.com/makerdao/mips/pull/954>

Two sections are modified by this amendment. If other MIP102c2 amendments are being voted upon in the same monthly cycle as MIP102c2-SP4, then MIP102c2-SP4 overwrites any other amendments passed concurrently for the two sections: 5.1.2., and 5.1.4.

### Summary of Changes

* Expanded 5.1.2 fees for stablecoins to cover any collateral expected to never realistically depreciate in value, such as US government securities and bank deposits.
* Provided explicit guidance in 5.1.4 about what information Arrangers should report, and two different pathways to be compliant.

<hr>

> #### 5.1.2: Arranger Standard Fees
> 
> Arrangers may charge a maximum reporting fee of 15 basis points per year on top of other fees charged by the structure and the Asset Manager. The fee is calculated based on the utilized Debt Ceiling of the Arranger Vault, and may not be charged up front without a standalone vote by governance for approval. For stable asset Arranger services, Arrangers may charge up to 10 basis points. Any asset reasonably expected to only maintain or grow value, such stablecoins, US government securities, or bank deposits is a stable asset. In the event a single Arranger structure contains both stable assets and non-stable assets, the maximum fee applies proportionately to each part of the portfolio.
> 
> An Arranger that is not compliant with 5.1.4 for 60 days or more will not receive further funding from MakerDAO governance or the entities it reports upon until it becomes compliant. In the event the Arranger reports upon multiple entities, the prohibition applies only to the specific entities and Maker vaults where the Arranger is noncompliant.
> 
> #### 5.1.4: Arranger Reports and Stress Tests
> 
> Arrangers must publish monthly reporting on each Arranged Structure they have arranged, and must every six months also publish stress test analysis that shows how the structures would perform based on historical financial crisis scenarios and other example scenarios. The Stability Facilitators must periodically fund independent Ecosystem Actors to review and verify the quality and the results of the stress tests. Should an independent review produce an unfavorable result, the Responsible Facilitators must propose a governance poll for warning, temporarily deactivating, or permanently offboarding the Arranger and/or the Asset Managers connected to the discovered issue.
> 
> Monthly reports must satisfy 5.1.4.1 *or* 5.1.4.2 *or* 5.1.4.3 to be considered compliant.
> 
> #### 5.1.4.1
> 
> The following information should be included in the monthly Arranger report. Each item should be provided for at least the beginning and ending date of the reporting period (the first business day after beginning date and last business day before the ending date may be used if the beginning and ending dates fall on days markets are closed):
> 
> * Cash balance.
> * Cash income over the reporting period. Any income over $20,000 in value should be broken out as its own line item, and an explanation provided for any non-recurring or non-ordinary expensesi.
> * Cash expenses over the reporting period. Any expense over $20,000 in value should be broken out as its own line item, and an explanation provided for any non-recurring or non-ordinary expenses.
> * Market value of publicly traded equities, ETFs, and mutual funds.
> * Market value (the closing price) of publicly traded debt securities. Debt securities that are investment grade and less than 12 months from maturity may alternatively be reported at cost basis + linearly recognizing scheduled interest income.
> * A valuation for illiquid or privately traded assets. This should utilize a valuation from a reputable third party with relevant expertise or follow a well-defined methodology that is explained in detail in the report.
> * CUSIPs, date of purchase, date of maturity, coupon, cost basis, and face value of all publicly traded debt securities in the portfolio for the last day of the reporting period.
> * DAI inflows from the Maker protocol during the reporting period.
> * Total repayments on-chain to the Maker protocol either to a vault or for surplus. If repayments are derived from multiple sources, they should be broken out into line items for each source.
> * Vault debt to the Maker protocol.
> 
> The Scope Facilitator must publicly state on the MakerDAO forum that they have reviewed original documentation for accounts that supports the Arranger’s summarization.
> 
> #### 5.1.4.2
> 
> The following information should be included in the monthly Arranger report:
> 
> * Copies of original statements for all bank, brokerage, exchange, custodial, or other accounts. The Arranger may redact the names for non-Arranger service providers if and only if that is a requirement of confidentiality agreements with the non-Arranger service providers.
> * DAI inflows from the Maker protocol during the reporting period.
> * Total repayments on-chain to the Maker protocol either to a vault or for surplus. If repayments are derived from multiple sources, they should be broken out into line items for each source.
> * Vault debt to the Maker protocol.
> 
> #### 5.1.4.3
> 
> The following information must be provided through public read-only access to all accounts:
> 
> * All asset balances
> * All transaction amounts (non-Arranger service provider names may be redacted)
> * Hold-to-maturity yields (for assets with maturity) or current yield (for assets with no maturity)
> 
> In addition, Makerburn.com, Daistats.com, or another dashboard must be publicly available to summarize DAI inflows and outflows from the Maker vault.
