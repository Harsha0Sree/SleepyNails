# 03. Playbooks and principles

You rarely need to name a playbook explicitly. Describing your goal lets `/sleepynails` pick the right one. Naming a playbook or principle directly lets you steer mid-run with precision.

## Playbook routing examples

- Full generational overhaul: `/sleepynails upgrade this entire project to your full capability without changing any functionality.`
- Frontend and design lift only: `/sleepynails elevate the UI craft, responsiveness, and accessibility of this app while keeping every feature and workflow identical.`
- Structural cleanup: `/sleepynails unify the architecture and eliminate the duplicated state and loose types across src/.`
- Speed and efficiency: `/sleepynails overhaul performance against real load without changing outputs.`
- Security and reliability: `/sleepynails harden all API boundaries, error paths, and edge cases.`
- Unattended run: `/sleepynails run an overnight full revamp on a new branch and leave a verified PR with a decision trail.`

## Steering mid-run with principle names

Every principle lives in `skills/principle-<slug>/SKILL.md`. If an agent drifts mid-run, invoke a principle by name:

- `pin-before-you-touch` -> stops premature edits until a runnable pin exists.
- `zero-behavioral-drift` -> reverts unrequested feature creep or renamed contracts.
- `subtract-before-you-upgrade` -> forces dead-code deletion before introducing new modules.
- `upgrade-from-first-principles` -> pushes past timid surface tweaks into clean redesign.
- `prove-equivalence-and-gain` -> rejects unmeasured claims and demands real execution proof.
- `minimize-reader-load` -> rejects over-engineered abstractions that make code harder to trace.
