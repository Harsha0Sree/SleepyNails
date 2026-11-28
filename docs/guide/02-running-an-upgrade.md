# 02. Running a generational upgrade

Every `/sleepynails` run follows five strict phases so a stronger model delivers a dramatic jump in quality without breaking production behavior.

## Phase 1: Baseline and Contract Pin

Before editing a single file, the agent captures quantitative baseline metrics (`scripts/baseline-snapshot.sh`) and runs `/contract-pin`. It catalogs every user-facing route, API request/response shape, persisted schema, CLI flag, environment variable, and core user flow. Where automated coverage is thin, it writes characterization tests that pass on the current codebase.

## Phase 2: Ceiling Audit

The agent runs `/ceiling-audit` to expose where the older model compromised. Typical ceilings include God files, duplicated state, loose `any` types, defensive catch-all swallows, N+1 queries, bloated client bundles, unpolished visual hierarchy, weak error/empty states, and missing accessibility attributes.

## Phase 3: First-Principles Target Shape

Rather than patching around legacy scaffolding, `/upgrade-architect` sketches two competing clean architectures assuming today's model had built this exact product from day one. It selects the shape with single-owner state, clean boundaries, and lowest reader load.

## Phase 4: Sequenced Verifiable Waves

The upgrade lands in small ordered waves:

1. Dead-weight subtraction (delete unused files, dead branches, stale shims).
2. Domain model, schema, and strict type core.
3. Business logic, boundary validation, and performance paths.
4. UI craft, accessibility, responsiveness, and interaction polish.
5. Code unslopping (`/unslop-code`) and structural guards.

Every wave runs the pinned contract checks before the next wave begins.

## Phase 5: Adversarial Proof and Report

`/upgrade-blast-radius` probes subtle compatibility surfaces grep misses. `/upgrade-interrogate` tries to break the upgraded build with real executable reproductions. Finally, the agent outputs a concise before-vs-after report linking every claim to measured proof and the `upgrade-decisions.tsv` trail.
