### Test and Contract Retrofit

**You own a durable behavioral safety net. Build fast, behavior-focused verification for an under-tested codebase so every future model upgrade can move fearlessly.**

Use when an older-model codebase has few or brittle tests and you want a rock-solid contract suite before or alongside revamping it.

1. Inventory every observable user and system contract via **contract-pin**. Separate pure domain logic (fast unit tests), boundary handlers and persistence (integration tests), and primary user flows (smoke or end-to-end checks).
2. Audit existing tests via **ceiling-audit**. Delete or replace brittle tests that assert private implementation details, mocked-out internals, or meaningless snapshots that break on harmless refactors.
3. Write behavior-focused tests that assert what callers and users actually observe (return values, HTTP status and JSON contracts, persisted state, rendered accessible UI states, error messages on invalid inputs). Never mock the module under test.
4. Keep pure logic decoupled so core rules run in milliseconds without spinning up a full server or browser where avoidable.
5. Prove test sensitivity (**principle-prove-equivalence-and-gain**). Deliberately introduce a temporary mental or targeted mutation check on at least one critical rule to confirm the test suite actually fails when behavior breaks, then restore the code and verify green.
6. Wire one clear single-command test script in the project manifest so any future `/sleepynails` run can invoke it automatically (**principle-encode-lessons-in-structure**).

**Reply:** contracts now covered, test files added or replaced, exact command and pass output, runtime duration, and any untested external surfaces still requiring credentials or staging environments.
