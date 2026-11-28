# Cross-agent harness adapters

Sleepynails is written in standard Agent Skills (`SKILL.md`) format and works across Cursor, Claude Code, Codex, OpenCode, and Windsurf. Read the table for your active agent harness once per session and map tool names accordingly.

## Tool mappings

| Concept in sleepynails | Cursor | Claude Code | Codex / OpenCode |
| --- | --- | --- | --- |
| Invoke skill | `/sleepynails` | `/sleepynails` or read `skills/sleepynails/SKILL.md` | Load `skills/sleepynails/SKILL.md` via skills path |
| Todo checklist | Built-in Todo tool | `TodoWrite` | Maintain a live Markdown checklist in session notes |
| Spawn delegate worker | `Task` (`subagent_type: sleepynails-worker`) | `Agent` (`subagent_type: general-purpose`) | Spawn parallel worker or run isolated sequential wave |
| Read-only auditor | `Task` (`readonly: true`, `contract-auditor`) | `Agent` (`subagent_type: Explore`, instruct no edits) | Run verification commands in read-only shell or clean worktree |
| Isolated parallel edits | Git worktree per worker | `isolation: "worktree"` | `git worktree add` per wave |
| Skill directory | `.cursor/skills/` or `~/.cursor/skills/` | `.claude/skills/` or `~/.claude/skills/` | `.agents/skills/` or harness default |

## Subagent fallback rule

If your active harness does not support subagents or background tasks, do not skip the workflow step. Execute the same wave sequentially in the main session while preserving wave ordering, git checkpoints, and the `upgrade-decisions.tsv` log.

## Never fail on unknown fields

If a harness tool schema does not support a field such as `readonly`, `run_in_background`, or a specific model slug, omit that field, note the fallback in one line, and continue the upgrade run.
