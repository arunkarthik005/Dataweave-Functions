%dw 2.0
output application/json
// Infix Notation
---
[1,2,3,4,5,6,7,8] groupBy((item,index)-> isEven(item))