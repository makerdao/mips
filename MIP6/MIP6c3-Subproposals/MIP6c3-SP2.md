# MIP6c-3SP2: Subproposal for changing the collateral application form

## Preamble

```
MIP6c3-SP: 2
Title: Subproposal for changing the collateral application form
Author(s): @lollike, @monkey.irish
Contributors:
Tags: mip-amendment
Status: RFC
Date Proposed: 2022-03-09
Date Ratified: <yyyy-mm-dd>
Forum URL: https://forum.makerdao.com/t/mip6c3-sp2-modify-the-collateral-application-form/13787
```

## Specification


### Motivation

Since the inception of [MIP6](https://mips.makerdao.com/mips/details/MIP6), MakerDAO and Core Units involved in collateral onboarding have gained a lot of insights from onboarding new collateral types into the Maker Protocol. These insights allow us to better understand what collateral types are desirable for MakerDAO from a risk, cost and revenue perspective.

Furthermore, analyzing the past work has allowed us to more precisely estimate the amount of work and cost of onboarding and continuously maintain collateral types in the Maker Protocol.

In addition, CES has analyzed previous domain team assessments and have solicited general input from said domain teams to understand what data is necessary for them to make an informed assessment. According to Core Units involved in the collateral onboarding process, the majority of assets that were greenlit by the MakerDAO community are not fit for onboarding. This is a symptom of a lack of relevant information to make an informed decision.

The conclusion of this analysis by CES and Collateral Management Onchain (CMON) Stakeholders is that the current application template does not contain all necessary information for Core Units or MakerDAO to make an initial informed decision whether or not a collateral type should be greenlit. This leads to Core Units and the general MakerDAO community having to spend time searching for information, rather than just verifying the correctness of data presented upfront.

The goal is therefore to amend the collateral application template to contain relevant questions that allow Core Units and the MakerDAO community to more easily make an informed opinion on whether or not a collateral type is fit to be greenlit to be onboarded into the Maker Protocol.

Comparing applications based on the new application template with the (soon to come) recommended metrics should therefore give the MakerDAO community a much better framework for assessing collateral applications.

**Please note, the questions in the application template applying to RWA collateral onboarding applications will remain unchanged.**

### List of Changes to Application Questions

The template has been rearranged and grouped into new sections. Therefore the entire new collateral template, containing both existing and new questions is proposed below.

**Background Information**

1. Who is the interested party for this collateral application?
2. Provide a brief high-level overview of the project, with a focus on the applying collateral token.
3. How long has the project been live in production?
4. Provide a brief history of the project.
5. Link the whitepaper, documentation portals, and source code for the system(s) that interact with the proposed collateral, and all relevant Ethereum addresses. If the system is complex, schematic(s) are especially appreciated.
6. Link to any active communities relating to your project.
7. How is the applying collateral type currently used? E.g. is it already being used in DeFi?

**Market Data**

8. What is the market cap for the asset?
9. Provide data on the current (and future, e.g. through vesting) token distribution.
10. Where does exchange for the asset occur?
    1. On how many exchanges is the asset listed on? List them.
    2. For centralized exchanges provide data on liquidity, volume and order book depth.
    3. For decentralized exchanges provide data on available liquidity, volume and order book depth.
11. List any possible oracle data sources for the proposed collateral type.
12. List any parties interested in taking part in liquidations for the proposed collateral type.

**Business Questions**

13. What is the use case of the vault? Please explain in detail what type of users and how many we can expect will use the vault.
14. What is the potential amount of Dai generated against the collateral? E.g. is there any commitment of the applicant to generate a minimum amount of Dai?

**Legal Questions**

15. Does one organization bear legal responsibility for the collateral? What jurisdiction does that organization reside in?
16. Has your project obtained any legal opinions or memoranda regarding the regulatory standing of the token or an explanation of the same from the perspective of any jurisdiction? If so, those materials should be provided for community review.
17. Describe whether there are any regulatory registrations for the token and provide related documentation (including an explanation of any past or existing interactions with any regulatory authorities, regardless of jurisdiction), if applicable.

**Technical Questions**

18. Link any available audits of the project. Both procedural and smart contract focused audits.
19. Does the asset follow any existing token standards? (E.g is it ERC20? Does it have 18 decimals?)
20. Is the asset controlled by a central actor?
21. Can balances be arbitrarily modified by a central actor?
22. Does the token have whitelist or blacklist functions? If so, who can trigger these functions, and under which circumstances?
23. Can the token implementation be upgraded/changed? If so, by whom, and under which circumstances?
24. Does the token contain rebasing logic?
25. Has the token (and supporting protocol) been formally verified?
