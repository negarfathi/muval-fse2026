(set-logic HORN)

(declare-fun str_invariant
             (Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Int
              Int
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Int
              Int
              Int
              Bool
              Bool
              Int
              Int
              Int
              Int)
             Bool)
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Bool)
         (F Bool)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Int)
         (W Int)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool))
  (=> (and (str_invariant L1
                             K1
                             J1
                             I1
                             H1
                             G1
                             F1
                             E1
                             D1
                             C1
                             B1
                             A1
                             Z
                             Y
                             X
                             W
                             V
                             U
                             T
                             S
                             R
                             Q
                             P
                             O
                             N
                             M
                             L
                             K
                             J
                             I
                             H
                             G
                             F
                             E
                             D
                             C
                             B
                             A)
              (not (= Y true)))
         false)
    ))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Bool)
         (F Bool)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Int)
         (W Int)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool))
  (let ((a!1 (>= (ite (not (= K1 true)) 0 1) 0))
           (a!2 (- D (ite (= F true) (ite (= E true) 4 0) 0)))
           (a!3 (ite (= M true) 7 (ite (= L true) 8 (ite (= K true) 9 10))))
           (a!8 (>= (ite (not (= Z true)) 0 1) 0))
           (a!9 (- 1 (ite (not (= K1 true)) 0 1)))
           (a!10 (>= (ite (not (= L1 true)) 0 1) 0))
           (a!11 (- 1 (ite (not (= Z true)) 0 1)))
           (a!12 (- C (ite (= F true) (ite (= E true) 1 0) 0)))
           (a!13 (- 1 (ite (not (= L1 true)) 0 1)))
           (a!14 (ite (and (= J true) (not (= U true)))
                      0
                      (+ (* 60 I) (* 10 H) G))))
     (let ((a!4 (ite (= P true) 4 (ite (= O true) 5 (ite (= N true) 6 a!3)))))
     (let ((a!5 (ite (= S true) 1 (ite (= R true) 2 (ite (= Q true) 3 a!4)))))
     (let ((a!6 (>= (- 9 (ite (= T true) 0 a!5)) 0)))
     (let ((a!7 (ite (= K1 true) 0 (ite a!6 (ite (= T true) 0 a!5) 0))))
     (let ((a!15 (and (or (= A1 true) (not (= K true)))
                      (or (= B1 true) (not (= L true)))
                      (or (not (= A1 true)) (= K true))
                      (or (= C1 true) (not (= M true)))
                      (or (not (= B1 true)) (= L true))
                      (or (= D1 true) (not (= N true)))
                      (or (not (= C1 true)) (= M true))
                      (or (= E1 true) (not (= O true)))
                      (or (not (= D1 true)) (= N true))
                      (or (= F1 true) (not (= P true)))
                      (or (not (= E1 true)) (= O true))
                      (or (= G1 true) (not (= Q true)))
                      (or (not (= F1 true)) (= P true))
                      (or (= H1 true) (not (= R true)))
                      (or (not (= G1 true)) (= Q true))
                      (or (= I1 true) (not (= S true)))
                      (or (not (= H1 true)) (= R true))
                      (or (= J1 true) (not (= T true)))
                      (or (not (= I1 true)) (= S true))
                      (or (not (= J1 true)) (= T true))
                      a!1
                      (= a!2 0)
                      (= (- G a!7) 0)
                      a!8
                      (>= a!9 0)
                      (= H 0)
                      a!10
                      (>= a!11 0)
                      (= a!12 0)
                      (= F true)
                      (= U true)
                      (= I 0)
                      (>= a!13 0)
                      (= (- A C) 0)
                      (= (- W (div B 60)) 0)
                      (= B 0)
                      (= (- V a!14) 0)
                      (= J true)
                      (= E true)
                      (= Y true)
                      (= X true))))
       (=> a!15
           (str_invariant L1
                          K1
                          J1
                          I1
                          H1
                          G1
                          F1
                          E1
                          D1
                          C1
                          B1
                          A1
                          Z
                          Y
                          X
                          W
                          V
                          U
                          T
                          S
                          R
                          Q
                          P
                          O
                          N
                          M
                          L
                          K
                          J
                          I
                          H
                          G
                          F
                          E
                          D
                          C
                          B
                          A))))))))
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Bool)
         (I Int)
         (J Bool)
         (K Int)
         (L Int)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Int)
         (A1 Int)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Bool)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Int)
         (W1 Bool)
         (X1 Bool)
         (Y1 Int)
         (Z1 Int)
         (A2 Int)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool)
         (K2 Bool)
         (L2 Bool)
         (M2 Bool)
         (N2 Bool)
         (O2 Bool)
         (P2 Int)
         (Q2 Int)
         (R2 Bool)
         (S2 Bool)
         (T2 Bool)
         (U2 Bool)
         (V2 Bool)
         (W2 Bool)
         (X2 Bool)
         (Y2 Int)
         (Z2 Int)
         (A3 Int)
         (B3 Int)
         (C3 Int)
         (D3 Int)
         (E3 Int)
         (F3 Bool)
         (G3 Int)
         (H3 Bool)
         (I3 Bool)
         (J3 Int)
         (K3 Bool)
         (L3 Int)
         (M3 Int)
         (N3 Bool)
         (O3 Int)
         (P3 Bool)
         (Q3 Int)
         (R3 Bool)
         (S3 Int)
         (T3 Int)
         (U3 Int)
         (V3 Bool)
         (W3 Int)
         (X3 Int)
         (Y3 Bool)
         (Z3 Int)
         (A4 Int)
         (B4 Bool)
         (C4 Bool)
         (D4 Int)
         (E4 Bool)
         (F4 Int)
         (G4 Int)
         (H4 Int)
         (I4 Bool)
         (J4 Bool)
         (K4 Int))
  (let ((a!1 (or (not (= O2 true))
                    (and (= O2 true) (not (= Y true)) (= M true))
                    (not (= C2 true))))
           (a!2 (and (= O2 true)
                     (or (not (= O2 true)) (= Y true) (not (= M true)))))
           (a!3 (ite (not (= (+ (- 4) F) 0)) 4 F))
           (a!4 (and (>= (+ (- 1) T3) 0) (>= (- 3 T3) 0)))
           (a!5 (ite (not (= (+ (- 3) G3) 0)) 3 G3))
           (a!8 (ite (= F2 true) 7 (ite (= E2 true) 8 (ite (= D2 true) 9 10))))
           (a!13 (ite (and (= E2 true) (= O false))
                      8
                      (ite (and (= D2 true) (= N false)) 9 10)))
           (a!18 (ite (and (= D2 true) (not (= N true))) 9 10))
           (a!32 (ite (not (= (+ (- 4) F) 0)) 1 E))
           (a!33 (ite (not (= (+ (- 3) G3) 0)) 3 D3))
           (a!36 (and (= 1 C)
                      (not (= M2 true))
                      (or (not (= Q1 true)) (= N1 true))
                      (or (not (= F1 true)) (= M1 true))
                      (or (not (= U true)) (= L1 true))
                      (or (not (= J true)) (= K1 true))
                      (or (not (= B true)) (= J1 true))
                      (or (not (= A true)) (= I1 true))
                      (or (not (= W2 true)) (= H1 true))
                      (or (not (= V2 true)) (= G1 true))
                      (or (not (= U2 true)) (= E1 true))
                      (or (not (= B2 true)) (= O1 true))
                      (not (= (- Q2 A1) 0))))
           (a!39 (or (and (not (= H true)) (= G true)) (not (= W1 true))))
           (a!40 (or (not (= S2 true))
                     (not (= 1 C))
                     (= M2 true)
                     (and (= Q1 true) (not (= N1 true)))
                     (and (= F1 true) (not (= M1 true)))
                     (and (= U true) (not (= L1 true)))
                     (and (= J true) (not (= K1 true)))
                     (and (= B true) (not (= J1 true)))
                     (and (= A true) (not (= I1 true)))
                     (and (= W2 true) (not (= H1 true)))
                     (and (= V2 true) (not (= G1 true)))
                     (and (= U2 true) (not (= E1 true)))
                     (and (= B2 true) (not (= O1 true)))
                     (= (- Q2 A1) 0)))
           (a!43 (ite (and (= C2 true) (not (= O2 true)))
                      0
                      (ite (= O2 true) (+ (* 60 A2) (* 10 Z1) Y1) Z)))
           (a!44 (ite (= F3 true) (ite (= (+ (- 2) E3) 0) 1 E3) E3))
           (a!45 (and (= (+ (- 2) E3) 0)
                      (or (not (= D4 0)) (= O3 0))
                      (not (= J4 true))
                      (not (= I4 true))))
           (a!46 (ite (not (= (+ (- 2) Z2) 0)) 2 Z2))
           (a!47 (ite (not (= (+ (- 2) Z2) 0)) 2 C3))
           (a!48 (ite (not (= (+ (- 4) F4) 0)) 1 B3))
           (a!49 (ite (not (= (+ (- 2) Z3) 0)) 2 A3))
           (a!50 (ite (not (= (+ (- 4) W3) 0)) 1 Y2))
           (a!51 (ite (= J4 true) (ite (= (+ (- 2) G4) 0) 1 G4) G4))
           (a!52 (ite (not (= (+ (- 3) Q3) 0)) 3 K4))
           (a!54 (ite (not (= (+ (- 2) M3) 0)) 2 E))
           (a!55 (= J4
                    (and (= (+ (- 2) G4) 0)
                         (>= (+ (- 1) H4) 0)
                         (not (= I4 true)))))
           (a!56 (ite (not (= (+ (- 4) F4) 0)) 4 F4))
           (a!57 (ite (and (>= (+ (- 1) A4) 0) (>= (- 3 A4) 0)) 0 A4))
           (a!58 (= E4
                    (and (= (+ (- 3) A4) 0)
                         (not (= D4 0))
                         (not (= B4 true))
                         (= (+ (- 3) A4) 0)
                         (not (= B4 true)))))
           (a!59 (= D4 (ite (not (= C4 true)) 0 1)))
           (a!60 (= C4 (and (= M2 true) (not (= P1 true)))))
           (a!61 (ite (not (= (+ (- 2) Z3) 0)) 2 Z3))
           (a!62 (ite (= Y3 true) (ite (= (+ (- 3) X3) 0) 1 X3) X3))
           (a!63 (= Y3
                    (and (= (+ (- 3) X3) 0)
                         (not (= J3 0))
                         (not (= O3 0))
                         (not (= V3 true)))))
           (a!64 (ite (not (= (+ (- 4) W3) 0)) 4 W3))
           (a!65 (= V3
                    (and (= (+ (- 2) T3) 0) (>= (- U3) 0) (= (+ (- 2) T3) 0))))
           (a!66 (ite (not (= (+ (- 3) Q3) 0)) 3 Q3))
           (a!67 (= R3
                    (and (= N3 true)
                         (>= (+ (- 1) Q3) 0)
                         (>= (- 3 Q3) 0)
                         (not (= P3 true)))))
           (a!68 (ite (not (= (+ (- 2) M3) 0)) 2 M3))
           (a!69 (and (>= (+ (- 1) M3) 0) (>= (- 3 M3) 0)))
           (a!71 (= O3 (ite (not (= T2 true)) 0 1)))
           (a!72 (or (< (+ (- 1) L3) 0) (< (- 3 L3) 0)))
           (a!73 (ite (= K3 true) (ite (= (+ (- 4) F) 0) 0 F) F))
           (a!74 (= (ite (>= (- P2) 0) 0 1) 0))
           (a!76 (= J3 (ite (not (= I3 true)) 0 1)))
           (a!77 (= I3 (and (= X2 true) (not (= R1 true))))))
     (let ((a!6 (ite (and (not (= K3 true)) a!4) (ite (= F3 true) a!5 G3) T3))
           (a!9 (ite (= I2 true) 4 (ite (= H2 true) 5 (ite (= G2 true) 6 a!8))))
           (a!14 (ite (and (= G2 true) (= Q false))
                      6
                      (ite (and (= F2 true) (= P false)) 7 a!13)))
           (a!19 (ite (and (= E2 true) (not (= O true))) 8 a!18))
           (a!34 (ite (and (not (= K3 true)) a!4) (ite (= F3 true) a!33 D3) Y2))
           (a!41 (ite (and (not (= K3 true)) a!4)
                      (ite (= J4 true) (+ (- 1) H4) H4)
                      U3))
           (a!53 (= Y2 (ite (= K3 true) (ite (= R3 true) a!52 K4) E)))
           (a!70 (= P3 (and (= N3 true) a!69 (not (= O3 0)))))
           (a!75 (= K3
                    (and (= H3 true)
                         (= (+ (- 4) F) 0)
                         (not (= J3 0))
                         (not a!74)))))
     (let ((a!7 (- V1 (ite (= X1 true) (ite (= W1 true) a!3 a!6) F)))
           (a!10 (ite (= L2 true) 1 (ite (= K2 true) 2 (ite (= J2 true) 3 a!9))))
           (a!15 (ite (and (= I2 true) (= S false))
                      4
                      (ite (and (= H2 true) (= R false)) 5 a!14)))
           (a!20 (ite (and (= F2 true) (not (= P true))) 7 a!19))
           (a!35 (- U1 (ite (= X1 true) (ite (= W1 true) a!32 a!34) E)))
           (a!42 (- T1 (ite (= X1 true) (ite (= W1 true) D a!41) D))))
     (let ((a!11 (>= (- 9 (ite (= N2 true) 0 a!10)) 0))
           (a!16 (ite (and (= K2 true) (= V false))
                      2
                      (ite (and (= J2 true) (= T false)) 3 a!15)))
           (a!21 (ite (and (= G2 true) (not (= Q true))) 6 a!20)))
     (let ((a!12 (ite (= M2 true) 0 (ite a!11 (ite (= N2 true) 0 a!10) 0)))
           (a!17 (ite (and (= N2 true) (= X false))
                      0
                      (ite (and (= L2 true) (= W false)) 1 a!16)))
           (a!22 (ite (and (= H2 true) (not (= R true))) 5 a!21)))
     (let ((a!23 (ite (and (= I2 true) (not (= S true))) 4 a!22))
           (a!30 (ite (= M2 true) 0 (ite (>= (- 9 a!17) 0) I K)))
           (a!37 (ite (= M2 true) 0 (ite (>= (- 9 a!17) 0) K L))))
     (let ((a!24 (ite (and (= J2 true) (not (= T true))) 3 a!23))
           (a!31 (- Z1 (ite (= O2 true) (ite (= C2 true) 0 a!30) K)))
           (a!38 (- A2 (ite (= O2 true) (ite (= C2 true) 0 a!37) L))))
     (let ((a!25 (ite (and (= K2 true) (not (= V true))) 2 a!24)))
     (let ((a!26 (ite (and (= L2 true) (not (= W true))) 1 a!25)))
     (let ((a!27 (ite (and (= N2 true) (not (= X true))) 0 a!26)))
     (let ((a!28 (ite (= M2 true) 0 (ite (>= (- 9 a!17) 0) a!27 I))))
     (let ((a!29 (- Y1 (ite (= O2 true) (ite (= C2 true) a!12 a!28) I))))
     (let ((a!78 (and (str_invariant R1
                                     P1
                                     O1
                                     N1
                                     M1
                                     L1
                                     K1
                                     J1
                                     I1
                                     H1
                                     G1
                                     E1
                                     D1
                                     C1
                                     B1
                                     A1
                                     Z
                                     Y
                                     X
                                     W
                                     V
                                     T
                                     S
                                     R
                                     Q
                                     P
                                     O
                                     N
                                     M
                                     L
                                     K
                                     I
                                     H
                                     G
                                     F
                                     E
                                     D
                                     C)
                      (or (= 1 C) (not (= O2 true)))
                      a!1
                      (or (not (= 1 C)) (= O2 true))
                      (or (= U2 true) (not (= D2 true)))
                      (or a!2 (= C2 true))
                      (or (= V2 true) (not (= E2 true)))
                      (or (not (= U2 true)) (= D2 true))
                      (or (= W2 true) (not (= F2 true)))
                      (or (not (= V2 true)) (= E2 true))
                      (or (= G2 true) (not (= A true)))
                      (or (not (= W2 true)) (= F2 true))
                      (or (= H2 true) (not (= B true)))
                      (or (not (= G2 true)) (= A true))
                      (or (= I2 true) (not (= J true)))
                      (or (not (= H2 true)) (= B true))
                      (or (= J2 true) (not (= U true)))
                      (or (not (= I2 true)) (= J true))
                      (or (= K2 true) (not (= F1 true)))
                      (or (not (= J2 true)) (= U true))
                      (or (= L2 true) (not (= Q1 true)))
                      (or (not (= K2 true)) (= F1 true))
                      (or (= N2 true) (not (= B2 true)))
                      (or (not (= L2 true)) (= Q1 true))
                      (or (not (= N2 true)) (= B2 true))
                      (>= D4 0)
                      (= a!7 0)
                      (= a!29 0)
                      (>= O3 0)
                      (>= (- 1 D4) 0)
                      (= a!31 0)
                      (>= J3 0)
                      (>= (- 1 O3) 0)
                      (= a!35 0)
                      (or (= S2 true) a!36)
                      (= (- Q2 (div T1 60)) 0)
                      (= X1 true)
                      (= a!38 0)
                      a!39
                      (>= (- 1 J3) 0)
                      (= (- S1 U1) 0)
                      a!40
                      (= a!42 0)
                      (= (- P2 a!43) 0)
                      (or (= H true) (not (= G true)) (= W1 true))
                      (= G3 a!44)
                      (= F3 a!45)
                      (= E3 (ite (= J4 true) a!46 Z2))
                      (= D3 (ite (= J4 true) a!47 C3))
                      (= C3 (ite (= E4 true) a!48 B3))
                      (= B3 (ite (= Y3 true) a!49 A3))
                      (= A3 (ite (= V3 true) a!50 Y2))
                      (= Z2 a!51)
                      a!53
                      (= K4 (ite (= P3 true) a!54 E))
                      a!55
                      (= I4 (or (= E4 true) (= B4 true)))
                      (= H4 (ite (= E4 true) 0 U3))
                      (= G4 (ite (= E4 true) a!56 F4))
                      (= F4 (ite (= E4 true) a!57 A4))
                      a!58
                      a!59
                      a!60
                      (= B4 (or (= Y3 true) (= V3 true)))
                      (= A4 (ite (= Y3 true) a!61 Z3))
                      (= Z3 a!62)
                      a!63
                      (= X3 (ite (= V3 true) a!64 W3))
                      (= W3 (ite (= V3 true) (ite a!4 0 T3) T3))
                      a!65
                      (= U3 (ite (= H3 true) P2 D))
                      (= T3 (ite (= K3 true) S3 L3))
                      (= S3 (ite (= R3 true) a!66 Q3))
                      a!67
                      (= Q3 (ite (= P3 true) a!68 M3))
                      a!70
                      a!71
                      (= N3 (and a!72 a!69))
                      (= M3 (ite a!72 1 L3))
                      (= L3 a!73)
                      a!75
                      a!76
                      a!77
                      (= H3 (= (+ (- 4) F) 0))
                      (not (= R2 true)))))
       (=> a!78
           (str_invariant X2
                          M2
                          B2
                          Q1
                          F1
                          U
                          J
                          B
                          A
                          W2
                          V2
                          U2
                          T2
                          S2
                          R2
                          Q2
                          P2
                          O2
                          N2
                          L2
                          K2
                          J2
                          I2
                          H2
                          G2
                          F2
                          E2
                          D2
                          C2
                          A2
                          Z1
                          Y1
                          X1
                          W1
                          V1
                          U1
                          T1
                          S1)))))))))))))))
    ))


(check-sat)
(exit)
