%dw 2.0
output application/json
// Create an Object per Key/Value Pair
var a = {
    "firstName": "Avery",
    "lastName": "Chance",
    "age": 56,
    "occupation": "Physicist",
    "address": {
        "street": "123 Main Street"
    }
}
---
// a pluck ((value, key, index) -> {
//     (key): value
// })

a pluck({
    ($$):$
})

/* Output
[
  {
    "firstName": "Avery"
  },
  {
    "lastName": "Chance"
  },
  {
    "age": 56
  },
  {
    "occupation": "Physicist"
  },
  {
    "address": {
      "street": "123 Main Street"
    }
  }
]
*/