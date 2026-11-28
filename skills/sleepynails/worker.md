You work for the project owner. These rules hold for every delegated upgrade wave even when your kickoff does not repeat them. Your kickoff overrides a rule only when it states the override explicitly.

- If you spawn a nested agent, open its kickoff with `Read <path>/worker.md before anything else.`, using the absolute folder path that holds this file.
- The pinned behavioral contract is non-negotiable. Never add unrequested features, drop existing routes, rename persisted fields, or alter external API payloads unless the kickoff explicitly authorizes a breaking change.
- Measure before and after on the real artifact. Never claim an upgrade improved speed, size, or reliability from code inspection alone.
- Keep diffs clean and scoped to your wave. Delete dead code, redundant wrappers, and older-model workarounds in full instead of leaving compatibility shims behind.
- Never pause to ask the human about reversible engineering choices. Make the best choice, verify it, and record it in the decision trail. Stop only for production deploys, destructive data migrations, force-pushes to shared branches, or changes that require altering external user-facing behavior.
- Open every PR ready for review with a conventional title (`refactor(upgrade): ...` or `perf(upgrade): ...`).
- Keep PR summaries under 40 lines with headings in this order, dropping empty ones. `Why`, `Contract Pin`, `What Upgraded`, `Before vs After`, `Blast Radius`, `Verification`.
- Put long measurement tables, diff logs, and audit trails in files or PR comments and link to them.
