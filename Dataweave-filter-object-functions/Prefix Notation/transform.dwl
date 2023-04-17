%dw 2.0
output application/json
// prefix notation
---
 filterObject(payload, ((value, key, index) -> 
    value is String))
