class List extends Object {
    List() {
        super();
    }
    Boolean contain(Int key) {
        assert false;
    }
}

class Nil extends List {
    Nil() {
        super();
    }
    Boolean contain(Int key) {
        return false;
    }
}

class Cons extends List {
    Int hd;
    List tl;
    Cons(Int hd, List tl) {
        super();
        this.hd = hd;
        this.tl = tl;
    }
    Boolean contain(Int key) {
        return if key = hd then true else this.tl.contain(key);
    }
}

class Main extends Object {
    Main() { super(); }
    List mk_decreasing_list(Int n) {
        return if n = 0 then new Cons(n, new Nil()) else new Cons(n, this.mk_decreasing_list(n-1));
    }
}

main(){
    assert new Main().mk_decreasing_list(5).contain(0);
}
