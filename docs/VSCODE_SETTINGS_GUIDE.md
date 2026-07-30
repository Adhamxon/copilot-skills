# VS Code Settings for GitHub Copilot

Optimize VS Code to get the most out of Copilot with these custom instructions and agents.

## Essential Settings

Add these to your `settings.json` (Ctrl+Shift+P → "Preferences: Open Settings (JSON)"):

```jsonc
{
  // --- Copilot Inline Suggestions ---
  "github.copilot.enable": {
    "*": true,
    "markdown": false,        // Disable in markdown to avoid noise
    "plaintext": false,
    "yaml": true,
    "json": true
  },
  "editor.inlineSuggest.enabled": true,
  "github.copilot.inlineSuggest.enable": true,

  // --- Copilot Chat ---
  "github.copilot.chat.localeOverride": "en",
  "github.copilot.chat.codeGeneration.instructions": [
    {
      "file": ".github/copilot-instructions.md"
    }
  ],
  "github.copilot.chat.agent.enabled": true,
  "github.copilot.chat.agent.askEachTime": "session", // Confirm agent usage once per session

  // --- Commit message generation ---
  "github.copilot.chat.commitMessageGeneration.instructions": [
    {
      "text": "Write conventional commits: feat:, fix:, chore:, docs:, refactor:, test:"
    }
  ],

  // --- Terminal suggestions ---
  "github.copilot.advanced": {
    "inlineSuggestCount": 5,
    "listCount": 5,
    "types": true
  }
}
```

## Recommended Extensions

```jsonc
"extensions": [
  "github.copilot",
  "github.copilot-chat"
]
```

These are bundled — install via the VS Code extensions panel or marketplace.

## Keybindings Worth Knowing

| Action | Default Key | Description |
|--------|-----------|-------------|
| Accept suggestion | `Tab` | Accept the inline suggestion |
| Accept word | `Ctrl+Right` | Accept one word at a time |
| Accept line | `Ctrl+Enter` | Accept the entire suggested line |
| Next suggestion | `Alt+]` | Cycle to next suggestion |
| Previous suggestion | `Alt+[` | Cycle to previous suggestion |
| Open Copilot Chat | `Ctrl+Shift+I` | Open Chat panel |
| Inline Chat | `Ctrl+I` | Chat inline without leaving editor |
| Quick Chat | `Ctrl+Shift+I` then `/` | Quick question from command palette |
| Fix this | `Ctrl+Shift+?` | Trigger `/fix` on selected code |
| Explain this | `Ctrl+Shift+E` | Trigger `/explain` on selected code |

## Workflow: Optimized View

For a distraction-free Copilot experience, use these layouts:

### Split View (Recommended)
```
Editor (left)  |  Copilot Chat (right)
                |  @agent-name commands
                |  /slash commands
                |  Ask questions about selected code
```

### Inline Chat (Fast Iteration)
```
Editor (focused) → Select code → Ctrl+I
  → /fix, /tests, /explain without leaving your file
```

## Repo-Specific Settings

If you want different Copilot rules per repository, create `.vscode/settings.json` in each repo:

```jsonc
{
  "github.copilot.chat.codeGeneration.instructions": [
    { "file": ".github/copilot-instructions.md" }
  ],
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  }
}
```

This pairs with the `copilot-instructions.md` in your `.github/` directory — VS Code reads both.

## Troubleshooting

### Custom instructions not being used
Run `Copilot: Restart Copilot` from the command palette, or reload the window.

### Agent not appearing in Copilot Chat
- Confirm `.github/agents/*.agent.md` files exist and are pushed
- Run `Developer: Reload Window` to refresh the agent list
- Verify frontmatter (`--- name: ... ---`) is correctly formatted

### Suggestions feel slow or irrelevant
- Reduce `github.copilot.advanced.inlineSuggestCount` to 2-3
- Check your `copilot-instructions.md` is not overly verbose — Copilot processes the whole file
- Use `Copilot: Disable Copilot for This File` on non-code files
