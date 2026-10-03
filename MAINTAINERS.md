# Maintainers

This file lists the people who hold maintainer responsibility for the Open Research Consortium (the "Project"), and the areas for which they are responsible. The roles, selection criteria, and obligations of Maintainers are defined in [`GOVERNANCE.md`](GOVERNANCE.md). The format follows the convention of the Linux kernel `MAINTAINERS` file: each area has a status, owners, and the paths it covers.

## Founding Maintainer

| Name | GitHub | Affiliation | Responsibilities |
| :--- | :--- | :--- | :--- |
| Mokshan Basuru | [@mokshanbasuru](https://github.com/mokshanbasuru) | Not declared | Final decision-making authority during the Founding Phase; repository administration; Code of Conduct enforcement; security response |

**Designated successor:** Not yet designated. See [Section 6.4 of `GOVERNANCE.md`](GOVERNANCE.md#64-continuity).

## Maintainers

There are currently no Maintainers other than the Founding Maintainer. Nominations are described in [Section 3.2 of `GOVERNANCE.md`](GOVERNANCE.md#32-nomination-and-approval).

## Areas of Responsibility

Each area is assigned one of the following statuses.

| Status | Meaning |
| :--- | :--- |
| Maintained | Has an active owner who reviews and merges changes. |
| Odd Fixes | Has a willing but non-dedicated owner; response times may be slow. |
| Orphaned | Has no current owner. Contributions are welcome, and volunteers may nominate themselves. |

| Area | Paths | Owner | Status |
| :--- | :--- | :--- | :--- |
| Governance and Charter | `GOVERNANCE.md`, `docs/`, `proposals/`, `MAINTAINERS.md`, `CODE_OF_CONDUCT.md` | @mokshanbasuru | Maintained |
| Licensing and trademarks | `LICENSE`, `LICENSES/`, `REUSE.toml`, `NOTICE`, `TRADEMARKS.md` | @mokshanbasuru | Maintained |
| Research | `research/` | @mokshanbasuru | Maintained |
| Tooling | `tooling/` | @mokshanbasuru | Maintained |
| Repository automation and security | `.github/`, `SECURITY.md` | @mokshanbasuru | Maintained |

## Emeritus Maintainers

None.

## Changes to This File

Changes to this file take effect through the processes in [`GOVERNANCE.md`](GOVERNANCE.md). The `CODEOWNERS` file in `.github/` mirrors the area ownership above and is updated in the same change.
