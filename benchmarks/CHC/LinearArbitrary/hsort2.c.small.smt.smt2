(set-logic HORN)

(declare-fun |main@_30| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_41| ( Int Int Int Int ) Bool)
(declare-fun |main@_52| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int ) Bool)
(declare-fun |main@_37| ( Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_34| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) ) 
    (=>
      (and
        (main@entry X)
        (and (= H (not (<= T 1)))
     (= I (= B1 T))
     (= J (and I H))
     (= K (= A1 C1))
     (= M (and K J))
     (= N (= L S))
     (= O (and N M))
     (= P (not (<= T S)))
     (= Q (not O))
     (= R (or Q P))
     (= V (not (<= 2 U)))
     (= Z (= Y 0))
     (= C X)
     (= D X)
     (= E X)
     (= F X)
     (= G X)
     (= S (* 2 C1))
     (= U (+ S (* (- 1) T)))
     (= W X)
     (= D1 B1)
     (= E1 C1)
     (= F1 A1)
     (= B true)
     (not R)
     (= V true)
     (= Z true)
     (= B (= A 0)))
      )
      (main@verifier.error D1 E1 F1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) ) 
    (=>
      (and
        (main@entry B1)
        (and (= G (not (<= S 1)))
     (= L (and K J))
     (= U (not (<= 2 T)))
     (= X (= W 0))
     (= H (= A1 S))
     (= J (and H G))
     (= K (= I Z))
     (= M (= Y R))
     (= N (and M L))
     (= O (not (<= S R)))
     (= P (not N))
     (= Q (or P O))
     (= B B1)
     (= R (* 2 Z))
     (= V B1)
     (= C B1)
     (= D B1)
     (= E B1)
     (= F B1)
     (= T (+ R (* (- 1) S)))
     (= D1 Y)
     (= E1 Z)
     (= F1 A1)
     (= A true)
     (= U true)
     (not X)
     (not Q)
     (= A (= C1 0)))
      )
      (main@.lr.ph B1 C1 D1 E1 F1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_30 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_25 D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_25 H I B F E)
        (and (= C (* 2 B))
     (= G (+ 2 C))
     (= D (+ 1 B))
     (= J D)
     (= K E)
     (= L F)
     (= M G)
     (= A true)
     (= A (not (<= E B))))
      )
      (main@_52 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_30 E F A G H)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@_37 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_30 D E F G H)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_34 D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_34 F G B D C)
        (and (= E (* 2 B)) (= H B) (= I C) (= J D) (= K E) (not A) (= A (not (<= B C))))
      )
      (main@_52 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_37 D E F G)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_47 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_37 D E F G)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_41 D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_41 I J D F)
        (and (= C (and B A))
     (= B (not (<= D 1)))
     (= H (+ (- 2) E))
     (= E (* 2 D))
     (= G (+ (- 1) D))
     (= K G)
     (= L F)
     (= M G)
     (= N H)
     (= C true)
     (= A (not (<= F 1))))
      )
      (main@_52 I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_47 H I F D)
        (and (= C (and A B))
     (= A (not (<= D 3)))
     (= G (* 2 F))
     (= E (+ (- 1) D))
     (= J F)
     (= K E)
     (= L F)
     (= M G)
     (= C true)
     (= B (not (<= 2 F))))
      )
      (main@_52 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_52 C E G H I A)
        (and (= B C) (= J H) (= K I) (= L G) (= F true) (= F (= D E)))
      )
      (main@verifier.error J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_52 H I A G F E)
        (and (= B H) (= J E) (= K F) (= L G) (not D) (= D (= C I)))
      )
      (main@.lr.ph H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@verifier.error A B C)
        (and (= D (+ B C))
     (= E (* (- 2) D))
     (= F (* 3 A))
     (= G (+ E F))
     (not H)
     (= H (not (<= G (- 1)))))
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
