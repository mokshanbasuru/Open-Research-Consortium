# Governance

This document defines how the Open Research Consortium (the "Project") is governed: who holds authority, how decisions are made, and how that authority changes as the Project grows. It implements the principles of the [Charter](docs/CHARTER.md), which prevails in the event of conflict.

The model draws on two established traditions. From the Linux kernel it takes hierarchical, area-based maintainership and the use of a clearly identified individual as final arbiter while a project is young. From the Apache Software Foundation it takes merit-based advancement, decision-making by consensus with formal voting as a fallback, and the requirement that deliberation take place in public.

## 1. Principles

1. **Community over individuals.** Decisions are made for the benefit of the Project and its users, not for any individual or organisation.
2. **Merit.** Responsibility is earned through sustained contribution and demonstrated judgement.
3. **Consensus first.** Maintainers seek agreement through discussion. Votes are a mechanism for resolving disagreement, not the default means of deciding.
4. **Public by default.** If a decision was not made in a public issue, pull request, discussion, or Consortium Proposal, it has not been made.
5. **Independence.** Financial support does not purchase governance rights, and no single organisation may control the Project.

## 2. Roles

### 2.1 Contributor

Anyone who participates in the Project by opening an issue, commenting, reviewing, or submitting a contribution. Contributors may express opinions on any matter. Their positions are advisory and are weighed by Maintainers on their merits.

### 2.2 Maintainer

A Contributor who has been granted responsibility for one or more Areas listed in [`MAINTAINERS.md`](MAINTAINERS.md). Maintainers review and merge contributions, guide Contributors, uphold the Charter and Code of Conduct, and hold binding votes under Section 4. Maintainers must enable two-factor authentication on their accounts.

An **Active Maintainer** is a Maintainer who has reviewed, merged, or authored a substantive contribution within the preceding ninety days. Thresholds in this document that refer to "all active Maintainers" are computed over this group.

### 2.3 Founding Maintainer

The individual who established the Project, identified in `MAINTAINERS.md`. During the Founding Phase (Section 6) the Founding Maintainer holds final decision-making authority. After the transition to a Steering Committee, the Founding Maintainer holds a reserved seat for as long as they remain an Active Maintainer, with the same single vote as every other member.

### 2.4 Steering Committee

After the Founding Phase, the elected body responsible for the strategic direction, health, and continuity of the Project, as described in Section 6.3.

### 2.5 Conduct Committee

The persons responsible for receiving and resolving reports under the [Code of Conduct](CODE_OF_CONDUCT.md). During the Founding Phase this function is performed by the Founding Maintainer. Thereafter it is performed by a committee of at least two people appointed by the Steering Committee. A member of the committee recuses themselves from any report in which they are a party or have a conflict of interest.

## 3. Becoming and Ceasing to Be a Maintainer

### 3.1 Criteria

Maintainer status is a recognition of trust, not of volume. Candidates are expected to have demonstrated:

- sustained, substantive contributions over a period of at least three months, including participation in review;
- sound judgement and technical or editorial rigour;
- constructive, respectful communication, consistent with the Code of Conduct;
- understanding of and commitment to the Charter, including editorial neutrality; and
- willingness to take on the responsibilities of the role.

No numerical threshold of merged contributions or reviews confers or guarantees Maintainer status. The Project deliberately avoids mechanical scoring, which rewards volume over quality and is vulnerable to manipulation.

### 3.2 Nomination and Approval

1. Any Maintainer may nominate a Contributor, and a Contributor may self-nominate, by opening an issue labelled `governance` that summarises the candidate's contributions.
2. The nomination remains open for at least seven days for public comment.
3. The nomination is approved by lazy consensus (Section 4.2): it passes unless a Maintainer casts a reasoned `-1`. If a `-1` is cast, the matter is decided by a Level 3 vote.
4. During the Founding Phase, the Founding Maintainer decides after the comment period.
5. On approval, the candidate accepts the role in writing, is added to `MAINTAINERS.md` and to the repository access list, and is assigned one or more Areas.

### 3.3 Emeritus Status

A Maintainer who is inactive for six months is contacted by another Maintainer. If there is no response within thirty days, or the Maintainer confirms they are no longer able to serve, they are moved to Emeritus status in `MAINTAINERS.md`. A Maintainer may step down voluntarily at any time. Emeritus Maintainers lose write access and binding votes, are recognised for their service, and may be restored by the process in Section 3.2 in an expedited form.

