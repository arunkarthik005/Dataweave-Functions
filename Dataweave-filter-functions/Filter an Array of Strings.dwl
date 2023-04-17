%dw 2.0
output application/json
// Filter an Array of Strings
var a = [
    "Hello World",
    "Hello Max",
    "Max the Mule"
] 
---

// filter ($ contains "Max")
a filter ((item, index) -> item contains "Max")