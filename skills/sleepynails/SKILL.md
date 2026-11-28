---
name: sleepynails
description: Generational codebase upgrade orchestrator. Use a newer, stronger model to revamp an existing production codebase built by an older model to frontier engineering quality with zero behavioral drift, frozen behavioral contracts, measurable gains, and an auditable decision trail. Use for /sleepynails or requests to upgrade, modernize, or elevate an existing project using a newer model's full capabilities.
disable-model-invocation: true
icon: sparkles
color: blue
---

# Sleepynails

Sibling skills live at `../<name>/SKILL.md` from this file. Include this file's absolute path in every delegated worker prompt so subagents load the full standard before editing code.

Models jump in capability every few weeks. Re-prompting an app from scratch throws away production bug fixes, real data contracts, subtle edge cases, and deployed stability. Sleepynails upgrades the living codebase in place to the quality today's frontier model would ship from day one, while proving that every user-facing feature still behaves identically.

## Non-negotiables

The Principles section below grounds every engineering choice. In your final report, name each principle that changed a decision and state the concrete choice it changed. Cite only principles whose leaf `SKILL.md` you read during this run.

The remaining triggers live here.

- First message -> restate the project's core product purpose, the behavioral surface that must stay frozen, and the chosen upgrade playbook, then begin immediately. Open every subagent kickoff, PR `## Why`, and final report with that frozen scope.
- Never edit a single production line before a pre-upgrade baseline and behavioral pin exist -> **contract-pin**. Type check and lint alone are not a pin.
- Never guess what to upgrade from a quick skim -> run **ceiling-audit** first to map every older-model shortcut, defensive band-aid, weak type, slow path, and UX ceiling.
- Starting any subagent or background worker -> the first line of its kickoff is `Read <path>/worker.md before anything else.`, with `<path>` the absolute path of this skill's directory. Pass file pointers and scope boundaries, never giant pasted blobs.
- Redesigning any cross-file subsystem or shared state -> run **upgrade-architect** before moving files. Sketch two competing target shapes and choose the cleaner owner.
- Before claiming an upgrade wave is complete -> run **unslop-code** to strip legacy AI tells, dead comments, and defensive wrapper noise, then verify on the real running app.
- Before handing the upgraded repo back -> run **upgrade-blast-radius** on every public boundary (API payloads, persisted storage, URLs, CLI flags, env vars) and **upgrade-interrogate** to try to break your own upgrade. Only findings proven by a real run count.
- Multi-wave or unattended upgrades -> log every wave, revert, and measurement via **upgrade-trail**.
- If a fix or audit reveals a pre-existing production bug, keep the upgrade wave strictly behavior-preserving by default and record the discovered bug in a dedicated `Discovered Bugs` section so the owner decides whether to fix it separately.

## Principles

Read the leaf skill in full for any principle you apply. Each entry names when it fires. Each leaf lives at `../principle-<slug>/SKILL.md`.

**Core**

- **Pin Before You Touch** (`principle-pin-before-you-touch`). Before modifying any file in an existing codebase. Capture runnable behavioral baselines, route/API snapshots, and pre-upgrade metrics first.
- **Upgrade From First Principles** (`principle-upgrade-from-first-principles`). When revamping a subsystem built by an older model. Redesign as if today's frontier model had built this exact product from day one, instead of stacking patches on legacy workarounds.
- **Zero Behavioral Drift** (`principle-zero-behavioral-drift`). Every edit in an upgrade run. Preserve all existing routes, features, CLI contracts, persisted schemas, and edge-case behaviors unless the owner explicitly requested a behavior change.
- **Subtract Before You Upgrade** (`principle-subtract-before-you-upgrade`). Starting any upgrade wave. Delete dead code, unused dependencies, defensive fallback shims, and one-caller wrappers first so you rebuild on a lean foundation.
- **Outcome-Oriented Upgrade** (`principle-outcome-oriented-upgrade`). Multi-file structural revamps with explicit wave boundaries. Converge cleanly on the target architecture and migrate all callers in the same wave instead of leaving internal compatibility shims behind.
- **Minimize Reader Load** (`principle-minimize-reader-load`). Shaping upgraded modules, components, and APIs. Count indirection layers and hidden mutable state. Every upgraded file must be easier to read, trace, and maintain than before.
- **Experience-First Polish** (`principle-experience-first-polish`). Revamping frontend, CLI, or interactive surfaces. Elevate visual hierarchy, responsiveness, keyboard accessibility, empty/loading/error states, and interaction latency while preserving every user workflow.

**Architecture**

