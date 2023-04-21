%dw 2.0
output application/json
// Transform Key/Value Pairs by Value
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
// a mapObject ((value, key, index) ->{
//       (key): if (value is String) upper(value)
//       else value
// } )
a mapObject({
    ($$) : if ($ is String) upper($)
    else($)
})

/* Output
{
  "firstName": "AVERY",
  "lastName": "CHANCE",
  "age": 56,
  "occupation": "PHYSICIST",
  "address": {
    "street": "123 Main Street"
  }
}
*/