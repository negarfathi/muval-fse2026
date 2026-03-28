(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Bool Int ) Bool)
(declare-fun |main@.preheader| ( Int Bool Int ) Bool)
(declare-fun |main@.lr.ph10| ( Int Bool Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.lr.ph6| ( Int Bool Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= E 0) (= F 0) (= D true) (= D (not (<= C 0))))
      )
      (main@.lr.ph10 C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= E 0) (not C) (= C (not (<= D 0))))
      )
      (main@verifier.error D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader1 B C A)
        (and (= E A) (= C true) (= D 0))
      )
      (main@.lr.ph6 B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@.preheader1 C A B)
        (and (not A) (= D B))
      )
      (main@verifier.error C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph10 F G A B)
        (and (= D (+ 1 A))
     (= E (+ 1 B))
     (= H D)
     (= I E)
     (= C true)
     (= C (not (<= F D))))
      )
      (main@.lr.ph10 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.lr.ph10 E F A B)
        (and (= C (+ 1 A)) (= G (+ 1 B)) (not D) (= D (not (<= E C))))
      )
      (main@.preheader1 E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader C A B)
        (and (= E B) (= A true) (= D 0))
      )
      (main@.lr.ph C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@.preheader C A B)
        (and (not A) (= D B))
      )
      (main@verifier.error C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph6 F G A B)
        (and (= D (+ 1 A))
     (= E (+ 1 B))
     (= H D)
     (= I E)
     (= C true)
     (= C (not (<= F D))))
      )
      (main@.lr.ph6 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.lr.ph6 E F A B)
        (and (= C (+ 1 A)) (= G (+ 1 B)) (not D) (= D (not (<= E C))))
      )
      (main@.preheader E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph F A B)
        (and (= D (+ 1 A))
     (= E (+ 1 B))
     (= G D)
     (= H E)
     (= C true)
     (= C (not (<= F D))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph F A B)
        (and (= E (+ 1 B)) (= C (+ 1 A)) (= G E) (not D) (= D (not (<= F C))))
      )
      (main@verifier.error F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C (* 3 A)) (= D true) (= D (not (<= C B))))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
