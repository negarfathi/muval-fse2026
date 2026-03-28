(set-logic HORN)

(declare-fun |main@_1| ( Int Int Int ) Bool)
(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |main@_8| ( Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@_5| ( Int Int Int ) Bool)
(declare-fun |main@postcall| ( Int Int Bool Int ) Bool)
(declare-fun |main@precall| ( Bool ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        main@entry
        (and (= B 0) (= A 0))
      )
      (main@_1 A B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_1 D E F)
        (and (= C (not (<= B 0))) (= A true) (= C true) (= A (not (<= F D))))
      )
      (main@_5 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_1 E A G)
        (and (= D (not (<= C 0))) (= F 1) (= B true) (not D) (= B (not (<= G E))))
      )
      (main@_8 E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) ) 
    (=>
      (and
        (main@_5 B C E)
        (and (= A true) (= D (not (<= C 0))))
      )
      (main@postcall B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_5 A C B)
        (and (not D) (= E (not (<= C 0))))
      )
      (main@precall E)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@precall A)
        (= A true)
      )
      main@precall.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@postcall C B A E)
        (and (not A) (= D B))
      )
      (main@_8 C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_8 A C F)
        (and (= D B) (= E C) (= B (+ 1 A)))
      )
      (main@_1 D E F)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@precall.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
