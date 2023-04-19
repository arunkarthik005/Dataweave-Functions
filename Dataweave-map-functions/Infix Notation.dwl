%dw 2.0
output application/json
// Infix Notation
---
// [1, 2, 3] map(value,index)-> value+10
[1,2,3] map($+10)

/*output
[
  11,
  12,
  13
] */