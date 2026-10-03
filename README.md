# Open Research Consortium™

[![Software: Apache-2.0](https://img.shields.io/badge/software-Apache--2.0-blue.svg?style=flat-square)](LICENSES/Apache-2.0.txt)
[![Research and documentation: CC BY 4.0](https://img.shields.io/badge/research%20and%20docs-CC%20BY%204.0-blue.svg?style=flat-square)](LICENSES/CC-BY-4.0.txt)
[![Contributions: DCO](https://img.shields.io/badge/contributions-DCO-blue.svg?style=flat-square)](CONTRIBUTING.md#developer-certificate-of-origin)

Open Research Consortium is an open-source, community-governed project for independent and collaborative research. It publishes peer-reviewed research, maintains the tooling that supports it, and operates under a documented, merit-based governance model.

## Principles

The Project is organised around three commitments, set out in full in the [Charter](docs/CHARTER.md).

- **Open by default.** Every file in this repository is available under an open license. There is no proprietary tier.
- **Merit-based.** Authority is earned through sustained, visible contribution. It is not conferred by affiliation, seniority, or funding.
- **Neutral and evidence-based.** Published research must be objective, non-partisan, reproducible, and properly sourced.

## Repository Layout

| Path | Purpose |
| :--- | :--- |
| [`research/`](research/) | Published and in-review research. Contribution conventions and the submission template are documented in the directory. |
| [`tooling/`](tooling/) | Scripts, converters, and automation that support the research workflow. |
| [`proposals/`](proposals/) | Consortium Proposals (CPs): the formal record of governance, process, and charter changes. |
| [`docs/`](docs/) | The Charter and administrative documentation. |
| [`.github/`](.github/) | Continuous integration, issue and pull request templates, and repository policy. |
| [`LICENSES/`](LICENSES/) | License texts, organised according to the [REUSE specification](https://reuse.software/spec/). |

## Licensing

Licensing is declared per path and verified automatically in continuous integration. Contributions are accepted on an inbound-equals-outbound basis: a contribution is licensed under the same terms as the path it modifies. Contributors retain copyright in their work; no copyright assignment or contributor license agreement is required.

| Content | License |
| :--- | :--- |
| Research, documentation, governance documents, and templates | [Creative Commons Attribution 4.0 International](LICENSES/CC-BY-4.0.txt) (`CC-BY-4.0`) |
| Software, scripts, automation, and configuration | [Apache License, Version 2.0](LICENSES/Apache-2.0.txt) (`Apache-2.0`) |

The authoritative mapping is maintained in [`REUSE.toml`](REUSE.toml). The name and marks of the Project are governed separately by the [Trademark Policy](TRADEMARKS.md).

## Governance

The Project is governed by a documented process modelled on the practices of the Linux kernel and the Apache Software Foundation: hierarchical maintainership, decisions by consensus with formal voting as a fallback, and all deliberation conducted in public.

- [`GOVERNANCE.md`](GOVERNANCE.md) defines roles, decision-making, and the transition to an elected Steering Committee.
- [`MAINTAINERS.md`](MAINTAINERS.md) lists current maintainers and the areas they are responsible for.
- [`docs/CHARTER.md`](docs/CHARTER.md) states the foundational principles that govern all other documents.

## Contributing

Contributions of research, tooling, review, and documentation are welcome. Begin with [`CONTRIBUTING.md`](CONTRIBUTING.md), which describes the contribution workflow, the Developer Certificate of Origin, and review expectations. Participation is subject to the [Code of Conduct](CODE_OF_CONDUCT.md). For usage questions and general discussion, see [`SUPPORT.md`](SUPPORT.md).

## Security

Do not report security vulnerabilities in public issues. Follow the process in [`SECURITY.md`](SECURITY.md).

## Citing This Work

Citation metadata is provided in [`CITATION.cff`](CITATION.cff). Individual research documents carry their own citation guidance in their front matter.

---

Copyright 2026 The Open Research Consortium Authors. See [`NOTICE`](NOTICE) and [`REUSE.toml`](REUSE.toml) for attribution and licensing details.
