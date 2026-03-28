(set-logic HORN)

(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph15| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_36| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_32| ( Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@_41| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_40| ( Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@._crit_edge16| ( Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph15._crit_edge| ( Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@_46| ( Int Int ) Bool)
(declare-fun |main@.lr.ph47| ( Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@._crit_edge.thread| ( Int Int ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph15.preheader| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_23| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_44| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Bool) (N Int) ) 
    (=>
      (and
        (main@entry J)
        (and (= D (= C 0))
     (= F (= E (- 1)))
     (= H (= G 0))
     (= K (not (<= N 0)))
     (= M (= L 0))
     (= I J)
     (= L (+ (- 1) N))
     (= B true)
     (= D true)
     (= F true)
     (= H true)
     (= K true)
     (= M true)
     (= B (= A (- 2))))
      )
      (main@._crit_edge16 N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry L)
        (and (= C (= J (- 1)))
     (= G (= I 0))
     (= B (= M 0))
     (= D (= N 0))
     (= F (not (<= H 0)))
     (= E L)
     (= I (+ (- 1) H))
     (= A true)
     (= C true)
     (not G)
     (= B true)
     (= D true)
     (= F true)
     (= A (= K (- 2))))
      )
      (main@.lr.ph15.preheader H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@.lr.ph15.preheader E F G H I J K)
        (and (= L D) (= D (not (<= E 0))) (= A I) (= M 0) (= C true) (= C (= B 0)))
      )
      (main@.lr.ph47 E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) ) 
    (=>
      (and
        (main@.lr.ph15.preheader F G H I J K A)
        (and (= E (not (<= F 0))) (= D (= C 0)) (= L 0) (= B J) (not D) (= M E))
      )
      (main@.lr.ph15._crit_edge F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@._crit_edge16 A)
        (and (not B) (= B (not (= A (- 2147483648)))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) ) 
    (=>
      (and
        (main@.lr.ph15 F G H I J K L E)
        (and (= D (not (<= F E))) (= M D) (= A J) (= N E) (= C true) (= C (= B L)))
      )
      (main@.lr.ph47 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@.lr.ph15 G H I J K L C E)
        (and (= D (= B C)) (= F (not (<= G E))) (= M E) (= A K) (not D) (= N F))
      )
      (main@.lr.ph15._crit_edge G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph47 B C D E F G H A I)
        (= A true)
      )
      (main@_19 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@.lr.ph47 A B C D E F G I H)
        (not I)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@_19 J H A B C D E F)
        (and (= G (+ 1 F)) (= I true) (= I (= G H)))
      )
      (main@._crit_edge16 J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_19 C D E F G H I A)
        (and (= J (+ 1 A)) (not B) (= B (= J D)))
      )
      (main@.lr.ph15 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph15._crit_edge B C D E F G H A)
        (= A true)
      )
      (main@.preheader B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph15._crit_edge A B C D E F G H)
        (not H)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader A J B C D E H)
        (and (= I H) (= F (+ 1 H)) (= G true) (= G (= F J)))
      )
      (main@._crit_edge.thread I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.preheader D E H I J K C)
        (and (= B (+ 1 C)) (= F C) (= G B) (not A) (= A (= B E)))
      )
      (main@.lr.ph D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_23 A J H B C D E)
        (and (= I H) (= F (+ 1 H)) (= G true) (= G (= F J)))
      )
      (main@._crit_edge.thread I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_23 D E C H I J K)
        (and (= B (+ 1 C)) (= F C) (= G B) (not A) (= A (= B E)))
      )
      (main@.lr.ph D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@._crit_edge.thread A B)
        (and (not C) (= C (not (<= B A))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph F G H I J L M N)
        (and (= E (= B 0)) (= A M) (= C M) (= E true) (= K (not (= D N))))
      )
      (main@_40 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph F G H I J L M N)
        (and (= E (= B 0)) (= A M) (= C M) (not E) (= K (not (= D N))))
      )
      (main@_32 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_32 C D E A F B G H I)
        (= B true)
      )
      (main@_33 C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_32 D E A C G B H I J)
        (and (not B) (= F C))
      )
      (main@_41 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_33 D E F G H I J)
        (and (= B (not (<= E F))) (= A (not (<= F H))) (= C true) (= C (and A B)))
      )
      (main@_36 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@_33 A G F B E C D)
        (and (= J (and I H)) (= I (not (<= G F))) (not J) (= H (not (<= F E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_36 D E A G H I J)
        (and (= C (+ 2 A)) (= F C) (not B) (= B (= C E)))
      )
      (main@_41 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@_40 A H I B C G D E F)
        (= G true)
      )
      (main@_44 H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_40 D E A C G B H I J)
        (and (not B) (= F C))
      )
      (main@_41 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_41 D E F G H I J)
        (and (= B (not (<= D F))) (= A (not (<= F G))) (= C true) (= C (and A B)))
      )
      (main@_23 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@_41 G A F E B C D)
        (and (= J (and I H)) (= I (not (<= G F))) (not J) (= H (not (<= F E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@_44 B C)
        (and (= A true) (= A (not (<= C (- 2)))))
      )
      (main@_46 B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_44 A B)
        (and (not C) (= C (not (<= B (- 2)))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_46 B A)
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
