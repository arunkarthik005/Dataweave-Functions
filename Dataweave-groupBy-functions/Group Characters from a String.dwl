%dw 2.0
output application/json
// Group Characters from a String
---
"abcdefxzyu" groupBy ((character, index) -> character contains /[aeiou]/)
// "abcdefxzyu" groupBy ($ contains /[aeiou]/)