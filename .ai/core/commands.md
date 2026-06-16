# AI Command Layer

This file defines the standard commands used to control the AI system.

Commands are interpreted manually or via tooling.

---

# ROLE COMMANDS

/role laravel
/role seo
/role ui-ux
/role marketing
/role wordpress

---

# RULE: ROLE SWITCHING

When a /role command is executed:

1. Update .ai/project/active-role.md
2. Replace ACTIVE ROLE value
3. Reset multi-role state unless explicitly specified

---

# MULTI-ROLE COMMAND

/role laravel + seo

Rules:
- first role = primary
- second role = support
- max 2 roles allowed

---

# TASK COMMANDS

/task bugfix
/task feature
/task refactor
/task landing-page
/task seo-article

Each task automatically implies:

- read context.md
- read architecture.md
- read active-role.md
- apply workflow rules

---

# BEHAVIOR RULE

Every task must follow:

1. Understand intent
2. Validate active role
3. Apply profile behavior
4. Execute using workflow.md
5. Verify result

---

# FALLBACK RULE

If command is invalid:

- ignore command
- keep previous state unchanged
- default behavior remains active-role.md