%dw 2.0
output application/json
// Mule4 DataWeave Exercise: map, reduce, and pluck
fun nameSplit(name ) = name splitBy  " "
var a = [
    {
        "empId": "ex12345",
        "fullName": "Peter parker",
        "street": "Second Ave 46",
        "city": "San Francisco",
        "state": "veniam",
        "postal": "sit",
        "country": "Mexico",
        "dept": "hr",
        "joinedDate": "2021-12-22",
        "miles": 68
    },
    {
        "empId": "ex54321",
        "fullName": "Joseph charles",
        "street": "First Ave 47",
        "city": "Bangalore",
        "state": "Karnataka",
        "postal": "560100",
        "country": "India",
        "dept": "finance",
        "joinedDate": "2021-11-15",
        "miles": 49
    }
]
---
a map {
     "firstName": nameSplit($.fullName)[0],
     "lastName": nameSplit($.fullName)[1],
     "AddrWithValuesOf" : valuesOf($)[3 to 6] reduce ($$ ++ "," ++ $),
     "AddrWithPluck" : ($ pluck (V,K) -> (V)) [ 3 to 6] reduce ($$ ++ "," ++ $),
     "miles" : $.miles as String   { format : "0.00" } as Number,
     "DateofJoin": $.joinedDate as Date {format: 'yyyy-MM-dd'} as String { format : "dd-MMM-yyyy"} 
}


/* Output
[
  {
    "firstName": "Peter",
    "lastName": "parker",
    "AddrWithValuesOf": "San Francisco,veniam,sit,Mexico",
    "AddrWithPluck": "San Francisco,veniam,sit,Mexico",
    "miles": 68.00,
    "DateofJoin": "22-Dec-2021"
  },
  {
    "firstName": "Joseph",
    "lastName": "charles",
    "AddrWithValuesOf": "Bangalore,Karnataka,560100,India",
    "AddrWithPluck": "Bangalore,Karnataka,560100,India",
    "miles": 49.00,
    "DateofJoin": "15-Nov-2021"
  }
]
*/