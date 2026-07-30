# Agents Reference — 13 Specialized Copilot Agents

This document describes all **13 Copilot agents** in this collection. Each agent is a domain expert powered by the corresponding skills from the OpenCode skill library.

## How Copilot Agents Work

GitHub Copilot agents are specialized personas defined in `.github/agents/*.agent.md` files. They provide Copilot with a specific role, expertise, and behavior guidelines. Agents are accessible in Copilot Chat through:

- The agent dropdown selector in the chat interface
- The `@agent-name` mention syntax (e.g., `@architecture-design`)

---

## 1. Architecture & Design Agent

**File:** `.github/agents/architecture-design.agent.md`

**Expertise:** Clean Architecture, DDD, system design, refactoring, team topologies, UI/UX, microinteractions, web typography

**Use cases:** Designing system architecture, reviewing module boundaries, applying SOLID principles, choosing patterns, structuring projects

**Example prompts:**
```
@architecture-design Design a microservices architecture for an e-commerce platform
@architecture-design Review this module for Clean Architecture compliance
@architecture-design What's the best pattern for handling cross-cutting concerns?
```

## 2. Frontend Development Agent

**File:** `.github/agents/frontend-development.agent.md`

**Expertise:** TypeScript, Three.js, Tailwind CSS, SvelteKit, tRPC, TanStack Query, Zustand, Vercel AI SDK, Zod, Vitest

**Use cases:** Building UI components, implementing layouts, managing state, creating 3D visualizations, type-safe API clients

**Example prompts:**
```
@frontend-development Build a responsive dashboard layout with Tailwind
@frontend-development Create a Three.js 3D product viewer
@frontend-development Set up TanStack Query with optimistic updates
```

## 3. Backend & API Agent

**File:** `.github/agents/backend-api-development.agent.md`

**Expertise:** API design, Supabase, message queues, vector databases, Terraform, REST/GraphQL/gRPC patterns

**Use cases:** API contract design, database schema design, message broker integration, infrastructure as code

**Example prompts:**
```
@backend-api-development Design a RESTful API for user management
@backend-api-development Set up a Supabase project with Row Level Security
@backend-api-development Design a message queue architecture for order processing
```

## 4. Mobile & iOS Agent

**File:** `.github/agents/mobile-ios-development.agent.md`

**Expertise:** Swift, SwiftUI, iOS patterns, concurrency (async/await), performance optimization, debugging, App Store

**Use cases:** iOS app development, SwiftUI UI design, concurrency management, performance profiling

**Example prompts:**
@mobile-ios-development Build a SwiftUI form with validation
@mobile-ios-development Debug this iOS concurrency issue
@mobile-ios-development Optimize SwiftUI list performance

## 5. Project Management & Product Agent

**File:** `.github/agents/project-management-product.agent.md`

**Expertise:** OKRs, PRDs, user stories, sprint planning, GTM strategy, market sizing, pricing, competitive analysis

**Use cases:** Writing PRDs, planning sprints, creating roadmaps, analyzing markets, defining strategy

**Example prompts:**
```
@project-management-product Write a PRD for a new feature
@project-management-product Plan the next sprint with capacity estimation
@project-management-product Create a GTM strategy for a product launch
```

## 6. DevOps & Cloud Agent

**File:** `.github/agents/devops-cloud.agent.md`

**Expertise:** GCP (all services), Docker, Kubernetes, CI/CD, BigQuery, Cloud Run, monitoring, IaC

**Use cases:** Cloud infrastructure setup, container orchestration, CI/CD pipelines, cost optimization

**Example prompts:**
```
@devops-cloud Set up a GKE cluster with auto-scaling
@devops-cloud Design a CI/CD pipeline with GitHub Actions
@devops-cloud Optimize Cloud Run costs for a production service
```

## 7. Security & Testing Agent

**File:** `.github/agents/security-testing.agent.md`

**Expertise:** OWASP Top 10, API security testing, JWT, XSS, SQL injection, container scanning, network security

**Use cases:** Security audits, penetration testing, vulnerability scanning, compliance checks

**Example prompts:**
```
@security-testing Audit this API endpoint for OWASP Top 10 vulnerabilities
@security-testing Scan this Docker image for known CVEs
@security-testing Review this authentication implementation for flaws
```

## 8. Code Quality & Review Agent

**File:** `.github/agents/code-quality-review.agent.md`

**Expertise:** Code review, TDD, debugging, domain modeling, refactoring, architecture design

**Use cases:** PR reviews, test-driven development, code quality analysis, domain modeling

**Example prompts:**
```
@code-quality-review Review this PR for correctness and maintainability
@code-quality-review Help me write tests first for this feature
@code-quality-review Diagnose this performance regression
```

## 9. AI & LLM Development Agent

**File:** `.github/agents/ai-llm-development.agent.md`

**Expertise:** Claude API, Gemini API, MCP protocol, skill creation, transformers, prompt engineering, RAG

**Use cases:** LLM integration, MCP server development, prompt design, AI agent workflows

**Example prompts:**
```
@ai-llm-development Build an MCP server for a custom API
@ai-llm-development Design a RAG pipeline with vector search
@ai-llm-development Create a Claude skill definition
```

## 10. Documentation & Design Tools Agent

**File:** `.github/agents/documentation-design-tools.agent.md`

**Expertise:** Figma API, document generation (docx, pptx, xlsx, pdf), brand design, theme creation

**Use cases:** Auto-generating documents, creating presentations, Figma plugin development, design systems

**Example prompts:**
```
@documentation-design-tools Generate a PDF report from this data
@documentation-design-tools Create a branded presentation deck
@documentation-design-tools Design a Figma component system
```

## 11. Git & Workflow Agent

**File:** `.github/agents/git-workflow-automation.agent.md`

**Expertise:** Git workflow, conventional commits, CI/CD, code review, shipping, branching strategies

**Use cases:** Git operations, commit message generation, release management, workflow automation

**Example prompts:**
```
@git-workflow-automation Generate a conventional commit message for these changes
@git-workflow-automation Set up a release workflow with changelog generation
@git-workflow-automation Design a branching strategy for our team
```

## 12. Browser & Debugging Agent

**File:** `.github/agents/browser-debugging.agent.md`

**Expertise:** Playwright, web testing, Sentry error tracking, debugging, browser automation

**Use cases:** E2E testing, bug reproduction, performance debugging, error monitoring

**Example prompts:**
```
@browser-debugging Write a Playwright test for this login flow
@browser-debugging Debug this Sentry error stack trace
@browser-debugging Capture a screenshot of this UI state
```

## 13. Developer Productivity Agent

**File:** `.github/agents/developer-productivity.agent.md`

**Expertise:** Obsidian, markdown, note-taking, teaching, diagnostics, handoff, goal setting

**Use cases:** Documentation workflows, knowledge management, diagnostic analysis, session handoffs

**Example prompts:**
```
@developer-productivity Set up an Obsidian vault for project documentation
@developer-productivity Create a handoff document for this session
@developer-productivity Define measurable goals for this project
```
