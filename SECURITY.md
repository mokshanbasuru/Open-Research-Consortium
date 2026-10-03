# Security Policy

The Open Research Consortium (the "Project") takes the security of its tooling, automation, and supply chain seriously. This policy describes which parts of the Project are covered, how to report a vulnerability, and what to expect in response.

## Scope

This policy applies to:

- scripts and utilities in `tooling/`;
- GitHub Actions workflows, scripts, and configuration in `.github/`;
- repository configuration, access controls, and release or publication processes; and
- the integrity of published research artifacts, including unauthorised modification.

Inaccuracies in research content are not security vulnerabilities. Report them as ordinary issues.

## Supported Versions

The Project maintains the `main` branch. Security fixes are applied to `main`. The Project does not currently publish versioned releases of its tooling. This section will be updated if that changes.

## Reporting a Vulnerability

**Do not report security vulnerabilities through public issues, discussions, or pull requests.**

Report vulnerabilities privately using GitHub's private vulnerability reporting:

1. Open the **Security** tab of this repository (labelled **Security and quality** in newer versions of the interface).
2. Select **Report a vulnerability**.
3. Provide a description of the issue, the affected component, steps to reproduce, and your assessment of the impact.

Reports are visible only to the reporter and to the repository's administrators and security managers until a fix is published. The same private channel is also used for Code of Conduct reports, which are handled under the [Code of Conduct](CODE_OF_CONDUCT.md) and not under this policy.

## What to Expect

| Stage | Target |
| :--- | :--- |
| Acknowledgement of your report | Within 3 business days |
| Initial assessment and severity classification | Within 10 business days |
| Status updates | At least every 14 days until resolution |
| Fix and coordinated disclosure | Within 90 days of the report, sooner where practicable |

These targets are goals for a volunteer-run project, not contractual commitments. If a fix requires longer than 90 days, the maintainers will explain why and agree an extended timeline with the reporter.

## Coordinated Disclosure

The Project follows coordinated disclosure. Please allow the maintainers a reasonable opportunity to remediate before publishing details. Once a fix is available, the Project publishes a GitHub Security Advisory describing the issue, the affected components, and the remediation, and credits the reporter unless they request otherwise.

## Good-Faith Research

The Project will not pursue action against researchers who act in good faith, who make a reasonable effort to avoid privacy violations and disruption, who do not access or modify data beyond what is necessary to demonstrate the issue, and who report promptly and privately.

## Handling of Reports

Security reports are handled confidentially, as permitted by Section 3 of the [Charter](docs/CHARTER.md). Discussion of a vulnerability takes place in the private advisory until it is disclosed.
