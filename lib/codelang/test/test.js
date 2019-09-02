class A {
    haha() {
        console.log(4444);
    }
}

class B extends A {
    foo() {
        super.haha();
    }
}

let b = new B()
console.log(b, "b")
b.foo();
