%dw 2.0
output application/json
// Use the Index as a Key
// Explicit lambda
var a = [
    "Josh",
    "Max",
    "Alex",
    "Dave"
]
---
a map(value,index)->{
    (index): value,
    (index+1):value,
    index:value,
    "index": "value"
}



/* Output

[
  {
    "0": "Josh",
    "1": "Josh",
    "index": "Josh",
    "index": "value"
  },
  {
    "1": "Max",
    "2": "Max",
    "index": "Max",
    "index": "value"
  },
  {
    "2": "Alex",
    "3": "Alex",
    "index": "Alex",
    "index": "value"
  },
  {
    "3": "Dave",
    "4": "Dave",
    "index": "Dave",
    "index": "value"
  }
] */