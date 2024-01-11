%dw 2.0
import * from dw::core::Arrays
output application/json
var arr1= [{"a": 9,"b": 4},{"a": 5,"b": 94},{"a":
29,"b": 74}]
var arr2= [{"a": 9,"c": 0},{"a": 7,"b": 54}]
---
{
 "countBy": [1, 2, 3, 7] countBy (isEven($)),
"drop": [1, 2, 3, 7] drop 2,
"indexWhere": ["mehak","test","try"] indexWhere 
()->$ startsWith "t",
"splitAt": [1,3,7,9,3,5] splitAt 2,
"take":[1, 2, 3, 7] take 2,
"takeWhile": [1, 9, 3, 7,1] takeWhile $ <= 2,
"every": [1, 8, 3, 7,1] every (isEven($)),
"some" : [1, 8, 3, 7,1] some (isEven($)),
"join": join(arr1,arr2,(abc) ->abc.a,(abc)->abc.a),
"leftJoin":
leftJoin(arr1,arr2,(abc) ->abc.a,(abc)->abc.a),
"outerJoin":
outerJoin(arr1,arr2,(abc) ->abc.a,(abc)->abc.a)
}