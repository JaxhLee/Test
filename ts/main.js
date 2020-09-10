"use strict";
var _a;
function TableRemove(t, condition) {
    if (t && condition && typeof (condition) == "function")
        if (t instanceof Array) {
            for (var i = 0; i < t.length; i++)
                if (condition(t[i], i)) {
                    t.splice(i, 1);
                    i--;
                }
        }
        else
            for (var k in t)
                if (condition(t[k], k))
                    delete t[k];
}
var t = (_a = {},
    _a[1] = 1,
    _a[2] = 2,
    _a[3] = 4,
    _a[4] = 1,
    _a);
TableRemove(t, function (v) { return v == 1; });
console.log(t);
var t2 = [1, 2, 3, 4, 1, 1];
TableRemove(t2, function (v) { return v == 1; });
console.log(t2);
//# sourceMappingURL=Main.js.map