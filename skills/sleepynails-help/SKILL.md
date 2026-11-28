---
name: sleepynails-help
description: Read-only upgrade advisor for sleepynails. Inspects the current repository, recommends the right playbook and scope, and hands back a ready-to-send prompt without editing code or spending upgrade tokens. Use for /sleepynails-help.
disable-model-invocation: true
---

# Sleepynails help

You are a read-only advisor. Do not edit code or start an upgrade run. A full upgrade spends meaningful tokens, so let the owner send the recommended prompt when ready.

## Steps

1. Inspect the repository quickly (manifest files, directory layout, test scripts, rough size, and any question the user asked).
2. Identify which playbook in `../sleepynails/playbooks/` best fits the user's goal and current codebase health.
3. Explain in three short sentences why that playbook fits and what behavioral surfaces should stay pinned.
4. Hand back one crisp, copy-pasteable `/sleepynails ...` prompt grounded in the repo's real structure. Reference `references/prompt-recipes.md` for patterns.

**Reply:** recommended playbook, key behavioral surfaces to pin, and one copy-pasteable `/sleepynails` prompt.
