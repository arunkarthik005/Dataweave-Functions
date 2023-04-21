%dw 2.0
output application/json
// Infix Notation
var a = {
    "firstName": "Avery",
    "lastName": "Chance",
    "age": 56,
    "occupation": "Physicist"
}
---
a mapObject ((value, key, index) ->{
    (upper(key)): upper(value)
})

/* Output
{
  "FIRSTNAME": "AVERY",
  "LASTNAME": "CHANCE",
  "AGE": "56",
  "OCCUPATION": "PHYSICIST"
}
*/