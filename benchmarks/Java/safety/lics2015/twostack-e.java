class Stack extends Object {
  Stack() { super();}
  Object push(Object o) { fail; }
  Object pop() { fail; }
  Object top() { fail;}
}
class Empty extends Stack {
  Empty() { super(); }
  Object push(Object o) { return push: new Cons(o, this); }
  Object pop() { fail; }
  Object top() { fail; }
}
class Cons extends Stack {
  Object hd;  Stack tl;
  Cons(Object hd, Stack tl) { super(); this.hd = hd; this.tl = tl; }
  Object push(Object o) { return push: new Cons(o, this); }
  Object pop() { return pop: tl; }
  Object top() { return hd; }
}
class String extends Object {
  String() { super(); }
}
class Queue extends Object {
  Stack in; Stack out;
  Queue(Stack in, Stack out) { super(); this.in = in; this.out = out; }
  Object enqueue(Object o) { return enqueue: new Queue(this.in.push(o), this.out); }
  Object move() {  return new Queue(this.in.pop(), this.out.push(this.in.top())); }
  Object refill() {  if_ then return this.move() else return this.refill(); }
  Object dequeue() { 
    if_ then return dequeue: this.refill() else return new Queue(this.in, this.out.pop());
  }
}
main() {
  return new Queue(new Empty(), new Empty()).enqueue(new String()).dequeue();
}
