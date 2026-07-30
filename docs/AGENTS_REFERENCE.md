# Agents Reference

This document describes each agent in the collection, including its purpose, usage, and configuration.

## What Are Copilot Agents?

GitHub Copilot agents are specialized personas that focus on specific tasks. Defined in `.github/agents/*.agent.md` files, they provide Copilot with a role, expertise, and behavior guidelines for different development activities.

Agents are accessible in Copilot Chat through:
- The agent dropdown selector in the chat interface
- The `@agent-name` mention syntax

---

## Code Reviewer Agent

**File:** `.github/agents/code-reviewer.agent.md`

### Purpose
Reviews code changes for quality, security, and adherence to best practices. Provides structured, actionable feedback.

### Expertise Areas
- Code correctness and logic validation
- Security vulnerability identification
- Performance optimization opportunities
- Maintainability and code organization
- Style and convention compliance

### When to Use

| Scenario | Example Prompt |
|----------|---------------|
| Pull request review | `@code-reviewer Review the changes in this PR` |
| Code quality check | `@code-reviewer Analyze this function for issues` |
| Security scan | `@code-reviewer Check this code for security vulnerabilities` |
| Style audit | `@code-reviewer Does this follow our coding conventions?` |

### Output Format
The agent categorizes each finding by:
- **Category**: correctness, security, performance, maintainability, style
- **Severity**: blocker, warning, suggestion
- **Location**: file path and line numbers
- **Description**: clear explanation of the issue
- **Suggestion**: concrete recommendation with code examples

### Best Practices
- Provide context about what the code is supposed to do
- Mention any specific concerns you want the reviewer to focus on
- Review the agent's output critically — it's a tool, not the final authority

---

## TDD Developer Agent

**File:** `.github/agents/tdd-developer.agent.md`

### Purpose
Guides development using Test-Driven Development methodology. Follows the Red-Green-Refactor cycle.

### Expertise Areas
- Writing tests before production code
- Unit, integration, and E2E testing strategies
- Test isolation and independence
- Mocking and dependency injection
- Refactoring with confidence

### When to Use

| Scenario | Example Prompt |
|----------|---------------|
| Start a new feature | `@tdd-developer Help me write the first test for user authentication` |
| Add error handling | `@tdd-developer Write tests for error scenarios in the payment service` |
| Refactor safely | `@tdd-developer I need to refactor this class. Help me write tests first` |
| Bug fix | `@tdd-developer Help me write a test that reproduces this bug` |

### The TDD Cycle

1. **Red** — Write a failing test
2. **Green** — Write the minimal code to pass
3. **Refactor** — Improve code while keeping tests green

### Testing Pyramid Guidance
- **Unit tests**: thousands, milliseconds each
- **Integration tests**: hundreds, seconds each
- **E2E tests**: dozens, minutes each

### Best Practices
- Start with the simplest test case
- Add edge cases incrementally
- Keep tests focused on one behavior
- Never write production code without a failing test first

---

## Security Auditor Agent

**File:** `.github/agents/security-auditor.agent.md`

### Purpose
Audits code for security vulnerabilities, compliance issues, and security best practices.

### Expertise Areas
- OWASP Top 10 vulnerabilities
- Injection attacks (SQL, NoSQL, command, XSS, template)
- Authentication and authorization flaws
- Cryptographic failures
- Security misconfiguration
- Business logic vulnerabilities
- Compliance (GDPR, SOC 2, PCI-DSS, HIPAA)

### When to Use

| Scenario | Example Prompt |
|----------|---------------|
| Full security audit | `@security-auditor Audit this entire codebase for vulnerabilities` |
| Endpoint review | `@security-auditor Check this API endpoint for security issues` |
| Dependency audit | `@security-auditor Review our dependency usage for known vulnerabilities` |
| Compliance check | `@security-auditor Does this code comply with GDPR requirements?` |

### Vulnerability Classification

| Severity | Description | Action Required |
|----------|-------------|----------------|
| Critical | Immediate risk of data breach or system compromise | Fix immediately |
| High | Significant security risk with moderate exploitation difficulty | Fix within sprint |
| Medium | Moderate risk, often requires specific conditions | Schedule for next iteration |
| Low | Minor issues, defense-in-depth improvements | Add to backlog |
| Info | Observations and recommendations | Document for awareness |

### Audit Output
Each finding includes:
- CWE identifier for industry-standard classification
- Severity rating
- Precise location (file and line)
- Impact description
- Remediation steps with code examples
- Reference links for further reading

### Best Practices
- Run the security auditor before each release
- Include in CI/CD pipeline for automated scanning
- Combine with SAST/DAST tools for comprehensive coverage
- Treat all critical and high findings as release blockers
