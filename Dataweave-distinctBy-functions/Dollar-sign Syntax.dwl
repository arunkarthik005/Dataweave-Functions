%dw 2.0
output application/json
// Dollar-sign Syntax
---
[1, 2, 2, 3, 4, 2, 1] distinctBy ($ )

/* Output
[
  1,
  2,
  3,
  4
]
*/