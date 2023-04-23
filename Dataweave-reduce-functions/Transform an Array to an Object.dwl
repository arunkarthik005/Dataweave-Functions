%dw 2.0
output application/json
// Transform an Array to an Object
var a = [
    {
        "id": "1",
        "name": "dev"
    },
    {
        "id": "2",
        "name": "test"
    },
    {
        "id": "3",
        "name": "uat"
    },
    {
        "id": "4",
        "name": "prod"
    }
]

---
a reduce ((item, accumulator={}) -> accumulator ++ {
    (item.name):(item.id)
} )


/* output
{
  "dev": "1",
  "test": "2",
  "uat": "3",
  "prod": "4"
}
*/