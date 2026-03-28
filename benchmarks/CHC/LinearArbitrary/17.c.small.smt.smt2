(set-logic HORN)

(declare-fun |main@entry.split| ( ) Bool)
(declare-fun |mc91@tailrecurse._crit_edge.split| ( Int Int ) Bool)
(declare-fun |mc91| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |mc91@tailrecurse._crit_edge| ( Int Int ) Bool)
(declare-fun |mc91@tailrecurse| ( Int Int Int ) Bool)
(declare-fun |mc91@_loop.bound| ( Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (mc91 v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (mc91 v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (mc91 v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (mc91@_loop.bound A)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (mc91@_loop.bound E)
        (and (= C (not (<= E 100))) (= D E) (= B true) (= C true) (= B (= A 100)))
      )
      (mc91@tailrecurse._crit_edge D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (mc91@_loop.bound E)
        (and (= B (not (<= E 100))) (= C E) (= A true) (not B) (= A (= D 100)))
      )
      (mc91@tailrecurse C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (mc91@tailrecurse._crit_edge A C)
        (= B (+ (- 10) A))
      )
      (mc91@tailrecurse._crit_edge.split B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (mc91@tailrecurse A C G)
        (mc91 v_7 v_8 v_9 B E)
        (and (= v_7 true)
     (= v_8 false)
     (= v_9 false)
     (= B (+ 11 A))
     (= F E)
     (= D true)
     (= D (not (<= E C))))
      )
      (mc91@tailrecurse._crit_edge F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (mc91@tailrecurse A F G)
        (mc91 v_7 v_8 v_9 B D)
        (and (= v_7 true)
     (= v_8 false)
     (= v_9 false)
     (= B (+ 11 A))
     (= E D)
     (not C)
     (= C (not (<= D F))))
      )
      (mc91@tailrecurse E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (mc91@tailrecurse._crit_edge.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (mc91 v_2 v_3 v_4 A B)
    )
  )
)
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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (main@entry B)
        (mc91 v_6 v_7 v_8 D E)
        (and (= v_6 true)
     (= v_7 false)
     (= v_8 false)
     (= C (not (<= D 101)))
     (= A B)
     (not F)
     (not C)
     (= F (= E 91)))
      )
      main@entry.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@entry.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
