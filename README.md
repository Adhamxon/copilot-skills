# GitHub Copilot Skills — Custom Instructions & Agents

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![GitHub Copilot](https://img.shields.io/badge/GitHub-Copilot-purple)](https://github.com/features/copilot)
[![Skills](https://img.shields.io/badge/Skills-384-success)](https://github.com/Adhamxon/copilot-skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/Adhamxon/copilot-skills/pulls)
[![Maintained](https://img.shields.io/badge/maintained-yes-success)](https://github.com/Adhamxon/copilot-skills)

A **power-user collection of GitHub Copilot custom instructions** — **3.4 MB of comprehensive guidance** across **384 skills** with **13 specialized agents** for every development domain. Supercharge your Copilot with expert knowledge from architecture to security, project management to mobile development.

> **Created by Adkhamkhon** — based on [opencode-ultimate-skills](https://github.com/Adhamxon/opencode-ultimate-skills)

---

## Table of Contents

- [How GitHub Copilot Uses These Files](#how-github-copilot-uses-these-files)
- [Whats Included](#whats-included)
- [Quick Start](#quick-start)
- [Workflow Examples](#workflow-examples)
- [How Instructions Affect Copilots Behavior](#how-instructions-affect-copilots-behavior)
- [Requirements](#requirements)
- [Project Structure](#project-structure)
- [License](#license)

---

## How GitHub Copilot Uses These Files

GitHub Copilot reads `.github/copilot-instructions.md` from your repository's default branch and uses it as **system context** for every interaction — inline code suggestions, Copilot Chat, and Copilot Agents. This means:

- **Inline Suggestions** — When you're typing code, Copilot's autocomplete suggestions follow the conventions, patterns, and rules defined in this file
- **Copilot Chat** — When you ask questions or request code, the instructions shape every response (code style, architecture preferences, testing conventions)
- **Copilot Agents** — Each agent (`@code-reviewer`, `@tdd-developer`, `@security-auditor`) inherits these instructions plus its own specialized persona

The file is **repository-scoped** — different repos can have different instructions, and Copilot automatically picks the right one.

---

## What's Included

### Custom Instructions (`3.4 MB`, `384 skills`)

Comprehensive guidance covering **all development domains** including:

| Domain | Examples |
|--------|----------|
| **Architecture & Design** | Clean Architecture, DDD, system design, refactoring, team topologies |
| **Frontend Development** | TypeScript, Three.js, Tailwind, SvelteKit, tRPC, TanStack Query, Zustand |
| **Backend & API** | API design, Supabase, message queues, vector databases |
| **Mobile & iOS** | Swift, SwiftUI, iOS patterns, concurrency, performance |
| **Project Management** | OKRs, PRDs, user stories, sprint planning, GTM strategy, pricing, market sizing |
| **DevOps & Cloud** | GCP (all services), Docker, Kubernetes, CI/CD automation |
| **Security & Testing** | OWASP Top 10, API security, JWT, XSS, SQL injection, container scanning |
| **Code Quality & Review** | Code review, TDD, debugging, domain modeling |
| **AI & LLM** | Claude API, Gemini API, MCP, skill creation, transformers, training |
| **Documentation & Design** | Figma, docs, spreadsheets, slides, brand design |
| **Git & Workflow** | Git workflow, conventional commits, CI/CD, shipping |
| **Developer Productivity** | Obsidian, teaching, diagnostics, handoff |
| **Animation & Motion** | Animation vocabulary, Apple design, UI prototypes |

### 13 Specialized Copilot Agents

| Agent | File | Best For |
|-------|------|----------|
| **Architecture & Design** | `architecture-design.agent.md` | System design, ADRs, domain modeling |
| **Frontend Development** | `frontend-development.agent.md` | UI components, responsive design, state management |
| **Backend & API** | `backend-api-development.agent.md` | REST/GraphQL APIs, database design, auth |
| **Mobile & iOS** | `mobile-ios-development.agent.md` | SwiftUI, iOS patterns, App Store deployment |
| **Project Management** | `project-management-product.agent.md` | Sprint planning, roadmaps, stakeholder communication |
| **DevOps & Cloud** | `devops-cloud.agent.md` | Infrastructure, CI/CD, cloud architecture |
| **Security & Testing** | `security-testing.agent.md` | OWASP, penetration testing, threat modeling |
| **Code Quality & Review** | `code-quality-review.agent.md` | Code review, TDD, refactoring |
| **AI & LLM Development** | `ai-llm-development.agent.md` | LLM integration, prompt engineering, RAG |
| **Documentation & Tools** | `documentation-design-tools.agent.md` | Technical writing, diagrams, design tools |
| **Git & Workflow** | `git-workflow-automation.agent.md` | Git operations, release management |
| **Browser & Debugging** | `browser-debugging.agent.md` | Browser testing, debugging, profiling |
| **Developer Productivity** | `developer-productivity.agent.md` | Workflow optimization, tools, automation |

### Built-in Copilot Chat Commands

Beyond agents, these slash commands work with instructions in place:

| Command | Usage |
|---------|-------|
| `/fix` | Fix issues in selected code following project conventions |
| `/explain` | Explain selected code in context of your architecture |
| `/tests` | Generate unit tests matching project's test framework |
| `/doc` | Generate documentation with proper JSDoc/docstrings |

---

## Quick Start

```bash
# 1. Clone the repository
git clone https://github.com/Adhamxon/copilot-skills.git

# 2. Copy instructions to your repo
mkdir -p .github
cp copilot-skills/.github/copilot-instructions.md .github/copilot-instructions.md

# 3. Copy agents
mkdir -p .github/agents
cp copilot-skills/.github/agents/*.agent.md .github/agents/

# 4. Commit and push
git add .github/
git commit -m "feat: add Copilot custom instructions and agents (384 skills)"
git push
```

That's it. Copilot reads these files from your default branch automatically — no config, no restart needed.

### Using the Setup Scripts

```bash
# Unix/macOS
chmod +x scripts/setup.sh && ./scripts/setup.sh /path/to/project

# Windows (PowerShell)
.\scripts\setup.ps1 -TargetPath "C:\path\to\project"
```

---

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

### Architecture Consultation

```
@Architecture & Design Design our notification microservice
  → Agent proposes Clean Architecture layers, event schemas, deployment topology
  → Generates ADR document with trade-off analysis
```

### Quick Fixes via Slash Commands

```
Select code → /fix   → Copilot rewrites it following your instructions
Select code → /tests → Generates tests matching your test framework
Select code → /explain → Explains the code in your project's context
Select code → /doc   → Generates JSDoc/docstrings matching project style
```

---

## How Instructions Affect Copilot's Behavior

Without instructions, Copilot guesses based on your open files and generic best practices. With `.github/copilot-instructions.md`:

| Without Instructions | With Instructions |
|---|---|
| Random naming style | Consistent snake_case / camelCase per language |
| Any test framework | Tests use Vitest/pytest/JUnit 5 as specified |
| No security awareness | OWASP-aware suggestions by default |
| Generic architecture | Clean architecture, CQRS, hexagonal patterns |
| Implicit typing | Explicit types, strict mode, discriminated unions |
| Inconsistent formatting | Prettier/ESLint/ruff conventions enforced |
| Generic error handling | Structured error handling with proper logging |

---

## Requirements

- **GitHub Copilot** subscription (Individual, Business, or Enterprise)
- A **GitHub repository** (public or private)
- Copilot enabled in your **IDE** (VS Code, JetBrains, Neovim, Visual Studio)

> **Note:** Copilot instructions and agents are GitHub-specific — they don't work on other platforms. For the best experience, use VS Code with the GitHub Copilot extension.

---

## Project Structure

```
Copilot_Skills/
├── .github/
│   ├── copilot-instructions.md      # Custom instructions (3.4 MB)
│   └── agents/
│       ├── architecture-design.agent.md
│       ├── frontend-development.agent.md
│       ├── backend-api-development.agent.md
│       ├── mobile-ios-development.agent.md
│       ├── project-management-product.agent.md
│       ├── devops-cloud.agent.md
│       ├── security-testing.agent.md
│       ├── code-quality-review.agent.md
│       ├── ai-llm-development.agent.md
│       ├── documentation-design-tools.agent.md
│       ├── git-workflow-automation.agent.md
│       ├── browser-debugging.agent.md
│       └── developer-productivity.agent.md
├── docs/
│   ├── GETTING_STARTED.md           # Full setup guide
│   ├── AGENTS_REFERENCE.md          # Agent usage reference
│   ├── COPILOT_CHAT_PROMPTS.md      # Ready-to-use chat prompts
│   └── VSCODE_SETTINGS_GUIDE.md     # VS Code optimization guide
├── scripts/
│   ├── setup.sh                     # Unix/macOS installer
│   └── setup.ps1                    # Windows PowerShell installer
├── README.md
├── LICENSE
├── NOTICE.md
└── .gitignore
```

---

## License

MIT — see [LICENSE](LICENSE). Copyright (c) 2026 Adkhamkhon.

Based on: https://github.com/Adhamxon/opencode-ultimate-skills

---

*Built for GitHub Copilot. Powered by the community. Maintained by Adkhamkhon.*
