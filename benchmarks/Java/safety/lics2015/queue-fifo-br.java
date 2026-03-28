class Queue extends Object {
  Queue() { super(); }
  Object enqueue(Object o) { fail; }
  Object dequeue() { fail; }
  Object append(Object o) { fail; }
  Object first() { fail; }
  Object last() { fail; }
  Object middle() { fail; }
}
class Empty extends Queue {
  Empty() { super(); }
  Object enqueue(Object o) { return enqueue: new Single(o); }
  Object dequeue() { fail; }
  Object append(Object o) { return new Single(o); }
  Object first() { fail; }
  Object last() { fail; }
  Object middle() { fail; }
}
class Single extends Queue {
  Object hd;
  Single(Object hd) { super(); this.hd = hd; }
  Object enqueue(Object o) { return enqueue: new Cons(hd,new Empty(),o); }
  Object dequeue() { return dequeue: new Empty(); }
  Object append(Object o) { return new Cons(hd,new Empty(),o); }
  Object first() { return hd; }
  Object last() { return hd; }
  Object middle() { fail; }
}
class Cons extends Queue {
  Object hd; Queue tl; Object lst;
  Cons(Object hd, Queue tl, Object lst) { super(); this.hd = hd; this.tl = tl; this.lst = lst; }
  Object first() { return hd; }
  Object last() { return lst;  }
  Object middle() { return tl; }
  Object append(Object o) { return new Cons(hd, this.tl.append(this.lst), o); }
  Object enqueue(Object o) { return enqueue: new Cons(hd, this.tl.append(this.lst), o); }
  Object dequeue() { return dequeue: this.tl.append(this.lst); }
 }
class String extends Object {
  String() { super(); }
  Object isInteger() { fail; }
  Object isString() { return this; }
}
class Integer extends Object {
  Integer() { super(); }
  Object isInteger() { return this; }
  Object isString() { fail; }
}
main() {
  if_ then 
    return new Empty().enqueue(new String()).enqueue(new Integer()).dequeue().first().isInteger()
  else
    return new Empty().enqueue(new Integer()).enqueue(new String()).enqueue(new Integer()).dequeue().first().isString();
}
