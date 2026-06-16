# Project Context — Active Modes

This file defines the active operational modes for this project.

It controls how AI agents behave.

---

# ACTIVE PROFILES

Define which domains are active in this project:

Example:

Active Profiles:
- laravel
- seo
- ui-ux

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