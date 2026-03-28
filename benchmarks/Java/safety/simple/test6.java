class Base extends Object {
  Base() { super(); }
  Object f() { return this; }
}
class A extends Base {
  A() { super(); }
}

class B extends Base {
  Object x;
  B(Object x) { super(); this.x = x; }
}

main() {
/*  return new B(new A().f()).f();*/
  return new B(new A().f()).f();
}