### 3.4 Removal for Cause

A Maintainer may be removed for violation of the Code of Conduct, breach of the Charter, or abuse of their role. Removal for cause follows the enforcement process of the Code of Conduct and requires, in addition, the approval of two-thirds of all other Active Maintainers or, during the Founding Phase, the decision of the Founding Maintainer. The affected Maintainer is informed of the grounds and given the opportunity to respond before a decision is made. Removal does not occur automatically or by script.

## 4. Decision-Making

### 4.1 Decision Levels

Decisions fall into three levels. A decision is placed at the highest level that applies.

| Level | Applies to | Approval | Minimum open period |
| :--- | :--- | :--- | :--- |
| 1. Routine | Corrections to accepted research, documentation changes, and tooling changes within an existing Area | Lazy consensus with one approving Maintainer who is not the author, and passing automated checks | 72 hours |
| 2. Significant | New Areas, changes to continuous integration or release automation, changes to security-sensitive configuration, and acceptance of new research into the `accepted` status | Lazy consensus with two approving Maintainers who are not the author, once the Project has three or more Active Maintainers; otherwise one | 7 days; 14 days for acceptance of new research |
| 3. Governance | Changes to this document, `MAINTAINERS.md` structure, Maintainer nominations that are contested, removal for cause, the Steering Committee transition, and all Charter and licensing changes | Formal vote under Section 4.3, by Consortium Proposal where the change is to a governing document | 7 days; 14 days for the Charter and licensing |

Trivial changes, such as correcting typographical errors, repairing links, or fixing formatting, may be merged by a Maintainer after a single approval, without waiting for the minimum open period.

### 4.2 Lazy Consensus

Under lazy consensus, a proposal is considered approved if, after the minimum open period, it has the required approvals and no Maintainer has raised an unresolved objection. Silence is taken as consent. The model assumes good-faith, timely participation: a Maintainer who anticipates being unavailable should say so in advance.

An objection must state its reasons and, where possible, the change that would resolve it. An unresolved objection pauses the proposal. If the parties cannot resolve it through discussion within seven days, any Maintainer may call a Level 3 vote on the question.

### 4.3 Formal Votes

A formal vote is conducted in a public thread and announced in advance. Votes are expressed as follows:

| Vote | Meaning |
| :--- | :--- |
| `+1` | In favour |
| `0` | Abstain; no strong view |
| `-1` | Opposed, with reasons stated |

Only Active Maintainers cast binding votes. Contributors are encouraged to express non-binding views, which Maintainers are expected to consider. Each Maintainer has one vote regardless of tenure, affiliation, or volume of contribution.

- **Governance decisions** pass when a majority of all active Maintainers vote `+1`.
- **Charter and licensing decisions** pass when at least two-thirds of all active Maintainers vote `+1`.

Because thresholds are computed over all active Maintainers rather than votes cast, abstention and non-participation do not lower the bar. A vote may close early only if its outcome can no longer change. The result and the votes cast are recorded in the thread.

### 4.4 Recording Decisions

Level 3 decisions affecting a governing document are recorded as Consortium Proposals in [`proposals/`](proposals/). All other decisions are recorded in the pull request or issue in which they were made.

## 5. Conflicts of Interest and Independence

1. A participant who has a financial or organisational interest in the outcome of a decision discloses that interest in the discussion and abstains from the corresponding binding vote.
2. Research that has been funded, commissioned, or materially assisted by an organisation discloses that fact in its front matter.
3. Sponsorship, donations, and other forms of support are welcome and are recorded transparently. They confer no authority over research, editorial decisions, or governance.
4. From the point at which the transition criteria in Section 6.2 are met, no single organisation may employ or otherwise be affiliated with more than one-third of Active Maintainers or of Steering Committee seats. Until then, the Project works toward this outcome by recruiting Maintainers from independent organisations. Maintainers may declare their affiliation in `MAINTAINERS.md`.

## 6. Phases of Governance

### 6.1 Founding Phase

The Project begins in the Founding Phase. The Founding Phase ends when the Steering Committee is first seated under Section 6.3. The transition begins when the criteria in Section 6.2 are met, or earlier if the Founding Maintainer elects it by Consortium Proposal.

