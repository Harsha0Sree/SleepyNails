### Overnight Upgrade

**You own an autonomous, auditable generational revamp. Drive every verifiable wave to completion without blocking on the operator, and leave a reviewable branch and decision trail by morning.**

Use when the operator wants a complete generational upgrade to run unattended across a substantial codebase.

1. Create an isolated upgrade branch (`sleepynails/overnight-<date>`). Never push directly to `main` or trigger production deploys (**principle-never-block-on-the-human** with strict irreversible-action pause).
2. Capture baseline metrics (`scripts/baseline-snapshot.sh .sleepynails/baseline before`) and initialize `upgrade-decisions.tsv` via **upgrade-trail**.
3. Run **contract-pin** thoroughly. If automated verification is absent, build the characterization harness first and commit it as Commit 1 so every later wave has a hard gate (**principle-pin-before-you-touch**).
4. Run **ceiling-audit** and **upgrade-architect** to produce an explicit wave plan ordered from highest leverage and lowest ambiguity to highest polish. Write the wave plan into `.sleepynails/upgrade-plan.md` and log it in `upgrade-decisions.tsv`.
5. Execute waves sequentially or in parallel across disjoint file seams using fresh `sleepynails-worker` subagents in isolated git worktrees (**principle-guard-the-context-window**, **principle-sequence-verifiable-waves**). Every wave follows the strict loop.
   - Implement scoped upgrade wave.
   - Run full build, type check, lint, and pinned contract tests.
   - Run **unslop-code** on the wave diff.
   - Keep and commit only if all gates are green and reader load or performance improved. Otherwise revert the wave cleanly and log the revert in `upgrade-decisions.tsv`.
6. After all waves land, run end-to-end verification on the real running app, run `scripts/baseline-snapshot.sh .sleepynails/baseline after` + `scripts/verify-equivalence.sh`, run **upgrade-blast-radius**, and run **upgrade-interrogate** with a fresh `contract-auditor` (ideally on a second frontier model if available).
7. Fix every proven finding from interrogation, re-verify green, audit `upgrade-decisions.tsv` against what actually ran, and open a ready-for-review PR (or leave the clean stacked branch ready for inspection) with a concise executive briefing.

**Reply:** branch/PR reference, before-vs-after metrics table, waves landed vs reverted, adversarial interrogation findings and fixes, `upgrade-decisions.tsv` path, and any pre-existing bugs or irreversible actions left for the operator.
