(set-logic HORN)

(declare-fun |main@verifier.error| ( Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph6| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= C (= B 0))
     (= F (= E 0))
     (= D H)
     (= G 0)
     (= J 0)
     (= A true)
     (= C true)
     (= F true)
     (= A (= I 0)))
      )
      (main@.preheader G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= E (= D 0))
     (= A (= G 0))
     (= C F)
     (= H 0)
     (= I 0)
     (= B true)
     (not E)
     (= A true)
     (= B (= J 0)))
      )
      (main@.lr.ph6 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader G C A F)
        (and (= B C) (= H 0) (= I F) (= E true) (= E (= D 0)))
      )
      (main@verifier.error G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader E H I D)
        (and (= A H) (= F 0) (= G D) (not C) (= C (= B 0)))
      )
      (main@.lr.ph E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph6 J K A B E)
        (and (= C J)
     (= H (+ 1 B))
     (= G (+ 1 A))
     (= I G)
     (= L H)
     (= F true)
     (= F (= D E)))
      )
      (main@.preheader I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph6 H I A B L)
        (and (= C H) (= F (+ 1 B)) (= G (+ 1 A)) (= J G) (= K F) (not E) (= E (= D L)))
      )
      (main@.lr.ph6 H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph J A B D F)
        (and (= C D)
     (= H (+ 1 A))
     (= I (+ (- 1) B))
     (= K H)
     (= L I)
     (= G true)
     (= G (= E F)))
      )
      (main@verifier.error J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph H A B K L)
        (and (= C K)
     (= F (+ (- 1) B))
     (= G (+ 1 A))
     (= I G)
     (= J F)
     (not E)
     (= E (= D L)))
      )
      (main@.lr.ph H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@verifier.error A B C)
        (and (= E (= C 0)) (= F (or E D)) (not F) (= D (not (= A B))))
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
