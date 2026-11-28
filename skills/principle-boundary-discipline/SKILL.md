---
name: principle-boundary-discipline
description: "Apply when upgrading HTTP handlers, forms, DB adapters, CLI entry points, or external API integrations."
disable-model-invocation: true
---

# Boundary Discipline

Concentrate parsing, validation, authentication, and error translation at system boundaries.

- Parse untrusted input (HTTP bodies, query params, env vars, files, external API responses) once at the edge into strict domain types.
- Keep core business logic in pure, deterministic functions that trust those validated internal types.
- Do not scatter redundant defensive `if (!x)` guards through internal helpers that already receive typed data.
