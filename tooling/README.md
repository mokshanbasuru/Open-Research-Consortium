# Tooling

This directory contains scripts, converters, and automation that support the Open Research Consortium's research workflow. All content in this directory is licensed under the Apache License, Version 2.0 (`Apache-2.0`).

## Standards

Contributions to this directory meet the requirements in the [tooling section of `CONTRIBUTING.md`](../CONTRIBUTING.md#tooling-contributions). In summary:

- Each tool has its own subdirectory containing a `README.md` that states its purpose, usage, requirements, and limitations.
- Dependencies are declared explicitly and pinned. Tools must not require network access or elevated privileges unless documented.
- Tools that process research content must not transmit it to third-party services without explicit, documented user action.
- Behaviour that can be tested is covered by automated tests.
- Secrets and credentials are never committed.

## Layout

```text
tooling/
  <tool-name>/
    README.md
    src/
    tests/
```

Tool names are lowercase and hyphenated. New tools are Level 1 decisions unless they introduce new automation or security-sensitive behaviour, in which case they are Level 2.
