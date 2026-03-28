(set-logic HORN)

(declare-fun |fib| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |main@entry.split| ( ) Bool)
(declare-fun |fib@_loop.bound| ( Int ) Bool)
(declare-fun |fib@tailrecurse._crit_edge| ( Int Int ) Bool)
(declare-fun |fib@tailrecurse._crit_edge.split| ( Int Int ) Bool)
(declare-fun |fib@tailrecurse| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (fib v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (fib v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (fib v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (fib@_loop.bound A)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (fib@_loop.bound E)
        (and (= C (not (<= 2 E))) (= D 1) (= B true) (= C true) (= B (= A 4)))
      )
      (fib@tailrecurse._crit_edge D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (fib@_loop.bound F)
        (and (= B (not (<= 2 F))) (= C F) (= D 1) (= A true) (not B) (= A (= E 4)))
      )
      (fib@tailrecurse C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (v_10 Bool) (v_11 Bool) (v_12 Bool) ) 
    (=>
      (and
        (fib@tailrecurse E D F J)
        (fib v_10 v_11 v_12 A C)
        (and (= v_10 true)
     (= v_11 false)
     (= v_12 false)
     (= A (+ (- 1) E))
     (= B (+ (- 2) E))
     (= H (+ C D))
     (= I H)
     (= G true)
     (= G (not (<= F E))))
      )
      (fib@tailrecurse._crit_edge I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (v_11 Bool) (v_12 Bool) (v_13 Bool) ) 
    (=>
      (and
        (fib@tailrecurse D C J K)
        (fib v_11 v_12 v_13 A B)
        (and (= v_11 true)
     (= v_12 false)
     (= v_13 false)
     (= A (+ (- 1) D))
     (= F (+ (- 2) D))
     (= H F)
     (= I G)
     (= G (+ B C))
     (not E)
     (= E (not (<= J D))))
      )
      (fib@tailrecurse H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (fib@tailrecurse._crit_edge A B)
        true
      )
      (fib@tailrecurse._crit_edge.split A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (fib@tailrecurse._crit_edge.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (fib v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (main@entry A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (v_5 Bool) (v_6 Bool) (v_7 Bool) ) 
    (=>
      (and
        (main@entry B)
        (fib v_5 v_6 v_7 C D)
        (and (= v_5 true)
     (= v_6 false)
     (= v_7 false)
     (= A B)
     (= E true)
     (= E (not (<= C D))))
      )
      main@entry.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@entry.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
