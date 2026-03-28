(set-logic HORN)

(declare-fun |repeat@_br3| ( Int ) Bool)
(declare-fun |repeat| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |repeat@_4| ( Int ) Bool)
(declare-fun |repeat@_tail| ( Int ) Bool)
(declare-fun |main@entry.split| ( ) Bool)
(declare-fun |repeat@UnifiedReturnBlock| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |repeat@UnifiedReturnBlock.split| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (repeat v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (repeat v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (repeat v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (repeat@_tail A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (repeat@_tail B)
        (and (= A true) (= A (= B 0)))
      )
      (repeat@_br3 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (repeat@_tail B)
        (and (not A) (= A (= B 0)))
      )
      (repeat@_4 B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Bool) (v_6 Bool) (v_7 Bool) ) 
    (=>
      (and
        (repeat@_4 E)
        (repeat v_5 v_6 v_7 A B)
        (and (= v_5 true)
     (= v_6 false)
     (= v_7 false)
     (= C (+ 1 B))
     (= D C)
     (= A (+ (- 1) E)))
      )
      (repeat@UnifiedReturnBlock D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (repeat@_br3 B)
        (= A 0)
      )
      (repeat@UnifiedReturnBlock A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (repeat@UnifiedReturnBlock A B)
        true
      )
      (repeat@UnifiedReturnBlock.split A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (repeat@UnifiedReturnBlock.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (repeat v_2 v_3 v_4 A B)
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
        (repeat v_5 v_6 v_7 D C)
        (and (= v_5 true) (= v_6 false) (= v_7 false) (= A B) (not E) (= E (= C D)))
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
