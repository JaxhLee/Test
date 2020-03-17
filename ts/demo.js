"use strict";
require('source-map-support').install();
var Foo = /** @class */ (function () {
    function Foo() {
        this.bar();
    }
    Foo.prototype.bar = function () { throw new Error('this is demo'); };
    return Foo;
}());
new Foo();
//# sourceMappingURL=demo.js.map