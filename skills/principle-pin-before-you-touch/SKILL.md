---
name: principle-pin-before-you-touch
description: "Apply before editing any file in an existing codebase during an upgrade. Pin observable behavior with runnable checks before moving structure."
disable-model-invocation: true
---

# Pin Before You Touch

Never edit production code before you can prove what the codebase currently does.

- Catalog every route, API payload, persisted schema, CLI flag, and user flow in `.sleepynails/contract-pin.md`.
- Run existing tests and record baseline pass/fail state and metrics.
- Write fast characterization checks for uncovered critical paths and prove they pass on the pre-upgrade code.
- Compiling and linting are not a behavioral pin.
