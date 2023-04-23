%dw 2.0
output application/json
// Prefix Notation
var a= [1,2,3]
---
reduce(a,((n,total=0)-> total +n))

/* Output

6

*/