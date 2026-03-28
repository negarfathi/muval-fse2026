(set-logic HORN)

(declare-fun |dddTmr0ISR@_30| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_tail8| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_19| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_br7| ( Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@dddVentISR.exit.i| ( Int ) Bool)
(declare-fun |main@_7| ( Int ) Bool)
(declare-fun |main@_1| ( Int Int ) Bool)
(declare-fun |dddTmr0ISR@_24| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_tail10| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_26| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_30| ( Int ) Bool)
(declare-fun |dddTmr0ISR@_tail11| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |dddTmr0ISR@_tail9| ( Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@.critedge1| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR| ( Bool Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@.split| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_tail2| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@.critedge| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_3| ( Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@_6| ( Int ) Bool)
(declare-fun |main@_29| ( Int ) Bool)
(declare-fun |dddTmr0ISR@_tail5| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |dddTmr0ISR@_22| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@test1.exit| ( ) Bool)
(declare-fun |main@_26| ( Int ) Bool)
(declare-fun |main@dddAtriISR.exit.i| ( Int ) Bool)
(declare-fun |main@precall| ( ) Bool)
(declare-fun |dddTmr0ISR@_tail| ( Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (and true (= v_7 true) (= v_8 true) (= v_9 true))
      )
      (dddTmr0ISR v_7 v_8 v_9 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (and true (= v_7 false) (= v_8 true) (= v_9 true))
      )
      (dddTmr0ISR v_7 v_8 v_9 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (and true (= v_7 false) (= v_8 false) (= v_9 false))
      )
      (dddTmr0ISR v_7 v_8 v_9 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        true
      )
      (dddTmr0ISR@_tail A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail B C D E F G H)
        (and (= A true) (= A (= H 0)))
      )
      (dddTmr0ISR@_30 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail B C D E F G H)
        (and (not A) (= A (= H 0)))
      )
      (dddTmr0ISR@_19 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_19 B C D E F G H)
        (and (= A true) (= A (= G 0)))
      )
      (dddTmr0ISR@_22 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_19 B C D E F G H)
        (and (not A) (= A (= G 0)))
      )
      (dddTmr0ISR@_tail2 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail2 A B C D E F G)
        true
      )
      (dddTmr0ISR@_tail11 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_22 B C D E F G H)
        (and (= A true) (= A (not (<= E F))))
      )
      (dddTmr0ISR@_24 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_22 B C D E F G H)
        (and (not A) (= A (not (<= E F))))
      )
      (dddTmr0ISR@_26 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_24 B C D E F G H)
        (and (= A true) (= A (= D 0)))
      )
      (dddTmr0ISR@.critedge B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_24 B C D E F G H)
        (and (not A) (= A (= D 0)))
      )
      (dddTmr0ISR@_tail5 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (dddTmr0ISR@.critedge A B C D E F G)
        true
      )
      (dddTmr0ISR@_tail11 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (dddTmr0ISR@_26 D E F G H I J)
        (and (= B (= F 0)) (= C (and B A)) (= C true) (= A (not (<= H G))))
      )
      (dddTmr0ISR@.critedge1 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (dddTmr0ISR@_26 D E F G H I J)
        (and (= B (= F 0)) (= C (and B A)) (not C) (= A (not (<= H G))))
      )
      (dddTmr0ISR@_tail5 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (dddTmr0ISR@.critedge1 A B C D E F G)
        true
      )
      (dddTmr0ISR@_tail11 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail5 A B C D E F G)
        true
      )
      (dddTmr0ISR@_tail11 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (dddTmr0ISR@_30 C D E F G H I)
        (and (= B (not (= D 0))) (= A true) (= A (= C 0)))
      )
      (dddTmr0ISR@_tail9 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (dddTmr0ISR@_30 C D E F G H I)
        (and (= B (not (= D 0))) (not A) (= A (= C 0)))
      )
      (dddTmr0ISR@_br7 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_br7 A B C D E F G H)
        (= A true)
      )
      (dddTmr0ISR@_tail11 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_br7 A B C D E F G H)
        (not A)
      )
      (dddTmr0ISR@_tail8 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail8 A B C D E F G)
        true
      )
      (dddTmr0ISR@_tail11 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail9 A B C D E F G H)
        (= A true)
      )
      (dddTmr0ISR@_tail11 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail9 A B C D E F G H)
        (not A)
      )
      (dddTmr0ISR@_tail10 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail10 A B C D E F G)
        true
      )
      (dddTmr0ISR@_tail11 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (dddTmr0ISR@_tail11 A B C D E F G)
        true
      )
      (dddTmr0ISR@.split A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (dddTmr0ISR@.split B A G F E C D)
        (and (= v_7 true) (= v_8 false) (= v_9 false))
      )
      (dddTmr0ISR v_7 v_8 v_9 A B C D E F G)
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
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        main@entry
        (and (= A true) (= A (= B 0)))
      )
      (main@empty.loop B)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@_1 C A)
        (and (= B true) (= B (= A 0)))
      )
      (main@_3 C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@_1 C A)
        (and (not B) (= B (= A 0)))
      )
      (main@dddVentISR.exit.i C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@_3 C)
        (and (= B true) (= B (= A 0)))
      )
      (main@_7 C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@_3 C)
        (and (not B) (= B (= A 0)))
      )
      (main@_6 C)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        (main@_6 A)
        true
      )
      (main@_7 A)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        (main@_7 A)
        true
      )
      (main@dddVentISR.exit.i A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (v_10 Bool) (v_11 Bool) (v_12 Bool) ) 
    (=>
      (and
        (main@dddVentISR.exit.i J)
        (dddTmr0ISR v_10 v_11 v_12 A B C D E F G)
        (and (= v_10 true) (= v_11 false) (= v_12 false) (= I true) (= I (= H 0)))
      )
      (main@_26 J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (v_10 Bool) (v_11 Bool) (v_12 Bool) ) 
    (=>
      (and
        (main@dddVentISR.exit.i J)
        (dddTmr0ISR v_10 v_11 v_12 A B C D E F G)
        (and (= v_10 true) (= v_11 false) (= v_12 false) (not I) (= I (= H 0)))
      )
      (main@dddAtriISR.exit.i J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@_26 C)
        (and (= B true) (= B (= A 0)))
      )
      (main@_30 C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@_26 C)
        (and (not B) (= B (= A 0)))
      )
      (main@_29 C)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        (main@_29 A)
        true
      )
      (main@_30 A)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        (main@_30 A)
        true
      )
      (main@dddAtriISR.exit.i A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (v_10 Bool) (v_11 Bool) (v_12 Bool) ) 
    (=>
      (and
        (main@dddAtriISR.exit.i I)
        (dddTmr0ISR v_10 v_11 v_12 A B C D E F G)
        (and (= v_10 true) (= v_11 false) (= v_12 false) (= J true) (= J (= H I)))
      )
      main@test1.exit
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (v_12 Bool) (v_13 Bool) (v_14 Bool) ) 
    (=>
      (and
        (main@dddAtriISR.exit.i K)
        (dddTmr0ISR v_12 v_13 v_14 A B C D E F G)
        (and (= v_12 true) (= v_13 false) (= v_14 false) (= L J) (not I) (= I (= H K)))
      )
      (main@_1 K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        main@test1.exit
        (and (= C (not (= A 0))) (= E (and C D)) (not F) (= E true) (= D (not (= B 0))))
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
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (main@empty.loop B)
        (= A true)
      )
      (main@empty.loop.body B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@empty.loop B)
        (and (not A) (= C 0))
      )
      (main@_1 B C)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        (main@empty.loop.body A)
        true
      )
      (main@empty.loop A)
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
