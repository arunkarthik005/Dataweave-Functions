%dw 2.0
output application/json
// Compare Keys to Strings with ~=
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
keysOf(a) filter($ ~= "firstName")

/* Output
[
  "firstName"
]
*/