class Nat extends Object {
    Nat() { super(); }
    Boolean iseven() {
        assert false;
    }
}

class Z extends Nat {
    Z() { super(); }
    Boolean iseven() {
        return true;
    }
}

class S extends Nat {
    Nat n;
    S(Nat n) {
        super();
        this.n = n;
    }
    Boolean iseven(){
        return !this.n.iseven();
    }
}

main() {
    assert new S(new S(new Z())).iseven();
}
