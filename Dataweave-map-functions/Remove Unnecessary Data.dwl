%dw 2.0
output application/json
// Remove Unnecessary Data
// Input
var a = [
    {
        "employee": "Arun",
        "id": 1,
        "phone": "123-123-1231",
        "contract": "full-time"
    },
    {
        "employee": "AAA",
        "id": 2,
        "phone": "123-123-1231",
        "contract": "part-time"
    }
]
---
// a map(value,index)->{
//     Employee: value.employee,
//     Contract: value.contract
// }

a map{
    Employee: $.employee,
    Contract: $.contract
}

/* Output

[
  {
    "Employee": "Arun",
    "Contract": "full-time"
  },
  {
    "Employee": "AAA",
    "Contract": "part-time"
  }
] */