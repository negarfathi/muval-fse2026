class List extends Object {
    List() {
        super();
    }
    Int length() {
        assert false;
    }
}

class Nil extends List {
    Nil() {
        super();
    }
    Int length() {
        return 0;
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
    Int length() {
        return 1 + this.tl.length();
    }
}

class Main extends Object {
    Main() { super(); }
    List mk_n_list(Int n) {
        return if n = 0 then new Nil() else new Cons(n, this.mk_n_list(n-1));
    }
}

main(){
    assert (3 = new Main().mk_n_list(3).length());
}
