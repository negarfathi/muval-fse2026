(set-logic HORN)

(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph6| ( Int Int Int Int ) Bool)
(declare-fun |main@_8| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
(declare-fun |main@._crit_edge.loopexit| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry H E)
        (and (= G (= F 0))
     (= C E)
     (= D E)
     (= J 2)
     (= K 0)
     (= B true)
     (= G true)
     (= B (= A 0)))
      )
      (main@._crit_edge H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry F H)
        (and (= E (= D 0)) (= B H) (= C H) (= A true) (not E) (= A (= I 0)))
      )
      (main@.lr.ph6 F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph6 B C I J)
        (and (= F 0) (= D 0) (= E 0) (= G (ite A 1 0)) (= H 0) (= A (not (= C 0))))
      )
      (main@_8 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_8 N O A B C F H J L)
        (and (= D (+ 1 A))
     (= E (+ 1 B))
     (= G (+ E F))
     (= I J)
     (= P (+ C D))
     (= Q (+ G H))
     (= M true)
     (= M (= K L)))
      )
      (main@._crit_edge.loopexit N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_8 M N A B C R E T U)
        (and (= D (+ L R))
     (= F T)
     (= I (+ D E))
     (= J (+ C K))
     (= L (+ 1 B))
     (= Q J)
     (= K (+ 1 A))
     (= O K)
     (= P L)
     (= S I)
     (not H)
     (= H (= G U)))
      )
      (main@_8 M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge.loopexit D E A C)
        (and (= F B) (= G C) (= B (+ 2 A)))
      )
      (main@._crit_edge D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@._crit_edge A B C D)
        (and (= E (= B 0))
     (= F (+ C (* (- 1) D)))
     (= G (ite E 1 F))
     (= H true)
     (= I true)
     (= H (not (<= 0 G))))
      )
      (main@verifier.error I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@._crit_edge G A B C)
        (and (= F (not (<= 0 I)))
     (= E (+ B (* (- 1) C)))
     (= H 0)
     (= I (ite D 1 E))
     (not F)
     (= D (= A 0)))
      )
      (main@.lr.ph G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph B F G)
        (and (= H (not (<= I G)))
     (= E (ite D 2 1))
     (= A B)
     (= I (+ E F))
     (= H true)
     (= D (= C 0)))
      )
      (main@verifier.error.loopexit I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph H E J)
        (and (= F (not (<= G J)))
     (= A H)
     (= D (ite C 2 1))
     (= G (+ D E))
     (= I G)
     (not F)
     (= C (= B 0)))
      )
      (main@.lr.ph H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (not (<= 5 A))))
      )
      (main@verifier.error C)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (not A)
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
