"use strict";
// const o: o1 = {
// 	"k1": {
// 		"kk1": 1,
// 		"kk2": {
// 			"0": 2
// 		},
// 		"kk3": 3,
// 	}
// }
// type o = { [k: string]: { [k: string]: {} } }
// interface o1 { k1: { kk1: number, kk2: { 0: number }, kk3: number } }
// function Obj2Interface(obj: any) {
// 	let str = "interface o1 {"
// 	for (const k in obj) {
// 		const e = obj[k];
// 		if (typeof (e) == "object") {
// 			Obj2Interface(e)
// 		}
// 	}
// }
// Obj2Interface(o)
var a = [1, 2, 3];
var b = {};
console.log(a instanceof Array);
console.log(typeof (a));
console.log(typeof (b));
console.log(b instanceof Array);
delete a[0];
console.log(a);
//# sourceMappingURL=Main.js.map