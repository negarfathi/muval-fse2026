(set-logic HORN)

(declare-fun |main@postcall| ( Bool ) Bool)
(declare-fun |main@postcall.5| ( Bool ) Bool)
(declare-fun |main@postcall.7| ( Bool ) Bool)
(declare-fun |main@postcall.2| ( Bool ) Bool)
(declare-fun |main@postcall.6| ( Bool ) Bool)
(declare-fun |main@__VERIFIER_assert.split| ( ) Bool)
(declare-fun |main@postcall.4| ( Bool ) Bool)
(declare-fun |main@postcall.8| ( Bool ) Bool)
(declare-fun |main@__VERIFIER_assert| ( Bool ) Bool)
(declare-fun |main@postcall.3| ( Bool ) Bool)
(declare-fun |main@postcall.9| ( Bool ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@postcall.1| ( Bool ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@entry C)
        (and (= G (not E)) (= A C) (= B C) (= E true) (= F true) (= E (not (<= 3 D))))
      )
      (main@postcall G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@entry C)
        (and (= G (not E))
     (= H G)
     (= A C)
     (= B C)
     (= E true)
     (not F)
     (= E (not (<= 3 D))))
      )
      (main@__VERIFIER_assert H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall B)
        (and (not B) (= A true))
      )
      (main@postcall.1 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@__VERIFIER_assert A)
        (= A true)
      )
      main@__VERIFIER_assert.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall.1 B)
        (and (not B) (= A true))
      )
      (main@postcall.2 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.1 B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall.2 B)
        (and (not B) (= A true))
      )
      (main@postcall.3 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.2 B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall.3 B)
        (and (not B) (= A true))
      )
      (main@postcall.4 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.3 B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall.4 B)
        (and (not B) (= A true))
      )
      (main@postcall.5 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.4 B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall.5 B)
        (and (not B) (= A true))
      )
      (main@postcall.6 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.5 B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall.6 B)
        (and (not B) (= A true))
      )
      (main@postcall.7 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.6 B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall.7 B)
        (and (not B) (= A true))
      )
      (main@postcall.8 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.7 B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@postcall.8 B)
        (and (not B) (= A true))
      )
      (main@postcall.9 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.8 B)
        (and (not A) (not B) (= C B))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@postcall.9 A)
        (and (not B) (not C) (not A))
      )
      (main@__VERIFIER_assert C)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@__VERIFIER_assert.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
