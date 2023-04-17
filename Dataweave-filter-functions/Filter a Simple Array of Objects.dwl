%dw 2.0
output application/json
// Filter a Simple Array of Objects
var a =[
    {
        "Name": "Arun",
        "Age": 26
    },
    {
        "Name": "Karthik",
        "Age": 10
    },
    {
        "Name": "Aaa",
        "Age": 21
    }
]
---
// a filter ((item, index) -> item.Age>10 )
a filter($.Age>10)