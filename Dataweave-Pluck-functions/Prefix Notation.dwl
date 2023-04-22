%dw 2.0
output application/json
// Prefix Notation
var a = {
    "a": "b",
    "c": "d"
}
---
pluck(a,(value,key,index)->{
   (index):{
       (value):key
   }

})

/* Output
[
  {
    "0": {
      "b": "a"
    }
  },
  {
    "1": {
      "d": "c"
    }
  }
]
*/