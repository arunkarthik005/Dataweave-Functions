%dw 2.0
import * from dw::core::Objects
output application/json
---
{
 "divideBy" : {"a": 1, "b" : true, "a" : 2, "b" : false, "c" : 3} divideBy 2,
 //keySet replaced by keysOf(core module)
 "keysOf" : keysOf({ "a" : true, "b" : 1}),
 "mergeWith" : { "a" : true, "b" : 1} mergeWith { "a" : false, "c" : "Test"},
 "takeWhile": {"a": 1, "b" : 5, "a" : 2, "b" : 6, "c" : 3} takeWhile ((value, key) -> value < 3),
 //valueSet replaced by valuesOf(core module)
 "valuesOf" : valuesOf({ "a" : true, "b" : 1}),
}
