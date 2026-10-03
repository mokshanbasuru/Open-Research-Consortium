# Contributing

Thank you for your interest in contributing to the Open Research Consortium (the "Project"). This document describes how to contribute research, tooling, reviews, and documentation, and what the Project expects of contributions and contributors.

By participating, you agree to abide by the [Code of Conduct](CODE_OF_CONDUCT.md). Governance of the Project, including how decisions are made and how Contributors become Maintainers, is described in [`GOVERNANCE.md`](GOVERNANCE.md).

## Ways to Contribute

- **Research.** Propose, write, or extend research, following the standards in [`research/README.md`](research/README.md).
- **Review.** Review open pull requests. Review is the most valuable contribution a newcomer can make, and it is the primary basis on which Maintainers are recognised.
- **Tooling.** Improve scripts, converters, and automation in [`tooling/`](tooling/).
- **Documentation and process.** Correct errors, clarify explanations, or propose process changes through a [Consortium Proposal](proposals/README.md).
- **Issues.** Report defects and suggest improvements using the issue templates.

Security vulnerabilities must not be reported through public issues. See [`SECURITY.md`](SECURITY.md).

## Licensing of Contributions

The Project follows an inbound-equals-outbound model. Your contribution is licensed under the license that applies to the path you are changing:

| Path | License |
| :--- | :--- |
| `research/`, `docs/`, `proposals/`, and governance documents in the repository root | `CC-BY-4.0` |
| `tooling/`, `.github/`, and configuration files | `Apache-2.0` |

You retain copyright in your contribution. The Project does not require copyright assignment or a contributor license agreement. The full per-path mapping is maintained in [`REUSE.toml`](REUSE.toml) and checked automatically.

## Developer Certificate of Origin

Every commit must be signed off to certify that you have the right to submit it under the applicable license. The Project uses the Developer Certificate of Origin (DCO), version 1.1, as used by the Linux kernel and many other projects. The canonical text is published at <https://developercertificate.org/>, and is reproduced here for convenience:

```text
Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the best
    of my knowledge, is covered under an appropriate open source
    license and I have the right under that license to submit that
    work with modifications, whether created in whole or in part
    by me, under the same open source license (unless I am
    permitted to submit under a different license), as indicated
    in the file; or

(c) The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.
```

To certify, add a `Signed-off-by` trailer to each commit message, using your real name and an email address you control:

```text
Signed-off-by: Jane Doe <jane.doe@example.org>
```

Git adds this line automatically when you commit with the `-s` flag:

```sh
git commit -s
```

If you prefer not to disclose a personal email address, you may use the private address provided by GitHub (of the form `ID+username@users.noreply.github.com`). The email address in the sign-off must match the author or committer address of the commit. An automated check enforces this on every pull request. To add a missing sign-off to existing commits, run `git rebase --signoff <base>` and force-push your branch. Reverts must also be signed off (`git revert -s`).

## Contribution Workflow

1. **Discuss first for significant work.** For anything beyond a small correction, open an issue or discussion describing your intent, so that effort is not spent on a change that cannot be accepted.
2. **Fork and branch.** Fork the repository and create a topic branch from `main`. Use a short, descriptive branch name.
3. **Make focused changes.** Each pull request should address one logical change. Unrelated changes belong in separate pull requests.
4. **Write a good commit message.** See below.
5. **Run the checks locally** where practical: Markdown linting and the REUSE compliance tool.
6. **Open a pull request** against `main`, complete the template, and link the related issue.
7. **Respond to review.** Reviewers may request changes. Pull requests that are inactive for thirty days after a request for changes may be closed, and can be reopened at any time.

### Commit Messages

Commit messages follow the conventions used by the Linux kernel:

- A subject line of no more than 72 characters, written in the imperative mood and prefixed with the affected area (for example, `research/macroeconomics: add methodology section`).
- A blank line, followed by a body wrapped at about 72 characters that explains what changed and, above all, why.
- Trailers at the end of the message, beginning with `Signed-off-by`. Use `Co-authored-by` to credit additional authors.

## Review and Acceptance

Decisions on contributions follow the levels and review periods defined in [`GOVERNANCE.md`](GOVERNANCE.md#4-decision-making). In summary:

- Routine changes require approval from a Maintainer who is not the author, passing automated checks, and a minimum open period of 72 hours so that contributors in all time zones can respond.
- Significant changes require additional approval and a longer open period.
- Changes to governing documents require a Consortium Proposal and a vote.

Reviewers evaluate contributions against the following criteria:

- **Correctness and rigour.** Claims are supported, methods are sound, and code behaves as described.
- **Neutrality.** Content meets the editorial standards in Section 4 of the [Charter](docs/CHARTER.md).
- **Reproducibility.** Another party could follow the methods and obtain comparable results.
- **Licensing.** Provenance is clear, the contribution is licensed appropriately, and no third-party material is included without compatible terms.
- **Clarity.** Writing is precise, professional, and accessible to the intended audience.
- **Scope.** The change is focused and consistent with the Charter.

Objections are expected to be specific and constructive. Authors are expected to respond to feedback on its merits.

## Tooling Contributions

Contributions to `tooling/` and `.github/` additionally meet the following requirements:

- Dependencies are declared explicitly and pinned to specific versions. GitHub Actions are pinned to full commit SHAs.
- Secrets, credentials, and personal data are never committed.
- Behaviour that can be tested is accompanied by tests.
- New executables carry an `SPDX-License-Identifier` header or are covered by `REUSE.toml`.

## Repository Content Policy

To keep the repository auditable and reproducible, the following are not accepted: compiled binaries and libraries, archives, disk images, PDF files, and any single file larger than one mebibyte. Publish sources in plain text (Markdown, CSV, code). Generated artifacts are produced by build tooling rather than committed. Figures in common image formats are permitted within the size limit. Exceptions require Level 2 approval.

## Becoming a Maintainer

Maintainers are chosen on merit, through sustained and substantive contribution including review. The criteria and process are in [Section 3 of `GOVERNANCE.md`](GOVERNANCE.md#3-becoming-and-ceasing-to-be-a-maintainer).

## Getting Help

Questions about contributing are welcome. See [`SUPPORT.md`](SUPPORT.md) for the appropriate channel.
