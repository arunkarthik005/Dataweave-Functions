%dw 2.0
output application/json
// Infix Notation
---
[1, 2, 2, 3, 4, 2, 1] distinctBy ((value, index) -> value )



/* Output
[
  1,
  2,
  3,
  4
]
*/