%dw 2.0
output application/json
// Prefix Notation
---
groupBy([1,2,3,4,5,6,7,8], ((item,index)-> isEven(item)))