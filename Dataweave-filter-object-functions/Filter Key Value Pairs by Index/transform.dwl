%dw 2.0
output application/json
// Filter Key/Value Pairs by Index
---
// payload filterObject ((value, key, index) -> 
//     index < 3)
payload filterObject($$$ <3)