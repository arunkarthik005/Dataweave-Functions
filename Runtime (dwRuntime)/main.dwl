%dw 2.0
import * from dw::Runtime
output application/json
---
try(()->(payload.key as Number)) orElseTry (payload.key as Date) orElse fail("oops wrong key! please try
again")
//location(fail)
