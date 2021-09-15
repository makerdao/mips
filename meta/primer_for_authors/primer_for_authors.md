# The MIP Framework: A Primer for Authors

## Intro

This resource comes to the aid of people interested in authoring and publishing proposals within the MIP Framework.

It does not, of course, replace the foundations set down in [MIP0](https://mips.makerdao.com/mips/details/MIP0), but neither does it just rehash them. Rather it repackages them in a more friendly presentation with a focus on the actions required from authors, and aggregates useful resources that help navigate the proposal process efficiently.

It is our hope that this resource will empower more people to contribute. Thank you for your interest in improving MakerDAO!

### Short Note on Conventions

As MIPs and subproposals largely go through the same process, it is convenient to have an umbrella term that covers both. In this document we use _"proposal(s)"_ to refer to both MIPs and subproposals indifferently.

***

## Preliminaries

### Quick Review of the Basics

Before plunging into the practical aspects of authoring and proposing, it might be a good idea to do a quick review of the very basics of the MIP Framework.

- The documents known as Maker Improvement Proposals (MIPs) are, collectively, **the dynamic body of law that regulates MakerDAO**.
- **The MIP (Maker Improvement Proposal) Framework provides an open, standardized way to contribute to MakerDAO legislation**. The MIP Framework allows anyone to bring forth their proposals, have them scrutinized by the community, and ultimately voted upon by MKR holders.
- The MIP Framework also defines the MIP Editor role. MIP Editors are in charge of mantaining the MIPs repository and assisting authors along the proposal process. This very document has been written by a MIP Editor!
- Some MIPs contain abstract definitions for recurring processes. These processes get instantiated/executed via subproposals.

> For example, [MIP41](https://mips.makerdao.com/mips/details/MIP41) defines the process for onboarding a Core Unit Facilitator. If Jane Doe wants to become a Facilitator for some Core Unit, she needs to bring forth a subproposal in conformity with the process defined in [MIP41c4 (the fourth component of MIP41)](https://mips.makerdao.com/mips/details/MIP41#mip41c4-facilitator-onboarding).

### Templates

Proposals are built on top of templates and there are a number of these. Which to choose depends on the type of document you are creating.

![Templates](https://github.com/makerdao/mips/blob/master/meta/primer_for_authors/templates.png)

MIPs must use either the [general MIP template](https://github.com/makerdao/mips/blob/master/MIP0/General-MIP-Template.md) or the [technical MIP template](https://github.com/makerdao/mips/blob/master/MIP0/Technical-MIP-Template.md). The latter is for MIPs that modify smart contract code; the former is for MIPs that do not.

Subproposals must use the template specified in the MIP that describes the particular process being instantiated. Let's use the same example we just used a couple of lines up: If you want to propose yourself as a Facilitator, you will find that the process for that is defined in [MIP41](https://mips.makerdao.com/mips/details/MIP41), more specifically in [MIP41c4](https://mips.makerdao.com/mips/details/MIP41#mip41c4-facilitator-onboarding), and that the process specifies that you must use [this template](https://github.com/makerdao/mips/blob/master/MIP41/MIP41c4-Subproposal-Template.md) as the basis for your subproposal.

### Markdown

Proposals are written using Markdown, a simple markup language for structuring and formatting documents. Markdown files are plaintext files and usually carry the extension `.md`.

Markdown looks and works like this:

| Plain Text | Rendered Output |
|:-:|:-:|
| \*Italicized text\*| *Italicized text*  |
| \*\*Bold text\*\*| **Bold text**  |
| \~\~Strikethrough text\~\~| ~~Strikethrough text~~  |
| \[Link to MIPs Portal](https://mips.makerdao.com/)| [Link to MIPs Portal](https://mips.makerdao.com/)|
| \`Code\` | `Code` |
| \!\[](https://upload.wikimedia.org/wikipedia/commons/e/e7/Dai_Logo.png) | ![](https://upload.wikimedia.org/wikipedia/commons/e/e7/Dai_Logo.png)

Describing Markdown in full exceeds the scope of this document. Please check out the excellent [Markdown Guide](https://www.markdownguide.org).

We suggest you use a Markdown-sensitive editor that will highlight the syntax and show you the rendered document as you type it out, such as [HackMD](https://hackmd.io/), [Ghostwriter](https://wereturtle.github.io/ghostwriter/), and [Zettlr](https://www.zettlr.com).

### GitHub

Proposals live on [GitHub](https://github.com/), a code hosting platform for version control and collaboration built on [git](https://git-scm.com/), a version control software. Proposals are stored in MakerDAO's [MIPs repository](https://github.com/makerdao/mips).

If that did not make any sense to you, it is enough to think of GitHub as a cloud storage service, and of repositories as cloud drives.

Learning how to use GitHub is admittedly a bit harder than learning Markdown. Luckily, it is not required that authors do so. MIP Editors will gladly take care of that part for you.

---

## Postpreliminaries

So, you have both a burning passion for making things better _and_ what actually seems to be a pretty good idea. That is auspicious! Sadly, you do not know how to go about bringing that idea to life in the context of MakerDAO. No worries! Depending on your starting point and needs, there are several ways to get yourself going.

- One of them is to share the raw idea [on the forum](https://forum.makerdao.com/c/governance/proposal-ideas/21) to receive early community feedback on it.
- Or you can [explore already existing processes](https://mips.makerdao.com/mips/list?&search=$%20%23process) to see if any of them describes how to go about accomplishing what you want to accomplish.
- Or you can just send a direct message to a MIP Editor and ask them for guidance.

In any case, this document will walk you through the steps necessary to cast your idea into a form that is compatible with the MIP Framework, and will teach you how to navigate the process efficiently.

> By the way, do not be afraid to ask questions! MakerDAO has one of the nicest, most civil communities in the cryptosphere--and beyond! Come to the [forum](https://forum.makerdao.com/) or [the chat](chat.makerdao.com/) and say hi!

## Proposing

So, you have already picked a template and drafted a proposal on top of it. Very good! You are just ready to take the first formal step in the proposal process, which is posting the proposal on [the MakerDAO forum under the MIPs > RFC subcategory](https://forum.makerdao.com/c/mips/rfc/15).

![mipx](https://github.com/makerdao/mips/blob/master/meta/primer_for_authors/mipx.png)

### RFC

`RFC` stands for _Request for Comments_, which is the status of the proposal at this point in time. Posting your proposal in this subcategory marks the beginning of the **Feedback Period**, which lasts **four full weeks**. During this period your proposal will be receiving community feedback that you as the author should use to refine it.

There is also a **Frozen Period** during which your proposal must remain unchanged to give the community time to review the latest version of it. This period lasts **one full week** and may overlap with the Feedback Period. The Frozen Period for a proposal can be thought of as being fulfilled as soon as _and_ as long as a proposal remains unchanged for a full week.

> ### A Short Aside on Lengths
> You may notice that the lengths for these periods do not match the [lenghts established in MIP0](https://mips.makerdao.com/mips/details/MIP0#MIP0c3) and in process components (the parts of MIPs that define processes). The reason for this is that these lenghts are currently and temporarily being overriden by those set down in [MIP2](https://mips.makerdao.com/mips/details/MIP2#mip2c2-interim-phase-2).

Both these periods must be fulfilled before a proposal can move from `RFC` to the `Formal Submission` status.

### Formal Submission

MIPs and Subproposals go through the Monthly Governance Cycle, defined in [MIP51](https://mips.makerdao.com/mips/details/MIP51). Once your proposal has fulfilled both the Feedback Period and the Frozen Period, it is ready to be **formally submitted to be voted on on-chain via [Ratification Polls](https://mips.makerdao.com/mips/details/MIP51#MIP51c2)**.

If you want your proposal to make it into a given month's Ratification Polls, it should be formally submitted within the limits of the Formal Submission Window for that month.

> **The Formal Submission Window lasts three days**, starting on the first Monday of the month and closing at the end of the next immediate Wednesday.

![Monthly Governance Cycle](https://user-images.githubusercontent.com/53664591/114054203-8c7de580-9887-11eb-90da-0431b051fff3.png?raw=true)

In order to do a Formal Submission you can either post a reply in the thread of your proposal stating that you want to move on to Formal Submission, or just send a message to a MIP Editor.

![Cicero submits](https://github.com/makerdao/mips/blob/master/meta/primer_for_authors/cicero_submits.png)

In practice, it is very likely that a MIP Editor will get in touch with you at the start of the Formal Submission Windows and ask if you want your proposal to advance to the next stage or if you would rather have it remain in RFC status to keep working on it.

### Ratification Polls

Once a proposal moves on to Formal Submission, it is reviewed by Governance Facilitators. If they do not find any issues with it, a Ratification Poll will be prepared for it.

Ratification Polls go on-chain the second Monday of the month and run for two weeks. The votes from MKR holders have the final say as to whether the proposal gets approved or rejected.

## Statuses

These are the statuses (non-exhaustive) that a proposal may have:

| Status | What is it? | When is it assigned? |
|--|--|--|
| ![RFC](https://github.com/makerdao/mips/blob/master/meta/primer_for_authors/rfc.png) | Proposals with `RFC` status are currently going through their Feedback Period/Frozen Period. | As soon as a proposal is posted on [the forum MIPs > RFC subcategory](https://forum.makerdao.com/c/mips/rfc/15) by the author. |
| ![Formal Submission](https://github.com/makerdao/mips/blob/master/meta/primer_for_authors/fs.png) | Proposals with `Formal Submission` status have been submitted by authors to be voted on via Ratification Polls on-chain. | After a proposal has fulfilled their Feedback Period/Frozen Period and within a Formal Submission Window. Note that it is up to the author to have this status assigned to their proposal. Some authors may choose to stick with a `RFC` status to receive more feedback.|
| ![Accepted](https://github.com/makerdao/mips/blob/master/meta/primer_for_authors/accepted.png) ![Rejected](https://github.com/makerdao/mips/blob/master/meta/primer_for_authors/rejected.png) | Proposals with either of these statuses have had their Ratification Polls run for two weeks and voted on  | At the closing of Ratification Polls.

## Resources

- [MIPs Repository README.md](https://github.com/makerdao/mips/blob/master/README.md)
- [Google Calendar with dates relevant to the MIP process](https://calendar.google.com/calendar/u/0?cid=c2lmaGxwam1qZDZxbTB1cHBwNGNvaDhjMWNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ)
- [Forum post with further clarification on timeline and dates](https://forum.makerdao.com/t/mip-rfc-and-formal-submission-dates/7816)

## Where's a MIP Editor when you need one?

Have suggestions on how to improve this document? Love this guide and want to send us some swag as a token of gratitude? Hate this guide and want to give us a piece of your mind?

| MIP Editor | GitHub | Forum |
|---|---|---|
| Pablo | [blimpa](https://github.com/blimpa) | [@blimpa](https://forum.makerdao.com/u/blimpa/summary) |
