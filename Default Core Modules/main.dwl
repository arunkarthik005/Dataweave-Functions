%dw 2.0
output application/json
---
{
 "avg": avg(1 to 15),
 "contains": [1,4,5,6] contains(5),
 "distinctBy": [1,2,2,4,1] distinctBy $,
 "endsWith": "mehak" endsWith("m"),
 "flatten": flatten([[1,8,9],["a","b","c"]]),
 "find": [8,9,0] find 9,
 "isBlank": isBlank(" "),
 "isEmpty": isEmpty(" "),
 "log" : log("WARNING", "we are learning core" ),
 "match": "mehak@mulesoft.com" match(/([a-z]*)@([a-z]*).com/),
 "matches": "mehak@mulesoft.com" matches(/([a-z]*)@([a-z]*).in/),
 "read": read("<?xml version='1.0' encoding='UTF-8'?><hello>world</hello>" ,'application/xml'),
 "trim": trim(" core module " ),
 "zip": [0,1] zip ["a","b"]
}
