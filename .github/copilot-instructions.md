# GitHub Copilot Custom Instructions

This file instructs GitHub Copilot on how to behave when working with this project. It overrides default Copilot behavior for code generation, suggestions, and chat responses.

## General Behavior

- Always produce clean, idiomatic, production-quality code.
- Favor readability and maintainability over cleverness.
- Use meaningful variable, function, and class names that convey intent.
- Prefer descriptive names over abbreviations unless the abbreviation is universally understood (e.g., `i` for loop index, `id` for identifier).
- Keep functions small and focused on a single responsibility (Single Responsibility Principle).
- Avoid deep nesting; use early returns and guard clauses.
- Use modern language features and APIs appropriate for the target runtime.
- Do not introduce unnecessary dependencies unless they provide significant value.
- Ensure all code is cross-platform compatible where applicable.
- Prefer standard library solutions over third-party libraries when the standard library is sufficient.
- Use explicit typing over implicit typing where it improves clarity.
- Always handle errors appropriately — never silently swallow exceptions.
- Use structured logging over `console.log`/`print` in production code.
- Add input validation at all public API boundaries.

## Code Style — TypeScript / JavaScript

- Use `strict` mode in TypeScript; enable `noImplicitAny`, `strictNullChecks`, and `noUncheckedIndexedAccess`.
- Use `const` for values that are never reassigned; use `let` otherwise. Never use `var`.
- Prefer arrow functions for anonymous functions and callbacks.
- Use template literals instead of string concatenation.
- Use optional chaining (`?.`) and nullish coalescing (`??`) where appropriate.
- Use `async`/`await` over raw promises or callbacks.
- Prefer `for...of` over `Array.forEach` for async operations.
- Use named exports over default exports.
- Sort imports by external libraries first, then internal modules, separated by a blank line.
- Use `type` imports (`import type { Foo } from './foo'`) for type-only imports.
- Use interfaces over type aliases for object shapes that may be extended.
- Use discriminated unions for state machines and variant data.
- Use `Record<string, T>` over index signatures for dictionaries.
- Use `ReadonlyArray<T>` and `Readonly<T>` for immutable data structures.
- Use `zod` or `io-ts` for runtime validation of external data.
- Use `never` type in exhaustive switch statement default branches.
- Format with Prettier defaults (single quotes, trailing commas, 100 char width, 2-space indentation).
- Use `const enum` only when necessary; prefer regular `enum` or union types.
- Prefer `Array<T>` generics syntax over `T[]` for complex types.
- Use `unknown` instead of `any` when the type is truly unknown.

### Naming Conventions

- Types, interfaces, enums: PascalCase
- Variables, functions, methods: camelCase
- Private class members: prefix with `_` (e.g., `_privateField`)
- Constants (truly immutable): UPPER_SNAKE_CASE
- Files: kebab-case (e.g., `user-service.ts`)
- Test files: `*.test.ts` or `*.spec.ts`
- React components: PascalCase, file name matches component name

## Code Style — Python

- Follow PEP 8 strictly.
- Use type annotations for all function signatures and public module-level variables.
- Use `"""docstrings"""` for all public modules, classes, and functions (PEP 257 style).
- Use `dataclasses.dataclass` for data containers.
- Use `pathlib.Path` over `os.path`.
- Use `f-strings` exclusively for string formatting.
- Use `typing.Protocol` for structural subtyping (duck typing).
- Use `typing.Literal` and `typing.TypedDict` for precise types.
- Use `contextlib.contextmanager` or `contextlib.asynccontextmanager` for context managers.
- Use `asyncio` for async code; prefer `anyio` or `trio` for advanced use cases.
- Use `pydantic` for settings and configuration.
- Use `rich` for CLI output and logging.
- Use `enum.Enum` or `enum.StrEnum` for enumerations.
- Use `warnings.warn` with `DeprecationWarning` for deprecated features.
- Use `__all__` to define public API in modules.
- Use `typing.overload` for overloaded function signatures.
- Avoid mutable default arguments; use `None` and check inside the function.
- Use `|` syntax for union types (Python 3.10+): `str | None` instead of `Optional[str]`.
- Prefer `match`/`case` (Python 3.10+) for pattern matching over chained `if`/`elif`.
- Use `zoneinfo` (Python 3.9+) for timezone handling.

