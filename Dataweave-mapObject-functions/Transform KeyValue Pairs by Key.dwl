%dw 2.0
output application/json
// Transform Key/Value Pairs by Key
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
// a mapObject ((value, key, index) -> (key replace "Name" with ""): value)

a mapObject(($$ replace "Name" with ""):$)

/* Output
{
  "first": "Avery",
  "last": "Chance",
  "age": 56,
  "occupation": "Physicist",
  "address": {
    "street": "123 Main Street"
  }
}

*/