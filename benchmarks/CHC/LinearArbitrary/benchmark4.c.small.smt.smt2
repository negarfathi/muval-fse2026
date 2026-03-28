(set-logic HORN)

(declare-fun |main@_9| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_31| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int Int ) Bool)
(declare-fun |main@._crit_edge15| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph14| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry I K A)
        (and (= C (= J 0))
     (= E (= D 0))
     (= H (= G 0))
     (= F I)
     (= M 0)
     (= N 0)
     (= O 0)
     (= B true)
     (= C true)
     (= E true)
     (= H true)
     (= B (= L 0)))
      )
      (main@._crit_edge15 I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry G I L)
        (and (= C (= K 0))
     (= B (= H 0))
     (= F (= E 0))
     (= D G)
     (= A true)
     (= C true)
     (= B true)
     (not F)
     (= A (= J 0)))
      )
      (main@.lr.ph14 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph14 C D E F L A)
        (and (= G 0) (= H 0) (= I 0) (= J 0) (= K (ite B 1 0)) (= B (not (= A 0))))
      )
      (main@_9 C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_9 O P Q R A B D E F J)
        (and (= C (+ 1 A))
     (= H O)
     (= N (+ 1 B))
     (= G (+ E F))
     (= L (+ C D))
     (= M (+ G N))
     (= S M)
     (= T L)
     (= U N)
     (= K true)
     (= K (= I J)))
      )
      (main@._crit_edge15 O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@_9 M N O P A B C D U V)
        (and (= L (+ I C))
     (= E (+ D U))
     (= F M)
     (= I (+ 1 A))
     (= J (+ 1 B))
     (= K (+ E J))
     (= Q I)
     (= R J)
     (= S L)
     (= T K)
     (not H)
     (= H (= G V)))
      )
      (main@_9 M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@._crit_edge15 I A B C D E L)
        (and (= F (not (<= E D)))
     (= H I)
     (= G (ite F 1 0))
     (= M (+ L G))
     (= N M)
     (= O L)
     (= K true)
     (= K (= J 0)))
      )
      (main@verifier.error N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@._crit_edge15 J K P Q A B I)
        (and (= G (= F 0))
     (= D (ite C 1 0))
     (= E J)
     (= H (+ I D))
     (= L 0)
     (= M H)
     (= N I)
     (= O 1)
     (not G)
     (= C (not (<= B A))))
      )
      (main@.preheader J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.preheader J K A G F B L M)
        (and (= C L) (= H G) (= I F) (= E true) (= E (= D 0)))
      )
      (main@._crit_edge H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.preheader D E F G H I J K)
        (and (= A J) (not C) (= C (= B 0)))
      )
      (main@.lr.ph D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph I J D G H A O P)
        (and (= F (= E 0))
     (= B (mod A 2))
     (= E (mod D 2))
     (= K G)
     (= L (ite C 1 0))
     (= M H)
     (= N (ite F 1 0))
     (= C (= B 1)))
      )
      (main@_31 I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_31 L M A B C D N O)
        (and (= E N)
     (= H (+ C D))
     (= I (+ A B))
     (= J I)
     (= K H)
     (= G true)
     (= G (= F O)))
      )
      (main@._crit_edge J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_31 H I A K B M N O)
        (and (= C N) (= F (+ A K)) (= G (+ B M)) (= J F) (= L G) (not E) (= E (= D O)))
      )
      (main@_31 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@._crit_edge K J F H A B)
        (and (= C (+ 1 D))
     (= D (+ K J))
     (= E F)
     (= L K)
     (= M J)
     (= I true)
     (= I (= G H)))
      )
      (main@verifier.error L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@._crit_edge E F H I N O)
        (and (= A H)
     (= D (+ E F))
     (= G (+ 1 D))
     (= J D)
     (= K E)
     (= L F)
     (= M G)
     (not C)
     (= C (= B I)))
      )
      (main@.preheader H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (not C) (= C (= A B)))
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
