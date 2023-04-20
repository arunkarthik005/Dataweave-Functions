%dw 2.0
output application/json
// Remove Duplicate Objects by Multiple Fields
var a =[
    {
        "orderId": "1",
        "lineId": "1",
        "product": "toothpaste"
    },
    {
        "orderId": "1",
        "lineId": "2",
        "product": "floss"
    },
    {
        "orderId": "2",
        "lineId": "3",
        "product": "toothbrush"
    },
    {
        "orderId": "2",
        "lineId": "4",
        "product": "mouth wash"
    },
    {
        "orderId": "2",
        "lineId": "4",
        "product": "another mouth wash"
    }
]
---
// a distinctBy ((value, index) -> value.orderId ++ value.lineId )
a distinctBy ($.orderId ++ $.lineId)


/* Output
[
  {
    "orderId": "1",
    "lineId": "1",
    "product": "toothpaste"
  },
  {
    "orderId": "1",
    "lineId": "2",
    "product": "floss"
  },
  {
    "orderId": "2",
    "lineId": "3",
    "product": "toothbrush"
  },
  {
    "orderId": "2",
    "lineId": "4",
    "product": "mouth wash"
  }
]
*/