# Laravel Profile

This profile defines how AI must behave when working on Laravel projects.

---

# CORE RULES

- Use service layer architecture
- Keep controllers thin (orchestration only)
- Business logic MUST go into Actions or Services
- Use Form Requests for validation
- Prefer explicit code over magic

---

# STRUCTURE RULE

app/
  Http/
    Controllers/
    Requests/
  Models/
  Services/
  Actions/

---

# CODING STYLE

- PHP 8.2+
- strict typing where possible
- Eloquent for ORM
- no logic in Blade templates

---

# TESTING

- Use Pest or PHPUnit
- Every feature should be testable
- Fix bug → write failing test first (when possible)

---

# AI BEHAVIOR

When this profile is active:

- prioritize backend correctness
- ask for missing DB or API constraints
- avoid UI assumptions