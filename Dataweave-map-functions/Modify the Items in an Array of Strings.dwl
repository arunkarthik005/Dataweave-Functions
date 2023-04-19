%dw 2.0
output application/json
// Modify the Items in an Array of Strings
// Input
var a = [
    "Max",
    "Dave",
    "Alex"
]
---
// a map(value,index)-> "Hello" ++ " " ++ value
a map("Hello" ++ " " ++ $)

/*Output

[
  "Hello Max",
  "Hello Dave",
  "Hello Alex"
]
*/
