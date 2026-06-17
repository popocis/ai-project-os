# Naming Conventions

These rules are mandatory across all projects. They override personal preference.

**Enforcement**: If a name is ambiguous or violates these rules, it must be corrected before proceeding. No TODOs, no exceptions.

---

## General Rules

- Use clear, descriptive names that reflect intent, not implementation
- Avoid abbreviations unless widely standard (id, url, api)
- Consistency across the project wins over personal style

**Forbidden names**: data, info, temp, helper, manager, utils, misc, stuff, item, thing

**Good names describe business meaning**:
- Bad: `DataProcessor`, `GenericService`, `UtilityService`
- Good: `InvoiceCalculationService`, `SubscriptionRenewalHandler`, `OrderEligibilityChecker`

---

## PHP / Laravel

| Element | Convention | Example |
|---|---|---|
| Classes | PascalCase | `CreateOrderService`, `UpdateUserProfileAction` |
| Methods | camelCase | `getUserById()`, `calculateTotalPrice()` |
| Variables | camelCase | `$userId`, `$orderTotal`, `$isActive` |
| Services | PascalCase + `Service` suffix | `UserService`, `PaymentService` |
| Actions | PascalCase, single responsibility | `CreateUser`, `ProcessPayment` |
| Controllers | PascalCase + `Controller` suffix | `UserController`, `OrderController` |
| Models | Singular noun, PascalCase | `User`, `Order`, `Invoice` |

**Rules**:
- Controllers: thin, orchestration only, no business logic
- Services: business logic only, no HTTP logic
- Actions: one action = one responsibility, stateless, reusable
- Models: lightweight, relationships only

---

## Database

| Element | Convention | Example |
|---|---|---|
| Tables | snake_case plural | `users`, `order_items`, `invoices` |
| Columns | snake_case | `user_id`, `payment_status`, `created_at` |
| Booleans | `is_*`, `has_*`, `can_*` | `is_active`, `has_paid`, `can_refund` |

---

## JavaScript / TypeScript

| Element | Convention | Example |
|---|---|---|
| Variables | camelCase | `userName`, `isLoggedIn`, `totalPrice` |
| Functions | camelCase | `getUserData()`, `handleFormSubmit()` |
| Classes | PascalCase | `ApiClient`, `AuthManager` |
| React Components | PascalCase | `UserCard`, `CheckoutForm`, `HeroSection` |

**Rules**:
- Components must represent UI blocks, not generic wrappers
- Avoid: `Component1`, `Wrapper`, `Container` (without context)

---

## CSS / LESS (BEM)

| Element | Convention | Example |
|---|---|---|
| Blocks | `.block` | `.card`, `.hero`, `.navbar` |
| Elements | `.block__element` | `.card__title`, `.card__footer` |
| Modifiers | `.block--modifier` | `.card--dark`, `.button--primary` |

**Rules**: Always use BEM. No utility-first CSS. Max nesting depth: 3.

---

## WordPress

| Element | Convention | Example |
|---|---|---|
| Custom Post Types | snake_case singular | `case_study`, `team_member` |
| Taxonomies | snake_case plural | `categories`, `property_types` |

**Rules**: Must represent real content entities. Avoid generic names like `data`, `items`.

---

## API Design (REST)

```
GET    /api/users
POST   /api/users
GET    /api/users/{id}
PUT    /api/users/{id}
DELETE /api/users/{id}
```

Action endpoints only when not CRUD: `POST /api/orders/{id}/cancel`

---

## File & Folder Structure

**Laravel**:
```
app/Models/
app/Services/
app/Actions/
app/Http/Controllers/
app/Http/Requests/
```

**WordPress**:
```
theme/
  assets/
  templates/
  inc/
  Services/
  PostTypes/
```
