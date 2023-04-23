%dw 2.0
output application/json
// Dollar-sign Syntax
var a= [1,2,3]
---
 a reduce ($$+$)

/* Output

6

*/