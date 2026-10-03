# Repository Administration

This document records the repository settings that give the Project's policies their effect. Automated checks and written rules only protect the Project if the hosting platform is configured to require them. Settings described here are administered by the Founding Maintainer and, after the transition described in [`GOVERNANCE.md`](../GOVERNANCE.md), by the Steering Committee. Changes to these settings that weaken a control are Level 2 decisions.

## Branch Protection for `main`

Configure a branch protection rule or ruleset for `main` with the following settings.

| Setting | Value |
| :--- | :--- |
| Require a pull request before merging | Enabled |
| Required approving reviews | See "Staging by Maintainer Count" below |
| Dismiss stale approvals when new commits are pushed | Enabled |
| Require review from code owners | Enabled once at least two Maintainers exist |
| Require conversation resolution before merging | Enabled |
| Require status checks to pass | Enabled; required checks: `DCO`, `Markdown`, `File policy`, `REUSE` |
| Require branches to be up to date before merging | Enabled |
| Restrict force pushes and deletions | Enabled |
| Do not allow bypassing the above settings | Enabled |

### Staging by Maintainer Count

GitHub does not permit an author to approve their own pull request, so the required number of approvals depends on how many Maintainers exist. This staging implements the rules in Section 4 and Section 6.1 of `GOVERNANCE.md`.

| Active Maintainers | Required approvals | Code owner review |
| :--- | :--- | :--- |
| 1 (Founding Phase, sole Maintainer) | 0; pull requests and passing checks remain mandatory, and the minimum open period applies by convention | Disabled |
| 2 | 1 | Enabled |
| 3 or more | 1 for Level 1 changes; Level 2 changes require 2, enforced by reviewers | Enabled |

## Merge Strategy

Allow **rebase and merge** and **merge commit**. Disable **squash and merge**. Rebase merging preserves each commit and its `Signed-off-by` trailer on `main`, which keeps the Developer Certificate of Origin record intact, in line with the practice of the Linux kernel. Set the default to rebase and merge.

## Security Features

Enable the following in the repository security settings:

- private vulnerability reporting (required by [`SECURITY.md`](../SECURITY.md) and used for Code of Conduct reports; see "Private Reporting" below);
- the dependency graph, Dependabot alerts, and Dependabot security updates;
- secret scanning and push protection; and
- code scanning where code in the repository warrants it.

## GitHub Actions

- Set the default `GITHUB_TOKEN` permission to read-only. Workflows request additional permissions explicitly and minimally.
- Require approval before running workflows from first-time contributors.
- Pin third-party actions to full commit SHAs, with the release tag in a trailing comment. Dependabot keeps these current.
- Do not use `pull_request_target` or `workflow_run` with untrusted code without a documented Level 2 decision.

## Accounts

- Require two-factor authentication for all Maintainers and, once an organization exists, for all organization members.
- Review repository and organization access whenever Maintainer status changes, and at least once a year.

## Repository Features and Labels

Enable GitHub Discussions with a Q&A category, as referenced in [`SUPPORT.md`](../SUPPORT.md). Create the following labels so that issue templates and workflows apply them correctly:

`research`, `tooling`, `governance`, `trademark`, `dependencies`, `needs-triage`.

## Private Reporting

The Project uses GitHub's private vulnerability reporting as its single private channel, for both security reports ([`SECURITY.md`](../SECURITY.md)) and Code of Conduct reports ([`CODE_OF_CONDUCT.md`](../CODE_OF_CONDUCT.md)).

- **Enable it before publishing the repository.** The setting is under the repository's **Settings**, in **Advanced Security** (labelled **Code security** on some accounts). It is available for public repositories only. If it is not enabled, the **Report a vulnerability** button does not exist and the instructions in both documents cannot be followed.
- **Do not require a CWE assignment.** The reporting settings include an option to require a CWE identifier on each report. Leave it disabled, because Code of Conduct reports cannot supply one.
- **Consider rate limits and trusted reporters.** The same settings allow a daily limit on new reports and an allow list of trusted reporters. These are optional and are most useful once the repository attracts automated or low-quality submissions.
- **Check your own notifications.** GitHub notifies administrators and security managers of new reports according to their personal notification and watch settings. Confirm that you will actually be alerted.
- **Know the limitation.** The form is designed for security vulnerabilities. A conduct report therefore arrives as a draft security advisory, and the reporter must be told to label it clearly, as the Code of Conduct instructs. If conduct reports become frequent or the form proves confusing for reporters, adopt a dedicated mailbox and update the Code of Conduct and this section in the same change.

## Review

This document is reviewed whenever the number of Active Maintainers changes the applicable stage, and at least annually.
