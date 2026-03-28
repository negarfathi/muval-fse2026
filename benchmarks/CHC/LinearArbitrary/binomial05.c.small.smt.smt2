(set-logic HORN)

(declare-fun |bin_without_checking_1089@._crit_edge| ( Int Int Int ) Bool)
(declare-fun |main@postcall7.us| ( Int Int Int Bool Int ) Bool)
(declare-fun |bin_without_checking_1089@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |bin_without_checking_1089| ( Bool Bool Bool Int Int Int ) Bool)
(declare-fun |main@bin_without_checking_1089.outer| ( Int Int Int ) Bool)
(declare-fun |bin_without_checking_1089@._crit_edge.split| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int ) Bool)
(declare-fun |main@postcall7.lr.ph| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_9| ( Int Int Int Int Int ) Bool)
(declare-fun |main@precall8| ( Int Int Int Int Int Bool ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |bin_without_checking_1089@_loop.bound| ( Int Int ) Bool)
(declare-fun |bin_without_checking_1089@bin_1030.exit.us| ( Int Int Int Int Int ) Bool)
(declare-fun |main@bin_1030.exit| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 true) (= v_4 true) (= v_5 true))
      )
      (bin_without_checking_1089 v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 false) (= v_4 true) (= v_5 true))
      )
      (bin_without_checking_1089 v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 false) (= v_4 false) (= v_5 false))
      )
      (bin_without_checking_1089 v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (bin_without_checking_1089@_loop.bound A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (bin_without_checking_1089@_loop.bound E F)
        (and (= C (= F 0)) (= D 1) (= B true) (= C true) (= B (= A 0)))
      )
      (bin_without_checking_1089@._crit_edge D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (bin_without_checking_1089@_loop.bound D E)
        (and (= B (= E 0)) (= A true) (not B) (= A (= C 0)))
      )
      (bin_without_checking_1089@.lr.ph C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (bin_without_checking_1089@.lr.ph G H I)
        (and (= C (not (<= I H)))
     (= D (and C B))
     (= A (+ (- 1) H))
     (= E I)
     (= F 1)
     (= D true)
     (= B (not (<= H 0))))
      )
      (bin_without_checking_1089@bin_1030.exit.us E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (bin_without_checking_1089@.lr.ph A G H)
        (and (= D (not (<= H G)))
     (= E (and D C))
     (= B (+ (- 1) G))
     (= F 1)
     (not E)
     (= C (not (<= G 0))))
      )
      (bin_without_checking_1089@._crit_edge F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (v_14 Bool) (v_15 Bool) (v_16 Bool) ) 
    (=>
      (and
        (bin_without_checking_1089@bin_1030.exit.us A D L M N)
        (bin_without_checking_1089 v_14 v_15 v_16 I B C)
        (and (= v_14 true)
     (= v_15 false)
     (= v_16 false)
     (= F (not (<= I M)))
     (= G (and F E))
     (= H (+ C D))
     (= J I)
     (= K H)
     (= I (+ (- 1) A))
     (= G true)
     (= E (not (= I L))))
      )
      (bin_without_checking_1089@bin_1030.exit.us J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (v_13 Bool) (v_14 Bool) (v_15 Bool) ) 
    (=>
      (and
        (bin_without_checking_1089@bin_1030.exit.us A D E L M)
        (bin_without_checking_1089 v_13 v_14 v_15 F B C)
        (and (= v_13 true)
     (= v_14 false)
     (= v_15 false)
     (= H (not (<= F L)))
     (= I (and H G))
     (= F (+ (- 1) A))
     (= J (+ C D))
     (= K J)
     (not I)
     (= G (not (= F E))))
      )
      (bin_without_checking_1089@._crit_edge K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (bin_without_checking_1089@._crit_edge A B C)
        true
      )
      (bin_without_checking_1089@._crit_edge.split A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (bin_without_checking_1089@._crit_edge.split C B A)
        (and (= v_3 true) (= v_4 false) (= v_5 false))
      )
      (bin_without_checking_1089 v_3 v_4 v_5 A B C)
    )
  )
)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (not (<= L (- 1))))
     (= G (not (<= K (- 1))))
     (= H (and G F))
     (= C D)
     (= B D)
     (= A true)
     (not E)
     (= H true)
     (not I)
     (= A (= J (- 1))))
      )
      (main@empty.loop J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_9 H I B A J)
        (and (= F (not (<= D J)))
     (= G (and F E))
     (= C (+ A (* (- 1) B)))
     (= D (+ I (* (- 1) H)))
     (= G true)
     (= E (not (<= C D))))
      )
      (main@bin_1030.exit H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@_9 D C B A G)
        (and (= I (not (<= F G)))
     (= J (and I H))
     (= F (+ C (* (- 1) D)))
     (= E (+ A (* (- 1) B)))
     (not J)
     (= H (not (<= E F))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@bin_1030.exit B C F)
        (and (= E C) (not A) (= D B))
      )
      (main@bin_without_checking_1089.outer D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@bin_without_checking_1089.outer F G H)
        (and (= A (= G 0))
     (= B (not (<= G F)))
     (= C (and B I))
     (= E (+ (- 1) F))
     (= J (+ (- 1) G))
     (not A)
     (= C true)
     (= D true)
     (= I (not (<= F 0))))
      )
      (main@postcall7.lr.ph E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (main@bin_without_checking_1089.outer I E K)
        (and (= L (not (<= I 0)))
     (= A (= E 0))
     (= C (and L B))
     (= F (+ (- 1) E))
     (= H F)
     (= G (+ (- 1) I))
     (= J E)
     (not A)
     (= C true)
     (not D)
     (= B (not (<= E I))))
      )
      (main@precall8 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@postcall7.lr.ph C D A E F B)
        (and (= F true) (= G B))
      )
      (main@postcall7.us C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (v_12 Bool) (v_13 Bool) (v_14 Bool) ) 
    (=>
      (and
        (main@postcall7.us H I J K E)
        (bin_without_checking_1089 v_12 v_13 v_14 E H A)
        (and (= v_12 true)
     (= v_13 false)
     (= v_14 false)
     (= D (not (<= E I)))
     (= G (+ (- 1) E))
     (= L G)
     (not B)
     (not C)
     (= D true)
     (= F true)
     (= C (= E 0)))
      )
      (main@postcall7.us H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (v_13 Bool) (v_14 Bool) (v_15 Bool) ) 
    (=>
      (and
        (main@postcall7.us H J L M F)
        (bin_without_checking_1089 v_13 v_14 v_15 F H A)
        (and (= v_13 true)
     (= v_14 false)
     (= v_15 false)
     (= D (not (<= F J)))
     (= G (+ (- 1) F))
     (= I G)
     (= K F)
     (not C)
     (not B)
     (= D true)
     (not E)
     (= C (= F 0)))
      )
      (main@precall8 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@precall8 D E A B F C)
        (= C true)
      )
      (main@bin_1030.exit D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@precall8 B C D E F A)
        (not A)
      )
      (main@_9 B C D E F)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop B C D)
        (= A true)
      )
      (main@empty.loop.body B C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop F B C)
        (and (= E C) (not A) (= D B))
      )
      (main@bin_without_checking_1089.outer D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C)
        true
      )
      (main@empty.loop A B C)
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