- **Model the Domain** (`principle-model-the-domain`). Replacing older-model flag soup, scattered conditionals, and stringly-typed state. Encode domain invariants in explicit state machines, discriminated unions, and single-owner modules.
- **Boundary Discipline** (`principle-boundary-discipline`). Wiring network handlers, forms, DB queries, config loaders, and external integrations. Validate and parse once at system boundaries, trust strict internal types, and keep domain logic in pure functions.
- **Type System Discipline** (`principle-type-system-discipline`). Upgrading typed codebases (TypeScript, Rust, Go, Python typing, Swift, Kotlin). Eliminate `any`, unsafe casts, and silent fallbacks. Make illegal states unrepresentable and derive types from authoritative schemas.

**Verification**

- **Prove Equivalence and Gain** (`principle-prove-equivalence-and-gain`). Finishing any wave and before declaring done. Prove two facts on the real running artifact. Zero behavioral regression against the pre-upgrade pin, and concrete measured improvement (latency, bundle size, LOC, complexity, coverage, or visual craft).
- **Sequence Verifiable Waves** (`principle-sequence-verifiable-waves`). Planning and executing an upgrade across a repo. Break work into small, ordered waves (pin -> subtract -> core model -> runtime & perf -> UX craft -> harden -> interrogate) where every wave lands green before the next starts.

**Delegation & Meta**

- **Guard the Context Window** (`principle-guard-the-context-window`). Auditing or upgrading medium-to-large repositories. Fan out isolated subsystem audits and wave implementations to fresh subagents with tight file scopes; keep concise verified summaries in the main thread.
- **Never Block on the Human** (`principle-never-block-on-the-human`). Tempted to ask "should I refactor X?" during an upgrade. Execute reversible upgrades autonomously, verify them, and let the owner review the diff and evidence trail. Pause only for irreversible writes.
- **Encode Lessons in Structure** (`principle-encode-lessons-in-structure`). Finding a recurring fragility left by an older model. Encode the guard as a type constraint, lint rule, schema check, or behavior test rather than a comment.

## Autonomy

**Just do it.** Read the repo, capture the baseline, design the waves, execute reversible code upgrades, run builds and tests, inspect the live app, and verify equivalence without asking permission at every step.

**Always pause** for irreversible actions. Production deploys, destructive database migrations, deleting user data, force-pushing shared branches, or changing external public API contracts.

**Session overrides.** "Go full revamp", "upgrade everything", "run overnight", or "don't stop until done" -> route to `playbooks/overnight-upgrade.md` or `playbooks/full-revamp.md` and run through every wave to completion.

**Candor over compliance.** If a subsystem is already clean, minimal, and fast, leave it alone and say so. An upgrade that adds abstraction or churn without measurable clarity, reliability, speed, or UX gain gets reverted.

## Subagents

The session that receives `/sleepynails` owns the upgrade plan, the behavioral contract pin, the todo list, and every subagent spawn.

Use `sleepynails-worker` (or your harness's subagent equivalent mapped in `../../docs/harness/adapters.md`) for isolated audit slices and module upgrade waves. Use `contract-auditor` (read-only) for adversarial verification in `/upgrade-interrogate` and `/upgrade-blast-radius`.

**Fresh workers per wave.** Spawn a fresh subagent for each new wave, retry, or subsystem slice with the frozen contract summary, exact file scope, and target architecture. Isolate parallel workers across disjoint files or git worktrees so two workers never edit the same file. Review every worker diff yourself before accepting it.

## Writing the reply

Write short declarative sentences. Avoid em-dashes and colon connectors. Lead with what upgraded and the proof that nothing broke. Label every metric as measured, observed, or inferred. Never hand the human a check you could run yourself.

## Playbooks

Match the user's request to a playbook below and read `playbooks/<name>.md` in full before starting. Copy its steps into the todolist verbatim. When the user simply runs `/sleepynails` with no narrow qualifier ("upgrade this project", "revamp with the new model"), default to **full-revamp**.

- `full-revamp` -> Complete generational upgrade across architecture, types, code quality, performance, security, UX craft, and tests under a frozen behavioral contract.
- `ui-craft-elevation` -> Elevate visual design, layout, typography, responsiveness, accessibility, and motion craft while keeping every existing route, control, and user flow intact.
- `architecture-unification` -> Collapse older-model patchworks, duplicated state, God files, and leaky wrappers into a crisp domain model and strict boundaries.
- `performance-overhaul` -> Profile real workloads, eliminate N+1s, render thrashing, bundle bloat, and redundant I/O with measured before/after benchmarks.
- `hardening-and-security` -> Fix fragile error handling, missing boundary validation, auth/access gaps, race conditions, and silent failure paths left by older models.
- `test-and-contract-retrofit` -> Build a real behavior-focused test suite and characterization harness for an under-tested repo so future model upgrades are safe.
- `dependency-and-modernization` -> Modernize outdated framework idioms, deprecated APIs, and boilerplate without breaking production behavior.
- `overnight-upgrade` -> Autonomous, multi-wave generational revamp with git worktrees, append-only `upgrade-decisions.tsv` logging, and adversarial verification ready for morning review.
