### Hardening and Security

**You own boundary safety, failure recovery, and runtime resilience. Close every vulnerability and fragile edge case left by an older model without breaking valid production traffic.**

Use when an older-model project works on the happy path but lacks strict input validation, safe auth checks, deterministic error handling, or resilience to bad inputs and retries.

1. Pin all legitimate happy-path and existing error-contract behaviors via **contract-pin** (**principle-pin-before-you-touch**). Valid requests must keep returning the same status codes and payload shapes (**principle-zero-behavioral-drift**).
2. Audit every trust boundary via **ceiling-audit** and **upgrade-blast-radius**. Inspect HTTP/RPC routes, form handlers, auth/session checks, database queries, file/path operations, shell invocations, external API clients, environment variable handling, and client rendering of untrusted strings.
3. Enforce **principle-boundary-discipline** and **principle-type-system-discipline**. Parse and validate untrusted inputs once at the entry boundary using explicit schemas. Parameterize all queries, eliminate unsafe HTML injection or command interpolation, remove hardcoded secrets or unsafe client exposure, and enforce server-side authorization checks on every protected operation.
4. Replace silent error swallows (`catch {}` returning empty arrays or fake success) with explicit typed error propagation, safe user-facing error states, and idempotent retry handling where appropriate.
5. Encode every discovered security or reliability invariant as an automated test or static check (**principle-encode-lessons-in-structure**) so future edits cannot reopen the hole.
6. Run **upgrade-interrogate** with adversarial inputs (malformed payloads, unauthorized callers, empty/huge inputs, concurrent duplicate requests) and prove every defense holds by executing real tests (**principle-prove-equivalence-and-gain**).

**Reply:** trust boundaries audited, concrete vulnerabilities and failure modes closed with proof tests, verification that valid user flows stayed identical, and any items requiring operator action (such as secret rotation or env config).
