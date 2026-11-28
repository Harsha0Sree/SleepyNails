---
name: contract-pin
description: Freeze the current observable behavioral contract of a codebase before upgrading it. Catalogs routes, API schemas, persisted data, CLI flags, env vars, and core user journeys, then runs or writes characterization checks that pass on the pre-upgrade code. Use for /contract-pin or as Wave 0 of every sleepynails upgrade.
disable-model-invocation: true
---

# Contract pin

No upgrade edit is safe without a runnable behavioral pin. Compiling and linting prove syntax, not that the product still works identically.

## What to pin

Catalog every external surface callers, users, or infrastructure depend on.

1. **HTTP / RPC / API contracts.** Every route path, method, auth requirement, status code, request shape, and response JSON shape.
2. **Persisted state contracts.** Database tables/columns, migrations, localStorage/sessionStorage keys, cookies, file formats, and cache keys.
3. **UI & interaction contracts.** Every page URL, navigation link, form validation rule, filter/sort control, modal flow, and empty/error state.
4. **CLI / SDK / library contracts.** Every exported function signature, CLI command, flag, exit code, stdout/stderr format, and environment variable.

## Steps

1. Inspect entry points, router tables, API routes, schemas, and existing test suites.
2. Run all existing tests and record the exact baseline command and result.
3. Write a concise contract manifest at `.sleepynails/contract-pin.md` listing every pinned surface with `file:line` pointers.
4. For any critical behavior lacking automated coverage, write fast characterization tests asserting observable outputs on the current code (never private internals). Run them and confirm they pass green before any production file changes.
5. Capture baseline metrics via `../sleepynails/scripts/baseline-snapshot.sh .sleepynails/baseline before`.

**Reply:** contract manifest path, existing tests status, characterization checks added, and the exact verification command that must stay green after every wave.
