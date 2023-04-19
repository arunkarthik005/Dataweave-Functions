%dw 2.0
output application/json
// Dollar-sign Syntax
---

[1, 2, 3] map($+$$)

/* output

[
  1,
  3,
  5
]

*/

