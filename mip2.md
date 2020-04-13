# MIP2: Launch Period


## Preamble
```
MIP#: 2
Title: Launch Period
Author(s): Rune Christensen (@Rune23) and Charles St.Louis (@CPSTL)
Type: Process
Status: <Assigned by MIP Editor>
Date Proposed: 2020-04-06
Dependencies: n/a
Replaces: n/a
```

## Summary

This proposal details the process of how Maker Governance can bootstrap the setup and implementation of the first Governance Paradigm. More specifically, it defines two phases: 
1. **Phase 1:** when a core governance framework is put in place and a functional collateral onboarding process is ratified.
2. **Phase 2:** when the Problem Space is in the process of being addressed with MIPs and MIP Sets.

Lastly, the proposal states that MIP2 itself will become obsolete when the Problem Space has officially been addressed. 


## Motivation

One of the critical motivations of the MIP framework is that there are a finite number of critical issues that must be covered with appropriate governance processes for the Maker system to be safe (see MIP1 Governance Paradigms).

At the same time, the goal is also to ensure that the process of implementing and altering critical governance process logic is done at a pace that gives the community enough time to scrutinize and understand specific ideas.

However, these two goals contradict each other in the initial "launch period" where there isn't a formal governance framework in place yet. As a result, the need to "cover all bases" by having a robust, simple solution for governance processes in place for all critical risks takes precedent over the goal of slowing down and deeply scrutinizing all proposals. Without proactive solutions in place, the community could be forced into undesirable reactive decision making in the event a critical problem or an opportunity occurs that doesn't yet have a defined process. Reactive decision making has the potential of bad precedents that weren’t fully understood at the time.

As a result, the community should prioritize getting the initial processes in place that will cover all the critical risks and opportunities that are built as a formalization of existing processes or knowledge in the community and Maker Foundation. Once the initial governance paradigm is in place the community can amend or replace it as necessary to build a more permanent and robust paradigm, taking advantage of the practical knowledge gained in the interim period.

## Specification / Proposal Details

### MIP2 Components

1. **MIP2c1:** Interim Phase 1
2. **MIP2c2:** Interim Phase 2
3. **MIP2c3:** MIP2 Obsolescence 

---

### MIP2c1: Interim Phase 1

**Interim Phase 1 commences with the ratification of this MIP. During Interim Phase 1, the following logic overrides that defined in MIP0:**
1.  The Feedback Period and Frozen Period defined in MIP0 are ignored for both MIPs and Subproposals.
2.  Multiple MIPs can be voted in with a single vote.
	-  Before the vote, alternatives to the MIPs within the MIP Set can be proposed if they interface correctly with all the other MIPs within the Set.

**During Interim Phase 1, the following additional logic is applied to the MIPs process defined in MIP0:**
- A single vote approves or rejects all MIPs during phase 1. 
- If rejected, MIPs can be reintroduced to the community for another vote once the issues that resulted in its initial rejection have been addressed.

Interim Phase 1 ends when there is a core governance framework in place and a functional collateral onboarding process.

---
### MIP2c2: Interim Phase 2

Interim Phase 2 commences as Interim Phase 1 ends. 

**During Interim Phase 2, the following logic overrides that defined in MIP0:**
1.  The Feedback Period and Frozen Period defined in MIP0 are ignored.

**During Interim Phase 2, the following additional logic is applied to the MIPs process defined in MIP0:**

1.  The Feedback Period for the MIPs going through the MIPs process is 1 month.
2.  The Frozen Period for the MIPs going through the MIPs process is 1 week.
3.  If rejected, MIPs can be reintroduced to the community for another vote once the issues that resulted in its initial rejection have been addressed.

Interim Phase 2 ends when the Problem Space has been addressed. More specifically, this is when MIP Sets have been ratified that have addressed each problem statement within the Problem Space.

---
### MIP2c3: MIP2 Obsolescence 

Once the Problem space has been addressed, MIP2 stops having an effect and the Feedback Period and Frozen Period defined in MIP0 take effect immediately. Furthermore, MIP2 is immediately granted the `Obsolete` status, meaning anything defined within MIP2 should no longer be considered to be the active standard. 

---
