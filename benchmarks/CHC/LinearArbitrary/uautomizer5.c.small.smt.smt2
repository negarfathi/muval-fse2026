(set-logic HORN)

(declare-fun |main@_21| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@_18| ( Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.outer| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@_15| ( Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_29| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@_31| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_11| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry H G)
        (and (= B (= I 0))
     (= C G)
     (= D G)
     (= E G)
     (= F G)
     (= A true)
     (= B true)
     (= A (= J (- 1))))
      )
      (main@empty.loop H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) ) 
    (=>
      (and
        (main@.outer E F A B C D K L)
        (and (= G B) (= H A) (= I C) (= J D) (= M (not (<= F 0))))
      )
      (main@_11 E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (main@_11 E F G H C I J K L)
        (and (= B (and L A)) (= D (= C 1)) (= B true) (= D true) (= A (not (<= G 0))))
      )
      (main@_15 E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (main@_11 D E F G H I J K L)
        (and (= A (not (<= F 0))) (= B (and L A)) (not C) (= B true) (= C (= H 1)))
      )
      (main@_21 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@_15 F G K D E L M N)
        (and (= A (not (<= D (- 1))))
     (= B (not (<= D K)))
     (= H D)
     (= I 1)
     (= J E)
     (= C true)
     (= C (and B A)))
      )
      (main@_25 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@_15 D E F G H I J K)
        (and (= A (not (<= G (- 1)))) (= C (and A B)) (not C) (= B (not (<= G F))))
      )
      (main@_18 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@_18 F G K D E L M N)
        (and (= A (not (<= E G)))
     (= B (not (<= E M)))
     (= H D)
     (= I 1)
     (= J E)
     (= C true)
     (= C (and B A)))
      )
      (main@_25 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (main@_18 A F B C G D H E)
        (and (= J (not (<= G H))) (= K (and J I)) (not K) (= I (not (<= G F))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) ) 
    (=>
      (and
        (main@_21 J K O C D F P Q R)
        (and (= A J)
     (= G (ite E C O))
     (= H (ite E D 1))
     (= I (ite E F K))
     (= L G)
     (= M H)
     (= N I)
     (= E (= B 0)))
      )
      (main@_25 J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_25 F G H I J A K L B)
        (and (= C F) (= E true) (= E (= D K)))
      )
      (main@_31 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (main@_25 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B J)))
      )
      (main@_29 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@_29 F G B D E A L M N)
        (and (= H C) (= I B) (= J D) (= K E) (= C (+ (- 1) A)))
      )
      (main@_11 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_31 H B C F G N O)
        (and (= D (+ (- 1) B)) (= I D) (= J C) (= K E) (= L F) (= M G) (= A H))
      )
      (main@.outer H I J K L M N O)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G H)
        (= A true)
      )
      (main@empty.loop.body B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@empty.loop F L M B C D E)
        (and (= H B) (= I D) (= J 0) (= K E) (not A) (= G C))
      )
      (main@.outer F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F G)
        true
      )
      (main@empty.loop A B C D E F G)
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
