(set-logic HORN)

(declare-fun |main@ack_1030.exit| ( Int Int Int ) Bool)
(declare-fun |main@ack_without_checking_1087.outer| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |ack_without_checking_1087@tailrecurse.backedge| ( Int Int Int Int Int ) Bool)
(declare-fun |main@precall7| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |ack_without_checking_1087@tailrecurse._crit_edge| ( Int Int Int ) Bool)
(declare-fun |ack_without_checking_1087@.lr.ph| ( Int Int Int Int Int ) Bool)
(declare-fun |main@ack_without_checking_1087.outer.backedge| ( Int Int Int Int ) Bool)
(declare-fun |main@postcall8| ( Int Int Int Int Int ) Bool)
(declare-fun |ack_without_checking_1087@_13| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int ) Bool)
(declare-fun |main@ack_without_checking_1087| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |ack_without_checking_1087@tailrecurse._crit_edge.split| ( Int Int Int ) Bool)
(declare-fun |ack_without_checking_1087@_tail| ( Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |ack_without_checking_1087@_loop.bound| ( Int Int ) Bool)
(declare-fun |ack_without_checking_1087| ( Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 true) (= v_4 true) (= v_5 true))
      )
      (ack_without_checking_1087 v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 false) (= v_4 true) (= v_5 true))
      )
      (ack_without_checking_1087 v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 false) (= v_4 false) (= v_5 false))
      )
      (ack_without_checking_1087 v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (ack_without_checking_1087@_loop.bound A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (ack_without_checking_1087@_loop.bound E F)
        (and (= C (= E 0)) (= D F) (= B true) (= C true) (= B (= A 0)))
      )
      (ack_without_checking_1087@tailrecurse._crit_edge D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (ack_without_checking_1087@_loop.bound F G)
        (and (= B (= F 0)) (= D G) (= E F) (= A true) (not B) (= A (= C 0)))
      )
      (ack_without_checking_1087@.lr.ph C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (ack_without_checking_1087@tailrecurse._crit_edge A C D)
        (= B (+ 1 A))
      )
      (ack_without_checking_1087@tailrecurse._crit_edge.split B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (ack_without_checking_1087@.lr.ph D A E F G)
        (and (= C (+ (- 1) E)) (= B true) (= B (= A 0)))
      )
      (ack_without_checking_1087@_tail C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (ack_without_checking_1087@.lr.ph D E A F G)
        (and (= C (+ (- 1) A)) (not B) (= B (= E 0)))
      )
      (ack_without_checking_1087@_13 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (ack_without_checking_1087@_tail C D A F G)
        (and (= E 1) (= B true) (= B (not (<= A 0))))
      )
      (ack_without_checking_1087@tailrecurse.backedge C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (ack_without_checking_1087@tailrecurse.backedge A B D F G)
        (and (= E D) (= C true) (= C (= A B)))
      )
      (ack_without_checking_1087@tailrecurse._crit_edge E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (ack_without_checking_1087@tailrecurse.backedge C D B G H)
        (and (= E B) (= F C) (not A) (= A (= C D)))
      )
      (ack_without_checking_1087@.lr.ph D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (v_9 Bool) (v_10 Bool) (v_11 Bool) ) 
    (=>
      (and
        (ack_without_checking_1087@_13 E F A H I)
        (ack_without_checking_1087 v_9 v_10 v_11 B C D)
        (and (= v_9 true) (= v_10 false) (= v_11 false) (= G D) (= C (+ (- 1) A)))
      )
      (ack_without_checking_1087@tailrecurse.backedge E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (ack_without_checking_1087@tailrecurse._crit_edge.split C A B)
        (and (= v_3 true) (= v_4 false) (= v_5 false))
      )
      (ack_without_checking_1087 v_3 v_4 v_5 A B C)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= B (= K 0))
     (= G (not (<= N 0)))
     (= H (not (<= M 0)))
     (= I (and H G))
     (= C E)
     (= D E)
     (= A true)
     (= B true)
     (not F)
     (= I true)
     (not J)
     (= A (= L 0)))
      )
      (main@empty.loop K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@ack_1030.exit C D E)
        (and (not A) (= B 1))
      )
      (main@ack_without_checking_1087.outer.backedge B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@ack_without_checking_1087.outer.backedge A B E F)
        (and (= D B) (= C A))
      )
      (main@ack_without_checking_1087.outer C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@ack_without_checking_1087.outer B E F G)
        (and (= C (= B 0)) (= D (+ (- 1) E)) (not A) (= C true) (= A (= E 0)))
      )
      (main@precall7 D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@ack_without_checking_1087.outer C D E G)
        (and (= A (= C 0)) (= B (+ (- 1) D)) (not F) (not A) (= F (= D 0)))
      )
      (main@.lr.ph.preheader B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader E B F G A I)
        (and (= H D) (= C true) (= D (+ (- 1) B)))
      )
      (main@postcall8 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader D A E F H I)
        (and (= G C) (not B) (= C (+ (- 1) A)))
      )
      (main@ack_without_checking_1087 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@ack_without_checking_1087 D E F B A G)
        (and (not A) (= C true) (= C (= B G)))
      )
      (main@precall7 D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@ack_without_checking_1087 B C D E F G)
        (and (not F) (not A) (= A (= E G)))
      )
      (main@.lr.ph B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@precall7 D B E F)
        (and (not A) (= C true) (= C (not (<= B E))))
      )
      (main@ack_1030.exit D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@precall7 A D E B)
        (and (not F) (not C) (= F (not (<= D E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph E F G B A I)
        (and (= H D) (= C true) (= D (+ (- 1) B)))
      )
      (main@postcall8 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph D E F A H I)
        (and (= G C) (not B) (= C (+ (- 1) A)))
      )
      (main@ack_without_checking_1087 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (v_8 Bool) (v_9 Bool) (v_10 Bool) ) 
    (=>
      (and
        (main@postcall8 F A G B H)
        (ack_without_checking_1087 v_8 v_9 v_10 A B D)
        (and (= v_8 true) (= v_9 false) (= v_10 false) (not C) (= E D))
      )
      (main@ack_without_checking_1087.outer.backedge E F G H)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop B C D E)
        (= A true)
      )
      (main@empty.loop.body B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@empty.loop F G B C)
        (and (= E C) (not A) (= D B))
      )
      (main@ack_without_checking_1087.outer D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D)
        true
      )
      (main@empty.loop A B C D)
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
