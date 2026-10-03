# Consortium Proposals

A Consortium Proposal (CP) is the formal mechanism for proposing and recording changes to the governance, processes, and foundational documents of the Open Research Consortium (the "Project"). The process is modelled on the Python Enhancement Proposals, the Rust RFCs, and the Kubernetes Enhancement Proposals. Its purpose is to give every significant decision a public, durable, reviewable record.

## When a Proposal Is Required

A CP is required for any Level 3 change defined in [`GOVERNANCE.md`](../GOVERNANCE.md#4-decision-making) that alters a governing document or the structure of the Project, including:

- amendments to the [Charter](../docs/CHARTER.md) or to `GOVERNANCE.md`;
- changes to the licensing of the Project or the mapping in `REUSE.toml`;
- the transition to a Steering Committee, and changes to its composition;
- transfer of the Project's assets to a legal entity; and
- adoption or revision of major cross-cutting policy, such as the research review lifecycle.

A CP is not required for ordinary research, tooling, or documentation contributions.

## Lifecycle

| Status | Meaning |
| :--- | :--- |
| Draft | The author is preparing the proposal. It is not yet open for decision. |
| Under Discussion | Opened as a pull request and under public comment for the minimum period required by its level. |
| Accepted | Approved under the applicable decision rule and merged. Implementation may follow. |
| Rejected | Not approved. The proposal and the reasons for rejection are retained. |
| Withdrawn | Withdrawn by the author. |
| Superseded | Replaced by a later proposal, which it references. |

## Procedure

1. **Socialise the idea.** Discuss the problem in an issue or discussion thread before drafting, to gather early feedback.
2. **Draft the proposal.** Copy [`0000-template.md`](0000-template.md) to `CP-NNNN-short-title.md`, where `NNNN` is the next unused number, and complete every section.
3. **Open a pull request.** Submit the proposal against `main`. The pull request is the venue for discussion. Set the status to `Under Discussion`.
4. **Comment period.** The proposal remains open for at least seven days, or fourteen days for the Charter and for licensing changes.
5. **Decision.** The proposal is decided under the rules for its level in `GOVERNANCE.md`. The outcome is recorded in the proposal's front matter and in the pull request.
6. **Implementation.** An accepted proposal is implemented through ordinary pull requests that reference it.

## Numbering and Naming

Proposals are numbered sequentially and never reused. File names have the form `CP-0001-short-title.md`, using lowercase hyphenated words. The template, `0000-template.md`, is not itself a proposal.
