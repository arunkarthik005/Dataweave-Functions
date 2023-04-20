%dw 2.0
output application/json
// Prefix Notation
---
distinctBy([1, 2, 2, 3, 4, 2, 1],((value,index)-> value))

/* Output

[
  1,
  2,
  3,
  4
]
*/