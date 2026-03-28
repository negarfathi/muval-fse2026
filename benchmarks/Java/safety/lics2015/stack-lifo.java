class Stack extends Object {
  Stack() { super();}
  Object push(Object o) { fail; }
  Object pop() { fail; }
  Object top() { fail; }
}
class Empty extends Stack {
  Empty() { super(); }
  Object push(Object o) { return push: new Cons(o,this); }
  Object pop() { fail; }
  Object top() { fail; }
}
class Cons extends Stack {
  Object hd;  Stack tl;
  Cons(Object hd, Stack tl) { super(); this.hd = hd; this.tl = tl; }
  Object push(Object o) { return push: new Cons(o,this); }
  Object pop() { return pop: tl; }
  Object top() { return hd; }
}
class String extends Object {
  String() { super(); }
  Object isString() { return this; }
  Object isInteger() { fail; }
}
class Integer extends Object {
  Integer() { super(); }
  Object isInteger() { return this; }
  Object isString() { fail; }
}
main() {
      return new Empty().push(new String()).push(new Integer()).push(new String()).pop().pop().top().isString();
}
