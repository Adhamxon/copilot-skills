# GitHub Copilot Skills — Custom Instructions & Agents

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![GitHub Copilot](https://img.shields.io/badge/GitHub-Copilot-purple)](https://github.com/features/copilot)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/Adhamxon/copilot-skills/pulls)
[![Maintained](https://img.shields.io/badge/maintained-yes-success)](https://github.com/Adhamxon/copilot-skills)

A power-user collection of GitHub Copilot custom instructions, specialized agents, and chat prompts to supercharge your AI-assisted development workflow.

> **Created by Adkhamkhon** — based on [opencode-ultimate-skills](https://github.com/Adhamxon/opencode-ultimate-skills)

---

## How GitHub Copilot Uses These Files

GitHub Copilot reads `.github/copilot-instructions.md` from your repository's default branch and uses it as **system context** for every interaction — inline code suggestions, Copilot Chat, and Copilot Agents. This means:

- **Inline Suggestions** — When you're typing code, Copilot's autocomplete suggestions follow the conventions, patterns, and rules defined in this file
- **Copilot Chat** — When you ask questions or request code, the instructions shape every response (code style, architecture preferences, testing conventions)
- **Copilot Agents** — Each agent (`@code-reviewer`, `@tdd-developer`, `@security-auditor`) inherits these instructions plus its own specialized persona

The file is **repository-scoped** — different repos can have different instructions, and Copilot automatically picks the right one.

## What's Included

### Custom Instructions (`341 lines`)
Structured guidance covering **5 languages** (TypeScript, Python, Java, C#, Go) with rules for:
- Code style & naming conventions
- Testing (AAA pattern, per-language frameworks)
- Architecture (clean/hexagonal, CQRS, repository pattern)
- Security (OWASP Top 10, input validation, secrets management)
- API design (RESTful conventions, versioning, pagination)
- Performance, database, Git, and PR conventions

### 3 Specialized Copilot Agents
| Agent | File | Chat Command |
|-------|------|-------------|
| **Code Reviewer** | `.github/agents/code-reviewer.agent.md` | `@code-reviewer Review this PR` |
| **TDD Developer** | `.github/agents/tdd-developer.agent.md` | `@tdd-developer Help me write tests first` |
| **Security Auditor** | `.github/agents/security-auditor.agent.md` | `@security-auditor Audit this endpoint` |

### Copilot Chat Commands
Beyond agents, these slash commands work with instructions in place:
| Command | Usage |
|---------|-------|
| `/fix` | Fix issues in selected code following project conventions |
| `/explain` | Explain selected code in context of your architecture |
| `/tests` | Generate unit tests matching project's test framework |
| `/doc` | Generate documentation with proper JSDoc/docstrings |

## Quick Start

```bash
# 1. Copy instructions to your repo
mkdir -p .github
cp .github/copilot-instructions.md .github/copilot-instructions.md

# 2. Copy agents
mkdir -p .github/agents
cp .github/agents/*.agent.md .github/agents/

# 3. Commit and push
git add .github/
git commit -m "feat: add Copilot custom instructions and agents"
git push
```

That's it. Copilot reads these files from your default branch automatically — no config, no restart needed.

## Workflow Examples

### PR Review with Agents
```
@code-reviewer Review the diff in PR #42
  → Agent checks correctness, security, performance, maintainability, style
  → Returns categorized findings with severity, location, and fix suggestions
```

### TDD Feature Development
```
@tdd-developer I need to add a password reset endpoint
  → Agent writes failing tests first (Red)
  → You implement minimal code (Green)
  → Agent helps refactor while keeping tests green
```

### Security Audit Before Release
```
@security-auditor Audit src/api/auth.ts
  → Scans for OWASP Top 10, injection flaws, auth weaknesses
  → Returns CVSS-styled report with remediation code
```

### Quick Fixes via Slash Commands
```
Select code → /fix   → Copilot rewrites it following your instructions
Select code → /tests → Generates tests matching your test framework
Select code → /explain → Explains the code in your project's context
```

## How Instructions Affect Copilot's Behavior

Without instructions, Copilot guesses based on your open files and generic best practices. With `.github/copilot-instructions.md`:

| Without Instructions | With Instructions |
|---|---|
| Random naming style | Consistent snake_case / camelCase per language |
| Any test framework | Tests use Vitest/pytest/JUnit 5 as specified |
| No security awareness | OWASP-aware suggestions by default |
| Generic architecture | Clean architecture, CQRS, hexagonal patterns |
| Implicit typing | Explicit types, strict mode, discriminated unions |

## Requirements

- GitHub Copilot subscription (Individual, Business, or Enterprise)
- A GitHub repository
- Copilot enabled in your IDE (VS Code, JetBrains, Neovim)

> **Note:** Copilot instructions and agents are GitHub-specific — they don't work on other platforms. For the best experience, use VS Code with the GitHub Copilot extension.

## Project Structure

```
.github/
├── copilot-instructions.md      # Custom instructions (341 lines)
└── agents/
    ├── code-reviewer.agent.md   # Code review specialist
    ├── tdd-developer.agent.md   # TDD practitioner
    └── security-auditor.agent.md # Security auditor

docs/
├── GETTING_STARTED.md           # Full setup guide
├── AGENTS_REFERENCE.md          # Agent usage reference
├── COPILOT_CHAT_PROMPTS.md      # Ready-to-use chat prompts
└── VSCODE_SETTINGS_GUIDE.md     # VS Code optimization guide

scripts/
├── setup.sh                     # Unix/macOS installer
└── setup.ps1                    # Windows PowerShell installer
```

## License

MIT — see [LICENSE](LICENSE). Copyright (c) 2026 Adkhamkhon.

Based on: https://github.com/Adhamxon/opencode-ultimate-skills
