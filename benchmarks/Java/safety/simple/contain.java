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

main(){
    assert new Cons(1, new Cons(2, new Nil())).contain(2);
}
