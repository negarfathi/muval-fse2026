(set-logic HORN)

(declare-fun |mult@_7| ( Int Int ) Bool)
(declare-fun |mult@_tail| ( Int Int ) Bool)
(declare-fun |mult@_11| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@entry.split| ( ) Bool)
(declare-fun |mult@UnifiedReturnBlock| ( Int Int Int ) Bool)
(declare-fun |mult@_5| ( Int Int ) Bool)
(declare-fun |mult| ( Bool Bool Bool Int Int Int ) Bool)
(declare-fun |mult@UnifiedReturnBlock.split| ( Int Int Int ) Bool)
(declare-fun |mult@_br4| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 true) (= v_4 true) (= v_5 true))
      )
      (mult v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 false) (= v_4 true) (= v_5 true))
      )
      (mult v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 false) (= v_4 false) (= v_5 false))
      )
      (mult v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (mult@_tail A B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (mult@_tail B C)
        (and (= A true) (= A (= B 0)))
      )
      (mult@_br4 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (mult@_tail B C)
        (and (not A) (= A (= B 0)))
      )
      (mult@_5 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (mult@_5 B C)
        (and (= A true) (= A (not (<= 0 B))))
      )
      (mult@_7 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (mult@_5 B C)
        (and (not A) (= A (not (<= 0 B))))
      )
      (mult@_11 B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (mult@_7 E F)
        (mult v_6 v_7 v_8 F A B)
        (and (= v_6 true)
     (= v_7 false)
     (= v_8 false)
     (= C (+ B (* (- 1) F)))
     (= D C)
     (= A (+ 1 E)))
      )
      (mult@UnifiedReturnBlock D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (mult@_11 E F)
        (mult v_6 v_7 v_8 F A B)
        (and (= v_6 true)
     (= v_7 false)
     (= v_8 false)
     (= C (+ B F))
     (= D C)
     (= A (+ (- 1) E)))
      )
      (mult@UnifiedReturnBlock D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (mult@_br4 B C)
        (= A 0)
      )
      (mult@UnifiedReturnBlock A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (mult@UnifiedReturnBlock A B C)
        true
      )
      (mult@UnifiedReturnBlock.split A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (mult@UnifiedReturnBlock.split C B A)
        (and (= v_3 true) (= v_4 false) (= v_5 false))
      )
      (mult v_3 v_4 v_5 A B C)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (v_11 Bool) (v_12 Bool) (v_13 Bool) (v_14 Bool) (v_15 Bool) (v_16 Bool) ) 
    (=>
      (and
        (main@entry C)
        (mult v_11 v_12 v_13 H G I)
        (mult v_14 v_15 v_16 H I J)
        (and (= v_11 true)
     (= v_12 false)
     (= v_13 false)
     (= v_14 true)
     (= v_15 false)
     (= v_16 false)
     (= E (not (<= G 0)))
     (= F (and E D))
     (= K (not (<= J (- 1))))
     (= A C)
     (= B C)
     (= F true)
     (not K)
     (= D (not (<= 0 H))))
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
