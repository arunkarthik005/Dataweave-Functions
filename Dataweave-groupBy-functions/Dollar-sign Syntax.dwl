%dw 2.0
output application/json
// Dollar-sign Syntax
---
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10] groupBy isEven($)