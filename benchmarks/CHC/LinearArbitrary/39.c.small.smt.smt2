(set-logic HORN)

(declare-fun |main@.preheader| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph9| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= C (= B 0))
     (= F (= E 0))
     (= D H)
     (= G 0)
     (= J 0)
     (= K 0)
     (= A true)
     (= C true)
     (= F true)
     (= A (= I 0)))
      )
      (main@.preheader G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= E (= D 0))
     (= A (= G 0))
     (= C F)
     (= H 0)
     (= I 0)
     (= J 0)
     (= B true)
     (not E)
     (= A true)
     (= B (= K 0)))
      )
      (main@.lr.ph9 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.preheader H C A F G)
        (and (= B C) (= I 0) (= J G) (= K F) (= E true) (= E (= D 0)))
      )
      (main@verifier.error H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.preheader F J K E D)
        (and (= A J) (= G 0) (= H D) (= I E) (not C) (= C (= B 0)))
      )
      (main@.lr.ph F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph9 L M A B C F)
        (and (= D L)
     (= J (+ 1 B))
     (= H (+ 1 A))
     (= I (+ (- 1) C))
     (= K H)
     (= N I)
     (= O J)
     (= G true)
     (= G (= E F)))
      )
      (main@.preheader K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph9 J K A B C O)
        (and (= D J)
     (= G (+ 1 B))
     (= H (+ (- 1) C))
     (= I (+ 1 A))
     (= L I)
     (= M G)
     (= N H)
     (not F)
     (= F (= E O)))
      )
      (main@.lr.ph9 J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph L A B C E G)
        (and (= D E)
     (= J (+ (- 1) B))
     (= I (+ 1 C))
     (= K (+ 1 A))
     (= M K)
     (= N J)
     (= O I)
     (= H true)
     (= H (= F G)))
      )
      (main@verifier.error L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph J A B C N O)
        (and (= D N)
     (= G (+ 1 A))
     (= H (+ (- 1) B))
     (= I (+ 1 C))
     (= K G)
     (= L H)
     (= M I)
     (not F)
     (= F (= E O)))
      )
      (main@.lr.ph J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@verifier.error A B C D)
        (and (= F (<= A B)) (= G (or F E)) (not G) (= E (not (<= C D))))
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