### Naming Conventions

- Classes: PascalCase
- Functions, methods, variables: snake_case
- Constants: UPPER_SNAKE_CASE
- Private methods/variables: prefix with `_`
- Strongly private (name mangling): prefix with `__`
- Files: snake_case.py

## Code Style — Java

- Follow Google Java Style Guide.
- Use `var` only when the right-hand side makes the type obvious.
- Use `record` classes for immutable data carriers.
- Use `sealed` classes and `pattern matching` for exhaustive type hierarchies.
- Prefer `Stream` API over explicit loops for collection transformations.
- Use `Optional` for return types that may be empty, never for parameters or fields.
- Use `LocalDate`, `LocalTime`, `LocalDateTime` over `java.util.Date` and `Calendar`.
- Use the `java.time` API exclusively for date/time operations.
- Use `try-with-resources` for all `AutoCloseable` resources.
- Use `@Nullable` and `@NonNull` annotations from `javax.annotation` or `org.checkerframework`.
- Use `jakarta.validation` constraints for bean validation.
- Use `@Override` consistently on overriding methods.
- Use `final` for method parameters and local variables that are never reassigned.
- Use `var` for lambda parameters.
- Prefer `List.of()`, `Set.of()`, `Map.of()` for creating small immutable collections.
- Use `Collectors.toUnmodifiableList()` for collecting to immutable collections.
- Use `TextBlocks` (triple-quoted strings) for multi-line strings.
- Use `switch` expressions over `switch` statements.

### Naming Conventions

- Classes, enums, records: PascalCase
- Methods, variables: camelCase
- Constants: UPPER_SNAKE_CASE
- Packages: all lowercase, reverse domain (e.g., `com.project.module`)
- Files: PascalCase matching public class name

## Code Style — C#

- Follow Microsoft C# Coding Conventions.
- Use `var` only when the type is obvious from the right-hand side.
- Use `record` and `record struct` for immutable data.
- Use `init`-only setters and `required` properties for DTOs.
- Use nullable reference types enabled (`#nullable enable`).
- Prefer `is` pattern matching over `as` + null check.
- Use `switch` expressions and `switch` pattern matching.
- Use `async`/`await` with `IAsyncEnumerable<T>` for streaming data.
- Use `System.Text.Json` over `Newtonsoft.Json` for new projects.
- Use `Span<T>` and `Memory<T>` for high-performance scenarios.
- Use `IReadOnlyCollection<T>`, `IReadOnlyList<T>`, `IReadOnlyDictionary<K,V>` for read-only exposures.
- Use `ArgumentNullException.ThrowIfNull()` for null checks.
- Use `StringBuilder` for complex string concatenation in loops.
- Use `Primary Constructors` for simple classes.
- Use `file-scoped namespaces` (no braces).
- Use `global using` and `global using static` in `GlobalUsings.cs`.
- Use `FluentValidation` for complex validation logic.

### Naming Conventions

- Classes, records, structs, enums: PascalCase
- Methods: PascalCase
- Properties: PascalCase
- Private fields: `_camelCase`
- Local variables: camelCase
- Method parameters: camelCase
- Constants: PascalCase
- Interfaces: prefix with `I` (e.g., `IUserService`)
- Files: PascalCase matching type name

## Code Style — Rust

