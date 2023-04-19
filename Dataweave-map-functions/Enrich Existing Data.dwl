%dw 2.0
output application/json
// Enrich Existing Data
// Input
var a = [
    1,
    2,
    3
]
---
// a map(value,index)->{
//     "Number": value,
//     "Type": if(isEven(value)) "Even"  else "odd"
// }

a map{
    "Number": $,
    "Type": if(isEven($)) "Even"  else "odd"
}

/* Ouput

[
  {
    "Number": 1,
    "Type": "odd"
  },
  {
    "Number": 2,
    "Type": "Even"
  },
  {
    "Number": 3,
    "Type": "odd"
  }
]
*/