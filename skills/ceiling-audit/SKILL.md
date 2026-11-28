---
name: ceiling-audit
description: Diagnose where an older model's capability ceiling left technical debt, weak architecture, loose types, slow paths, security gaps, or generic UX in an existing codebase. Ranks high-leverage upgrade opportunities while explicitly marking clean areas to leave alone. Use for /ceiling-audit.
disable-model-invocation: true
---

# Ceiling audit

Older models solve problems locally and stop at the first working version. That leaves telltale ceilings across a codebase. Your job is to find every real ceiling with `file:line` proof, rank them by impact, and protect clean code from pointless churn.

## Six audit lenses

Inspect the repository across all six lenses. Skip lenses that do not apply to the project type (for example, UI craft on a pure CLI).

1. **Architecture & State Ownership.** God files, duplicated business logic, conflicting sources of truth, circular imports, prop-drilling mazes, and one-caller wrapper layers.
2. **Type System & Boundaries.** `any`, `as unknown as`, unvalidated external payloads, stringly-typed state machines, boolean flag soup, and silent fallback defaults hiding bad data.
3. **Performance & Resource Efficiency.** N+1 queries, sequential fetch waterfalls, unbounded memory growth, redundant re-renders, blocking startup work, and bloated bundles.
4. **Security & Failure Resilience.** Missing auth/ownership checks, unparameterized queries, unsafe HTML/shell interpolation, empty `catch` blocks swallowing errors, missing timeouts, and non-idempotent retries.
5. **UX Craft & Accessibility.** Generic AI visual templates (pill clutter, nested card boxes, decorative pulsing dots), low contrast, broken mobile reflow, missing keyboard focus or labels, dead controls, and missing empty/loading/error states.
6. **Code Clarity & Dead Weight.** Unused files/exports/dependencies, dead feature flags, copy-pasted boilerplate, and verbose AI-generated narration comments.

## Rules

- Every finding must cite exact `file:line` locations and state the concrete symptom plus the first-principles upgrade.
- Classify each finding as **High**, **Medium**, or **Leave Alone**.
- Never invent issues to justify a bigger diff. Explicitly list modules that are already clean so upgrade waves skip them.

**Reply:** ranked ceiling findings grouped by lens with `file:line` citations, recommended wave sequence, and modules explicitly marked `Leave Alone`.