- Follow Rust 2024 Edition conventions and `rustfmt` defaults.
- Use `cargo clippy` with default lints; address all warnings.
- Use `Result<T, E>` for fallible operations; use `anyhow::Error` for application-level errors, `thiserror` for library errors.
- Use `Option<T>` for nullable values; avoid `null`/`None` punning.
- Prefer `match` expressions over `if let` chains for exhaustive pattern matching.
- Use `impl Trait` for simple generic parameters; explicit generics for complex APIs.
- Use `#[derive(Debug, Clone, PartialEq)]` for data types.
- Use `&str` for function parameters that need string slices; `String` for owned strings.
- Use `Arc<Mutex<T>>` or `Arc<RwLock<T>>` for shared mutable state; prefer `tokio::sync` for async.
- Use `tokio` as the async runtime; use `async fn` for I/O-bound operations.
- Use `serde` for serialization/deserialization with `#[derive(Serialize, Deserialize)]`.
- Use `thiserror` for defining custom error types with `#[derive(Error)]`.
- Use `tracing` for structured logging: `tracing::info!`, `tracing::error!`.
- Use `rayon` for CPU-bound parallel work.
- Use `criterion` for benchmarks.
- Use `rstest` for test fixtures and parameterized tests.
- Prefer iterator combinators (`map`, `filter`, `fold`) over explicit loops.
- Use `clap` for CLI argument parsing.
- Use `reqwest` for HTTP clients; `axum` or `actix-web` for HTTP servers.
- Use `sqlx` for compile-time checked SQL queries; `diesel` for ORM-style access.
- Use `const` and `const fn` for compile-time constants.
- Document all public items with `///` doc comments; include panic, error, and safety sections.
- Use `unsafe` only when absolutely necessary; document safety invariants.

### Naming Conventions
- Types (structs, enums, traits): PascalCase
- Functions, methods, variables: snake_case
- Constants: UPPER_SNAKE_CASE or SCREAMING_SNAKE_CASE
- Macro names: snake_case with `!` suffix
- Files: snake_case.rs
- Test modules: `mod tests` with `#[cfg(test)]`

## Code Style — Go

- Follow standard `gofmt` formatting (no tabs, 8-space tabs — let `gofmt` handle it).
- Use `golint` and `go vet` standards.
- Use `error` return values; never use exceptions/panics for normal control flow.
- Use `fmt.Errorf` with `%w` for error wrapping.
- Use `errors.Is` and `errors.As` for error comparison and type assertion.
- Prefer `context.Context` as the first parameter for all blocking or async functions.
- Use `sync` package for concurrency; prefer `sync.WaitGroup` and `sync.Mutex`.
- Use `go test` with table-driven tests.
- Use `camelCase` for unexported identifiers, `PascalCase` for exported identifiers.
- Use short variable names within small scopes (e.g., `ctx`, `err`, `wg`).
- Use `net/http` standard library; consider `chi` or `gin` for routing.
- Use `database/sql` with prepared statements for database access.
- Use `encoding/json` for JSON serialization.
- Use `io.Reader` and `io.Writer` interfaces for I/O operations.
- Use `struct` embedding for composition over inheritance.
- Use `go.mod` for dependency management.
- Use `internal` packages to restrict visibility.
- Use `init()` functions sparingly and only for package-level setup.

### Naming Conventions

- Exported identifiers: PascalCase
- Unexported identifiers: camelCase
- Files: snake_case.go
- Test files: `*_test.go`

## Testing Conventions

- Write tests alongside production code (same package in Go, adjacent `__tests__` or `.test.ts` files).
- Follow the Arrange-Act-Assert pattern.
- Use descriptive test names that describe the expected behavior: `should_return_error_when_user_not_found`.
- One assertion per test where practical.
- Use parameterized/table-driven tests for multiple input/output scenarios.
- Mock external dependencies; use dependency injection to enable mocking.
- Use test fixtures for common setup; prefer factories over large before-each blocks.
- Aim for > 80% code coverage on critical paths; 100% on error handling.
- Write unit tests for business logic, integration tests for I/O boundaries.
- Use `testcontainers` for integration tests with databases or message queues.
- Avoid test interdependence; each test should be independently runnable.
- Use `beforeAll`/`beforeEach`/`afterAll`/`afterEach` hooks appropriately.
- Do not test implementation details; test observable behavior.
- Use `snapshot testing` sparingly and only for stable output formats.
- Write property-based tests for functions with complex input domains.
- Use `faker` libraries for generating realistic test data.

### Testing by Language

- TypeScript/JavaScript: Vitest or Jest; use `@testing-library/react` for React components.
- Python: pytest with `pytest-cov`, `pytest-asyncio`, `pytest-mock`.
- Java: JUnit 5 with AssertJ and Mockito.
- C#: xUnit with FluentAssertions and Moq/NSubstitute.
- Go: `testing` package with `testify/assert`.

