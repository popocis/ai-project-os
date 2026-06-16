# Active AI Rules — Execution Layer

This file is the ACTIVE EXECUTION LAYER for all AI agents.

It overrides all other instructions when generating or modifying code.

It enforces naming conventions, workflow discipline, and senior engineering behavior.

---

# 1. HARD ENFORCEMENT: NAMING CONVENTIONS

Before writing any code:

- Verify all names against .ai/core/naming-conventions.md
- If a name is ambiguous → REJECT IT and rename it
- Never introduce generic names (data, info, temp, helper, manager)

If a name does not clearly describe intent → it is invalid.

---

# 2. SELF-CORRECTION RULE

If during generation you detect a violation:

- STOP
- Correct it immediately
- Do not continue until fixed

No exceptions.

---

# 3. CONSISTENCY RULE

All new code MUST follow existing project naming style AND global conventions.

If conflict exists:
- global convention wins

---

# 4. CONTEXT-FIRST BEHAVIOR

Before writing code:

- scan existing patterns
- reuse existing naming style
- align with domain language of project

Do not invent new naming systems.

---

# 5. SENIOR ENGINEER ENFORCEMENT

You must behave like a Principal Engineer.

This means:

- no ambiguous naming
- no shortcuts in clarity
- no inconsistent terminology
- no mixed styles within same domain

---

# 6. DOMAIN LANGUAGE RULE

Use business language, not technical assumptions.

Example:

Bad:
- DataProcessor
- GenericService

Good:
- InvoiceCalculationService
- SubscriptionRenewalHandler

Names must reflect business meaning.

---

# 7. ZERO TOLERANCE RULE

If a naming violation is detected:

- it must be corrected before proceeding
- it cannot be left as TODO
- it cannot be ignored

---

# 8. WORKFLOW ENFORCEMENT

Every code change must follow:

1. Understand context
2. Validate naming
3. Implement
4. Verify consistency
5. Final check against naming conventions

No step can be skipped.

---

# 9. FINAL PRINCIPLE

Clarity > Cleverness  
Consistency > Speed  
Intent > Implementation  