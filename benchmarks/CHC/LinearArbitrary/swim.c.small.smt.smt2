(set-logic HORN)

(declare-fun |main@_40| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_37| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_23| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_44| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_26| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_30| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@entry Q)
        (and (= H (= G J))
     (= I (= T Y))
     (= K (not (<= J 0)))
     (= L (and I H))
     (= M (not (<= Y 0)))
     (= N (and L K))
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
     (= B true)
     (= O true)
     (= S true)
     (= B (= A 0)))
      )
      (main@verifier.error U V W X Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@entry T)
        (and (= G (= F I))
     (= J (not (<= I 0)))
     (= Q (= P 0))
     (= H (= R S))
     (= K (and H G))
     (= L (not (<= S 0)))
     (= M (and K J))
     (= N (and M L))
     (= B T)
     (= O T)
     (= C T)
     (= D T)
     (= E T)
     (= V 0)
     (= W 0)
     (= X 0)
     (= Y R)
     (= A true)
     (not Q)
     (= N true)
     (= A (= U 0)))
      )
      (main@.lr.ph S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_19 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph H I J G F E D)
        (and (= K D) (= L E) (= M F) (= A I) (= N G) (not C) (= C (= B 0)))
      )
      (main@_47 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_19 D E F G H I J)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_26 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_19 D E F G H I J)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_23 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_23 G H I A E D B)
        (and (= F (+ 1 A)) (= J C) (= K D) (= L E) (= M F) (= C (+ (- 1) B)))
      )
      (main@_47 G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_26 D E F G H I J)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_33 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_26 D E F G H I J)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_30 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_30 G H I A B D C)
        (and (= F (+ (- 1) A)) (= J C) (= K D) (= L E) (= M F) (= E (+ 1 B)))
      )
      (main@_47 G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_33 D E F G H I J)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_40 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_33 D E F G H I J)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_37 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_37 G H I F A B C)
        (and (= E (+ (- 1) A)) (= J C) (= K D) (= L E) (= M F) (= D (+ 1 B)))
      )
      (main@_47 G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_40 H I J G F E D)
        (and (= K D) (= L E) (= M F) (= A I) (= N G) (= C true) (= C (= B 0)))
      )
      (main@_47 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_40 D E F G H I J)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_44 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_44 G H I F E A B)
        (and (= D (+ (- 1) A)) (= J C) (= K D) (= L E) (= M F) (= C (+ 1 B)))
      )
      (main@_47 G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_47 N B D F G H I)
        (and (= J G) (= K F) (= L H) (= M I) (= A B) (= E true) (= E (= C D)))
      )
      (main@verifier.error J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_47 H I J G F E D)
        (and (= K D) (= L E) (= M F) (= A I) (= N G) (not C) (= C (= B J)))
      )
      (main@.lr.ph H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@verifier.error A B D F H)
        (and (= C (+ A B)) (= E (+ C D)) (= G (+ E F)) (not I) (= I (= G H)))
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
