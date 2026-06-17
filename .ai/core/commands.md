# AI Command Layer

Commands are hints you can give the AI to switch context. They work with any LLM tool.

---

## Profile Commands

Tell the AI which domain profile to activate:

- `[role: laravel]` — backend architecture, API, database, testing
- `[role: wordpress]` — CMS structure, themes, custom post types
- `[role: seo]` — content structure, search optimization, entities
- `[role: marketing]` — conversion, copywriting, offer design
- `[role: ui-ux]` — interface design, usability, layout

**Multi-role** (max 2, first = primary):
- `[role: laravel + seo]`

If no role is specified, the AI infers the profile from task context.

---

## Task Commands

Tell the AI the type of work:

- `[task: bugfix]` — reproduce → failing test → fix → verify
- `[task: feature]` — define acceptance criteria → implement → validate → test
- `[task: refactor]` — identify scope → restructure → verify no regressions
- `[task: landing-page]` — UX structure → content → implementation
- `[task: seo-content]` — intent analysis → structure → content → optimization

Every task automatically requires:
1. Read project context (`.ai/project/`)
2. Apply the relevant profile (`.ai/profiles/`)
3. Follow the workflow defined in `.ai/RULES.md`

---

## Usage

These commands can be used naturally in conversation with any AI tool:

```
[role: laravel] [task: bugfix] The checkout total is wrong when applying a discount code.
```

```
[role: seo + marketing] [task: landing-page] Create the pricing page for our SaaS product.
```

Or simply describe the task — the AI will infer the profile automatically.
