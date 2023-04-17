%dw 2.0
output application/json
// Infix notation
---
// payload filterObject ((value, key, index) -> 
//     value is String)
payload filterObject ($ is String)
