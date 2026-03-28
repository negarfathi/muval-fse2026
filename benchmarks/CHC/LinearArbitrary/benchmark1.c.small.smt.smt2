(set-logic HORN)

(declare-fun |main@.lr.ph6.split| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@.lr.ph6| ( Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph6.split.us| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry J G)
        (and (= D (= C 0))
     (= I (= H 0))
     (= E G)
     (= F G)
     (= L 0)
     (= M 0)
     (= B true)
     (= D true)
     (= I true)
     (= B (= A 0)))
      )
      (main@._crit_edge J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry G I)
        (and (= F (= E 0))
     (= B (= K 0))
     (= C I)
     (= D I)
     (= A true)
     (not F)
     (= B true)
     (= A (= J 0)))
      )
      (main@.lr.ph6 G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph6 C D I J A)
        (and (= E 0) (= G 0) (= H 0) (= F 0) (= B true) (= B (= D 0)))
      )
      (main@.lr.ph6.split.us C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph6 C D E A J)
        (and (= G 0) (= H 0) (= F 0) (= I 0) (not B) (= B (= D 0)))
      )
      (main@.lr.ph6.split C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph6.split.us N O A B C E H J)
        (and (= D (+ 1 A))
     (= F (+ 1 B))
     (= G H)
     (= L (+ C D))
     (= M (+ E F))
     (= P L)
     (= Q M)
     (= K true)
     (= K (= I J)))
      )
      (main@._crit_edge N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph6.split.us L M A B C D R S)
        (and (= E R)
     (= H (+ D K))
     (= J (+ 1 A))
     (= I (+ C J))
     (= K (+ 1 B))
     (= N J)
     (= P I)
     (= Q H)
     (= O K)
     (not G)
     (= G (= F S)))
      )
      (main@.lr.ph6.split.us L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph6.split O P I A B C D K)
        (and (= E (+ 1 B))
     (= G (+ 1 A))
     (= F (+ D E))
     (= H I)
     (= M (+ C G))
     (= N (+ F G))
     (= Q M)
     (= R N)
     (= L true)
     (= L (= J K)))
      )
      (main@._crit_edge O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph6.split M N O A B C D T)
        (and (= E (+ D L))
     (= F O)
     (= I (+ E K))
     (= K (+ 1 A))
     (= J (+ C K))
     (= L (+ 1 B))
     (= Q L)
     (= R J)
     (= P K)
     (= S I)
     (not H)
     (= H (= G T)))
      )
      (main@.lr.ph6.split M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Bool) ) 
    (=>
      (and
        (main@._crit_edge A B C F)
        (and (= G (= B 0))
     (= D (* (- 2) C))
     (= E (+ 2 D))
     (= H (+ E F))
     (= I (ite G 1 H))
     (= J true)
     (= K true)
     (= J (not (<= 0 I))))
      )
      (main@verifier.error K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge I A B E)
        (and (= F (= A 0))
     (= C (* (- 2) B))
     (= D (+ 2 C))
     (= G (+ D E))
     (= J 0)
     (= K (ite F 1 G))
     (not H)
     (= H (not (<= 0 K))))
      )
      (main@.lr.ph I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph B F G)
        (and (= D (= C 0))
     (= A B)
     (= E (ite D 2 1))
     (= I (+ E F))
     (= H true)
     (= H (not (<= I G))))
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
