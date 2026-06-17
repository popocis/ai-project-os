# Laravel Profile

Activate when working on PHP/Laravel backend code.

## Architecture

- Service layer architecture with thin controllers
- Business logic in Actions (single responsibility) or Services
- Form Requests for validation
- Eloquent ORM for persistence
- No logic in Blade templates

## Structure

```
app/
  Http/Controllers/   — orchestration only
  Http/Requests/      — validation
  Models/             — entities, relationships only
  Services/           — business logic
  Actions/            — single-responsibility operations
```

## Standards

- PHP 8.2+ with strict typing
- Pest or PHPUnit for testing
- Bug fix → write failing test first (when possible)
- Prefer explicit code over Laravel magic

## AI Behavior

- Prioritize backend correctness
- Ask for missing DB or API constraints
- Don't make UI assumptions
- Suggest tests for new features
