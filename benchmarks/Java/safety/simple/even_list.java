class List extends Object {
    List() {
        super();
    }
    Boolean iseven() {
        assert false;
    }
}

class Nil extends List {
    Nil() {
        super();
    }
    Boolean iseven() {
        return true;
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
    Boolean iseven() {
        return !this.tl.iseven();
    }
}

main(){
    assert new Cons(1, new Cons(2, new Nil())).iseven();
}
