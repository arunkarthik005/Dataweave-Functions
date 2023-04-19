%dw 2.0
output application/json
// Prefix Notation
---
map ([1,2,3], (value,index)-> value+10)


/* Output
[
  11,
  12,
  13
]
*/