(set-logic HORN)

(declare-fun |main@_37| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_30| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_34| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_52| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_41| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_58| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_64| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) ) 
    (=>
      (and
        (main@entry V)
        (and (= H (not (<= C1 1)))
     (= I (= Z C1))
     (= J (and I H))
     (= K (= Y A1))
     (= L (and K J))
     (= M (= B1 R))
     (= N (and M L))
     (= O (not (<= C1 R)))
     (= P (not N))
     (= Q (or P O))
     (= T (not (<= 2 S)))
     (= X (= W 0))
     (= C V)
     (= D V)
     (= E V)
     (= F V)
     (= G V)
     (= R (* 2 A1))
     (= S (+ R (* (- 1) C1)))
     (= U V)
     (= D1 Z)
     (= E1 A1)
     (= F1 Y)
     (= G1 B1)
     (= B true)
     (not Q)
     (= T true)
     (= X true)
     (= B (= A 0)))
      )
      (main@._crit_edge C1 D1 E1 F1 G1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) ) 
    (=>
      (and
        (main@entry B1)
        (and (= T (not (<= 2 S)))
     (= A (= C1 0))
     (= G (not (<= A1 1)))
     (= H (= Z A1))
     (= J (and H G))
     (= K (= I Y))
     (= L (and K J))
     (= M (= X R))
     (= N (and M L))
     (= O (not (<= A1 R)))
     (= P (not N))
     (= W (= V 0))
     (= S (+ R (* (- 1) A1)))
     (= B B1)
     (= C B1)
     (= D B1)
     (= E B1)
     (= F B1)
     (= R (* 2 Y))
     (= U B1)
     (= D1 X)
     (= E1 Y)
     (= F1 Z)
     (not Q)
     (= T true)
     (= A true)
     (not W)
     (= Q (or P O)))
      )
      (main@.lr.ph A1 B1 C1 D1 E1 F1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_30 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_25 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_25 H I J B F E)
        (and (= C (* 2 B))
     (= D (+ 1 B))
     (= G (+ 2 C))
     (= K D)
     (= L E)
     (= M F)
     (= N G)
     (= A true)
     (= A (not (<= E B))))
      )
      (main@_52 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_30 E F G A H I)
        (and (= B F) (= D true) (= D (= C 0)))
      )
      (main@_37 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_30 D E F G H I)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_34 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_34 F G H B D C)
        (and (= E (* 2 B)) (= I B) (= J C) (= K D) (= L E) (not A) (= A (not (<= B C))))
      )
      (main@_52 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_37 D E F G H)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_47 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_37 D E F G H)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_41 D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_41 I J K D F)
        (and (= C (and B A))
     (= B (not (<= D 1)))
     (= E (* 2 D))
     (= G (+ (- 1) D))
     (= H (+ (- 2) E))
     (= L G)
     (= M F)
     (= N G)
     (= O H)
     (= C true)
     (= A (not (<= F 1))))
      )
      (main@_52 I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_47 H I J F D)
        (and (= B (not (<= 2 F)))
     (= A (not (<= D 3)))
     (= G (* 2 F))
     (= K F)
     (= L E)
     (= M F)
     (= E (+ (- 1) D))
     (= N G)
     (= C true)
     (= C (and A B)))
      )
      (main@_52 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_52 J B D F G H I)
        (and (= A B) (= K G) (= L H) (= M F) (= N I) (= E true) (= E (= C D)))
      )
      (main@._crit_edge J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_52 H I J A G F E)
        (and (= B I) (= K E) (= L F) (= M G) (not D) (= D (= C J)))
      )
      (main@.lr.ph H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge E F G A C)
        (and (= B (* 2 A)) (= D true) (= D (= B C)))
      )
      (main@_58 E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@._crit_edge A B C D F)
        (and (= E (* 2 D)) (not G) (= G (= E F)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@_58 I J E)
        (and (= F (not (<= E 0)))
     (= H (and G F))
     (= G (and D C))
     (= D (not (<= B (- 2))))
     (= B (+ A J))
     (= A (* (- 2) E))
     (= H true)
     (= C (not (<= J 1))))
      )
      (main@_64 I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@_58 A D G)
        (and (= F (not (<= C (- 2))))
     (= H (not (<= G 0)))
     (= J (and H I))
     (= E (not (<= D 1)))
     (= B (* (- 2) G))
     (= C (+ B D))
     (not J)
     (= I (and E F)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_64 A B)
        (and (= C true) (= C (not (<= B A))))
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
