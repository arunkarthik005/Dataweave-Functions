%dw 2.0
output application/json
// Dollar-sign Syntax
var a = {
    "a": "b",
    "c": "d"
}
---
a pluck (($$$):{
    ($):$$
})

/* Output
[
  {
    "0": {
      "b": "a"
    }
  },
  {
    "1": {
      "d": "c"
    }
  }
]
*/