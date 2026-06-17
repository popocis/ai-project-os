# Architecture — Example

This is a template. Copy to `.ai/project/architecture.md` and fill with your actual architecture.

---

## Pattern

- Service Layer Architecture
- Thin Controllers (orchestration only)
- Form Requests for validation
- Actions for single-responsibility business logic
- Eloquent ORM for persistence

## Structure

```
app/
  Models/
  Services/
  Actions/
  Http/
    Controllers/
    Requests/
```

## Domain Logic

- Business logic lives in Services / Actions
- Controllers only orchestrate
- Models remain lightweight (relationships + scopes)

## Frontend

- Blade templates
- CSS: LESS + BEM
- JS: modular, no framework

## Integrations

- Stripe API (payments)
- Internal REST API (`/api/v1/`)
- Webhook receivers for external events
