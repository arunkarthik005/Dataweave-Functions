%dw 2.0
output application/json
//  Index Selector ([0]
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
{
    test1: a[0].id1 ++ a[0].id2,
    test2: a[1].id1 ++ a[1].id2,
    test3: a[2].id1 ++ a[2].id2,
    test4: a[3].id1 ++ a[3].id2
}

/* Output
{
  "test1": "abcdef",
  "test2": "abcdef",
  "test3": "ghijkl",
  "test4": "abcdef"
}
*/