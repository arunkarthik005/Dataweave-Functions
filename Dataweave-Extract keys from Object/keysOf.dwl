%dw 2.0
output application/json
// keysOf
var keysArrays = keysOf(payload)
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
{
    itemtype: typeOf(keysArrays[0]),
    keys: keysArrays
}

/* Output
{
  "itemtype": "Key",
  "keys": [
    "firstName",
    "lastName",
    "age",
    "occupation",
    "address"
  ]
}
*/