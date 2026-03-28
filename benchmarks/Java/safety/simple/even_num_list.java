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
    List mk_even_num_list(Int n) {
        return if n = 0 then new Cons(int_ * 2, new Nil()) else new Cons(int_ * 2, this.mk_even_num_list(n-1));
    }
}

main(){
    assert new Main().mk_even_num_list(2).contain(1);
}
