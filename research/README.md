# Research

This directory contains the research published by the Open Research Consortium (the "Project"), together with research that is under review. All content in this directory is licensed under the Creative Commons Attribution 4.0 International license (`CC-BY-4.0`), and authors retain copyright in their work.

## Editorial Standards

All research is held to the standards in Section 4 of the [Charter](../docs/CHARTER.md). In practice, a submission is expected to:

1. **State its question and method.** Define the research question, scope, and methodology clearly enough for independent evaluation.
2. **Support its claims.** Cite sources for factual claims and distinguish evidence from interpretation. State limitations and consider counter-evidence.
3. **Be reproducible.** Provide code, data, or detailed procedures sufficient to reproduce the findings, or explain why this is not possible.
4. **Disclose interests.** Declare funding, commissioning organisations, and any competing interests in the front matter.
5. **Be neutral.** Present competing positions fairly. Avoid advocacy and inflammatory language.
6. **Respect provenance.** Include only material that the author has the right to license under `CC-BY-4.0`, and cite and attribute third-party material appropriately.

## Layout and Naming

Research is organised by domain. A single-document submission is a Markdown file; a larger work with supporting material is a directory containing a `README.md`.

```text
research/
  <domain>/
    <short-title>.md              single document
    <short-title>/
      README.md                   main document
      data/                       supporting data, in plain-text formats
      figures/                    figures, within the repository size limit
```

Domain and file names are lowercase and hyphenated, for example `research/distributed-systems/vector-database-comparison.md`. Begin from [`_templates/research-paper.md`](_templates/research-paper.md).

## Review Lifecycle

Every research document carries a `status` in its front matter.

| Status | Meaning |
| :--- | :--- |
| `draft` | Being written. Not yet submitted for review. |
| `in-review` | Open for public review, either as a pull request that has not been merged or, under the Founding Phase provision below, as a published document awaiting independent review. |
| `accepted` | Approved after independent review and merged. This is the reviewed, published version. |
| `superseded` | Replaced by a later document, which it references. |
| `withdrawn` | Withdrawn by the author or the Maintainers, with reasons recorded. |

A document is accepted when:

1. it has been open for review for at least fourteen days;
2. it has received at least two substantive reviews from reviewers who are not among its authors, at least one of whom is a Maintainer;
3. all substantive objections have been addressed or resolved by the process in [`GOVERNANCE.md`](../GOVERNANCE.md); and
4. automated checks pass.

Acceptance of research is a Level 2 decision. Accepted documents are versioned using the `version` field. Substantive corrections increment the version, and the change is described in the document's revision history. Accepted documents are not silently altered.

### Founding Phase Provision

While the Project has only one Maintainer, that Maintainer cannot satisfy the second acceptance criterion for a document they have authored, because no other Maintainer exists to review it. In that case the following applies instead.

1. After the fourteen-day review period, the document may be merged with the status `in-review`. Directly beneath its title it carries the statement: "Status: in review. This document has not yet received independent review."
2. The document remains `in-review` until it has received at least two substantive reviews from reviewers who are not among its authors. The reviewers are recorded in the front matter.
3. A pull request then changes the status to `accepted` and removes the statement in item 1. Citations made before that point should identify the document as unreviewed.
4. This provision applies only while the Project has one Maintainer. When a second Maintainer is appointed, the second acceptance criterion applies in full.

The provision does not apply to research authored by anyone other than the sole Maintainer. For such research, the Maintainer serves as the Maintainer reviewer and the ordinary criteria apply.

## Sensitive and Dual-Use Research

Some research, particularly in security and in other fields where findings can be misused, requires additional care.

- Do not publish working exploits, credentials, or operational instructions that would enable unauthorised access to, or harm to, systems or persons.
- Where a submission describes a vulnerability in a third-party product, the author confirms that the vendor or maintainer has been notified and that an appropriate disclosure period has elapsed, or explains why disclosure is not applicable.
- Do not include personal data of identifiable individuals, or data obtained without authorisation. Where datasets are used, describe their provenance and the basis on which they may be shared.
- Reviewers may request revisions, redactions, or additional context where a document presents a risk that outweighs its benefit. Disagreements are escalated as Level 2 decisions.

## Citation

Each accepted document identifies a preferred citation in its front matter. When citing the Project as a whole, use [`CITATION.cff`](../CITATION.cff).
