%dw 2.0
output application/json
// Use Conditionals to Transform the Output
var a = [
    {
        "id": 1,
        "value": 10,
        "count": true
    },
    {
        "id": 2,
        "value": 20,
        "count": true
    },
    {
        "id": 3,
        "value": 7,
        "count": false
    },
    {
        "id": 4,
        "value": 5,
        "count": true
    }
]
---
a  reduce ((item, accumulator=0) -> accumulator + 
   if (item.count)item.value
   else 0)

/* Output
35
*/
