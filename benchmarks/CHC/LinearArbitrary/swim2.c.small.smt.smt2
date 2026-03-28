(set-logic HORN)

(declare-fun |main@_43| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_29| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_36| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_50| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_26| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_53| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_40| ( Int Int Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@entry Q)
        (and (= H (= T Z))
     (= I (= G L))
     (= J (not (<= Z 0)))
     (= K (and I H))
     (= M (not (<= L 0)))
     (= N (and K J))
     (= O (and N M))
     (= S (= R 0))
     (= C Q)
     (= D Q)
     (= E Q)
     (= F Q)
     (= P Q)
     (= U 0)
     (= V T)
     (= W 0)
     (= X 0)
     (= Y 0)
     (= B true)
     (= O true)
     (= S true)
     (= B (= A 0)))
      )
      (main@verifier.error U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@entry T)
        (and (= G (= R S))
     (= L (not (<= K 0)))
     (= Q (= P 0))
     (= H (= F K))
     (= I (not (<= S 0)))
     (= J (and H G))
     (= M (and J I))
     (= N (and M L))
     (= B T)
     (= O T)
     (= C T)
     (= D T)
     (= E T)
     (= V 0)
     (= W 0)
     (= X 0)
     (= Y 0)
     (= Z R)
     (= A true)
     (not Q)
     (= N true)
     (= A (= U 0)))
      )
      (main@.lr.ph S T U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J K)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_22 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J K)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_19 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_19 H I J A F E D B)
        (and (= G (+ 1 A)) (= K C) (= L D) (= M E) (= N F) (= O G) (= C (+ (- 1) B)))
      )
      (main@_53 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_22 D E F G H I J K)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_29 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_22 D E F G H I J K)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_26 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_26 H I J A B E D C)
        (and (= G (+ (- 1) A)) (= K C) (= L D) (= M E) (= N F) (= O G) (= F (+ 1 B)))
      )
      (main@_53 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_29 D E F G H I J K)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_36 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_29 D E F G H I J K)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_33 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_33 H I J G A E D B)
        (and (= F (+ (- 1) A)) (= K C) (= L D) (= M E) (= N F) (= O G) (= C (+ 1 B)))
      )
      (main@_53 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_36 D E F G H I J K)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_43 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_36 D E F G H I J K)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_40 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_40 H I J G F A D B)
        (and (= E (+ 1 A)) (= K C) (= L D) (= M E) (= N F) (= O G) (= C (+ (- 1) B)))
      )
      (main@_53 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_43 D E F G H I J K)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_50 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_43 D E F G H I J K)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_47 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_47 H I J G F A B C)
        (and (= E (+ (- 1) A)) (= K C) (= L D) (= M E) (= N F) (= O G) (= D (+ 1 B)))
      )
      (main@_53 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_50 H I J G F E A B)
        (and (= C (+ 1 B)) (= K C) (= L D) (= M E) (= N F) (= O G) (= D (+ (- 1) A)))
      )
      (main@_53 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_53 P B D F G H I J)
        (and (= A B) (= K G) (= L F) (= M H) (= N I) (= O J) (= E true) (= E (= C D)))
      )
      (main@verifier.error K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_53 I J K H G F E D)
        (and (= A J) (= L D) (= M E) (= N F) (= O G) (= P H) (not C) (= C (= B K)))
      )
      (main@.lr.ph I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@verifier.error A B D F H J)
        (and (= C (+ A B))
     (= E (+ C D))
     (= G (+ E F))
     (= I (+ G H))
     (not K)
     (= K (= I J)))
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
