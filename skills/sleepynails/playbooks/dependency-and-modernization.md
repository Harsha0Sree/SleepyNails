### Dependency and Modernization

**You own clean, idiomatic modernization. Replace outdated patterns, deprecated APIs, and older-model boilerplate with current framework best practices while keeping runtime behavior identical.**

Use when an older model relied on legacy framework APIs, deprecated libraries, verbose workarounds, or outdated language idioms.

1. Capture baseline snapshot (`scripts/baseline-snapshot.sh`) and pin behavior via **contract-pin** (**principle-pin-before-you-touch**). Record current runtime versions, build warnings, and deprecation logs.
2. Audit legacy idioms and redundant packages via **ceiling-audit**. Identify hand-rolled polyfills replaced by platform standards, redundant dependencies that duplicate built-in capabilities, deprecated framework APIs, and legacy config patterns.
3. Subtract first (**principle-subtract-before-you-upgrade**). Remove unused packages and dead config files before modernizing remaining dependencies.
4. Modernize in small waves (**principle-sequence-verifiable-waves**). Group changes cleanly (unused dependency removal -> framework idiom modernization -> config and build pipeline cleanup). Verify build, lint, and pinned behavior tests after each wave.
5. Run **upgrade-blast-radius** specifically checking lockfiles, SSR/hydration behavior, bundler output, peer dependency constraints, and environment compatibility.
6. Run **unslop-code** and **upgrade-interrogate** to confirm zero deprecation regressions and zero functional drift.

**Reply:** idioms and packages modernized, dependencies removed, build/deprecation warnings before vs after, and behavioral equivalence proof.