## Architecture Preferences

- Follow clean architecture / hexagonal architecture: domain, application, infrastructure layers.
- Keep domain layer free of external dependencies.
- Use dependency injection to wire components together.
- Prefer composition over inheritance.
- Use the Repository pattern for data access abstraction.
- Use the CQRS pattern for complex read/write workloads.
- Use the Mediator pattern to decouple request handling from business logic.
- Keep modules loosely coupled and highly cohesive.
- Use event-driven architecture for cross-cutting concerns (domain events, integration events).
- Use the Strategy pattern for interchangeable algorithms.
- Use the Factory pattern for complex object creation.
- Use the Builder pattern for objects with many optional parameters.
- Use the Observer pattern (or events) for state change notifications.
- Use the Adapter pattern to integrate with third-party systems.
- Prefer stateless services; state should be explicitly managed in databases or caches.
- Use API versioning from the start (URL path or header-based).
- Design for failure: implement retries, circuit breakers, and graceful degradation.
- Use health check endpoints for monitoring.
- Use structured logging with correlation IDs across service boundaries.

## Security Best Practices

- Never hardcode secrets, API keys, connection strings, or certificates.
- Use environment variables or secret management services (e.g., Vault, AWS Secrets Manager).
- Validate and sanitize all user input — on every layer (client, API, persistence).
- Use parameterized queries or ORMs to prevent SQL injection.
- Use output encoding to prevent XSS attacks.
- Use CSRF tokens for state-changing requests.
- Use CSP (Content Security Policy) headers for web applications.
- Use proper authentication: prefer OAuth 2.0 / OpenID Connect over custom auth.
- Use proper authorization: implement RBAC or ABAC, never trust client-side roles.
- Use HTTPS exclusively; set `Strict-Transport-Security` headers.
- Set secure, HttpOnly, SameSite cookies.
- Use rate limiting to prevent brute force and DoS attacks.
- Use request size limits to prevent payload-based attacks.
- Implement proper password policies: bcrypt/argon2 for hashing, minimum length requirements.
- Use JWT with short expiration times; implement refresh token rotation.
- Use proper session management with secure, random session IDs.
- Log security-relevant events (logins, failures, permission changes) but never log sensitive data.
- Keep dependencies up-to-date; use Dependabot or Snyk for vulnerability scanning.
- Use the principle of least privilege for all service accounts and IAM roles.
- Apply defense in depth: multiple security layers, not a single chokepoint.
- Use SAST and DAST tools in CI/CD pipelines.
- Follow OWASP Top 10 guidelines for web applications.
- Use `npm audit`, `go vulncheck`, or equivalent for dependency vulnerability scanning.
- Use `safe` or `marked` (sanitized) for rendering user-generated markdown/HTML.
- Implement proper file upload validation: type, size, and content scanning.

## Documentation Requirements

