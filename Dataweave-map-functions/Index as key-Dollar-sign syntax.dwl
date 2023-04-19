%dw 2.0
output application/json
// Complex Dollar-sign syntax

var a= [
    "Josh",
    "Max",
    "Alex",
    15
]
---
a map{
    ($$) : ($),
    ($$+1): $,
    "$$" : "$",
    "\$\$" : "\$"
}

/* Output

[
  {
    "0": "Josh",
    "1": "Josh",
    "0": "Josh",
    "$$": "$"
  },
  {
    "1": "Max",
    "2": "Max",
    "1": "Max",
    "$$": "$"
  },
  {
    "2": "Alex",
    "3": "Alex",
    "2": "Alex",
    "$$": "$"
  },
  {
    "3": 15,
    "4": 15,
    "3": "15",
    "$$": "$"
  }
] */