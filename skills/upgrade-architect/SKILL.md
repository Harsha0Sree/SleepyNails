---
name: upgrade-architect
description: Design the first-principles target architecture for a generational codebase upgrade before moving files. Sketches two competing clean shapes and chooses the one with single state ownership, strict boundaries, and lowest reader load. Use for /upgrade-architect.
disable-model-invocation: true
---

# Upgrade architect

Never redesign a multi-file subsystem by editing files ad hoc. Settle the target types, ownership boundaries, and module graph before the first move.

## Steps

1. Read the pinned contract (`.sleepynails/contract-pin.md`) and the ceiling audit findings for the target subsystem.
2. Ask the first-principles question. If today's frontier model built this exact product from scratch knowing every pinned production invariant, what module layout, core data structures, and boundaries would it create?
3. Sketch two distinct candidate shapes (types, data ownership, call graph, and public boundary adapters).
4. Evaluate both shapes against four criteria.
   - Each piece of state has exactly one owner.
   - Domain rules live in pure functions decoupled from UI/HTTP/DB transport.
   - Callers need to know as little as possible and invalid states are unrepresentable.
   - Reader load drops compared to the old codebase (fewer layers, shorter traces).
5. Pick the winning shape, explain what the rejected shape would have cost, and list the exact ordered migration waves needed to converge on it without leaving internal compatibility shims behind.

**Reply:** the two candidate shapes, winning selection with rationale, target module/type map, and wave migration order.
