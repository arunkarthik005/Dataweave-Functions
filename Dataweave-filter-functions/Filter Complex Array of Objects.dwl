%dw 2.0
output application/json
import update from dw::util::Values
---
payload 
// filter ($.Age > 20)
// map {
//     Name: $.Name,
//     Age: $.Age,
//     Phones: $.Phones filter $.Primary
// }
filter ((item, index) -> item.Age>10 )
map ((item, index) -> {
    Name: item.Name,
    Age: item.Age,
    Phones: item.Phones filter ((item, index) -> item.Primary )
})

