%dw 2.0
output application/json
// Remove Duplicate Objects by Field
var a = [
    {
        "id": "1",
        "environment": "dev"
    },
    {
        "id": "2",
        "environment": "test"
    },
    {
        "id": "3",
        "environment": "uat"
    },
    {
        "id": "4",
        "environment": "prod"
    },
    {
        "id": "2",
        "environment": "test2"
    }
]
---
// a distinctBy ((value, index) -> value.id)
a distinctBy ($.id )

/* Output

[
  {
    "id": "1",
    "environment": "dev"
  },
  {
    "id": "2",
    "environment": "test"
  },
  {
    "id": "3",
    "environment": "uat"
  },
  {
    "id": "4",
    "environment": "prod"
  }
]
*/