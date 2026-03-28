(set-logic HORN)

(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph9| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry A K B C)
        (and (= G (= F 0))
     (= I (= H 0))
     (= M (= L 0))
     (= J K)
     (= N 0)
     (= O 0)
     (= E true)
     (= G true)
     (= I true)
     (= M true)
     (= E (= D 0)))
      )
      (main@verifier.error N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@entry G H M O)
        (and (= B (= N 0))
     (= C (= I 0))
     (= F (= E 0))
     (= J 0)
     (= D H)
     (= K G)
     (= L 0)
     (= A true)
     (= B true)
     (= C true)
     (not F)
     (= A (= P 0)))
      )
      (main@.preheader1 G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.preheader1 G H I F A E J K N O)
        (and (= B N) (= L E) (= M F) (= D true) (= D (= C 0)))
      )
      (main@.preheader G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.preheader1 F G H D I E J K O P)
        (and (= A O) (= L D) (= M 0) (= N E) (not C) (= C (= B 0)))
      )
      (main@.lr.ph F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.preheader G H I K L D E M N)
        (and (= F E) (= A K) (= J D) (= C true) (= C (= B 0)))
      )
      (main@._crit_edge F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.preheader F G H K L E D M N)
        (and (= A K) (= I E) (= J D) (not C) (= C (= B 0)))
      )
      (main@.lr.ph9 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph O P Q B R S G I D V W)
        (and (= L (= K W))
     (= A (+ G O))
     (= C (+ A (* (- 1) I)))
     (= F (ite E 1 (- 1)))
     (= H (+ 1 I))
     (= J V)
     (= N (+ F G))
     (= M (+ 1 D))
     (= T M)
     (= U N)
     (= L true)
     (= E (= B C)))
      )
      (main@.preheader O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        (main@.lr.ph N O P Q R S F G C W X)
        (and (= J (= I X))
     (= A (+ F N))
     (= B (+ A (* (- 1) G)))
     (= E (ite D 1 (- 1)))
     (= H W)
     (= K (+ 1 G))
     (= L (+ E F))
     (= M (+ 1 C))
     (= T L)
     (= U K)
     (= V M)
     (not J)
     (= D (= Q B)))
      )
      (main@.lr.ph N O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph9 I J K A B M N O P)
        (and (= H G)
     (= C M)
     (= G (+ (- 1) B))
     (= L F)
     (= F (+ (- 1) A))
     (= E true)
     (= E (= D N)))
      )
      (main@._crit_edge H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph9 H I J A B M N O P)
        (and (= C M)
     (= G (+ (- 1) A))
     (= K G)
     (= L F)
     (= F (+ (- 1) B))
     (not E)
     (= E (= D N)))
      )
      (main@.lr.ph9 H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@._crit_edge M F H J L A B C D)
        (and (= G H) (= E (+ M F)) (= N L) (= O M) (= K true) (= K (= I J)))
      )
      (main@verifier.error N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@._crit_edge D G H I F M N O P)
        (and (= A H) (= J D) (= E (+ D G)) (= K E) (= L F) (not C) (= C (= B I)))
      )
      (main@.preheader1 G H I J K L M N O P)
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
