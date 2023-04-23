%dw 2.0
output application/json
// Infix Notation
var a= [1,2,3]
---
a reduce ((item, accumulator=0) -> accumulator + item )

/* Output

6

*/