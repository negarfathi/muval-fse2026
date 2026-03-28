(set-logic HORN)

(declare-fun |main@_71| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_32| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_59| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_80| ( Int Int Int Int ) Bool)
(declare-fun |main@_36| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_50| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_64| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_41| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_83| ( Int Int ) Bool)
(declare-fun |main@_45| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_54| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) ) 
    (=>
      (and
        (main@entry U)
        (and (= I (not (<= C1 0)))
     (= J (= B1 0))
     (= K (and J I))
     (= L (= A1 0))
     (= M (and L K))
     (= N (= Z 1))
     (= O (and N M))
     (= P (= Y 0))
     (= Q (and P O))
     (= R (= X 0))
     (= S (and R Q))
     (= W (= V 0))
     (= C U)
     (= D U)
     (= E U)
     (= F U)
     (= G U)
     (= H U)
     (= T U)
     (= D1 A1)
     (= E1 C1)
     (= F1 B1)
     (= G1 Y)
     (= H1 Z)
     (= I1 X)
     (= B true)
     (= S true)
     (= W true)
     (= B (= A 0)))
      )
      (main@._crit_edge D1 E1 F1 G1 H1 I1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) ) 
    (=>
      (and
        (main@entry B1)
        (and (= H (not (<= V 0)))
     (= U (= T 0))
     (= I (= W 0))
     (= J (and I H))
     (= K (= X 0))
     (= L (and K J))
     (= M (= Y 1))
     (= N (and M L))
     (= O (= Z 0))
     (= P (and O N))
     (= Q (= A1 0))
     (= R (and Q P))
     (= B B1)
     (= S B1)
     (= C B1)
     (= D B1)
     (= E B1)
     (= F B1)
     (= G B1)
     (= D1 V)
     (= E1 W)
     (= F1 X)
     (= G1 Y)
     (= H1 Z)
     (= I1 A1)
     (= A true)
     (not U)
     (= R true)
     (= A (= C1 0)))
      )
      (main@.lr.ph B1 C1 D1 E1 F1 G1 H1 I1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J K)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_32 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J K)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_25 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_25 N O D F K E G H)
        (and (= B (not (<= D 0)))
     (= C (and B A))
     (= I (+ 1 G))
     (= J (+ (- 1) E))
     (= L (+ 1 F))
     (= M (+ (- 1) D))
     (= P H)
     (= Q I)
     (= R J)
     (= S K)
     (= T L)
     (= U M)
     (= C true)
     (= A (not (<= E 0))))
      )
      (main@_64 N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_32 D E F G H I J K)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_41 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_32 D E F G H I J K)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_36 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_36 L M K D E H G F)
        (and (= B (not (<= D 0)))
     (= C (and B A))
     (= I (+ 1 E))
     (= J (+ (- 1) D))
     (= N F)
     (= O G)
     (= P H)
     (= Q I)
     (= R J)
     (= S K)
     (= C true)
     (= A (not (<= F 0))))
      )
      (main@_64 L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_41 D E F G H I J K)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_50 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_41 D E F G H I J K)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_45 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_45 L M K E D H G F)
        (and (= B (not (<= D 0)))
     (= C (and B A))
     (= I (+ (- 1) D))
     (= J (+ 1 E))
     (= N F)
     (= O G)
     (= P H)
     (= Q I)
     (= R J)
     (= S K)
     (= C true)
     (= A (not (<= H 0))))
      )
      (main@_64 L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_50 D E F G H I J K)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_59 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_50 D E F G H I J K)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_54 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@_54 K L C I B G D E)
        (and (= F (+ D E))
     (= H (+ (- 1) B))
     (= J (+ 1 C))
     (= M F)
     (= N 0)
     (= O G)
     (= P H)
     (= Q I)
     (= R J)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_64 K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@_59 K L C B H D F E)
        (and (= G (+ D E))
     (= I (+ (- 1) B))
     (= J (+ 1 C))
     (= M 0)
     (= N F)
     (= O G)
     (= P H)
     (= Q I)
     (= R J)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_64 K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_64 B D F G H I J K)
        (and (= A B)
     (= L I)
     (= M K)
     (= N J)
     (= O G)
     (= P H)
     (= Q F)
     (= E true)
     (= E (= C D)))
      )
      (main@._crit_edge L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_64 J K I H G F E D)
        (and (= A J)
     (= L D)
     (= M E)
     (= N F)
     (= O G)
     (= P H)
     (= Q I)
     (not C)
     (= C (= B K)))
      )
      (main@.lr.ph J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@._crit_edge C D E H I A)
        (and (= F (+ I H)) (= G (+ F A)) (= B true) (= B (not (<= G 0))))
      )
      (main@_71 C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@._crit_edge A B C E D G)
        (and (= F (+ D E)) (= H (+ F G)) (not I) (= I (not (<= H 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_71 R S T U A M F)
        (and (= J (and G H))
     (= K (not (<= T (- 1))))
     (= L (and I J))
     (= O (not (<= N 0)))
     (= P (and L K))
     (= Q (and P O))
     (= G (not (<= F (- 1))))
     (= B (not (<= 2 U)))
     (= C (= A 1))
     (= D (not (<= M (- 1))))
     (= E (and C B))
     (= I (not (<= R (- 1))))
     (= N (+ S M))
     (= Q true)
     (= H (and E D)))
      )
      (main@_80 R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Bool) (I Bool) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Bool) ) 
    (=>
      (and
        (main@_71 J P M B A Q G)
        (and (= S (not (<= R 0)))
     (= T (and N O))
     (= H (not (<= G (- 1))))
     (= K (not (<= J (- 1))))
     (= L (and I H))
     (= O (and L K))
     (= U (and T S))
     (= N (not (<= M (- 1))))
     (= C (not (<= 2 B)))
     (= D (= A 1))
     (= E (not (<= Q (- 1))))
     (= I (and E F))
     (= R (+ P Q))
     (not U)
     (= F (and D C)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@_80 A B C E)
        (and (= D (+ B C)) (= F true) (= F (not (<= E D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@_80 F A B C)
        (and (= E (+ A B)) (not D) (= D (not (<= C E))))
      )
      (main@_83 E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@_83 A B)
        (and (= C (+ A B)) (not D) (= D (not (<= C 0))))
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
