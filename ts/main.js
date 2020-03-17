"use strict";
var sms = require('source-map-support');
sms.install();
// pos = sms.mapSourcePosition({ source: "d:\\Documents\\Test\\ts\\main.js", line: 10, column: 0 })
var pos = sms.mapSourcePosition({ source: "d:\\ts\\demo.js", line: 2, column: 0 });
console.log(pos);
console.log(pos);
//# sourceMappingURL=main.js.map