%dw 2.0
output application/json
// Prefix Notation
var a = {
    "firstName": "Avery",
    "lastName": "Chance",
    "age": 56,
    "occupation": "Physicist"
}
---
mapObject(a,(value,key,index)->{
    (upper(key)) : upper(value)
})

/* Output
{
  "FIRSTNAME": "AVERY",
  "LASTNAME": "CHANCE",
  "AGE": "56",
  "OCCUPATION": "PHYSICIST"
}
*/