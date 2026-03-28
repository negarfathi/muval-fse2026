(set-logic HORN)

(declare-fun |main@_14| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge.loopexit| ( Int Int Bool ) Bool)
(declare-fun |main@._crit_edge| ( Int Bool ) Bool)
(declare-fun |main@.lr.ph| ( Int Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_23| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph15| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Bool Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Int) (S Bool) ) 
    (=>
      (and
        (main@entry L)
        (and (= E (not (<= G 0)))
     (= F (not (<= R 1)))
     (= H (not (<= G R)))
     (= I (and F E))
     (= J (and I H))
     (= O (= N 0))
     (= P (= M 0))
     (= Q (or P O))
     (= S (not (<= R 0)))
     (= C L)
     (= D L)
     (= K L)
     (= N (+ (- 2) R))
     (= B true)
     (= J true)
     (= Q true)
     (= B (= A 0)))
      )
      (main@._crit_edge R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry P)
        (and (= D (not (<= S 0)))
     (= G (and E D))
     (= K (= R 0))
     (= L (= J 0))
     (= M (or L K))
     (= E (not (<= N 1)))
     (= F (not (<= S N)))
     (= H (and F G))
     (= O (not (<= N 0)))
     (= B P)
     (= I P)
     (= C P)
     (= R (+ (- 2) N))
     (= A true)
     (not M)
     (= H true)
     (= A (= Q 0)))
      )
      (main@.lr.ph.preheader N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader B A E F G H)
        (and (= D 0) (= A true) (= C 0))
      )
      (main@.lr.ph15 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@.lr.ph.preheader A F B C D E)
        (not F)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Bool) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@_14 L M A J D F G B)
        (and (= I (= E F))
     (= K (or I H))
     (= N (not (<= L J)))
     (= C D)
     (= K true)
     (= H (= J G)))
      )
      (main@._crit_edge.loopexit L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_14 G A I J K L M N)
        (and (= H (not (<= G J)))
     (= D (= J M))
     (= E (= C L))
     (= B K)
     (not F)
     (= F (or E D)))
      )
      (main@.lr.ph G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph D A B C G H I J)
        (and (= F B) (= A true) (= E C))
      )
      (main@.lr.ph15 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph A H B C D E F G)
        (not H)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph15 C D A G H I J)
        (and (= E (+ 1 A)) (= F (+ 1 D)) (= B true) (= B (not (<= J E))))
      )
      (main@_14 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@.lr.ph15 A F G B C D I)
        (and (= H (+ 1 G)) (= E (+ 1 F)) (not J) (= J (not (<= I H))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge.loopexit E A B)
        (and (= D C) (= B true) (= C (+ 2 A)))
      )
      (main@_23 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@._crit_edge.loopexit A C D)
        (and (not D) (= B (+ 2 C)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@._crit_edge C A)
        (and (= A true) (= B 1))
      )
      (main@_23 B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@._crit_edge A B)
        (not B)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_23 A B)
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
