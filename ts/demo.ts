declare function require(name: string);
require('source-map-support').install();
class Foo {
	constructor() {
		this.bar();
	}
	bar() { throw new Error('this is demo'); }
}
new Foo();