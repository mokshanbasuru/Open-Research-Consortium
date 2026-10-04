---
cp: 0002
title: Founding Phase Provision for Research Review
type: Process
status: Under Discussion
author: Mokshan Basuru (@mokshanbasuru)
created: 2026-10-03
discussion:
decided:
supersedes:
superseded-by:
---

# CP-0002: Founding Phase Provision for Research Review

## Summary

This proposal adds a provision to the research review lifecycle that applies only while the Project has a single Maintainer. It allows research authored by that Maintainer to be published with the status `in-review`, clearly labelled as not yet independently reviewed, and it requires two independent reviews before the document can become `accepted`.

## Motivation

[`research/README.md`](../research/README.md) requires, for a document to be accepted, at least two substantive reviews from reviewers who are not among its authors, at least one of whom is a Maintainer. [Section 6.1 of `GOVERNANCE.md`](../GOVERNANCE.md#61-founding-phase) provides for a Project with one Maintainer, who may merge their own contributions after the applicable review period.

These rules disagree in one case. A document authored by the sole Maintainer cannot meet the acceptance criterion, because no other Maintainer exists to review it. As written, the rules leave two outcomes. Either no research by the Founding Maintainer can be published until a second Maintainer exists, or the criterion is set aside informally. The first prevents the Project from publishing its own first research. The second weakens the review requirement that gives accepted research its meaning. The inconsistency was found while reviewing the Project's own rules, before any research was submitted.

## Proposal

Replace the meanings of two statuses and add one provision to the review lifecycle in `research/README.md`.

**Status table.** The two rows are amended as follows.

| Status | Proposed meaning |
| :--- | :--- |
| `in-review` | Open for public review, either as a pull request that has not been merged or, under the Founding Phase provision below, as a published document awaiting independent review. |
| `accepted` | Approved after independent review and merged. This is the reviewed, published version. |

**New provision,** to follow the paragraph on versioning accepted documents.

> ### Founding Phase Provision
>
> While the Project has only one Maintainer, that Maintainer cannot satisfy the second acceptance criterion for a document they have authored, because no other Maintainer exists to review it. In that case the following applies instead.
>
> 1. After the fourteen-day review period, the document may be merged with the status `in-review`. Directly beneath its title it carries the statement: "Status: in review. This document has not yet received independent review."
> 2. The document remains `in-review` until it has received at least two substantive reviews from reviewers who are not among its authors. The reviewers are recorded in the front matter.
> 3. A pull request then changes the status to `accepted` and removes the statement in item 1. Citations made before that point should identify the document as unreviewed.
> 4. This provision applies only while the Project has one Maintainer. When a second Maintainer is appointed, the second acceptance criterion applies in full.

The provision does not apply to research authored by anyone other than the sole Maintainer. For such research, the Maintainer serves as the Maintainer reviewer and the ordinary criteria apply.

## Rationale and Alternatives

The provision keeps the review requirement intact and changes only where an unreviewed document may be published and how it is labelled. The label and the unchanged requirement for two independent reviews preserve the meaning of `accepted`.

Alternatives considered:

1. **Leave the rules as they are.** Rejected. It leaves the Founding Maintainer unable to publish anything as accepted, and it invites informal exceptions.
2. **Exempt the sole Maintainer's research from independent review.** Rejected. It would allow the Project's own research to be accepted without the scrutiny applied to everyone else's.
3. **Keep every unreviewed document in an open pull request until it is reviewed.** Rejected. Unmerged work is invisible to anyone browsing the repository, and a pull request left open for an uncertain period is a poor place to publish. Clear labelling serves readers better.

## Impact

- **Contributors.** The requirements for research authored by others are unchanged. Contributors who wish to review the Maintainer's work are asked to do so, and their reviews are recorded in the front matter.
- **Readers.** Documents that have not been independently reviewed are marked as such and cannot carry the `accepted` status. The repository README describes the Project as designed to publish openly reviewed research, and this provision keeps that description accurate by distinguishing accepted documents from those still in review.
- **Maintainers.** The Founding Maintainer judges whether reviews are substantive, in accordance with `GOVERNANCE.md`.
- **Existing content and licensing.** Unchanged.
- **Risks.** An unreviewed document may be mistaken for reviewed work. The mandatory label and the distinct status are intended to prevent this. The provision lapses when a second Maintainer is appointed.

## Transition and Implementation

1. This proposal is opened as a draft pull request against `main` with the status `Under Discussion`. The pull request is the venue for comments and is not merged during the comment period.
2. The comment period is seven days from the opening of the pull request ([Section 4.1 of `GOVERNANCE.md`](../GOVERNANCE.md#4-decision-making)).
3. The Founding Maintainer responds in writing to each substantive objection raised during the period.
4. On or after the last day of the period, the Founding Maintainer records the decision in further commits to the same pull request. The front matter and the Decision Record are completed and, if the proposal is accepted, the amendments to `research/README.md` described above are applied.
5. The pull request is marked ready for review and merged using rebase and merge.

## Unresolved Questions

None at the time of submission.

## Decision Record

To be completed when the proposal is decided: the decision level and rule applied, the votes cast, and a summary of the principal objections and how they were addressed.
