(set-logic HORN)

(declare-fun |main@.us_lcssa11.i12| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@.lr.ph.i3.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@.us_lcssa.us.i8| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split.split.us.i7| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph.split.split.us.i| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@tailrecurse.outer.backedge.i11| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split.i4| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.thread| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph.i3| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (main@entry J)
        (and (= D (= C 2))
     (= F (= E 1))
     (= H (= G 1))
     (= L (not (<= 0 K)))
     (= I J)
     (= B true)
     (= D true)
     (= F true)
     (= H true)
     (= L true)
     (= B (= A 1)))
      )
      main@.thread
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= B (= J 2))
     (= D (= M 1))
     (= C (= H 1))
     (= G (not (<= 0 K)))
     (= E F)
     (= L K)
     (= A true)
     (= B true)
     (= D true)
     (= C true)
     (not G)
     (= A (= I 1)))
      )
      (main@.lr.ph.split.split.us.i H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        main@.thread
        (= A 1)
      )
      (main@verifier.error A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph.split.split.us.i E F G H B C)
        (and (= A (+ (- 1) B)) (= D true) (= D (not (<= C B))))
      )
      (main@.lr.ph.i3.preheader E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.split.split.us.i D E F G A I)
        (and (= C (+ (- 1) A)) (= H C) (not B) (= B (not (<= I A))))
      )
      (main@.lr.ph.split.split.us.i D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.i3.preheader C E F A)
        (and (= D 1) (= B A))
      )
      (main@.lr.ph.i3 B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.i3 B C D E F)
        (and (= A true) (= A (not (<= 1 D))))
      )
      (main@.us_lcssa.us.i8 B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.i3 B C D E F)
        (and (not A) (= A (not (<= 1 D))))
      )
      (main@.lr.ph.split.i4 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.split.i4 D A E G B)
        (and (= F D) (= C true) (= C (not (<= E B))))
      )
      (main@.lr.ph.split.split.us.i7 E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.split.i4 B C D E F)
        (and (not A) (= A (not (<= D F))))
      )
      (main@.us_lcssa11.i12 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.split.split.us.i7 E B C)
        (and (= A (+ (- 1) B)) (= F E) (= D true) (= D (not (<= C B))))
      )
      (main@verifier.error F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.split.split.us.i7 D A F)
        (and (= C (+ (- 1) A)) (= E C) (not B) (= B (not (<= F A))))
      )
      (main@.lr.ph.split.split.us.i7 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.us_lcssa.us.i8 C D A F G)
        (and (= E B) (= B (+ (- 1) A)))
      )
      (main@tailrecurse.outer.backedge.i11 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@tailrecurse.outer.backedge.i11 D E G A B)
        (and (= C (+ (- 1) D)) (= H G) (= F true) (= F (not (<= E D))))
      )
      (main@verifier.error H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@tailrecurse.outer.backedge.i11 A F D H I)
        (and (= E C) (= C (+ (- 1) A)) (= G D) (not B) (= B (not (<= F A))))
      )
      (main@.lr.ph.i3 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.us_lcssa11.i12 C D A F G)
        (and (= E B) (= B (+ 3 (* (- 1) A))))
      )
      (main@tailrecurse.outer.backedge.i11 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (not (<= A (- 1)))))
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
