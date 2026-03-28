(set-logic HORN)

(declare-fun |fibonacci@_tail| ( Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@entry.split| ( ) Bool)
(declare-fun |fibonacci| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |fibonacci@_6| ( Int ) Bool)
(declare-fun |fibonacci@_.0| ( Int Int ) Bool)
(declare-fun |fibonacci@_4| ( Int ) Bool)
(declare-fun |fibonacci@UnifiedReturnBlock.split| ( Int Int ) Bool)
(declare-fun |fibonacci@UnifiedReturnBlock| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (fibonacci v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (fibonacci v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (fibonacci v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (fibonacci@_tail A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (fibonacci@_tail C)
        (and (= A (not (<= 1 C))) (= A true) (= B 0))
      )
      (fibonacci@_.0 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (fibonacci@_tail B)
        (and (not A) (= A (not (<= 1 B))))
      )
      (fibonacci@_4 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (fibonacci@_4 C)
        (and (= A (= C 1)) (= A true) (= B 1))
      )
      (fibonacci@_.0 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (fibonacci@_4 B)
        (and (not A) (= A (= B 1)))
      )
      (fibonacci@_6 B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) (v_10 Bool) (v_11 Bool) (v_12 Bool) ) 
    (=>
      (and
        (fibonacci@_6 G)
        (fibonacci v_7 v_8 v_9 A D)
        (fibonacci v_10 v_11 v_12 B C)
        (and (= v_7 true)
     (= v_8 false)
     (= v_9 false)
     (= v_10 true)
     (= v_11 false)
     (= v_12 false)
     (= B (+ (- 2) G))
     (= E (+ C D))
     (= F E)
     (= A (+ (- 1) G)))
      )
      (fibonacci@UnifiedReturnBlock F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (fibonacci@_.0 A C)
        (= B A)
      )
      (fibonacci@UnifiedReturnBlock B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (fibonacci@UnifiedReturnBlock A B)
        true
      )
      (fibonacci@UnifiedReturnBlock.split A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (fibonacci@UnifiedReturnBlock.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (fibonacci v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (v_4 Bool) (v_5 Bool) (v_6 Bool) ) 
    (=>
      (and
        main@entry
        (fibonacci v_4 v_5 v_6 A B)
        (and (= v_4 true)
     (= v_5 false)
     (= v_6 false)
     (= D (not (<= C B)))
     (= D true)
     (= C (+ (- 1) A)))
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
