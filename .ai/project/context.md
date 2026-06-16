# Project Context — Active Modes

This file defines the active operational modes for this project.

It controls how AI agents behave.

---

# ACTIVE PROFILES

Define which domains are active in this project:

Example:

# Context Mode

This project uses ACTIVE ROLE SYSTEM.

The source of truth is:

.ai/project/active-role.md

---

# RULES

- Only use profiles listed here
- Do not activate other domains implicitly
- If a task requires an inactive profile → ask before proceeding
- Profiles define behavior priority

---

# MODE MEANING

laravel → backend architecture, API, database, testing  
wordpress → CMS structure, themes, ACF, frontend rendering  
seo → content structure, entities, indexing strategy  
marketing → conversion, copywriting, offer design  
ui-ux → interface design, usability, layout structure  

---

# OVERRIDE RULE

If a conflict exists between profiles:

- project context always wins over default assumptions