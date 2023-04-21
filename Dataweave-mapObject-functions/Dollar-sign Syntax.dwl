%dw 2.0
output application/json
// Dollar-sign Syntax
var a = {
    "firstName": "Avery",
    "lastName": "Chance",
    "age": 56,
    "occupation": "Physicist"
}
---
a mapObject ({
    (upper($$)): upper($)
})

/* Output
{
  "FIRSTNAME": "AVERY",
  "LASTNAME": "CHANCE",
  "AGE": "56",
  "OCCUPATION": "PHYSICIST"
}
*/