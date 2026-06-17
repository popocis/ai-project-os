# Business Rules — Example

This is a template. Copy to `.ai/project/business-rules.md` and fill with your actual domain rules.

---

## Domain Rules

- A user cannot have overlapping active bookings
- A booking must have a valid check-in and check-out date (check-out > check-in)
- A user must be registered before creating a booking
- Cancellation is allowed up to 24h before check-in

## Data Consistency

- All entities must remain consistent across operations
- No partial or invalid states allowed
- Every transaction must result in a valid domain state

## Validation

- All business constraints validated before persistence
- Validation in services, actions, or domain layer
- Controllers must NOT contain business rules

## Edge Cases

- Invalid input → reject, never correct silently
- Conflicting states → reject with clear error
- Missing required fields → fail early with specific message
