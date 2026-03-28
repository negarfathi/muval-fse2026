(set-logic HORN)

(declare-fun |main@.lr.ph12| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph7| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit1| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= D (= C 0))
     (= H (= G 0))
     (= E F)
     (= I 10)
     (= J 10)
     (= B true)
     (= D true)
     (= H true)
     (= B (= A 0)))
      )
      (main@verifier.error I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= E (= D 0))
     (= B (= G 0))
     (= H 10)
     (= C F)
     (= I 10)
     (= A true)
     (not E)
     (= B true)
     (= A (= J 0)))
      )
      (main@.lr.ph12 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.loopexit1 C E G H A)
        (and (= B C) (= I H) (= J G) (= F true) (= F (= D E)))
      )
      (main@verifier.error I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.loopexit1 F G E D J)
        (and (= H D) (= A F) (= I E) (not C) (= C (= B G)))
      )
      (main@.lr.ph12 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph12 H I A B L)
        (and (= F (+ 1 B))
     (= J F)
     (= C H)
     (= G (+ 1 A))
     (= K G)
     (= E true)
     (= E (= D 0)))
      )
      (main@.loopexit1 H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph12 H I A B J)
        (and (= F (+ 1 A)) (= C H) (= G (+ 1 B)) (= K F) (= L G) (not E) (= E (= D 0)))
      )
      (main@.lr.ph7 H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.loopexit F G J D E)
        (and (= H D) (= A F) (= I E) (= C true) (= C (= B J)))
      )
      (main@.loopexit1 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.loopexit F G H E D)
        (and (= A F) (= I D) (= J E) (not C) (= C (= B H)))
      )
      (main@.lr.ph7 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph7 F G H B A)
        (and (= D (+ 2 B))
     (= E (+ 2 A))
     (= I E)
     (= J D)
     (= C true)
     (= C (not (<= B (- 2)))))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph7 F G H B A)
        (and (= D (+ 2 A))
     (= E (+ 2 B))
     (= I D)
     (= J E)
     (not C)
     (= C (not (<= B (- 2)))))
      )
      (main@.loopexit F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph F G H A B)
        (and (= D (+ (- 1) B))
     (= E (+ (- 1) A))
     (= I E)
     (= J D)
     (= C true)
     (= C (not (<= B 1))))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph F G H A B)
        (and (= D (+ (- 1) A))
     (= E (+ (- 1) B))
     (= I D)
     (= J E)
     (not C)
     (= C (not (<= B 1))))
      )
      (main@.loopexit F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C true) (= C (not (= A B))))
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