- Write docstrings/comments for all public APIs, modules, classes, and complex functions.
- Use JSDoc (TypeScript/JavaScript), PEP 257 docstrings (Python), Javadoc (Java), XML doc comments (C#), and Go doc comments.
- Keep comments focused on "why" not "what" — the code should make the "what" obvious.
- Include usage examples in docstrings for non-trivial functions.
- Document all function parameters, return values, and thrown exceptions.
- Use README.md files for module-level documentation.
- Include architecture decision records (ADRs) for significant architectural choices.
- Use OpenAPI/Swagger for REST API documentation.
- Keep documentation close to the code it describes.
- Document setup instructions, environment prerequisites, and run commands in the root README.
- Include a changelog (`CHANGELOG.md`) following Keep a Changelog conventions.
- Use code comments sparingly; prefer self-documenting code with good naming.
- Mark TODOs and FIXMEs with the author's name and date: `// TODO(username): reason`.
- Generate API documentation from code comments as part of CI/CD.
- Document non-obvious edge cases and their handling.
- Write migration guides for breaking changes between versions.

## Git Conventions

- Use conventional commits: `feat:`, `fix:`, `chore:`, `docs:`, `refactor:`, `test:`, `style:`, `perf:`, `ci:`, `build:`, `revert:`.
- Keep commits small and focused on a single concern.
- Write commit messages in present tense: "Add feature" not "Added feature".
- Use imperative mood in commit messages.
- Reference issue numbers in commit messages: `feat: add user login (#42)`.
- Keep the first line under 72 characters; leave the second line blank; add body if needed.
- Rebase on main before opening a pull request.
- Squash fixup commits before merging.
- Branch naming: `feature/description`, `bugfix/description`, `hotfix/description`, `chore/description`.

## Pull Request Conventions

- Keep PRs small and focused on a single concern (max 400 lines when possible).
- Provide a clear description of what the PR does and why.
- Reference related issues in the PR description.
- Include screenshots or GIFs for UI changes.
- Add unit tests for new code and verify all existing tests pass.
- Ensure linting and type checking pass before requesting review.
- Do not merge without at least one approval.
- Use squash merge or rebase merge; avoid merge commits.

## AI & LLM Integration Conventions

- Use official SDKs for LLM APIs: `openai` (Python), `@openai/openai` (TS), `anthropic` (Python/TS), `@google/generative-ai`.
- Prefer `async`/`await` for all LLM API calls; implement streaming for real-time responses.
- Use structured prompts with clear system messages, few-shot examples, and output formatting instructions.
- Implement retry logic with exponential backoff for LLM API calls (use `tenacity` in Python, `p-retry` in JS).
- Validate LLM outputs with schema validation (`zod`, `pydantic`) before using in business logic.
- Implement prompt injection prevention: input sanitization, system prompt hardening, output filtering.
- Use vector databases (Pinecone, Weaviate, Qdrant, Chroma) for RAG (Retrieval Augmented Generation).
- Use embeddings API for text vectorization: `text-embedding-3-small` (OpenAI), `embed-multilingual-v2.0` (Cohere).
- Implement rate limiting and cost tracking per user/session for LLM usage.
- Use MCP (Model Context Protocol) for connecting LLMs with external tools and data sources.
- Log all LLM interactions (prompt, response, latency, cost) for monitoring and debugging.
- Implement content filtering and moderation for user-facing LLM outputs.
- Use guardrails frameworks (NVIDIA NeMo Guardrails, Guardrails AI) for safety constraints.
- Cache LLM responses for identical or semantically similar queries (semantic caching with embeddings).

## Mobile Development Conventions

- Use React Native (Expo) for cross-platform mobile apps; Flutter for pixel-perfect UI needs.
- Use TypeScript for React Native; Dart for Flutter.
- Use Expo Router or React Navigation for navigation in React Native.
- Use Zustand or Redux Toolkit for state management in React Native; Riverpod or Bloc in Flutter.
- Use NativeWind (Tailwind for React Native) or StyleSheet for styling; Material Design 3 in Flutter.
- Implement code sharing strategies: feature-based architecture, shared business logic in monorepo.
- Use platform-specific files (`.ios.tsx`, `.android.tsx`) when platform differences require it.
- Implement offline-first with WatermelonDB (React Native) or Drift (Flutter).
- Use `expo-secure-store` (iOS Keychain, Android Keystore) for sensitive data storage.
- Implement push notifications with Expo Notifications or Firebase Cloud Messaging.
- Use biometric authentication (Face ID, Touch ID, fingerprint) with `expo-local-authentication`.
- Optimize images: resize on upload, use WebP format, implement progressive loading.
- Use FlashList (React Native) for performant list rendering with windowing.
- Implement deep linking for universal links and custom URL schemes.
- Use EAS Build for React Native CI/CD; Codemagic or Bitrise for Flutter.
- Follow OWASP Mobile Top 10 security guidelines.
- Target 60fps UI: avoid jank, use `InteractionManager.runAfterInteractions` for heavy work.

## Accessibility Conventions (a11y)

- Follow WCAG 2.1 AA standards as minimum; aim for AAA where feasible.
- Use semantic HTML elements: `<nav>`, `<main>`, `<article>`, `<section>`, `<aside>`, `<footer>`.
- All images must have meaningful `alt` text; decorative images need `alt=""`.
- Ensure proper heading hierarchy: `<h1>` through `<h6>` without skipping levels.
- All form inputs must have associated `<label>` elements.
- Use `aria-label`, `aria-describedby`, `aria-expanded`, `aria-controls` appropriately.
- Implement skip navigation links: `<a href="#main-content">Skip to main content</a>`.
- Ensure keyboard accessibility: all interactive elements must be reachable and operable via keyboard.
- Maintain focus order: use `tabindex="0"` for interactive elements, `tabindex="-1"` for focusable via script.
- Implement focus trapping for modals and dialogs; return focus when closed.
- Use visible focus indicators (never `outline: none` without providing alternative).
- Ensure color contrast: 4.5:1 for normal text, 3:1 for large text (AA standard).
- Don't rely solely on color to convey information; use icons, patterns, and text labels.
- Support text resizing up to 200% without loss of content or functionality.
- Respect `prefers-reduced-motion` for animations: disable or reduce non-essential motion.
- Use `role="alert"` for dynamic error messages; `aria-live="polite"` for content updates.
- Test with screen readers (VoiceOver, NVDA, JAWS) and automated tools (axe, Lighthouse).
- Use `axe-core` in CI/CD to prevent accessibility regressions.
- Ensure touch targets are at least 44x44px on mobile devices.

## Performance Considerations

- Avoid premature optimization; profile first, optimize second.
- Use lazy evaluation where appropriate (`Lazy<T>`, generators, `yield return`).
- Use caching (in-memory, Redis) for expensive or frequently accessed data.
- Use connection pooling for databases and HTTP connections.
- Use pagination for large result sets; never load entire datasets into memory.
- Use streaming for large file transfers.
- Use indexes on database columns used in WHERE, JOIN, and ORDER BY clauses.
- Use `async` I/O operations to avoid blocking threads.
- Use object pooling for expensive-to-create objects.
- Use `StringBuilder` (C#) or `strings.Builder` (Go) for string concatenation in loops.
- Minimize allocations in hot paths; reuse buffers where possible.
- Use `ArrayPool`/`MemoryPool` for temporary large arrays.
- Use compression for large payloads over the network.
- Use CDN for static assets.
- Set appropriate cache headers for HTTP responses.

## Database Conventions

- Use meaningful table and column names (snake_case, plural for tables).
- Include `created_at` and `updated_at` timestamps on every table.
- Use `soft delete` with `deleted_at` timestamp when data retention is needed.
- Use UUIDs or snowflakes for primary keys in distributed systems.
- Use database migrations for schema changes; never modify schema manually.
- Use foreign keys for referential integrity at the database level.
- Use indexes on foreign key columns and columns used in frequent queries.
- Use transactions for operations that modify multiple related tables.
- Use connection strings from environment variables, never hardcoded.
- Use query optimization tools (`EXPLAIN ANALYZE`) to identify slow queries.
- Use N+1 query detection tools (e.g., `bullet` in Rails, custom middleware).

## API Design Conventions

- Use RESTful conventions with resource-based URLs.
- Use proper HTTP methods: GET for retrieval, POST for creation, PUT for full update, PATCH for partial update, DELETE for removal.
- Use consistent plural nouns for resource names: `/api/users`, `/api/orders`.
- Use proper HTTP status codes: 200 for success, 201 for created, 204 for no content, 400 for bad request, 401 for unauthorized, 403 for forbidden, 404 for not found, 409 for conflict, 422 for unprocessable entity, 429 for rate limited, 500 for server error.
- Use versioning: `/api/v1/users`.
- Use consistent error response format: `{ "error": { "code": "...", "message": "...", "details": {} } }`.
- Use pagination for list endpoints: `?page=1&limit=20` with response containing `{ "data": [...], "meta": { "total": 100, "page": 1, "limit": 20 } }`.
- Use filtering and sorting parameters: `?filter[status]=active&sort=-created_at`.
- Use `ETag` and `If-None-Match` headers for caching.
- Use `Content-Type: application/json` and `Accept: application/json` headers.
- Use `RateLimit-*` headers to communicate rate limit status.
- Use OpenAPI 3.0+ specification for all endpoints.
- Use `Problem Details` (RFC 7807) for error responses.
