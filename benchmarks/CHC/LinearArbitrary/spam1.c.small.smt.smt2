(set-logic HORN)

(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_18| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_12| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_14| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry.split.us| ( Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@_21| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph.us| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry.split.us.outer| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_28| ( Int Int Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry K)
        (and (= B (= J (- 1)))
     (= E (not (<= I 4)))
     (= C K)
     (= D K)
     (= G (+ (- 4) I))
     (= H 0)
     (= A true)
     (= B true)
     (= E true)
     (= A (= L (- 1))))
      )
      (main@entry.split.us.outer F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@entry.split.us.outer A B C D E F G)
        (= H (not (<= A C)))
      )
      (main@entry.split.us A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry.split.us C D B G H I J A)
        (and (= F B) (= A true) (= E 0))
      )
      (main@.lr.ph.us C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph.us B C D E F G I J)
        (and (= H (+ 1 E)) (= A true) (= A (not (<= B H))))
      )
      (main@_12 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph.us B C D E F G I J)
        (and (= H (+ 1 E)) (not A) (= A (not (<= B H))))
      )
      (main@_18 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_12 B C D E F G H I J)
        (and (= A true) (= A (not (<= E J))))
      )
      (main@_14 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_12 A B C H D E F G I)
        (and (not J) (= J (not (<= H I))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_14 E F G H I J A K L)
        (and (= B K) (= D true) (= D (= C 0)))
      )
      (main@_21 E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_14 D E F G H I J K L)
        (and (= A K) (not C) (= C (= B 0)))
      )
      (main@_18 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_18 I J F A K L E M N)
        (and (= C (not (<= K F)))
     (= D (and C B))
     (= H E)
     (= G F)
     (= D true)
     (= B (not (<= A L))))
      )
      (main@_28 G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) ) 
    (=>
      (and
        (main@_18 A B H F I G C D E)
        (and (= K (not (<= I H))) (= L (and K J)) (not L) (= J (not (<= F G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_21 E F G H I J K L)
        (and (= C (not (<= I A)))
     (= B (not (<= I G)))
     (= A (+ 1 G))
     (= D true)
     (= D (and B C)))
      )
      (main@_25 E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) ) 
    (=>
      (and
        (main@_21 A B G C I D E F)
        (and (= K (not (<= I H)))
     (= L (and K J))
     (= H (+ 1 G))
     (not L)
     (= J (not (<= I G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_25 C D A E G H I J)
        (and (= F (+ 2 A)) (= B true) (= B (not (<= G F))))
      )
      (main@._crit_edge C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_25 A B G C I D E F)
        (and (= H (+ 2 G)) (not J) (= J (not (<= I H))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge F G A C H I J K)
        (and (= E B) (= D C) (= B (+ 2 A)))
      )
      (main@_28 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_28 A F G H K L M N)
        (and (= C (not (<= H E)))
     (= D (and C B))
     (= E (+ 1 A))
     (= I E)
     (= J F)
     (= D true)
     (= B (not (<= G F))))
      )
      (main@.lr.ph.us G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_28 A F G H J K L M)
        (and (= D (not (<= H B)))
     (= C (not (<= G F)))
     (= B (+ 1 A))
     (= I F)
     (not E)
     (= E (and C D)))
      )
      (main@entry.split.us.outer G H I J K L M)
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
