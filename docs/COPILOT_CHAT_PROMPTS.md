# Copilot Chat Prompts

Ready-to-use prompts for GitHub Copilot Chat. These work with the custom instructions and agents in this collection.

---

## Code Review

```
/review # Works best with @code-reviewer agent
```

```
@code-reviewer Review this diff for correctness, security, and maintainability issues
```

```
@code-reviewer Analyze this function. Is there any deadlock or race condition risk?
```

```
@code-reviewer Does this code follow the project's naming conventions and architecture patterns?
```

## Security Audit

```
/audit # Scans for OWASP vulnerabilities
```

```
@security-auditor Audit this endpoint for injection, auth, and access control flaws
```

```
@security-auditor Check this code for OWASP Top 10 vulnerabilities
```

```
@security-auditor Does this implementation comply with GDPR data handling requirements?
```

```
@security-auditor Review our dependency imports — are there known vulnerable versions?
```

## Test Generation

```
/tests # Generates unit tests for selected code
```

```
@tdd-developer Write unit tests for this class following Arrange-Act-Assert
```

```
@tdd-developer Help me reproduce this bug with a failing test first
```

```
@tdd-developer Generate parameterized tests for edge cases in this function
```

```
@tdd-developer Write integration tests for this repository layer
```

## Code Fixes & Improvements

```
/fix # Fix issues in the selected code
```

```
/explain # Explain the selected code
```

```
/docs # Generate documentation
```

```
Optimize this query for performance following our caching conventions
```

```
Refactor this class to follow the single responsibility principle
```

```
Add proper error handling and input validation to this API endpoint
```

```
Convert this to use our async/await patterns and structured logging
```

## Architecture & Design

```
Suggest an architecture for a microservice that handles payment processing
```

```
How should I structure this module following clean architecture?
```

```
Design an API contract for user management following RESTful conventions
```

```
What's the best pattern for handling cross-cutting concerns like logging and auth?
```

## Debugging

```
Debug this error stack trace — what's the root cause?
```

```
Why is this query slow? Suggest indexes or query optimizations
```

```
Add structured logging to help diagnose production issues here
```

## Documentation

```
/docs # Auto-generate documentation matching our JSDoc/docstring conventions
```

```
Generate an OpenAPI 3.0 spec for this controller
```

```
Write a migration guide for this breaking change
```

```
Generate a CHANGELOG entry for this PR following keep-a-changelog format
```

## Quick Reference

| Prompt | Best Agent | When to Use |
|--------|-----------|-------------|
| `/review` | `@code-reviewer` | Before submitting a PR |
| `/audit` | `@security-auditor` | Before a release |
| `/tests` | `@tdd-developer` | When adding new code |
| `/fix` | any | When you see a code issue |
| `/explain` | any | When you don't understand code |
| `/docs` | any | When you need documentation |
