(set-logic HORN)

(declare-fun |main@_36| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_40| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_26| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_53| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_50| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_43| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_29| ( Int Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@entry R)
        (and (= H (= U J))
     (= I (= G M))
     (= K (not (<= J 0)))
     (= L (and I H))
     (= N (not (<= M 0)))
     (= O (and L K))
     (= P (and O N))
     (= T (= S 0))
     (= C R)
     (= D R)
     (= E R)
     (= F R)
     (= Q R)
     (= V 0)
     (= W U)
     (= X 0)
     (= Y 0)
     (= Z 0)
     (= B true)
     (= P true)
     (= T true)
     (= B (= A 0)))
      )
      (main@verifier.error V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Bool) (K Bool) (L Int) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@entry T)
        (and (= G (= S I))
     (= J (not (<= I 0)))
     (= M (not (<= L 0)))
     (= R (= Q 0))
     (= H (= F L))
     (= K (and H G))
     (= N (and K J))
     (= O (and N M))
     (= B T)
     (= P T)
     (= C T)
     (= D T)
     (= E T)
     (= V 0)
     (= W 0)
     (= X 0)
     (= Y 0)
     (= Z S)
     (= A true)
     (not R)
     (= O true)
     (= A (= U 0)))
      )
      (main@.lr.ph T U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_22 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_19 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_19 H I A F E D B)
        (and (= G (+ 1 A)) (= J C) (= K D) (= L E) (= M F) (= N G) (= C (+ (- 1) B)))
      )
      (main@_53 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_22 D E F G H I J)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_29 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_22 D E F G H I J)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_26 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_26 H I A B E D C)
        (and (= G (+ (- 1) A)) (= J C) (= K D) (= L E) (= M F) (= N G) (= F (+ 1 B)))
      )
      (main@_53 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_29 D E F G H I J)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_36 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_29 D E F G H I J)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_33 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_33 H I G A E D B)
        (and (= F (+ (- 1) A)) (= J C) (= K D) (= L E) (= M F) (= N G) (= C (+ 1 B)))
      )
      (main@_53 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_36 D E F G H I J)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_43 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_36 D E F G H I J)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_40 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_40 H I G F A D B)
        (and (= E (+ 1 A)) (= J C) (= K D) (= L E) (= M F) (= N G) (= C (+ (- 1) B)))
      )
      (main@_53 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_43 D E F G H I J)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_50 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_43 D E F G H I J)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_47 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_47 H I G F A B C)
        (and (= E (+ (- 1) A)) (= J C) (= K D) (= L E) (= M F) (= N G) (= D (+ 1 B)))
      )
      (main@_53 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_50 H I G F E A B)
        (and (= C (+ 1 B)) (= J C) (= K D) (= L E) (= M F) (= N G) (= D (+ (- 1) A)))
      )
      (main@_53 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_53 B D F G H I J)
        (and (= A B) (= K G) (= L F) (= M H) (= N I) (= O J) (= E true) (= E (= C D)))
      )
      (main@verifier.error K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_53 I J H G F E D)
        (and (= A I) (= K D) (= L E) (= M F) (= N G) (= O H) (not C) (= C (= B J)))
      )
      (main@.lr.ph I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@verifier.error A B D F H)
        (and (= C (+ A B))
     (= E (+ C D))
     (= G (+ E F))
     (= I (+ G H))
     (not J)
     (= J (not (<= I 0))))
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
