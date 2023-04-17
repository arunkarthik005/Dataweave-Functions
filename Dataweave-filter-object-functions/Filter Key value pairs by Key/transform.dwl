%dw 2.0
output application/json
// Filter key/value pairs by key
---
// payload filterObject ((value, key, index) -> 
//     key ~= "name")
payload filterObject($$ ~= "name")