%dw 2.0
output application/json
// Dollar-sign Syntax
---
[1, 2, 3] filter ($ > 2 and $$ > 1)