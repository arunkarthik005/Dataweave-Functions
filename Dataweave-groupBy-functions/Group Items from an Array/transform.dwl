%dw 2.0
output application/json
// Group Items from an Array
---
// payload groupBy ((item, index) -> item.dayOfWeek)
payload groupBy ($.dayOfWeek )