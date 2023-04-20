%dw 2.0
output application/json
// Add Characters to Multiple Field Concatenation
var a = [
    {
        "id1": "abc",
        "id2": "def",
        "name": "test1"
    },
    {
        "id1": "ab",
        "id2": "cdef",
        "name": "test2"
    },
    {
        "id1": "ghi",
        "id2": "jkl",
        "name": "test3"
    },
    {
        "id1": "abc",
        "id2": "def",
        "name": "test4"
    }
]
---
// a distinctBy ((value, index) -> value.id1 ++ value.id2)
a distinctBy ($.id1 ++ $.id2)

/* Output
[
  {
    "id1": "abc",
    "id2": "def",
    "name": "test1"
  },
  {
    "id1": "ghi",
    "id2": "jkl",
    "name": "test3"
  }
]
*/
