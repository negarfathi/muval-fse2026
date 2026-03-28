(set-logic HORN)

(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@.preheader.preheader| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= C (= B 0))
     (= G (= F 0))
     (= D E)
     (= I 10)
     (= J 10)
     (= A true)
     (= C true)
     (= G true)
     (= A (= H 1)))
      )
      (main@.preheader.preheader H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry I)
        (and (= E (= D 0))
     (= A (= F 1))
     (= C I)
     (= G 10)
     (= H 10)
     (= B true)
     (not E)
     (= A true)
     (= B (= J 0)))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph J A B D F)
        (and (= C D)
     (= I (+ 1 B))
     (= H (+ 1 A))
     (= K H)
     (= L I)
     (= G true)
     (= G (= E F)))
      )
      (main@.preheader.preheader J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph H A B K L)
        (and (= C K) (= I F) (= F (+ 1 A)) (= G (+ 1 B)) (= J G) (not E) (= E (= D L)))
      )
      (main@.lr.ph H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader.preheader E A B)
        (and (= D B) (= C A))
      )
      (main@.preheader C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader B A H)
        (and (= E (+ (- 1) A))
     (= D (+ (- 1) B))
     (= F D)
     (= G E)
     (= C true)
     (= C (not (<= B H))))
      )
      (main@.preheader F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.preheader C B D)
        (and (= A (+ (- 1) C)) (= F (+ (- 1) B)) (not E) (= E (not (<= C D))))
      )
      (main@verifier.error F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (= A 0)))
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
