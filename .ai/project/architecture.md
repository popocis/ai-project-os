# Project Architecture

This file describes the actual technical structure of the project.

It must always reflect the current state of the codebase.

---

# STACK

Define technologies used:

Example:
- Laravel 11
- PHP 8.3
- MySQL
- Redis (optional)
- Vite (frontend build)

---

# ARCHITECTURE PATTERN

Example:

- Service Layer Architecture
- Thin Controllers
- Form Requests for validation
- Actions for business logic
- Eloquent ORM for persistence

---

# STRUCTURE

app/
  Models/
  Services/
  Actions/
  Http/
    Controllers/
    Requests/

---

# DOMAIN LOGIC RULE

- Business logic lives in Services / Actions
- Controllers only orchestrate
- Models remain lightweight

---

# FRONTEND (if applicable)

- Blade templates OR SPA structure
- CSS: LESS + BEM
- JS: modular structure

---

# INTEGRATIONS

List external systems:

- payment gateways
- APIs
- third-party services

---

# IMPORTANT RULE

This file must always reflect reality, not intentions.

If code changes → this file must be updated.