(set-logic HORN)

(declare-fun |main@_22| ( Bool Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Bool Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@._crit_edge.loopexit| ( Bool Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Bool Int Int Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry R)
        (and (= K (not (<= L 0)))
     (= A R)
     (= B R)
     (= C R)
     (= D R)
     (= E R)
     (= F R)
     (= G (+ J I))
     (= N 0)
     (= P J)
     (= Q I)
     (= S 0)
     (= H true)
     (= K true)
     (= H (= G M)))
      )
      (main@.lr.ph K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= L (not (<= N 0)))
     (= E G)
     (= A G)
     (= B G)
     (= C G)
     (= D G)
     (= F G)
     (= K (+ H I))
     (= M 0)
     (= O K)
     (= J true)
     (not L)
     (= J (= K P)))
      )
      (main@._crit_edge L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        (main@.lr.ph P Q R J T B D W I)
        (and (= H (= G 0))
     (= K (not (<= Q N)))
     (= A (ite C (- 1) 1))
     (= E (ite C 1 (- 1)))
     (= M (+ A B))
     (= F W)
     (= L (+ D E))
     (= N (+ 1 J))
     (= O (ite H I J))
     (= S N)
     (= U M)
     (= V L)
     (= X O)
     (= K true)
     (= C (= J T)))
      )
      (main@.lr.ph P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph O P Q L A C E H K)
        (and (= D (= L A))
     (= N (not (<= P M)))
     (= B (ite D (- 1) 1))
     (= F (ite D 1 (- 1)))
     (= G H)
     (= M (+ 1 L))
     (= R (+ E F))
     (= S (+ B C))
     (= T (ite J K L))
     (not N)
     (= J (= I 0)))
      )
      (main@._crit_edge.loopexit O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@._crit_edge.loopexit E G I A B D)
        (and (= F D) (= H C) (= C (+ A B)))
      )
      (main@._crit_edge E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@._crit_edge D E F A B)
        (and (= C true) (= C (= A B)))
      )
      (main@_22 D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@._crit_edge A B C D E)
        (and (not F) (= F (= D E)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@_22 A B C)
        (and (= F (and D E))
     (= D (not (<= B (- 1))))
     (= A true)
     (not F)
     (= E (not (<= C B))))
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
