class List extends Object {
    List() { super(); }
    Boolean iseven(){ assert false; }
}
class Nil extends List {
    Nil() { super(); }
    Boolean iseven() { return true; }
}
class Cons extends List {
    Int hd;  List tl;
    Cons(Int hd, List tl) { super(); this.hd = hd; this.tl = tl; }
    Boolean iseven() { return !this.tl.iseven(); }
}
class Main extends Object {
    Main() { super(); }
    List mk_evenlist() {
        return if_ then new Nil() else new Cons(1, new Cons(2, this.mk_evenlist()));
    }
}
main(){
    assert new Main().mk_evenlist().iseven();
}
