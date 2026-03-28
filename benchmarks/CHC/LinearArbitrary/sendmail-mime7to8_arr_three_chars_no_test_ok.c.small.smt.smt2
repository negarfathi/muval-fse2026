(set-logic HORN)

(declare-fun |main@.lr.ph10| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_15| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int ) Bool)
(declare-fun |main@_29| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_24| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_34| ( Int Int Int Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) ) 
    (=>
      (and
        (main@entry N)
        (and (= D (= C (- 1)))
     (= F (= E (- 1)))
     (= H (= G 0))
     (= J (= I 0))
     (= L (not (<= R 0)))
     (= P (= O 0))
     (= K N)
     (= M N)
     (= Q 0)
     (= B true)
     (= D true)
     (= F true)
     (= H true)
     (= J true)
     (= L true)
     (= P true)
     (= B (= A 0)))
      )
      (main@._crit_edge Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@entry L)
        (and (= D (= N 0))
     (= J (= I 0))
     (= A (= Q 0))
     (= C (= O (- 1)))
     (= E (= M 0))
     (= G (not (<= K 0)))
     (= F L)
     (= H L)
     (= B true)
     (= D true)
     (not J)
     (= A true)
     (= C true)
     (= E true)
     (= G true)
     (= B (= P (- 1))))
      )
      (main@.lr.ph K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph D E F I J K L)
        (and (= A E) (= G 0) (= H (+ (- 1) D)) (= C true) (= C (= B 0)))
      )
      (main@.lr.ph10 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph L H A B C D E)
        (and (= F (+ (- 1) L)) (= G H) (= K 0) (not J) (= J (= I 0)))
      )
      (main@._crit_edge K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_15 E F G D I J K L M)
        (and (= A F) (= H D) (= C true) (= C (= B G)))
      )
      (main@.lr.ph10 E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_15 M G I K A B C D E)
        (and (= F G) (= L K) (not J) (= J (= H I)))
      )
      (main@._crit_edge L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph10 D E F G H I J K L)
        (and (= A E) (= C true) (= C (= B L)))
      )
      (main@_22 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph10 M G A K B C D E I)
        (and (= F G) (= L K) (not J) (= J (= H I)))
      )
      (main@._crit_edge L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_22 B C D E F G H I J)
        (and (= A true) (= A (not (<= B E))))
      )
      (main@_24 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_22 I A B H C D E F G)
        (and (not J) (= J (not (<= I H))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_24 G H I A J K M N O)
        (and (= B (not (<= J C)))
     (= E (not (<= G L)))
     (= F (and E D))
     (= C (+ 1 A))
     (= L (ite B C 0))
     (= F true)
     (= D (not (<= L N))))
      )
      (main@_29 G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (main@_24 L A B F G C D J E)
        (and (= O (and M N))
     (= H (not (<= G I)))
     (= M (not (<= K J)))
     (= I (+ 1 F))
     (= K (ite H I 0))
     (not O)
     (= N (not (<= L K))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_29 G H I K L A M N O)
        (and (= B (not (<= K C)))
     (= E (not (<= G J)))
     (= F (and E D))
     (= C (+ 1 A))
     (= J (ite B C 0))
     (= F true)
     (= D (not (<= J M))))
      )
      (main@_34 G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (main@_29 L A B G C F J D E)
        (and (= O (and M N))
     (= H (not (<= G I)))
     (= M (not (<= K J)))
     (= I (+ 1 F))
     (= K (ite H I 0))
     (not O)
     (= N (not (<= L K))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_34 P J A E F L B C D)
        (and (= G (not (<= F H)))
     (= H (+ 1 E))
     (= N (ite G H 0))
     (= I J)
     (= O N)
     (= M true)
     (= M (= K L)))
      )
      (main@._crit_edge O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_34 G H I A K L M N O)
        (and (= F (= E L))
     (= C (+ 1 A))
     (= D H)
     (= J (ite B C 0))
     (not F)
     (= B (not (<= K C))))
      )
      (main@_15 G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@._crit_edge A B)
        (and (= E (or C D)) (= C (not (<= 1 A))) (not E) (= D (not (<= B A))))
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
