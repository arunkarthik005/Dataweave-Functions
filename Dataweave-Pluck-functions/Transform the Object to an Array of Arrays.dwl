%dw 2.0
output application/json
// Create an Array of Arrays with groupBy
// Step 2: Transform the Object to an Array of Arrays
var a =[
    {
        "orderId": 1,
        "customer": "Josh",
        "lineId": 1,
        "lineItem": "Shoes",
        "price": 50
    },
    {
        "orderId": 1,
        "customer": "Josh",
        "lineId": 2,
        "lineItem": "Socks",
        "price": 20
    },
    {
        "orderId": 2,
        "customer": "Mariano",
        "lineId": 3,
        "lineItem": "Shirt",
        "price": 30
    },
    {
        "orderId": 2,
        "customer": "Mariano",
        "lineId": 4,
        "lineItem": "Jacket",
        "price": 80
    }
]
---
// a
// groupBy ((item, index) -> item.orderId)
// pluck ((value, key, index) -> value)

a
groupBy($.orderId)
pluck($)
/* Output
[
  [
    {
      "orderId": 1,
      "customer": "Josh",
      "lineId": 1,
      "lineItem": "Shoes",
      "price": 50
    },
    {
      "orderId": 1,
      "customer": "Josh",
      "lineId": 2,
      "lineItem": "Socks",
      "price": 20
    }
  ],
  [
    {
      "orderId": 2,
      "customer": "Mariano",
      "lineId": 3,
      "lineItem": "Shirt",
      "price": 30
    },
    {
      "orderId": 2,
      "customer": "Mariano",
      "lineId": 4,
      "lineItem": "Jacket",
      "price": 80
    }
  ]
]

*/
