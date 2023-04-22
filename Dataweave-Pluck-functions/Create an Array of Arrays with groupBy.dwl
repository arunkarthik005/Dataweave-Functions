%dw 2.0
output application/json
// Create an Array of Arrays with groupBy
// Step 1: Group By orderId
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
// a groupBy ((value, index) -> value.orderId )
a groupBy($.orderId)

/* Output
{
  "1": [
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
  "2": [
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
}
*/
