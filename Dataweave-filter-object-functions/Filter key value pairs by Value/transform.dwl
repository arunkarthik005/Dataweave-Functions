%dw 2.0
output application/json
// Filter key/value pairs by Value
---
// payload filterObject ((value, key, index) -> 
//     value != null)
payload filterObject ($ != null )