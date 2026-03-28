let euro = new Euro.c;;
let zero = euro 0.;;
let neg x = x#times (-1.);;
class account =
  object
    val mutable balance = zero
    method balance = balance
    method deposit x = balance <- balance # plus x
    method withdraw x =
      if x#leq balance then (balance <- balance # plus (neg x); x) else zero
  end
let c = new account in c # deposit (euro 100.); c # withdraw (euro 50.);;

