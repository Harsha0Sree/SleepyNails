---
name: principle-outcome-oriented-upgrade
description: "Apply during internal architectural revamps with explicit wave boundaries. Converge directly on the upgraded architecture and delete legacy internal APIs in the same wave."
disable-model-invocation: true
---

# Outcome-Oriented Upgrade

Optimize for a crisp final architecture, not internal transitional shims.

- Preserve external contracts (public HTTP routes, persisted schemas, CLI flags, UI workflows) strictly.
- For internal modules, migrate every caller to the new API and delete the legacy internal API in the same wave.
- Never leave `legacy*`, `*V2`, or dual code paths behind after an upgrade finishes.
