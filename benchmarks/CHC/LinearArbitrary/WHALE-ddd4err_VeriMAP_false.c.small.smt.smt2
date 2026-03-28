(set-logic HORN)

(declare-fun |main@dddVentISR.exit.i| ( Int Bool Bool Bool Int Bool ) Bool)
(declare-fun |main@dddAtriISR.exit.i| ( Int Bool Int Bool Bool Bool ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |dddTmr0ISR@_br9| ( Int Int Bool Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_tail6| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_74| ( Int Bool Int Bool Bool Bool ) Bool)
(declare-fun |main@_93| ( Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool ) Bool)
(declare-fun |main@empty.loop.body| ( Int Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_45| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_23| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool ) Bool)
(declare-fun |main@_111| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool ) Bool)
(declare-fun |dddTmr0ISR@_24| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_31| ( Int Bool Bool Bool Int Bool ) Bool)
(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |dddTmr0ISR@_41| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR| ( Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_tail| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@.critedge1| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@test1.exit| ( Int ) Bool)
(declare-fun |dddTmr0ISR@_br8| ( Int Int Bool Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_29| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_67| ( Int Bool Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool ) Bool)
(declare-fun |dddTmr0ISR@_31| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_tail10| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_92| ( Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool Bool Bool ) Bool)
(declare-fun |dddTmr0ISR@_22| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@.critedge| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_30| ( Int Bool Bool Bool Int Bool ) Bool)
(declare-fun |main@_75| ( Int Bool Int Bool Bool Bool ) Bool)
(declare-fun |main@_26| ( Int Int Int Bool Bool Bool Bool ) Bool)
(declare-fun |main@_70| ( Int Bool Int Int Bool Bool Bool ) Bool)
(declare-fun |dddTmr0ISR@_20| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_49| ( Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Bool Bool ) Bool)
(declare-fun |dddTmr0ISR@_.4| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_48| ( Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@_24| ( Int Int Int Int Bool Bool Bool Bool ) Bool)
(declare-fun |dddTmr0ISR@_tail3| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_33| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@.split| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_68| ( Int Bool Int Int Int Bool Bool Bool ) Bool)
(declare-fun |main@precall| ( ) Bool)
(declare-fun |dddTmr0ISR@_37| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (v_12 Bool) (v_13 Bool) (v_14 Bool) ) 
    (=>
      (and
        (and true (= v_12 true) (= v_13 true) (= v_14 true))
      )
      (dddTmr0ISR v_12 v_13 v_14 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (v_12 Bool) (v_13 Bool) (v_14 Bool) ) 
    (=>
      (and
        (and true (= v_12 false) (= v_13 true) (= v_14 true))
      )
      (dddTmr0ISR v_12 v_13 v_14 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (v_12 Bool) (v_13 Bool) (v_14 Bool) ) 
    (=>
      (and
        (and true (= v_12 false) (= v_13 false) (= v_14 false))
      )
      (dddTmr0ISR v_12 v_13 v_14 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        true
      )
      (dddTmr0ISR@_tail A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail B C D E F G H I J K L)
        (and (= A true) (= A (= L 0)))
      )
      (dddTmr0ISR@_37 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail B C D E F G H I J K L)
        (and (not A) (= A (= L 0)))
      )
      (dddTmr0ISR@_20 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_20 B C D E F G H I J K L)
        (and (= A true) (= A (= K 0)))
      )
      (dddTmr0ISR@_29 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_20 B C D E F G H I J K L)
        (and (not A) (= A (= K 0)))
      )
      (dddTmr0ISR@_22 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_22 B C D E F G H I J K L)
        (and (= A true) (= A (= J 0)))
      )
      (dddTmr0ISR@_tail3 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_22 B C D E F G H I J K L)
        (and (not A) (= A (= J 0)))
      )
      (dddTmr0ISR@_24 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (dddTmr0ISR@_24 F G H I J K L M N O P)
        (and (= B (= M 0)) (= C (and B A)) (= D (ite C F 1)) (= E D) (= A (= G 0)))
      )
      (dddTmr0ISR@_.4 E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail3 B C D E F G H I J K L)
        (= A B)
      )
      (dddTmr0ISR@_.4 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_29 B C D E F G H I J K L)
        (and (= A true) (= A (not (<= G H))))
      )
      (dddTmr0ISR@_31 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_29 B C D E F G H I J K L)
        (and (not A) (= A (not (<= G H))))
      )
      (dddTmr0ISR@_33 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_31 B C D E F G H I J K L)
        (and (= A true) (= A (= F 0)))
      )
      (dddTmr0ISR@.critedge B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_31 B C D E F G H I J K L)
        (and (not A) (= A (= F 0)))
      )
      (dddTmr0ISR@_tail6 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@.critedge B C D E F G H I J K L)
        (= A B)
      )
      (dddTmr0ISR@_.4 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (dddTmr0ISR@_33 D E F G H I J K L M N)
        (and (= A (not (<= J I))) (= C (and A B)) (= C true) (= B (= H 0)))
      )
      (dddTmr0ISR@.critedge1 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (dddTmr0ISR@_33 D E F G H I J K L M N)
        (and (= A (not (<= J I))) (= C (and A B)) (not C) (= B (= H 0)))
      )
      (dddTmr0ISR@_tail6 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@.critedge1 B C D E F G H I J K L)
        (= A B)
      )
      (dddTmr0ISR@_.4 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail6 B C D E F G H I J K L)
        (= A B)
      )
      (dddTmr0ISR@_.4 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (dddTmr0ISR@_37 B C E F G H I J K L M)
        (and (= A (= E 0)) (= A true) (= D (not (= F 0))))
      )
      (dddTmr0ISR@_br9 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (dddTmr0ISR@_37 B C E F G H I J K L M)
        (and (= A (= E 0)) (not A) (= D (not (= F 0))))
      )
      (dddTmr0ISR@_br8 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (dddTmr0ISR@_br8 C D A E F G H I J K L M)
        (and (= A true) (= B C))
      )
      (dddTmr0ISR@_.4 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_br8 B C A D E F G H I J K L)
        (not A)
      )
      (dddTmr0ISR@_41 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (dddTmr0ISR@_41 D E F G H I J K L M N)
        (and (= B (ite A D 1)) (= C B) (= A (= E 0)))
      )
      (dddTmr0ISR@_.4 C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_br9 B C A D E F G H I J K L)
        (= A true)
      )
      (dddTmr0ISR@_tail10 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_br9 B C A D E F G H I J K L)
        (not A)
      )
      (dddTmr0ISR@_45 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail10 B C D E F G H I J K L)
        (= A B)
      )
      (dddTmr0ISR@_.4 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (dddTmr0ISR@_45 D E F G H I J K L M N)
        (and (= B (ite A D 1)) (= C B) (= A (= E 0)))
      )
      (dddTmr0ISR@_.4 C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (dddTmr0ISR@_.4 A B C D E F G H I J K L)
        true
      )
      (dddTmr0ISR@.split A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (v_12 Bool) (v_13 Bool) (v_14 Bool) ) 
    (=>
      (and
        (dddTmr0ISR@.split L K I C A H G F J B D E)
        (and (= v_12 true) (= v_13 false) (= v_14 false))
      )
      (dddTmr0ISR v_12 v_13 v_14 A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        main@entry
        (and (= G (= E 0))
     (= H (= D 0))
     (= I (= C 0))
     (= J (= B 0))
     (= A true)
     (= A (= F 0)))
      )
      (main@empty.loop F G H I J K L M N O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) ) 
    (=>
      (and
        (main@_23 R A B C D E F G H I J K L M N O P Q S T F1 M1)
        (and (= W O)
     (= X N)
     (= Y M)
     (= U Q)
     (= Z L)
     (= A1 K)
     (= B1 I)
     (= C1 C)
     (= D1 B)
     (= E1 A)
     (= G1 D)
     (= H1 E)
     (= I1 F)
     (= J1 G)
     (= K1 H)
     (= L1 J)
     (= M1 true)
     (= V P))
      )
      (main@_48 R S T U V W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (main@_23 O P Q R A B C D E F G H I J K L M N S T U V)
        (not V)
      )
      (main@_24 O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@_24 C D E A F G H I)
        (and (= B true) (= B (= A 0)))
      )
      (main@_26 C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_24 E D A B F G H J)
        (and (= I D) (not C) (= C (= B 0)))
      )
      (main@dddVentISR.exit.i E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Bool) (I Bool) (J Int) (K Bool) ) 
    (=>
      (and
        (main@_26 F C A G H I K)
        (and (= B (= A 0)) (= J (ite B C 1)) (= E true) (= E (= D 0)))
      )
      (main@_31 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Bool) (I Bool) (J Int) (K Bool) ) 
    (=>
      (and
        (main@_26 F C A G H I K)
        (and (= B (= A 0)) (= J (ite B C 1)) (not E) (= E (= D 0)))
      )
      (main@_30 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Bool) ) 
    (=>
      (and
        (main@_30 A B C D E F)
        true
      )
      (main@_31 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) ) 
    (=>
      (and
        (main@_31 B C D E A G)
        (= F A)
      )
      (main@dddVentISR.exit.i B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) ) 
    (=>
      (and
        (main@dddVentISR.exit.i R S T F1 A M1)
        (and (= W O)
     (= X N)
     (= Y M)
     (= U Q)
     (= Z L)
     (= A1 K)
     (= B1 I)
     (= C1 C)
     (= D1 B)
     (= E1 A)
     (= G1 D)
     (= H1 E)
     (= I1 F)
     (= J1 G)
     (= K1 H)
     (= L1 J)
     (= V P))
      )
      (main@_48 R S T U V W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Int) (U Int) (V Int) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Bool) ) 
    (=>
      (and
        (main@_48 R S W Q P O N M L K I C B A L1 D E F G H J M1)
        (and (= X D)
     (= Y E)
     (= T C)
     (= U A)
     (= Z F)
     (= A1 G)
     (= B1 H)
     (= C1 I)
     (= D1 J)
     (= E1 K)
     (= F1 L)
     (= G1 M)
     (= H1 N)
     (= I1 O)
     (= J1 P)
     (= K1 Q)
     (= L1 true)
     (= V B))
      )
      (main@_67 R S T U V W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Bool) ) 
    (=>
      (and
        (main@_48 G H I J K L M N O P Q R S T U A B C D E F V)
        (not U)
      )
      (main@_49 G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Bool) (v_50 Bool) (v_51 Bool) (v_52 Bool) ) 
    (=>
      (and
        (main@_49 C1 D1 H1 A B C D E F G H I J K W1 X1)
        (dddTmr0ISR v_50 v_51 v_52 A B C D E F G H I J K L)
        (and (= v_50 true)
     (= v_51 false)
     (= v_52 false)
     (= I1 O)
     (= J1 P)
     (= E1 N)
     (= F1 L)
     (= K1 Q)
     (= L1 R)
     (= M1 S)
     (= N1 T)
     (= O1 U)
     (= P1 V)
     (= Q1 W)
     (= R1 X)
     (= S1 Y)
     (= T1 Z)
     (= U1 A1)
     (= V1 B1)
     (= G1 M))
      )
      (main@_67 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1 N1 O1 P1 Q1 R1 S1 T1 U1 V1 W1 X1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Bool) (M1 Bool) ) 
    (=>
      (and
        (main@_67 R D1 C A B K1 D E F G H I J K L M N O P Q L1 M1)
        (and (= W M)
     (= X L)
     (= Y K)
     (= S Q)
     (= T P)
     (= U O)
     (= Z I)
     (= A1 C)
     (= B1 B)
     (= C1 A)
     (= E1 D)
     (= F1 E)
     (= G1 F)
     (= H1 G)
     (= I1 H)
     (= J1 J)
     (= K1 true)
     (= V N))
      )
      (main@_92 R S T U V W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (main@_67 O P Q R S T A B C D E F G H I J K L M N U V)
        (not T)
      )
      (main@_68 O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@_68 C D E F A G H I)
        (and (= B true) (= B (= A 0)))
      )
      (main@_70 C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@_68 E F A D B H I J)
        (and (= G D) (not C) (= C (= B 0)))
      )
      (main@dddAtriISR.exit.i E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (main@_70 F G A C I J K)
        (and (= B (= A 0)) (= H (ite B C 1)) (= E true) (= E (= D 0)))
      )
      (main@_75 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (main@_70 F G A C I J K)
        (and (= B (= A 0)) (= H (ite B C 1)) (not E) (= E (= D 0)))
      )
      (main@_74 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@_74 A B C D E F)
        true
      )
      (main@_75 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@_75 B C A E F G)
        (= D A)
      )
      (main@dddAtriISR.exit.i B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Bool) (M1 Bool) ) 
    (=>
      (and
        (main@dddAtriISR.exit.i R D1 A K1 L1 M1)
        (and (= W M)
     (= X L)
     (= Y K)
     (= S Q)
     (= T P)
     (= U O)
     (= Z I)
     (= A1 C)
     (= B1 B)
     (= C1 A)
     (= E1 D)
     (= F1 E)
     (= G1 F)
     (= H1 G)
     (= I1 H)
     (= J1 J)
     (= V N))
      )
      (main@_92 R S T U V W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) ) 
    (=>
      (and
        (main@_92 S Q P O N M L K I C B A J1 D E F G H J K1 L1 M1)
        (and (= W E)
     (= X F)
     (= Y G)
     (= R A)
     (= T B)
     (= U C)
     (= Z H)
     (= A1 I)
     (= B1 J)
     (= C1 K)
     (= D1 L)
     (= E1 M)
     (= F1 N)
     (= G1 O)
     (= H1 P)
     (= I1 Q)
     (= J1 true)
     (= V D))
      )
      (main@_111 R S T U V W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (main@_92 G H I J K L M N O P Q R S A B C D E F T U V)
        (not S)
      )
      (main@_93 G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (v_50 Bool) (v_51 Bool) (v_52 Bool) ) 
    (=>
      (and
        (main@_93 D1 A B C D E F G H I J K U1 V1 W1 X1)
        (dddTmr0ISR v_50 v_51 v_52 A B C D E F G H I J K L)
        (and (= v_50 true)
     (= v_51 false)
     (= v_52 false)
     (= H1 P)
     (= I1 Q)
     (= J1 R)
     (= C1 L)
     (= E1 M)
     (= F1 N)
     (= K1 S)
     (= L1 T)
     (= M1 U)
     (= N1 V)
     (= O1 W)
     (= P1 X)
     (= Q1 Y)
     (= R1 Z)
     (= S1 A1)
     (= T1 B1)
     (= G1 O))
      )
      (main@_111 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1 N1 O1 P1 Q1 R1 S1 T1 U1 V1 W1 X1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Bool) (U Int) (V Int) (W Bool) (X Int) ) 
    (=>
      (and
        (main@_111 X V A B C D E F G H I J K L M N O P Q R S T)
        (and (= W true) (= W (= U V)))
      )
      (main@test1.exit X)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) ) 
    (=>
      (and
        (main@_111 C T D E F G H I J K L M N O P Q R S L1 M1 N1 O1)
        (and (= X F)
     (= Y G)
     (= Z H)
     (= A1 I)
     (= U C)
     (= V D)
     (= W E)
     (= B1 J)
     (= C1 K)
     (= D1 L)
     (= E1 M)
     (= F1 N)
     (= G1 O)
     (= H1 P)
     (= I1 Q)
     (= J1 R)
     (= K1 S)
     (not B)
     (= B (= A T)))
      )
      (main@_23 T U V W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1 N1 O1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@test1.exit A)
        (and (not C) (not B) (= B (= A 0)))
      )
      main@precall
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@precall
        true
      )
      main@precall.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G H I J K L M N O P Q R S T)
        (= A true)
      )
      (main@empty.loop.body B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) ) 
    (=>
      (and
        (main@empty.loop P H1 I1 J1 K1 B C D E F G H I J K L M N O)
        (and (= U C)
     (= V D)
     (= W E)
     (= Q 0)
     (= R 0)
     (= S 0)
     (= X F)
     (= Y G)
     (= Z H)
     (= A1 I)
     (= B1 J)
     (= C1 K)
     (= D1 L)
     (= E1 M)
     (= F1 N)
     (= G1 O)
     (not A)
     (= T B))
      )
      (main@_23 P Q R S T U V W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F G H I J K L M N O P Q R S)
        true
      )
      (main@empty.loop A B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@precall.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
