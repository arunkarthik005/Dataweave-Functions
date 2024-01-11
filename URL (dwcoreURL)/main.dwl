%dw 2.0
import * from dw::core::URL
output application/json
---
{
"decodeURI" :
decodeURI('http://test/%20text%20to%20decode
%20/text'),
"encodeURI" : encodeURI("http://test/ text
to decode /text"),
"not_encoded":
encodeURI("http://:;,/?:@&=\$_-_.!~*'()"),
"parseURI": parseURI("http://test/ text to
decode /text"),
"parseURI_encoded":
parseURI('http://test/%20text%20to%20decode%
20/text')
}
