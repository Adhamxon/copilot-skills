# Getting Started with GitHub Copilot Skills

This guide walks you through setting up GitHub Copilot custom instructions and agents in your repository.

## Prerequisites

- A [GitHub Copilot](https://github.com/features/copilot) subscription
- A GitHub repository
- Copilot enabled in your IDE (VS Code, JetBrains, Neovim, etc.)
- Git installed locally

## Step 1: Choose Your Files

Decide which components you want to include:

| Component | File | Purpose |
|-----------|------|---------|
| Custom Instructions | `.github/copilot-instructions.md` | Defines how Copilot behaves in your repo |
| Code Reviewer Agent | `.github/agents/code-reviewer.agent.md` | Reviews code quality and style |
| TDD Developer Agent | `.github/agents/tdd-developer.agent.md` | Guides test-driven development |
| Security Auditor Agent | `.github/agents/security-auditor.agent.md` | Audits for security vulnerabilities |

You can include all of them, or just the ones you need.

## Step 2: Add Files to Your Repository

### Option A: Using the Setup Scripts

**Unix/macOS:**
```bash
chmod +x scripts/setup.sh
./scripts/setup.sh
```

**Windows:**
```powershell
.\scripts\setup.ps1
```

### Option B: Manual Setup

1. Create the directories:
   ```bash
   mkdir -p .github/agents
   mkdir -p docs
   ```

2. Copy the instruction file:
   ```bash
   cp .github/copilot-instructions.md .github/copilot-instructions.md
   ```

3. Copy the agent files:
   ```bash
   cp .github/agents/*.agent.md .github/agents/
   ```

4. Copy supporting documentation:
   ```bash
   cp docs/* docs/
   ```

## Step 3: Commit and Push

```bash
git add .github/
git commit -m "feat: add GitHub Copilot instructions and agents"
git push
```

## Step 4: Verify Setup

1. Open your repository on GitHub.com
2. Navigate to the `.github/` directory
3. Confirm that `copilot-instructions.md` and agent files are present

## Step 5: Start Using Copilot With Instructions

Once the files are in your repository, GitHub Copilot will automatically:

- Use the custom instructions for all code suggestions
- Make agents available in Copilot Chat
- Follow the conventions and patterns defined in the instructions

### Using Agents in Copilot Chat

In VS Code, open Copilot Chat (Ctrl+Shift+I or Cmd+Shift+I) and type:

```
@code-reviewer Review this code for quality and security issues
```

Or select the agent from the dropdown in the Copilot Chat interface.

## Customizing the Instructions

You can edit `.github/copilot-instructions.md` to match your team's specific conventions:

- Add your organization's coding standards
- Include preferred library and framework choices
- Reference internal documentation and style guides
- Add custom sections for your domain-specific requirements

Any changes are picked up by Copilot immediately after commit.

## Troubleshooting

### Copilot is not using my instructions
- Ensure the file is at `.github/copilot-instructions.md` (exact path)
- Check that you've committed and pushed to the default branch
- Restart your IDE to refresh Copilot's context

### Agents are not showing up
- Verify agent files have the `.agent.md` extension
- Ensure they are in `.github/agents/` directory
- Check that the frontmatter (---) is correctly formatted

### Changes not taking effect
- Commit and push to the repository's default branch
- It may take a few minutes for GitHub to process the files
- Try restarting your IDE
