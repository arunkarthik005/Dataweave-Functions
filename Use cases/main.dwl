%dw 2.0
output application/json
var a = payload.data filter ((item, index) -> item.Status == "Inactive")
var b = a filter ((item, index) -> item.Department == "Finance") map ((item, index) ->[
    {"Emp Name": item."Employee Details".Name,
    "EmpId":item."Employee Details".Id,
    "Age": item."Employee Details".Age,
    "Country":item."Country Name",
    "Department":item.Department,
    "StartYear":item."Start Year"},
    {"Emp Name": item."Employee Details".Name,
    "EmpId":item."Employee Details".Id,
    "Age": item."Employee Details".Age,
    "Country":item."Country Name","
    Department":item.Department,
    "EndYear":item."End Year"}
] )
var c = a filter ($.Department == "Marketing") map ((item, index) -> {"Emp Name": item."Employee Details".Name,"EmpId":item."Employee Details".Id,"Age": item."Employee Details".Age,"Country":item."Country Name","Department":item.Department})

var d = payload.data filter ($.Status != "Inactive") map ((item, index) ->
if(item.Department == "Finance"){"Emp Name": item."Employee Details".Name,"EmpId":item."Employee Details".Id,"Age": item."Employee Details".Age,"Country":item."Country Name","Department":item.Department,"StartYear":item."Start Year"} else  {"Emp Name": item."Employee Details".Name,"EmpId":item."Employee Details".Id,"Age": item."Employee Details".Age,"Country":item."Country Name","Department":item.Department} )
---
{ "Employee Data": (if(flatten(b) != null)(flatten(b)) else [{"Error": "Data not found"}])  ++ (if(c != null) c else [{"Error": "Data not found"}] ) ++ (if(d != null)d else [{"Error": "Data not found"}] ) -- [{"Error": "Data not found"}]}


// Requirements: 
// 1. if we have status as "Inactive" and from "Finance" department, it should create two objects. 1st with start year and 2nd with end year.
// 2. if we have status as "Inactive" and from "Marketing" department, it should create one object with all details w/o start or end year.
// 3. if we have status as "Active" and from "Finance" department, it should create one object with all details with start year.
// 4. if we have status as "Active" and from "Marketing" department, it should create one object with all details w/o start or end year.
// 5. all the data should be at same level i.e. in one array irrespective different structures.
