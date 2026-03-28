(set-logic HORN)

(declare-fun |main@.lr.ph9| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.preheader| ( Int Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph6| ( Int Int Bool Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (not (<= J 0)))
     (= B D)
     (= C D)
     (= H 0)
     (= I 0)
     (= A true)
     (= E true)
     (= A (= G 1)))
      )
      (main@.lr.ph9 F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (not (<= E 0)))
     (= B D)
     (= C D)
     (= I 0)
     (= A true)
     (not F)
     (= A (= H 1)))
      )
      (main@.preheader1 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader1 B C A)
        (and (= E 0) (= F A) (= D true) (= D (not (<= B 0))))
      )
      (main@.lr.ph6 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) ) 
    (=>
      (and
        (main@.preheader1 B C A)
        (and (= E A) (not D) (= D (not (<= B 0))))
      )
      (main@.preheader B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph9 F G A B J)
        (and (= E (+ 1 A))
     (= D (+ 1 B))
     (= H E)
     (= I D)
     (= C true)
     (= C (not (<= J E))))
      )
      (main@.lr.ph9 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph9 G H A B D)
        (and (= C (+ 1 A)) (= F (+ 1 B)) (= I F) (not E) (= E (not (<= D C))))
      )
      (main@.preheader1 G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader F G A C)
        (and (= D 0) (= E C) (= A true) (= B true) (= B (not (<= C 0))))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@.preheader A B C D)
        (and (= C true) (not E) (= E (not (<= D 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph6 F G H A B)
        (and (= E (+ 1 B))
     (= D (+ 1 A))
     (= I D)
     (= J E)
     (= C true)
     (= C (not (<= F D))))
      )
      (main@.lr.ph6 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph6 F G H A B)
        (and (= C (+ 1 A)) (= E (+ 1 B)) (= I E) (not D) (= D (not (<= F C))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph A C I J)
        (and (= B (not (<= I E)))
     (= E (+ 1 A))
     (= F (+ (- 1) C))
     (= G E)
     (= H F)
     (= D true)
     (= B true)
     (= D (not (<= C J))))
      )
      (main@.lr.ph G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph A F D G)
        (and (= H (not (<= F G)))
     (= C (+ 1 A))
     (= B (+ (- 1) F))
     (= E true)
     (not H)
     (= E (not (<= D C))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error
        true
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
