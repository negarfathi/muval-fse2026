class Nat extends Object {
    Nat() {super();}
    Nat add(Nat n) { fail; } 
    Nat pred() { fail; }
    Nat rand(Nat n) { if_ then return n else return new S(this.rand(n)); }
}
class Z extends Nat {
    Z() {super();}
  Nat add(Nat n) { return n; }
}
class S extends Nat {
  Nat p;
    S(Nat p) { super(); this.p = p; }
    Nat add(Nat n) {
	return new S(this.p.add(n)); 
    }
    Nat pred() { return this.p; }
}
main () {
  return new Z().rand(new Z()).add(new S(new Z())).pred();
}
