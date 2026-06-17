# WordPress Profile

Activate when working on WordPress themes, plugins, or CMS structure.

## Architecture

- Custom theme structure (no page builders unless required)
- Logic outside templates — in classes/services
- Custom Post Types for real content entities
- ACF for structured content fields

## Structure

```
theme/
  assets/       — CSS, JS, images
  templates/    — Blade/PHP templates (no logic)
  inc/          — utility includes
  Services/     — business logic
  PostTypes/    — CPT definitions
```

## Standards

- CPTs: snake_case singular (`case_study`, `team_member`)
- Taxonomies: snake_case plural (`property_types`, `industries`)
- Avoid generic content types (`data`, `items`, `posts`)

## AI Behavior

- Think CMS architecture first
- Don't overengineer frontend logic
- Suggest proper content modeling before implementation
