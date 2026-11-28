---
name: principle-type-system-discipline
description: "Apply when upgrading typed codebases. Eliminate any, unsafe casts, and silent fallbacks; make illegal states unrepresentable."
disable-model-invocation: true
---

# Type System Discipline

Let the compiler enforce invariants that older models tried to hold together with runtime guesses.

- Eliminate `any`, `as unknown as`, and non-null assertions (`!`) unless justified by a proven runtime invariant at a boundary.
- Derive types from authoritative schemas or constants rather than hand-copying duplicate interfaces.
- Handle discriminated unions exhaustively so adding a new variant fails at compile time instead of failing silently in production.
