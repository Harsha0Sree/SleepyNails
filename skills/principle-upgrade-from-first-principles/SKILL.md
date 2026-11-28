---
name: principle-upgrade-from-first-principles
description: "Apply when revamping a subsystem written by an older model. Redesign as if today's frontier model had designed it from day one rather than patching old workarounds."
disable-model-invocation: true
---

# Upgrade From First Principles

Do not bolt superficial improvements onto an older model's awkward scaffolding.

- Read the whole subsystem and its pinned contract first.
- Ask what today's strongest model would build from scratch if it already knew every real production edge case in this repo.
- Replace tangled state, repeated boilerplate, and brittle workarounds with a clean foundational design.
- Deliver the redesign in small verifiable waves so every step stays checkable.
