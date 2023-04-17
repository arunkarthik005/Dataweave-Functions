%dw 2.0
output application/json
// Prefix Notation
---
filter([1, 2, 3], ((item,Index) -> item > 1))