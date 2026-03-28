(set-logic HORN)

(declare-fun |main@_44| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.thread| ( Int Int ) Bool)
(declare-fun |main@_26| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_14| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_29| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_37| ( Int Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_39| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_18| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_31| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_48| ( Int Int Bool ) Bool)
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
        (and (= D (= C 0))
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
      (main@.thread Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry L)
        (and (= B (= R 0))
     (= D (= P 0))
     (= J (= I 0))
     (= C (= Q (- 1)))
     (= E (= M 0))
     (= G (not (<= K 0)))
     (= F L)
     (= H L)
     (= N 0)
     (= O 0)
     (= A true)
     (= B true)
     (= D true)
     (not J)
     (= C true)
     (= E true)
     (= G true)
     (= A (= S 0)))
      )
      (main@.lr.ph K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J K L)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_33 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J K L)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_14 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_14 D E F G H I J K L)
        (and (= A E) (= C true) (= C (= B L)))
      )
      (main@_18 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_14 M G A K B C D E I)
        (and (= F G) (= L K) (not J) (= J (= H I)))
      )
      (main@.thread L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_18 D E F G H I J K L)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_22 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_18 F G H A B K L M N)
        (and (= C G) (= I 0) (= J 0) (not E) (= E (= D 0)))
      )
      (main@_44 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_22 D E F G H I J K L)
        (and (= A E) (= C true) (= C (= B K)))
      )
      (main@_26 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_22 M G A K B C D I E)
        (and (= F G) (= L K) (not J) (= J (= H I)))
      )
      (main@.thread L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_26 C D E F A G H J K)
        (and (= I (+ 1 A)) (= B true) (= B (not (<= C I))))
      )
      (main@_29 C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_26 L A B J G C D E F)
        (and (= H (+ 1 G)) (= K J) (not I) (= I (not (<= L H))))
      )
      (main@.thread K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_29 B C D E F G H I J)
        (and (= A true) (= A (not (<= B E))))
      )
      (main@_31 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_29 I A B H C D E F G)
        (and (not J) (= J (not (<= I H))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_31 D E F A I J B K L)
        (and (= G C) (= H B) (= C (+ 1 A)))
      )
      (main@_44 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_33 C D E F A G J K L)
        (and (= B (not (<= C H))) (= H (+ 1 A)) (= B true) (= I (not (<= F J))))
      )
      (main@_37 C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (main@_33 J A B K F C H D E)
        (and (= I (not (<= J G))) (= G (+ 1 F)) (not I) (= L (not (<= K H))))
      )
      (main@_48 J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_37 D E F G H I A J K L)
        (and (= B (not (<= D G))) (= C true) (= C (and B A)))
      )
      (main@_39 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) ) 
    (=>
      (and
        (main@_37 I A B H C D J E F G)
        (and (= L (and J K)) (not L) (= K (not (<= I H))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_39 G H I A L E M N O)
        (and (= B H) (= F (+ 1 A)) (= J F) (= K E) (= D true) (= D (= C L)))
      )
      (main@_44 G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_39 N H A F J B C D E)
        (and (= L (+ 1 F)) (= G H) (= M L) (not K) (= K (= I J)))
      )
      (main@.thread M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_44 M G I K A B C D E)
        (and (= F G) (= L K) (= J true) (= J (= H I)))
      )
      (main@.thread L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_44 F G H D E K L M N)
        (and (= A G) (= I D) (= J E) (not C) (= C (= B H)))
      )
      (main@.lr.ph F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@_48 D B A)
        (and (= A true) (= C B))
      )
      (main@.thread C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_48 A B C)
        (not C)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@.thread A B)
        (and (not C) (= C (not (<= B A))))
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
