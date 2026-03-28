(set-logic HORN)

(declare-fun |main@._crit_edge14.thread| ( Int Int ) Bool)
(declare-fun |main@.lr.ph13| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int ) Bool)
(declare-fun |main@._crit_edge14| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph19| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int ) Bool)
(declare-fun |main@.lr.ph7| ( Int Bool Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_37| ( Int ) Bool)
(declare-fun |main@._crit_edge8| ( Int Int Bool ) Bool)
(declare-fun |main@._crit_edge20| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry I)
        (and (= B (= K 0))
     (= C (= N 0))
     (= F (not (<= 0 H)))
     (= D I)
     (= E I)
     (= L G)
     (= M H)
     (= A true)
     (= B true)
     (= C true)
     (= F true)
     (= A (= J (- 1))))
      )
      (main@.lr.ph19 I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph19 F G H B A K)
        (and (= D (+ 1 B))
     (= E (+ B A))
     (= I D)
     (= J E)
     (= C true)
     (= C (not (<= K E))))
      )
      (main@.lr.ph19 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph19 G H I B A D)
        (and (= C (+ B A)) (= F (+ 1 B)) (= J F) (not E) (= E (not (<= D C))))
      )
      (main@._crit_edge20 G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge20 C D E A)
        (and (= B true) (= B (not (<= A 0))))
      )
      (main@.preheader C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@._crit_edge20 A B C D)
        (and (not E) (= E (not (<= D 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader E F A)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@._crit_edge14.thread E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader D E H)
        (and (= A D) (= F 1) (= G 0) (not C) (= C (= B 0)))
      )
      (main@.lr.ph13 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph13 H I J C F)
        (and (= B (+ 1 C)) (= A (+ C J)) (= D H) (= G true) (= G (= E F)))
      )
      (main@._crit_edge14 H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph13 H I A B L)
        (and (= C H) (= F (+ 1 B)) (= G (+ B A)) (= J G) (= K F) (not E) (= E (= D L)))
      )
      (main@.lr.ph13 H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@._crit_edge14 A B C)
        (and (= D true) (= D (= C 0)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@._crit_edge14 C D A)
        (and (not B) (= B (= A 0)))
      )
      (main@._crit_edge14.thread C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@._crit_edge14.thread J N)
        (and (= G (not (<= I 0)))
     (= C (not (<= H 0)))
     (= F (not (<= (- 1) E)))
     (= K G)
     (= A J)
     (= B J)
     (= E (+ H I))
     (= L I)
     (= M H)
     (= D true)
     (= F true)
     (= D (or C G)))
      )
      (main@.lr.ph7 J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Int) (M Bool) ) 
    (=>
      (and
        (main@._crit_edge14.thread K A)
        (and (= D (not (<= I 0)))
     (= H (not (<= (- 1) G)))
     (= E (or J D))
     (= J (not (<= F 0)))
     (= B K)
     (= C K)
     (= G (+ I F))
     (= L I)
     (not H)
     (= E true)
     (= M J))
      )
      (main@._crit_edge8 K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph7 L C A E P)
        (and (= D (not C))
     (= H (not (<= P G)))
     (= M I)
     (= B (ite C 1 0))
     (= F (ite D 1 0))
     (= G (+ J K))
     (= J (+ E F))
     (= K (+ A B))
     (= N K)
     (= O J)
     (= H true)
     (= I (not (<= K 0))))
      )
      (main@.lr.ph7 L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) (O Bool) ) 
    (=>
      (and
        (main@.lr.ph7 M C A E H)
        (and (= J (not (<= H G)))
     (= D (not C))
     (= L (not (<= I 0)))
     (= B (ite C 1 0))
     (= G (+ K I))
     (= F (ite D 1 0))
     (= I (+ A B))
     (= K (+ E F))
     (= N K)
     (not J)
     (= O L))
      )
      (main@._crit_edge8 M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) ) 
    (=>
      (and
        (main@._crit_edge8 E A B)
        (and (= C (not (<= A 0))) (= D true) (= D (or B C)))
      )
      (main@_37 E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@._crit_edge8 A B C)
        (and (= E (or C D)) (not E) (= D (not (<= B 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_37 C)
        (and (= A C) (= B C) (= G F) (= H E) (= D true) (= D (not (<= E F))))
      )
      (main@.lr.ph G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph C F)
        (and (= A (not (<= 0 C)))
     (= D (not (<= 0 F)))
     (= B (ite A 7 10))
     (= E (ite D (- 10) 3))
     (= H (+ E F))
     (= I (+ B C))
     (= J I)
     (= K H)
     (= G true)
     (= G (not (<= H I))))
      )
      (main@.lr.ph J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph C F)
        (and (= A (not (<= 0 C)))
     (= D (not (<= 0 F)))
     (= B (ite A 7 10))
     (= E (ite D (- 10) 3))
     (= H (+ B C))
     (= I (+ E F))
     (= J I)
     (= K H)
     (not G)
     (= G (not (<= I H))))
      )
      (main@._crit_edge J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@._crit_edge A B)
        (and (= C (+ 16 A)) (= D true) (= D (not (<= B C))))
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
