# Maker Improvement Proposals (MIPs)

Maker Improvement Proposals are the preferred mechanism for improving both Maker Governance and the Maker Protocol.

Through an open and documented process, community feedback will be collected to reach the broadest possible consensus on how the MakerDAO should evolve. Furthermore, MIPs provide a mechanism for any community member to define key issues and suggest changes and additions to the system. The MIPs process is conducted with a high level of transparency, rigor, and community input in order to minimize undesirable results.

For a current and historical view of proposed MIPs, please check out the [MIPs Portal](https://mips.makerdao.com/). In short, the portal should be the go-to resource for anyone wanting to explore MIPs (and the subproposals derived from them) in a reader-friendly manner. The Portal features smart-linking, on-hover previews, predefined common queries (Views), and advanced queries with logical operators and filters.

# The MIP Framework Overview

## Definitions

### MIPs

MIPs are standardized documents subject to community feedback and voting that, once enacted, define the behavior of the Maker Governance and the Maker Protocol. Collectively, MIPs are the dynamic body of law that regulates MakerDAO at any given moment.

MIPs have two types: **technical** if they propose changes or additions to smart contracts code related to the Maker Protocol; or **general** otherwise.

### Subproposals

Subproposals are a common recurring process. They are created and used as a means of proposing and enacting decisions nested within specific MIPs.

Just like MIPs, subproposals are standardized documents subject to voting. Once approved, they trigger a concrete action or state such as onboarding specific collateral, offboarding a Core Unit Facilitator, modifying a budget, and so forth.

## Authoring and Proposing

In the spirit of DAOs, MIPs and subproposals can be brought forth and proposed by anyone.

If you're interested in proposing a MIP or think you might in the future, continue reading below for a quick overview of the process and how to get started.

### Getting Started with MIPs (For Authors)

MIPs are written using Markdown and hosted on GitHub. You can always count on MIP Editors to help you out throughout the process, but having a passing knowledge of these tools will both benefit you with your overall proposal experience and make the process much smoother for all parties involved. Also, it's important to note right away that all MIPs and subproposals must conform to templates!

#### Markdown

Markdown is a very simple markup language for formatting text, i.e., adding headers, bullet lists, italicized text, et cetera. When working with MIPs, you should use GitHub-flavored Markdown.

> [GitHub's Mastering Markdown](https://guides.github.com/features/mastering-markdown/) will get you up to speed in no time. The online Markdown editor [HackMD](https://hackmd.io/) is a solid platform for practice and production.

#### GitHub

[GitHub](https://github.com/) is a code hosting platform for version control and collaboration built on [git](https://git-scm.com/), a version control software. GitHub is complex and may seem daunting at first, but only a basic familiarity is necessary for our purposes.

> We recommend that you read these two short guides: [Hello World](https://guides.github.com/activities/hello-world/) and [Forking Projects](https://guides.github.com/activities/forking/).

#### Templates

- Technical MIPs must conform to the [Technical MIP Template](https://github.com/makerdao/mips/blob/master/MIP0/Technical-MIP-Template.md).
- General MIPs must conform to the [General MIP Template](https://github.com/makerdao/mips/blob/master/MIP0/General-MIP-Template.md).
- Subproposals, on the other hand, must each conform to a specific template referenced in the MIP that defines the process they instantiate.

### Proposing

Once you've picked the appropriate template for your proposal and have a workable draft, the next steps are the following two tasks:
- Post the draft [on the appropriate forum section](https://forum.makerdao.com/c/mips/14)
- Submit it to the [GitHub MIP repository](https://github.com/makerdao/mips)

After the two above tasks have been completed, MIP Editors will help assign a number for the proposal. The proposed MIP (or subproposal - they are treated the same way in terms of how to propose them) will then enter a period of community feedback (most frequently referred to as Request For Comments or RFC). This is a great opportunity to be proactive and interact with the broader community, take suggestions, and improve your proposal. Once the feedback period is over and you've incorporated your final changes, there will be a one-week period before you can formally submit the proposal for voting. Lastly, your proposal will go through a voting period.

If all goes well, by the end of the process you will have contributed a piece of MakerDAO legislation. And that's the gist of it!

For a more detailed breakdown of the procedure, please read [MIP0c3](https://mips.makerdao.com/mips/details/MIP0#mip0c3-the-mip-lifecycle).

## IPFS Deployment

This repo contains a workflow that automatically deploys all MIPs to IPFS whenever a commit is pushed to the `master` branch. For this, we're using Filebase and Cloudflare, as you can see by going through said [workflow](https://github.com/makerdao/mips/blob/master/.github/workflows/main.yml).

This deployment can be accessed from [https://mips-ipfs.makerdao.com/](https://mips-ipfs.makerdao.com/).

## Contact Information

### MIP Editors

Remember that MIP Editors are there to clarify the process and help you. Don't hesitate to reach out if you need assistance!

| MIP Editor | Discord | GitHub | Forum |
|-|-|-|-|
| **Pablo** | blimpa#5322 | [@blimpa](https://github.com/blimpa) | [@blimpa](https://forum.makerdao.com/u/blimpa/summary) |

## Helpful Resources

* [MIPs Discussion Channel](https://go.rocket.chat/invite?host=chat.makerdao.com&path=invite%2FNPEuhW)
* [MakerDAO MIPs Forum](https://forum.makerdao.com/c/mips/14)
* [MakerDAO MIPs GitHub](https://github.com/makerdao/mips)
