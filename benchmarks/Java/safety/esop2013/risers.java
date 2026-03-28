/*
let risers m =
  match m with
    [] -> []
    | x::etc1 ->  match etc1 with 
                   [] -> [[x]]
                 | y::etc -> if x<=y then risersThen x (risers (y::etc))
                             else risersElse x (risers (y::etc))
and risersThen x l =
  match l with
    nil -> fail()
  | s::ss -> (x::s)::ss
and risersElse x l =
  match l with
    nil -> fail()
  | s::ss -> [x]::(s::ss)

let main() = 
  let m = nondet_list() in
    risers m
*/

class Nat extends Object {
    Nat() {super();}
    List leq(Nat y, List etc) { fail; }
}
class Z extends Nat {
    Z() {super();}
    List leq(Nat y, List etc) {
	return new Cons(y,etc).risers().risersThen(x); 
    }
    List leq2(Nat px, List etc) {
	return new Cons(this,etc).risers().risersElse(new S(px));
    }
}
class S extends Nat {
    Nat p;
    S() { super(); this.p = p; }
    List leq(Nat y, List etc) { 
	return y.leq2(p,etc);
    }
    List leq2(Nat px, List etc) {
        return px.leq(p,etc);
    }
}

class List extends Object {
    List() {super();}
}

class Nil extends List {
    Nil() {super();}
    List risers() {
	return new Nil();
    }
    List risersThen(Nat x) { fail; }
    List risersElse(Nat x) { fail; }
    List risersAux(Nat x) {
	return new Cons(new Cons(x,new Nil()), new Nil());
    }
}
class Cons extends List {
    Object hd; List tl;
    Cons(Object hd, List tl) { super(); this.hd = hd; this.tl = tl; }

    List risers() {
	return tl.risersAux(hd);
    }
    List risersAux(Nat x) {
	return x.leq(hd,tl);
    }
    List risersThen(Nat x) {
	return new Cons(new Cons(x,hd), tl);
    }
    List risersElse(Nat x) {
	return new Cons(new Cons(x, new Nil()), this);
    }
}

class Main extends Object {
    Main() { super(); }
    List ndList() {
	 if_ then return new Nil()
	 else return new Cons(this.ndNat() , this.ndList());
    }
    Nat ndNat() {
	if_ then return new Z()
	else return new S(this.ndNat()); 
    }
}
main(){
    return 
	new Main().ndList().risers();
}
