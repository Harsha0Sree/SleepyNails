---
name: principle-zero-behavioral-drift
description: "Apply to every edit in a generational upgrade run. Preserve all existing features, routes, contracts, and edge cases unless the operator explicitly requests a change."
disable-model-invocation: true
---

# Zero Behavioral Drift

An upgrade improves how the codebase is built, not what the product does.

- Keep all user-facing routes, controls, form rules, API payloads, exit codes, and persisted data schemas identical.
- Never silently invent new features, rename public fields, or drop quirky edge-case handling that production relies on.
- When an audit uncovers a real pre-existing bug, document it under `Discovered Bugs` instead of quietly altering production behavior inside a structural wave.
