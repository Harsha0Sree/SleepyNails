---
name: upgrade-blast-radius
description: Probe hidden compatibility seams an upgrade could break beyond what grep shows (JSON wire formats, DB columns, localStorage keys, URLs, env vars, CSS hooks, SSR hydration) and prove safety by running real code. Use for /upgrade-blast-radius.
disable-model-invocation: true
---

# Upgrade blast radius

Listing symbol callers with grep is trivial and misses the breakage that hurts in production. Blast radius checks what grep cannot see and proves safety by running real code.

## Confidence ladder

Push every critical safety fact as far down this ladder as is cheap, and state where it stopped.

1. Claimed from memory. Not acceptable.
2. Cited real `file:line` or dependency source.
3. Traced failure path step by step and proved unreachable.
4. Executed a test or probe script against the real upgraded code that fails loudly if wrong.
5. Verified end to end on the live running application.

## Hidden seams to inspect

- JSON response field names, nullability, date formats, and HTTP status codes.
- Database columns, index names, migrations, and serialized JSON blobs.
- Browser storage keys (`localStorage`, `sessionStorage`, cookies, IndexedDB).
- Public URLs, query parameters, redirects, webhooks, and deep links.
- Environment variable names, defaults, and build-time vs runtime resolution.
- Library behavior changes, SSR hydration boundaries, and teardown timing.

## Steps

1. Inspect the full upgrade diff and extract every touched boundary or external contract.
2. Identify the single highest-risk compatibility assumption per boundary.
3. Run a real probe script or test verifying each assumption holds against the pinned contract.
4. Separate confirmed risks (must fix before ship) from verified-safe seams.

**Reply:** boundaries checked, proven safety facts with ladder level and command output, any confirmed risks with `file:line`, and cleared seams.
