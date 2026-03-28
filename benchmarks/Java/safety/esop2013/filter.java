class Nat extends Object {
    Nat() { super(); }
    Nat toNat() { return this; }
}
class Z extends Nat {
    Z() { super (); }
    Object choice(Choice c) { return c.zero(); }
}
class S extends Nat {
    Nat p;
    S(Nat p) { super(); this.p = p; }
    Object choice(Choice c) { return c.nonZero(); }
    Nat pred() { return this.p; }
    S toS() { return this; }
}
class List extends Object {
    List() { super(); }
    List filter() { return this.filter(); }
    List map(Fun f){ return this.map(f); }
    List toList() { return this; }
}
class Nil extends List {
    Nil() { super(); }
    List filter() { return new Nil(); }
    List map(Fun f){ return new Nil(); }
}
class Cons extends List {
    Object hd;  List tl;
    Cons(Object hd, List tl) { super(); this.hd = hd; this.tl = tl; }
    List filter() { 
	return this.hd.toNat().choice(new Choice(this.hd, this.tl)).toList(); 
    }
    List map(Fun x){ return new Cons(x.f(this.hd.toNat()), this.tl.map(x)); }
}
class Fun extends Object {
    Fun() { super(); }
    Nat f(Nat l) { return l.toS().pred(); }
}
class Choice extends Object {
    Object o; List l;
    Choice(Object o, List l) { super(); this.o = o; this.l = l; }
    List zero() { return l.filter(); }
    List nonZero() { return new Cons(o, l.filter()); }
}
class Main extends Object {
    Main() { super(); }
    List ndList() {
	 if_ then return new Nil()
	 else return new Cons(this.ndNat() , this.ndList());
    }
    Nat ndNat() {
	if_ then return new Z()
	else return new S(this.ndNat()); 
    }
}
main(){
    return 
	new Main().ndList().filter().map(new Fun());
}
