class Nat extends Object {
    Nat() { super(); }
    Int to_int() {
        assert false;
    }
}

class Z extends Nat {
    Z() { super(); }
    Int to_int() {
        return 0;
    }
}

class S extends Nat {
    Nat nat;
    S(Nat nat) {
        super();
        this.nat = nat;
    }
    Int to_int(){
        return 1 + this.nat.to_int();
    }
}

class Main extends Object {
    Main() { super(); }
    Nat mk_n(Int n) {
        return if n = 0 then new Z() else new S(this.mk_n(n-1));
    }
}

main () {
    assert (new Main().mk_n(5).to_int() = 5);
}
