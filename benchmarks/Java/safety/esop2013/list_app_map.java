class List extends Object {
    List() { super(); }
    List append(List o) { return this.append(o); }
    List map(Fun f){ return this.map(f); }
}
class Nil extends Object {
    Nil() { super(); }
    List append(List o) { return o; }
    List map(Fun f){ return new Nil(); }
}
class Cons extends Object {
    Object hd;  List tl;
    Cons(Object hd, List tl) { super(); this.hd = hd; this.tl = tl; }
    List append(List o) { return new Cons(this.hd, this.tl.append(o)); }
    List map(Fun x){ return new Cons(x.f(this.hd.toNat()), this.tl.map(x)); }
}
class Nat extends Object {
    Nat() { super(); }
    Nat toNat() { return this; }
    Nat add(Nat x) { return this.add(x); }
}
class Z extends Nat {
    Z() { super (); }
    Nat add(Nat x) { return x; }
}
class S extends Nat {
    Nat p;
    S(Nat p) { super(); this.p = p; }
    Nat add(Nat x) { return new S(this.p.add(x)); }
}
class Fun extends Object {
    Fun() { super(); }
    Nat f(Nat b) { return b.add(b); }
}
class Main extends Object {
    Main() { super(); }
    List loop_app_map(List l) {
	return this.loop_app_map(l.append(l).map(new Fun())); 
    }
}
main(){
    return new Main().loop_app_map(new Cons(new S(new Z()), new Nil()));
}

