%dw 2.0
output application/json
// Group Items from an Object
---
// payload groupBy ((value, key) -> value)
payload groupBy ($)