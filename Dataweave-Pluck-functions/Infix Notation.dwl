%dw 2.0
output application/json
// Infix Notation
var a = {
    "a": "b",
    "c": "d"
}
---
a pluck ((value, key, index) -> {
    (index):{
        (value): key
    }
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