class List extends Object {
  List() {
    super();
  }
  Object last() {
    return new A();
  }
  Object f() {
    assert false;
  }
}

class Cons extends List {
  Object hd;
  List tl;
  Cons(Object hd, List tl) {
    super(); this.hd = hd; this.tl = tl;
  }
  Object last() {
    return this.tl.last();
  }
}

class Nil extends List {
  Nil() {
    super();
  }
  Object last() {
    return this;
  }
  Object f() {
    return new List();
  }
}

class A extends Object {
  A() {
    super();
  }
}

main() {
  return (new Cons(new A(), new Nil()).last()).f();
}
