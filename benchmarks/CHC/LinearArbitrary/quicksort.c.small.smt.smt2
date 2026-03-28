(set-logic HORN)

(declare-fun |main@quickSort| ( Int Int Int Int ) Bool)
(declare-fun |main@_31| ( Int Int Int Int Int Int ) Bool)
(declare-fun |quickSort@_tail| ( Int Int Int ) Bool)
(declare-fun |quickSort@tailrecurse._crit_edge| ( Int Int Int ) Bool)
(declare-fun |main@postcall4| ( Int Int Int Int Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |quickSort@.lr.ph.i| ( Int Int Int Int Int Int ) Bool)
(declare-fun |quickSort@_.1.i| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_18| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_43| ( Int Int Int Int Int Int ) Bool)
(declare-fun |quickSort@partition.exit| ( Int Int Int Int Int ) Bool)
(declare-fun |main@precall5| ( Int Int Int Int Int ) Bool)
(declare-fun |quickSort@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |quickSort@_11| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_21| ( Int Int Int Int Int ) Bool)
(declare-fun |main@precall5.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@_37| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_14| ( Int Int Int Int Int ) Bool)
(declare-fun |main@postcall7| ( Int Int Int Int Int ) Bool)
(declare-fun |main@partition.exit| ( Int Int Int Int Int ) Bool)
(declare-fun |quickSort| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph.i| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@postcall4.lr.ph| ( Int Int Int Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (quickSort v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (quickSort v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (quickSort v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        true
      )
      (quickSort@_tail A B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (quickSort@_tail C D E)
        (and (= A (not (<= C E))) (= A true) (= B E))
      )
      (quickSort@.lr.ph B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (quickSort@_tail B C D)
        (and (not A) (= A (not (<= B D))))
      )
      (quickSort@tailrecurse._crit_edge B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (quickSort@.lr.ph C D G H)
        (and (= B (+ (- 1) C)) (= E C) (= F B) (= A G))
      )
      (quickSort@.lr.ph.i C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (quickSort@.lr.ph.i F G H D I J)
        (and (= E D) (= C (= B 0)) (= C true) (= A I))
      )
      (quickSort@_.1.i E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (quickSort@.lr.ph.i D E F G H I)
        (and (= C (= B 0)) (not C) (= A H))
      )
      (quickSort@_11 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (quickSort@_11 J K L A M N)
        (and (= I H)
     (= B (not (<= K A)))
     (= C (>= H J))
     (= D (and C B))
     (= E (not (<= J L)))
     (= F (not (<= L K)))
     (= G (or F E))
     (= D true)
     (not G)
     (= H (+ 1 A)))
      )
      (quickSort@_.1.i I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (quickSort@_.1.i D E F A I J)
        (and (= G C) (= H D) (= B (not (<= F C))) (= B true) (= C (+ 1 A)))
      )
      (quickSort@.lr.ph.i E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (quickSort@_.1.i D E F A G H)
        (and (= C (not (<= F B))) (not C) (= B (+ 1 A)))
      )
      (quickSort@partition.exit D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (v_12 Bool) (v_13 Bool) (v_14 Bool) ) 
    (=>
      (and
        (quickSort@partition.exit F E J K L)
        (quickSort v_12 v_13 v_14 E F)
        (and (= v_12 true)
     (= v_13 false)
     (= v_14 false)
     (= H (+ 2 F))
     (= I H)
     (= B (>= F J))
     (= C (not (<= E A)))
     (= D (or C B))
     (= G (not (<= J H)))
     (not D)
     (= G true)
     (= A (+ 1 F)))
      )
      (quickSort@.lr.ph I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (v_11 Bool) (v_12 Bool) (v_13 Bool) ) 
    (=>
      (and
        (quickSort@partition.exit F E I J K)
        (quickSort v_11 v_12 v_13 E F)
        (and (= v_11 true)
     (= v_12 false)
     (= v_13 false)
     (= G (+ 2 F))
     (= B (>= F I))
     (= C (not (<= E A)))
     (= D (or C B))
     (= H (not (<= I G)))
     (not D)
     (not H)
     (= A (+ 1 F)))
      )
      (quickSort@tailrecurse._crit_edge I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (quickSort@tailrecurse._crit_edge C A B)
        (and (= v_3 true) (= v_4 false) (= v_5 false))
      )
      (quickSort v_3 v_4 v_5 B C)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= D H)
     (= G (+ (- 1) C))
     (= I 0)
     (= J (- 1))
     (= L G)
     (= K F)
     (= F (not (<= C 1)))
     (not B)
     (= F true)
     (= E true)
     (= A H))
      )
      (main@postcall4.lr.ph H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= E H)
     (= G (+ (- 1) C))
     (= I 0)
     (= J G)
     (= K (- 1))
     (= D (not (<= C 1)))
     (not B)
     (not F)
     (= D true)
     (= A H))
      )
      (main@precall5.preheader H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@postcall4.lr.ph C D F A B)
        (and (= G A) (= E B))
      )
      (main@postcall4 C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@precall5 F G E I J)
        (and (= H E) (= A (not (<= J G))) (= D (= C 0)) (= A true) (= D true) (= B F))
      )
      (main@_21 F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@precall5 E F G H I)
        (and (= A (not (<= I F))) (= D (= C 0)) (= A true) (not D) (= B E))
      )
      (main@_14 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_14 E F A G H)
        (and (= D (and B C))
     (= C (>= I G))
     (= B (not (<= H A)))
     (= D true)
     (= I (+ 1 A)))
      )
      (main@_18 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@_14 A B E D F)
        (and (= G (not (<= F E))) (= H (>= C D)) (= I (and H G)) (not I) (= C (+ 1 E)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@_18 A D C E B)
        (and (= G (not (<= D E))) (= H (or G F)) (= H true) (= F (not (<= C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_18 E F H I D)
        (and (= A (not (<= H F))) (= C (or B A)) (= B (not (<= F I))) (not C) (= G D))
      )
      (main@_21 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_21 D A B G H)
        (and (= E C) (= F B) (= C (+ 1 A)))
      )
      (main@precall5 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@quickSort E F D H)
        (and (= G D) (= I C) (= C (not (<= D F))) (= C true) (= B true) (= A E))
      )
      (main@postcall4 E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@quickSort G D E F)
        (and (= H D) (= I E) (= J F) (= A (not (<= E D))) (= A true) (not C) (= B G))
      )
      (main@precall5.preheader G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@precall5.preheader B E F A)
        (and (= D A) (= C E))
      )
      (main@precall5 B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@postcall4 B C D E A)
        (and (= G E) (= A true) (= F C))
      )
      (main@.lr.ph.i B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@postcall4 B C E F A)
        (and (not A) (= D F))
      )
      (main@partition.exit B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph.i E F G H I D)
        (and (= J D) (= C (= B 0)) (= C true) (= A E))
      )
      (main@_37 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.i D E F G H I)
        (and (= C (= B 0)) (not C) (= A D))
      )
      (main@_31 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_31 I J K L M A)
        (and (= N H)
     (= B (not (<= K A)))
     (= C (>= H J))
     (= D (and C B))
     (= E (not (<= J M)))
     (= F (not (<= M K)))
     (= G (or F E))
     (= D true)
     (not G)
     (= H (+ 1 A)))
      )
      (main@_37 I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_37 E F G H A D)
        (and (= I C) (= J D) (= B (not (<= G C))) (= B true) (= C (+ 1 A)))
      )
      (main@.lr.ph.i E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_37 E F H I A D)
        (and (= G D) (= C (not (<= H B))) (not C) (= B (+ 1 A)))
      )
      (main@partition.exit E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@partition.exit A D E F B)
        (and (= G (>= E F))
     (= H (not (<= D C)))
     (= I (or H G))
     (= I true)
     (= C (+ 1 E)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@partition.exit D E F G I)
        (and (= A (>= F G)) (= C (or B A)) (= B (not (<= E H))) (not C) (= H (+ 1 F)))
      )
      (main@_43 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_43 C D E F G A)
        (= B true)
      )
      (main@postcall7 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_43 D E F A B G)
        (not C)
      )
      (main@quickSort D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (v_14 Bool) (v_15 Bool) (v_16 Bool) ) 
    (=>
      (and
        (main@postcall7 J A B H F)
        (quickSort v_14 v_15 v_16 A B)
        (and (= v_14 true)
     (= v_15 false)
     (= v_16 false)
     (= I (+ 2 B))
     (= K I)
     (= L F)
     (= N H)
     (= M G)
     (= G (not (<= H I)))
     (not C)
     (= E true)
     (= G true)
     (= D J))
      )
      (main@postcall4.lr.ph J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (v_13 Bool) (v_14 Bool) (v_15 Bool) ) 
    (=>
      (and
        (main@postcall7 J A B H I)
        (quickSort v_13 v_14 v_15 A B)
        (and (= v_13 true)
     (= v_14 false)
     (= v_15 false)
     (= G (+ 2 B))
     (= K G)
     (= L H)
     (= M I)
     (= D (not (<= H G)))
     (not C)
     (= D true)
     (not F)
     (= E J))
      )
      (main@precall5.preheader J K L M)
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
