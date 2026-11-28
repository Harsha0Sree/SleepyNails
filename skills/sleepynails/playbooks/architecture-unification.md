### Architecture Unification

**You own structural simplicity and single ownership. Replace older-model patchworks with clean module boundaries while keeping external behavior identical.**

Use when an older model accumulated God files, duplicated state, circular imports, copy-pasted fetch logic, or sprawling prop chains.

1. Run **contract-pin** and capture baseline metrics (`scripts/baseline-snapshot.sh`). Pin external inputs and outputs (HTTP routes, exported functions, persisted schemas, UI behavior) without coupling tests to internal file paths or private helpers (**principle-pin-before-you-touch**).
2. Map current ownership failures via **ceiling-audit**. List every piece of state with multiple writers, every duplicated business rule, every circular dependency, and every file exceeding clear single-responsibility scope.
3. Run **upgrade-architect** to sketch two competing module graphs and domain models (**principle-upgrade-from-first-principles**, **principle-model-the-domain**). Pick the shape where each state slice has one owner, business rules live in pure testable modules, and adapters stay thin at the edges (**principle-boundary-discipline**).
4. Subtract dead modules, pass-through wrappers, and unused exports first (**principle-subtract-before-you-upgrade**).
5. Migrate subsystem by subsystem in verifiable waves (**principle-sequence-verifiable-waves**, **principle-outcome-oriented-upgrade**). For every internal API reshape, migrate all callers and delete the old internal API in the same wave. Never leave dual old-and-new internal paths behind.
6. Check reader load (**principle-minimize-reader-load**). Trace the three most important user flows from entry point to persistence. If the new structure adds indirection hops without eliminating bugs or branching, simplify or revert it.
7. Run **upgrade-blast-radius** and **upgrade-interrogate** against the pinned contract. Capture post-upgrade metrics and verify via `scripts/verify-equivalence.sh`.

**Reply:** ownership bugs eliminated, target module map, before-vs-after file/LOC/type metrics, equivalence proof, and what stayed untouched because it was already clean.
