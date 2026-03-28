class Nat extends Object {
    Nat() { super(); }
    Nat toNat() { return this; }
    Nat add(Nat x) { return this.add(x); }
    Nat mul(Nat x) { return this.mul(x); }
}
class Z extends Nat {
    Z() { super (); }
    Nat add(Nat x) { return x; }
    Nat mul(Nat x) { return new Z(); }
    Nat assertmod0() {return this;}
}
class S extends Nat {
    Nat p;
    S(Nat p) { super(); this.p = p; }
    Nat add(Nat x) { return new S(this.p.add(x)); }
    Nat mul(Nat x) { return this.p.mul(x).add(x); }
    Nat assertmod0() {return p.assertmod2();}
    Nat assertmod1() {return p.assertmod0();}
    Nat assertmod2() {return p.assertmod1();}
}
class Rand extends Object {
    Rand() { super(); }
    Nat gen() {
        if_ then return new Z() else return new S(this.gen());
    }
}
main(){
    return 
	new Rand().gen().mul(new S(new S(new S (new Z())))).assertmod0();
}

