---
name: unslop-code
description: Strip legacy AI-generated code and prose tells from an upgraded diff. Removes narrating comments, defensive catch-all wrappers, redundant pass-through helpers, dead fallback branches, and generic UI slop copy. Use for /unslop-code before finalizing any upgrade wave.
disable-model-invocation: true
---

# Unslop code

Older models leave predictable noise throughout a repo. Strip it before finishing every wave so the upgraded codebase reads like a senior engineer wrote it cleanly from scratch.

## Code tells to remove

- Comments that narrate what the next line obviously does (`// increment counter`, `// handle submit`, `// helper function to format date`). Keep comments only when they explain a non-obvious external invariant, workaround, or why-not constraint.
- Defensive `try / catch` blocks that silently swallow errors and return fake empty values unless graceful fallback is a pinned contract requirement.
- Redundant single-caller wrapper functions, pass-through props, and empty abstraction layers added "just in case".
- Stale backward-compatibility flags, unused imports, commented-out old code blocks, and dead `if (false)` branches.
- Type casts (`as any`, `as unknown as`) masking mismatched domain models.

## UI and prose tells to remove

- Mechanical pseudo-code headings (`// 01 ARCHITECTURE`, `>_ STATUS: ONLINE`), decorative pulsing dots on static labels, and unrequested fake scoreboards.
- Filler AI marketing prose ("In today's rapidly evolving landscape", "seamlessly empowers", "cutting-edge synergy", em-dash chains, and robotic roleplay button labels).
- Replace with short, direct, plain-language product copy.

## Verification

After cleaning the diff, re-run the project build, type checker, lint, and pinned behavioral tests to confirm cleanup introduced zero breakage.

**Reply:** classes of noise removed, net LOC delta, and verification command output.
