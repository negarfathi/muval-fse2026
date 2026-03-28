class A extends Object {
  Object f() { return this.g(); }
  Object g() { assert false; }
  Object h() { return new A(); }
  A() { super(); }
}

main() {
  return new A().f();
}

