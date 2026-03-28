class List extends Object {
    List() { super(); }
    List append(List o) { return this.append(o); }
}
class Nil extends Object {
    Nil() { super(); }
    List append(List o) { return o; }
}
class Cons extends Object {
    Object hd;  List tl;
    Cons(Object hd, List tl) { super(); this.hd = hd; this.tl = tl; }
    List append(List o) { return new Cons(this.hd, this.tl.append(o)); }
}
class Main extends Object {
    Main() { super(); }
    List loop_app(List l) { return this.loop_app(l.append(l)); }
}
main(){
    return new Main().loop_app(new Cons(new Nil(),new Nil()));
}

