# Business Rules

This file defines the domain rules and business logic constraints of the project.

It is independent from technical implementation and architecture.

---

# CORE PRINCIPLE

Business rules define WHAT the system must enforce,
not HOW it is implemented.

---

# DOMAIN RULES

Define the real-world constraints of the system.

Examples:

- A user cannot have overlapping active bookings
- A booking must have a valid check-in and check-out date
- Check-out date must be after check-in date
- A user must be registered before creating a booking

---

# DATA CONSISTENCY RULES

- All entities must remain consistent across operations
- No partial or invalid states are allowed
- Every transaction must result in a valid domain state

---

# VALIDATION RULES

- All business constraints must be validated before persistence
- Validation can occur in services, actions, or domain layer
- Controllers must NOT contain business rules

---

# EDGE CASE RULES

- Define how invalid or incomplete input is handled
- Define system behavior for conflicting states
- Prefer rejecting invalid states over correcting them silently

---

# AI BEHAVIOR

When this file is active:

- prioritize domain correctness over implementation speed
- ask clarification if business logic is ambiguous
- never assume hidden business rules