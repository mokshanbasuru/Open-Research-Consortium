---
cp: 0001
title: Ratification of the Founding Governance Framework
type: Governance
status: Accepted
author: Mokshan Basuru (@mokshanbasuru)
created: 2026-10-03
discussion: https://github.com/mokshanbasuru/Open-Research-Consortium/issues/4
decided: 2026-10-22
supersedes:
superseded-by:
---

# CP-0001: Ratification of the Founding Governance Framework

## Summary

This proposal ratifies the governance framework with which the Project was founded: the Charter, the governance rules, the list of Maintainers, the Code of Conduct, the Trademark Policy, the licensing structure, and the repository administration policy. These documents were adopted by direct commit, before the Consortium Proposal process existed. Ratification records that adoption through the process the documents themselves prescribe.

## Motivation

The [Charter](../docs/CHARTER.md) and [`GOVERNANCE.md`](../GOVERNANCE.md) require changes to governing documents to be made by Consortium Proposal, with a public comment period and a recorded decision. The framework could not follow that requirement at its own adoption, because the process was defined in the same change that introduced it. The framework therefore currently rests on the Founding Maintainer's unilateral act. There is no public statement of the reasoning, no comment period, and no defined baseline against which later amendments can be measured.

Ratification closes these gaps. It gives the adoption a public rationale, it opens the framework to objection for the full comment period, and it fixes a baseline, so that every later change is an amendment to a known text.

## Proposal

The Project ratifies, as its governing framework, the following documents as they exist at commit `e52b841`, the head of `main` when this proposal was drafted.

| Document | Subject |
| :--- | :--- |
| [`docs/CHARTER.md`](../docs/CHARTER.md) | Mission, scope, foundational principles, licensing commitments, and amendment rules |
| [`GOVERNANCE.md`](../GOVERNANCE.md) | Roles, decision-making, the Founding Phase, and the transition to a Steering Committee |
| [`MAINTAINERS.md`](../MAINTAINERS.md) | Maintainers, areas of responsibility, and succession |
| [`CODE_OF_CONDUCT.md`](../CODE_OF_CONDUCT.md) | Community standards and enforcement, with private reporting through GitHub |
| [`TRADEMARKS.md`](../TRADEMARKS.md) | Use of the Project's name and marks |
| [`CONTRIBUTING.md`](../CONTRIBUTING.md) | The contribution workflow and the Developer Certificate of Origin |
| `LICENSE`, `LICENSES/`, `REUSE.toml` | Licensing: Apache-2.0 for software and configuration, CC-BY-4.0 for research and documentation |
| [`docs/repository-administration.md`](../docs/repository-administration.md) | The repository settings that give these policies effect |

Ratification covers the substance of these documents at that commit. It does not freeze them. Any later change is an amendment and follows the process for its level in [Section 4 of `GOVERNANCE.md`](../GOVERNANCE.md#4-decision-making). In particular, the numerical thresholds and review periods in these documents are defaults and may be amended as the Project learns from practice.

This proposal does not change the text of any document.

## Rationale and Alternatives

Ratification by Consortium Proposal during the Founding Phase was chosen because it uses the Project's own process on the Project's own foundation, and because [Section 6.1 of `GOVERNANCE.md`](../GOVERNANCE.md#61-founding-phase) provides for exactly this kind of decision while the Founding Maintainer is the only Maintainer.

Alternatives considered:

1. **Take no action.** The framework would remain in force by the Founding Maintainer's act alone. The Project would have no record of the reasoning, no baseline, and no demonstration that its process applies to its own foundation.
2. **Wait for additional Maintainers and ratify by vote.** The Project currently has one Maintainer. Waiting would leave the framework unratified indefinitely and would make ratification depend on recruitment, which the framework cannot compel.
3. **Describe the original adoption as if it had followed the process.** Rejected. The record states plainly that adoption preceded the process.

Ratification by the sole Maintainer is a procedural act. It is not independent endorsement. Its value lies in transparency and in establishing a defined baseline. Independent review during the comment period is invited and will be recorded.

## Impact

- **Contributors.** Obligations are unchanged. Contributors gain a stable baseline and a defined opportunity to object.
- **Maintainers.** The Founding Maintainer commits to deciding in public and to responding in writing to each substantive objection.
- **Existing content and licensing.** Unchanged. Rights already granted under open licenses are unaffected, in accordance with [Section 5 of the Charter](../docs/CHARTER.md#5-licensing-and-intellectual-property).
- **Independence.** Unchanged. No organisation gains or loses influence.
- **Risks.** An objection may identify a defect in the framework. That is the purpose of the comment period, and any resulting change would be made by a separate amendment. If the comment period closes without participation, the Decision Record will say so.

## Transition and Implementation

1. This proposal is opened as a pull request against `main` with the status `Under Discussion`.
2. The comment period is fourteen days from the opening of the pull request, because the proposal concerns the Charter and licensing ([Section 7 of the Charter](../docs/CHARTER.md#7-amendment) and [Section 4.1 of `GOVERNANCE.md`](../GOVERNANCE.md#4-decision-making)).
3. The Founding Maintainer responds in writing to each substantive objection raised during the period.
4. On or after the last day of the period, the Founding Maintainer records the decision in a further commit to the same pull request: the front matter is updated and the Decision Record below is completed.
5. The pull request is merged using rebase and merge.

## Unresolved Questions

None at the time of submission.

## Decision Record

- **Decision:** Accepted, on 22 October 2026.
- **Level and rule:** Level 3, a decision concerning the Charter and licensing. The comment period ran for fourteen days, from 3 October to 17 October 2026, as required by [Section 7 of the Charter](../docs/CHARTER.md#7-amendment) and [Section 4.1 of `GOVERNANCE.md`](../GOVERNANCE.md#4-decision-making). While the Founding Maintainer is the only Maintainer, the Founding Maintainer decides after the comment period ([Section 6.1](../GOVERNANCE.md#61-founding-phase)).
- **Votes:** The Founding Maintainer voted +1. No other binding votes exist.
- **Comments and objections:** None were received during the comment period, which was held in issue #4.
- **Process note:** The pull request that added this proposal was merged on 3 October 2026, shortly after it was opened and before the comment period, by mistake. The status remained Under Discussion, and no decision was recorded. The comment period was moved to issue #4, as described in that issue. The decision above was recorded after the comment period ended on 17 October 2026.
- **Baseline:** The documents listed in the Proposal section were unchanged between commit `e52b841` and the date of this decision.
- **Effect:** The documents listed above are ratified as the Project's governing framework at that baseline. Later changes are amendments under `GOVERNANCE.md`.
