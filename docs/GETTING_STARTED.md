# Getting Started with GitHub Copilot Skills

This guide walks you through setting up GitHub Copilot custom instructions and **13 specialized agents** in your repository.

## Prerequisites

- A [GitHub Copilot](https://github.com/features/copilot) subscription
- A GitHub repository (public or private)
- Copilot enabled in your IDE (VS Code, JetBrains, Neovim, etc.)

## What's Included

| Component | Location | Purpose |
|-----------|----------|---------|
| Custom Instructions | `.github/copilot-instructions.md` | 3.4 MB of comprehensive coding guidance across 384 skills |
| 13 Domain Agents | `.github/agents/*.agent.md` | Specialized experts for every development domain |

## Step 1: Add Files to Your Repository

```bash
git clone https://github.com/Adhamxon/copilot-skills.git
cd your-project
mkdir -p .github/agents
cp ../copilot-skills/.github/copilot-instructions.md .github/
cp ../copilot-skills/.github/agents/*.agent.md .github/agents/
```

## Step 2: Commit and Push

```bash
git add .github/
git commit -m "feat: add Copilot instructions and 13 domain agents"
git push
```

## Step 3: Start Using Copilot With Instructions

Once the files are in your repository, GitHub Copilot automatically:

- Uses the custom instructions for all code suggestions
- Makes all 13 agents available in Copilot Chat
- Follows domain-specific conventions and patterns

### Using Agents in Copilot Chat

In VS Code, open Copilot Chat (Ctrl+Shift+I or Cmd+Shift+I) and type:

```
@architecture-design Design a microservices architecture for this project
@security-testing Audit this endpoint for OWASP vulnerabilities
@frontend-development Build a responsive dashboard with Tailwind
```

Or select the agent from the dropdown in the Copilot Chat interface.

### Available Agents

| Agent | Expertise |
|-------|-----------|
| `@architecture-design` | Clean Architecture, DDD, system design |
| `@frontend-development` | TypeScript, Three.js, Tailwind, tRPC |
| `@backend-api-development` | API design, Supabase, message queues |
| `@mobile-ios-development` | Swift, SwiftUI, iOS patterns |
| `@project-management-product` | OKRs, PRDs, user stories, GTM |
| `@devops-cloud` | GCP, Docker, Kubernetes, CI/CD |
| `@security-testing` | OWASP, API security, container scanning |
| `@code-quality-review` | Code review, TDD, debugging |
| `@ai-llm-development` | Claude API, Gemini API, MCP |
| `@documentation-design-tools` | Figma, docs, slides, spreadsheets |
| `@git-workflow-automation` | Git workflow, conventional commits |
| `@browser-debugging` | Playwright, Sentry, debugging |
| `@developer-productivity` | Obsidian, teaching, handoff |

## Customizing the Instructions

Edit `.github/copilot-instructions.md` to match your team's specific conventions. Any changes are picked up by Copilot immediately after commit.

## Troubleshooting

- **Instructions not loading?** Ensure the file is at `.github/copilot-instructions.md` (exact path)
- **Agents not showing up?** Verify agent files have the `.agent.md` extension and are in `.github/agents/`
- **Changes not taking effect?** Commit and push to the default branch, then restart your IDE