During the Founding Phase:

- **While the Founding Maintainer is the only Maintainer**, they decide all matters, including those designated Level 3, after the full minimum open period for the relevant level. They may merge their own contributions after that period has elapsed, noting in the pull request that no second approver was available.
- **Once other Maintainers have been appointed**, decisions follow Section 4 and the votes of all Active Maintainers are binding. In addition, the Founding Maintainer (a) casts the deciding vote in any Level 3 vote that is tied or deadlocked, (b) may set aside the outcome of a Level 3 vote only on the ground that it conflicts with the Charter, publishing written reasons, and (c) must concur in any amendment to the Charter.
- **In every case**, before announcing a Level 3 decision, the Founding Maintainer responds in writing to each substantive objection raised during the comment period.

The Founding Maintainer's authority is limited as follows:

1. It does not extend to withdrawing rights already granted under an open license, or to adopting for existing content a license that is not an open license.
2. It does not permit the removal of a Maintainer other than for cause under Section 3.4.
3. It must be exercised in public, with reasons recorded, except for the matters the Charter reserves for private handling.
4. It does not permit retroactive alteration of recorded decisions or votes.

### 6.2 Transition Criteria

The transition to the Steering Committee model begins when both of the following are true:

1. there are at least five Active Maintainers; and
2. no single organisation is affiliated with more than one-third of Active Maintainers.

Within sixty days of the criteria being met, the Founding Maintainer convenes the election described in Section 6.3. The Founding Phase, and the powers described in Section 6.1, continue until the elected members take their seats.

### 6.3 Steering Committee

**Composition.** The Steering Committee has three members while the Project has fewer than ten Active Maintainers, and five members thereafter. The Founding Maintainer holds one reserved seat for as long as they remain an Active Maintainer. All other seats are filled by election. No more than one-third of seats may be held by persons affiliated with the same organisation.

**Election.** Active Maintainers elect members by approval voting in a public or recorded ballot. Candidates are drawn from Active Maintainers. Ties are resolved by a runoff between the tied candidates.

**Terms.** Elected members serve two-year terms, staggered after the first cycle so that no more than a majority of seats fall vacant at once. Members may be re-elected.

**Responsibilities.** The Steering Committee:

- sets the strategic direction of the Project and publishes an annual summary of the Project's activity;
- resolves escalated disputes and questions of interpretation of the Charter;
- appoints the Conduct Committee and hears appeals of its decisions;
- stewards the Project's marks, domains, infrastructure, and funds; and
- oversees the periodic review of this document.

The Steering Committee does not override Maintainers on matters within an Area except to enforce the Charter or Code of Conduct, or to resolve a deadlock escalated to it.

### 6.4 Continuity

The Founding Maintainer records a designated successor in `MAINTAINERS.md`. If the Founding Maintainer resigns, dies, or is unreachable for ninety consecutive days following a documented attempt to contact them, the remaining Active Maintainers appoint an interim lead by majority vote, who exercises the Founding Maintainer's responsibilities until the transition criteria are met or a Steering Committee is elected. If no other Maintainer exists, the designated successor assumes repository administration and appoints Maintainers in accordance with Section 3.

## 7. Dispute Resolution

Disputes are resolved at the lowest level capable of resolving them.

1. **Discussion.** The parties attempt to resolve the matter in the relevant issue or pull request.
2. **Mediation.** Any party may ask a Maintainer who is not involved to mediate.
3. **Vote.** Any Maintainer may call a Level 3 vote on the question.
4. **Final decision.** During the Founding Phase, the Founding Maintainer decides. Thereafter, the Steering Committee decides.

Conduct complaints follow the Code of Conduct and are not subject to this process.

## 8. Assets and Legal Entity

The Project is not currently incorporated. Its name, marks, domains, and infrastructure accounts are held by the Founding Maintainer on behalf of the Project and may not be used for personal benefit inconsistent with the Charter. Upon transition to the Steering Committee, the Project will seek to transfer these assets to a legal entity, such as a foundation or fiscal host, whose governing documents are consistent with the Charter. Such a transfer is a Level 3 decision.

## 9. Amendment

This document may be amended through a Consortium Proposal approved as a Level 3 governance decision. Amendments to the Charter follow Section 7 of the Charter.
