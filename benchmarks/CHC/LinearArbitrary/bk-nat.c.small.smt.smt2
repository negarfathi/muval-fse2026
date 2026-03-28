(set-logic HORN)

(declare-fun |main@_28| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_44| ( Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_34| ( Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@_36| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_24| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@entry O)
        (and (= G (= S 0))
     (= H (= R 0))
     (= I (= T 0))
     (= J (and H G))
     (= K (not (<= U 0)))
     (= L (and J I))
     (= M (and L K))
     (= Q (= P 0))
     (= C O)
     (= D O)
     (= E O)
     (= F O)
     (= N O)
     (= V U)
     (= W T)
     (= X R)
     (= Y S)
     (= B true)
     (= M true)
     (= Q true)
     (= B (= A 0)))
      )
      (main@._crit_edge V W X Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@entry T)
        (and (= F (= R 0))
     (= O (= N 0))
     (= G (= S 0))
     (= H (= Q 0))
     (= I (and G F))
     (= J (not (<= P 0)))
     (= K (and I H))
     (= L (and K J))
     (= B T)
     (= M T)
     (= C T)
     (= D T)
     (= E T)
     (= V P)
     (= W Q)
     (= X R)
     (= Y S)
     (= A true)
     (not O)
     (= L true)
     (= A (= U 0)))
      )
      (main@.lr.ph T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_24 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_19 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_19 I J D E B C)
        (and (= F (+ B C))
     (= G (+ 1 E))
     (= H (+ (- 1) D))
     (= K 0)
     (= L F)
     (= M G)
     (= N H)
     (= A true)
     (= A (not (<= D 0))))
      )
      (main@_36 I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_24 G H I A B C)
        (and (= D G) (= F true) (= F (= E 0)))
      )
      (main@_34 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_24 D E F G H I)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_28 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_28 J K F A B G)
        (and (= D (+ A B))
     (= E (+ (- 1) D))
     (= H (+ 1 G))
     (= I (+ E F))
     (= L H)
     (= M 0)
     (= N 0)
     (= O I)
     (= C true)
     (= C (not (<= D 0))))
      )
      (main@_36 J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_34 C D B)
        (and (= E 1) (= F 0) (= G 0) (= H B) (= A true) (= A (not (<= B 0))))
      )
      (main@_36 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_36 B D F G H I)
        (and (= A B) (= J I) (= K H) (= L F) (= M G) (= E true) (= E (= C D)))
      )
      (main@._crit_edge J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_36 H I G F E D)
        (and (= A H) (= J D) (= K E) (= L F) (= M G) (not C) (= C (= B I)))
      )
      (main@.lr.ph H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge I J K A)
        (and (= F (and E D))
     (= G (not (<= I (- 1))))
     (= D (and C B))
     (= C (not (<= A (- 1))))
     (= H (and G F))
     (= E (not (<= J (- 1))))
     (= H true)
     (= B (not (<= K (- 1)))))
      )
      (main@_44 I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (main@._crit_edge H E A B)
        (and (= J (not (<= H (- 1))))
     (= K (and J I))
     (= F (and C D))
     (= G (not (<= E (- 1))))
     (= D (not (<= B (- 1))))
     (= C (not (<= A (- 1))))
     (not K)
     (= I (and G F)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@_44 A B D)
        (and (= C (+ A B)) (= E (+ C D)) (not F) (= F (not (<= E 0))))
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
