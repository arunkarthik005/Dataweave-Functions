%dw 2.0
output application/json
// Transform Key/Value Pairs by Index
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
// a mapObject ((value, key, index) -> (index):{
//     key:key,
//     value: value
// }
// )
a mapObject(($$$):{
    key:$$,
    value:$
})
/* Output
{
  "0": {
    "key": "firstName",
    "value": "Avery"
  },
  "1": {
    "key": "lastName",
    "value": "Chance"
  },
  "2": {
    "key": "age",
    "value": 56
  },
  "3": {
    "key": "occupation",
    "value": "Physicist"
  },
  "4": {
    "key": "address",
    "value": {
      "street": "123 Main Street"
    }
  }
}

*/