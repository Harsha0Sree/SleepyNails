---
name: principle-model-the-domain
description: "Apply when replacing scattered conditionals, boolean flag soup, or duplicated shape checks left by an older model."
disable-model-invocation: true
---

# Model the Domain

Encode domain rules in explicit structures instead of scattering `if` chains across files.

- Replace mutually exclusive boolean flags (`isLoading`, `isError`, `hasData`) with discriminated unions or explicit state machines.
- Use lookup tables, registries, or typed reducers instead of repeated switch blocks.
- Keep one authoritative representation of every domain entity so invariants cannot drift across modules.
