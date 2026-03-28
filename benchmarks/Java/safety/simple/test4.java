class A extends Object {
  Object f() { assert false; }
  Object g() { return this.f(); }
  A() { super(); }
}

class B extends A {
  Object f() { return new B(); }
  B() { super(); }
}

main() {
  return new B().g();
}

