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
  Object append(Object o) { return new Cons(hd, this.tl.append(lst), o); }
  Object enqueue(Object o) { return enqueue: new Cons(hd, this.tl.append(lst), o); }
  Object dequeue() { return dequeue: this.tl.append(lst); }
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
class Producer extends Object {
  Producer() { super(); }
  Object put(Queue q, Object o) { return q.enqueue(o); }
}
class Consumer extends Object {
  Consumer() { super(); }
  Object take(Queue q) { return q.dequeue(); }
}
class Main extends Object {
  Queue q;
  Main(Queue q) { super(); this.q = q; }
  Object schedule(Producer pro, Consumer cns) { 
    if_ then return cns.take(pro.put(this.q,new String())) else return this.schedule(pro,cns);
  }
}
main() {
  return new Main(new Empty()).schedule(new Producer(), new Consumer());
}
