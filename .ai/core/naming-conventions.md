# Naming Conventions — System Standard

This file defines mandatory naming rules across all projects.

These rules override personal preference and must be followed by all developers and AI agents.

---

# 1. GENERAL RULES

- Use clear, descriptive names
- Avoid abbreviations unless widely standard
- Prefer consistency over personal style
- Names must reflect intent, not implementation

Bad:
- $data
- $info
- $temp

Good:
- $userInvoices
- $activeSubscriptions
- $paymentStatus

---

# 2. PHP / LARAVEL

## Classes

PascalCase

UserController
CreateOrderService
UpdateUserProfileAction
UserService
PaymentService

---

## Methods

camelCase

getUserById()
calculateTotalPrice()
sendNotificationEmail()
updateUserStatus()

---

## Variables

camelCase

$userId
$orderTotal
$isActive
$paymentStatus

---

## Services

Suffix required: Service

UserService
PaymentService
AuthService
OrderService

Services must contain business logic only. No HTTP logic.

---

## Actions

Single-responsibility classes representing a business action

CreateUser
DeleteUser
UpdateUserProfile
ProcessPayment

Rules:
- one action = one responsibility
- stateless
- reusable across contexts (API, jobs, controllers)

---

## Controllers

Must end with Controller

UserController
OrderController
AuthController
PaymentController

Rules:
- controllers must be thin
- only orchestration logic allowed
- no business logic
- no database logic

---

## Models

Singular noun, PascalCase

User
Order
Invoice
Payment

Rules:
- represent a single entity
- minimal logic
- relationships only

---

# 3. DATABASE

## Tables

snake_case plural

users
orders
invoices
payments

---

## Columns

snake_case

user_id
order_id
created_at
updated_at
payment_status
is_active
has_paid
can_refund

Boolean rule:
- is_*
- has_*
- can_*

---

# 4. WORDPRESS

## Custom Post Types

snake_case singular

case_study
team_member
property
testimonial

---

## Taxonomies

snake_case plural

categories
locations
property_types
industries

Rules:
- must represent real content entities
- avoid generic names like data/items/posts

---

# 5. JAVASCRIPT / TYPESCRIPT

## Variables

camelCase

userName
isLoggedIn
totalPrice
selectedItems

---

## Classes

PascalCase

UserService
ApiClient
AuthManager
PaymentHandler

---

## Functions

camelCase

getUserData()
calculateDiscount()
handleFormSubmit()
formatCurrency()

---

## React Components

PascalCase

UserCard
CheckoutForm
NavigationMenu
HeroSection

Rules:
- must represent UI blocks
- avoid generic names like Component1, Wrapper, Container

---

# 6. CSS / LESS (BEM STANDARD)

## Blocks

.card
.hero
.navbar
.button

---

## Elements

.card__title
.card__content
.card__footer

---

## Modifiers

.card--dark
.card--large
.button--primary
.button--disabled

---

Rules:
- always use BEM
- no utility-first CSS
- max nesting depth: 3
- avoid generic names like .box, .item, .section without context

---

# 7. API DESIGN

## REST Endpoints

GET    /api/users
POST   /api/users
GET    /api/users/{id}
PUT    /api/users/{id}
DELETE /api/users/{id}

---

## Action endpoints (only if necessary)

POST /api/users/{id}/activate
POST /api/orders/{id}/cancel

Rules:
- prefer REST
- use actions only when not CRUD

---

# 8. FILE AND FOLDER STRUCTURE

## Laravel

app/Models/
app/Services/
app/Actions/
app/Http/Controllers/
app/Http/Requests/

Domain structure (optional):

app/Domains/User/
app/Domains/Order/

---

## WordPress

theme/
  assets/
  templates/
  inc/
  Services/
  PostTypes/

Rules:
- no logic in templates
- logic must be in classes/services

---

# 9. BUSINESS LOGIC NAMING RULE

Names must describe intent, not implementation.

Bad:
DataHandler
ProcessManager
UtilityService
Helper

Good:
InvoiceCalculationService
UserSubscriptionValidator
PaymentRetryHandler
OrderEligibilityChecker

---

# 10. FINAL RULE

If a name is ambiguous, it is INVALID.

It must be renamed immediately.

No exceptions.