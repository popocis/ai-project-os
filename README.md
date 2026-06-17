# AI Project OS

A portable, LLM-agnostic configuration system for AI-assisted development.

Install it on any project to enforce consistent coding standards, naming conventions, and workflow discipline across Claude, Gemini, Cursor, Copilot, Windsurf, and any future AI tool.

## Install

```bash
# From within your target project:
/path/to/ai-project-os/install.sh .

# Or specify a target:
./install.sh /path/to/my-project
```

## Structure

```
.ai/
  RULES.md                  ← core rules (workflow, quality, naming, profiles)
  core/
    commands.md             ← command system ([role: x] [task: y])
  naming/
    conventions.md          ← mandatory naming rules per language
  profiles/
    laravel.md              ← backend PHP/Laravel behavior
    wordpress.md            ← CMS/WordPress behavior
    seo.md                  ← SEO/content behavior
    marketing.md            ← conversion/copy behavior
    ui-ux.md                ← interface/usability behavior
  project/
    stack.md                ← your tech stack (configure per project)
    architecture.md         ← your architecture (configure per project)
    business-rules.md       ← your domain rules (configure per project)
  templates/
    stack.example.md        ← example stack config
    architecture.example.md ← example architecture config
    business-rules.example.md ← example business rules
```

## LLM Entry Points

The installer creates entry points for each supported AI tool:

| Tool | Entry point |
|---|---|
| Claude Code | `CLAUDE.md` |
| Cursor | `.cursorrules` |
| GitHub Copilot | `.github/copilot-instructions.md` |
| Gemini | `.gemini/settings.json` |
| Windsurf | `.windsurfrules` |

All entry points load the same `.ai/RULES.md` — one source of truth.

## Setup for your project

After installing:

1. Edit `.ai/project/stack.md` — define your tech stack
2. Edit `.ai/project/architecture.md` — define your architecture
3. Edit `.ai/project/business-rules.md` — define your domain rules
4. Remove unused profiles from `.ai/profiles/`

See `.ai/templates/` for examples.

## Command System

Use inline hints to guide the AI:

```
[role: laravel] [task: bugfix] The checkout total is wrong with discount codes.
```

```
[role: seo + marketing] [task: landing-page] Create the pricing page.
```

Or just describe the task naturally — the AI infers the profile from context.

## Customization

- **Add a profile**: create a new `.md` file in `.ai/profiles/`
- **Modify rules**: edit `.ai/RULES.md`
- **Add naming rules**: extend `.ai/naming/conventions.md`
- **Project-specific config**: edit files in `.ai/project/`
