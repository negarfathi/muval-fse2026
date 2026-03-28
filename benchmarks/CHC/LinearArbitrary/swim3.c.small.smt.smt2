(set-logic HORN)

(declare-fun |main@_30| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_44| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_40| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_26| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_23| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_37| ( Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@entry R)
        (and (= H (= G J))
     (= I (= U M))
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
     (= B true)
     (= P true)
     (= T true)
     (= B (= A 0)))
      )
      (main@verifier.error V W X Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Bool) (K Bool) (L Int) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@entry T)
        (and (= G (= F I))
     (= J (not (<= I 0)))
     (= M (not (<= L 0)))
     (= R (= Q 0))
     (= H (= S L))
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
     (= Y S)
     (= A true)
     (not R)
     (= O true)
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
      (main@_19 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph H I G F E D)
        (and (= A H) (= J D) (= K E) (= L F) (= M G) (not C) (= C (= B 0)))
      )
      (main@_47 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_19 D E F G H I)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_26 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_19 D E F G H I)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_23 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_23 G H A E D B)
        (and (= F (+ 1 A)) (= I C) (= J D) (= K E) (= L F) (= C (+ (- 1) B)))
      )
      (main@_47 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_26 D E F G H I)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_33 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_26 D E F G H I)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_30 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_30 G H A B D C)
        (and (= F (+ (- 1) A)) (= I C) (= J D) (= K E) (= L F) (= E (+ 1 B)))
      )
      (main@_47 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_33 D E F G H I)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_40 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_33 D E F G H I)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_37 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_37 G H F A B C)
        (and (= E (+ (- 1) A)) (= I C) (= J D) (= K E) (= L F) (= D (+ 1 B)))
      )
      (main@_47 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_40 H I G F E D)
        (and (= A H) (= J D) (= K E) (= L F) (= M G) (= C true) (= C (= B 0)))
      )
      (main@_47 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_40 D E F G H I)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_44 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_44 G H F E A B)
        (and (= D (+ (- 1) A)) (= I C) (= J D) (= K E) (= L F) (= C (+ 1 B)))
      )
      (main@_47 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_47 B D F G H I)
        (and (= A B) (= J G) (= K F) (= L H) (= M I) (= E true) (= E (= C D)))
      )
      (main@verifier.error J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_47 H I G F E D)
        (and (= A H) (= J D) (= K E) (= L F) (= M G) (not C) (= C (= B I)))
      )
      (main@.lr.ph H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@verifier.error A B D F)
        (and (= C (+ A B)) (= E (+ C D)) (= G (+ E F)) (not H) (= H (not (<= G 0))))
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
