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
         (W Bool)
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
         (K1 Bool))
  (=> (and (str_invariant K1
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
              (not (= X true)))
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
         (W Bool)
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
         (K1 Bool))
  (let ((a!1 (>= (ite (not (= J1 true)) 0 1) 0))
           (a!2 (- D (ite (= F true) (ite (= E true) 4 0) 0)))
           (a!3 (ite (= M true) 7 (ite (= L true) 8 (ite (= K true) 9 10))))
           (a!8 (>= (ite (not (= Y true)) 0 1) 0))
           (a!9 (- 1 (ite (not (= J1 true)) 0 1)))
           (a!10 (>= (ite (not (= K1 true)) 0 1) 0))
           (a!11 (- 1 (ite (not (= Y true)) 0 1)))
           (a!12 (- C (ite (= F true) (ite (= E true) 1 0) 0)))
           (a!13 (and (>= (div B 60) 0) (>= (- 256 (div B 60)) 0)))
           (a!14 (- 1 (ite (not (= K1 true)) 0 1)))
           (a!15 (or (< (div B 60) 0) (< (- 256 (div B 60)) 0) (= X true)))
           (a!16 (ite (and (= J true) (not (= U true)))
                      0
                      (+ (* 60 I) (* 10 H) G))))
     (let ((a!4 (ite (= P true) 4 (ite (= O true) 5 (ite (= N true) 6 a!3)))))
     (let ((a!5 (ite (= S true) 1 (ite (= R true) 2 (ite (= Q true) 3 a!4)))))
     (let ((a!6 (>= (- 9 (ite (= T true) 0 a!5)) 0)))
     (let ((a!7 (ite (= J1 true) 0 (ite a!6 (ite (= T true) 0 a!5) 0))))
     (let ((a!17 (and (or (= Z true) (not (= K true)))
                      (or (= A1 true) (not (= L true)))
                      (or (not (= Z true)) (= K true))
                      (or (= B1 true) (not (= M true)))
                      (or (not (= A1 true)) (= L true))
                      (or (= C1 true) (not (= N true)))
                      (or (not (= B1 true)) (= M true))
                      (or (= D1 true) (not (= O true)))
                      (or (not (= C1 true)) (= N true))
                      (or (= E1 true) (not (= P true)))
                      (or (not (= D1 true)) (= O true))
                      (or (= F1 true) (not (= Q true)))
                      (or (not (= E1 true)) (= P true))
                      (or (= G1 true) (not (= R true)))
                      (or (not (= F1 true)) (= Q true))
                      (or (= H1 true) (not (= S true)))
                      (or (not (= G1 true)) (= R true))
                      (or (= I1 true) (not (= T true)))
                      (or (not (= H1 true)) (= S true))
                      (or (not (= I1 true)) (= T true))
                      a!1
                      (= a!2 0)
                      (= (- G a!7) 0)
                      a!8
                      (>= a!9 0)
                      (= H 0)
                      a!10
                      (>= a!11 0)
                      (= a!12 0)
                      (or a!13 (not (= X true)))
                      (= F true)
                      (= U true)
                      (= I 0)
                      (>= a!14 0)
                      (= (- A C) 0)
                      a!15
                      (= B 0)
                      (= (- V a!16) 0)
                      (= J true)
                      (= E true)
                      (= W true))))
       (=> a!17
           (str_invariant K1
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
         (I Bool)
         (J Int)
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
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Bool)
         (W1 Bool)
         (X1 Int)
         (Y1 Int)
         (Z1 Bool)
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
         (O2 Int)
         (P2 Bool)
         (Q2 Bool)
         (R2 Bool)
         (S2 Bool)
         (T2 Bool)
         (U2 Bool)
         (V2 Bool)
         (W2 Int)
         (X2 Int)
         (Y2 Int)
         (Z2 Int)
         (A3 Int)
         (B3 Int)
         (C3 Int)
         (D3 Bool)
         (E3 Int)
         (F3 Bool)
         (G3 Bool)
         (H3 Int)
         (I3 Bool)
         (J3 Int)
         (K3 Int)
         (L3 Bool)
         (M3 Int)
         (N3 Bool)
         (O3 Int)
         (P3 Bool)
         (Q3 Int)
         (R3 Int)
         (S3 Int)
         (T3 Bool)
         (U3 Int)
         (V3 Int)
         (W3 Bool)
         (X3 Int)
         (Y3 Int)
         (Z3 Bool)
         (A4 Bool)
         (B4 Int)
         (C4 Bool)
         (D4 Int)
         (E4 Int)
         (F4 Int)
         (G4 Bool)
         (H4 Bool)
         (I4 Int))
  (let ((a!1 (or (not (= N2 true))
                    (and (= N2 true) (not (= Y true)) (= M true))
                    (not (= B2 true))))
           (a!2 (and (= N2 true)
                     (or (not (= N2 true)) (= Y true) (not (= M true)))))
           (a!3 (ite (not (= (+ (- 4) F) 0)) 4 F))
           (a!4 (and (>= (+ (- 1) R3) 0) (>= (- 3 R3) 0)))
           (a!5 (ite (not (= (+ (- 3) E3) 0)) 3 E3))
           (a!8 (ite (= E2 true) 7 (ite (= D2 true) 8 (ite (= C2 true) 9 10))))
           (a!13 (ite (and (= D2 true) (= O false))
                      8
                      (ite (and (= C2 true) (= N false)) 9 10)))
           (a!18 (ite (and (= C2 true) (not (= N true))) 9 10))
           (a!32 (ite (not (= (+ (- 4) F) 0)) 1 E))
           (a!33 (ite (not (= (+ (- 3) E3) 0)) 3 B3))
           (a!36 (and (>= (div S1 60) 0) (>= (- 256 (div S1 60)) 0)))
           (a!39 (or (and (not (= I true)) (= G true)) (not (= V1 true))))
           (a!40 (or (< (div S1 60) 0) (< (- 256 (div S1 60)) 0) (= Q2 true)))
           (a!43 (ite (and (= B2 true) (not (= N2 true)))
                      0
                      (ite (= N2 true) (+ (* 60 A2) (* 10 Y1) X1) Z)))
           (a!44 (ite (= D3 true) (ite (= (+ (- 2) C3) 0) 1 C3) C3))
           (a!45 (and (= (+ (- 2) C3) 0)
                      (or (not (= B4 0)) (= M3 0))
                      (not (= H4 true))
                      (not (= G4 true))))
           (a!46 (ite (not (= (+ (- 2) X2) 0)) 2 X2))
           (a!47 (ite (not (= (+ (- 2) X2) 0)) 2 A3))
           (a!48 (ite (not (= (+ (- 4) D4) 0)) 1 Z2))
           (a!49 (ite (not (= (+ (- 2) X3) 0)) 2 Y2))
           (a!50 (ite (not (= (+ (- 4) U3) 0)) 1 W2))
           (a!51 (ite (= H4 true) (ite (= (+ (- 2) E4) 0) 1 E4) E4))
           (a!52 (ite (not (= (+ (- 3) O3) 0)) 3 I4))
           (a!54 (ite (not (= (+ (- 2) K3) 0)) 2 E))
           (a!55 (= H4
                    (and (= (+ (- 2) E4) 0)
                         (>= (+ (- 1) F4) 0)
                         (not (= G4 true)))))
           (a!56 (ite (not (= (+ (- 4) D4) 0)) 4 D4))
           (a!57 (ite (and (>= (+ (- 1) Y3) 0) (>= (- 3 Y3) 0)) 0 Y3))
           (a!58 (= C4
                    (and (= (+ (- 3) Y3) 0)
                         (not (= B4 0))
                         (not (= Z3 true))
                         (= (+ (- 3) Y3) 0)
                         (not (= Z3 true)))))
           (a!59 (= B4 (ite (not (= A4 true)) 0 1)))
           (a!60 (= A4 (and (= K2 true) (not (= P1 true)))))
           (a!61 (ite (not (= (+ (- 2) X3) 0)) 2 X3))
           (a!62 (ite (= W3 true) (ite (= (+ (- 3) V3) 0) 1 V3) V3))
           (a!63 (= W3
                    (and (= (+ (- 3) V3) 0)
                         (not (= H3 0))
                         (not (= M3 0))
                         (not (= T3 true)))))
           (a!64 (ite (not (= (+ (- 4) U3) 0)) 4 U3))
           (a!65 (= T3
                    (and (= (+ (- 2) R3) 0) (>= (- S3) 0) (= (+ (- 2) R3) 0))))
           (a!66 (ite (not (= (+ (- 3) O3) 0)) 3 O3))
           (a!67 (= P3
                    (and (= L3 true)
                         (>= (+ (- 1) O3) 0)
                         (>= (- 3 O3) 0)
                         (not (= N3 true)))))
           (a!68 (ite (not (= (+ (- 2) K3) 0)) 2 K3))
           (a!69 (and (>= (+ (- 1) K3) 0) (>= (- 3 K3) 0)))
           (a!71 (= M3 (ite (not (= R2 true)) 0 1)))
           (a!72 (or (< (+ (- 1) J3) 0) (< (- 3 J3) 0)))
           (a!73 (ite (= I3 true) (ite (= (+ (- 4) F) 0) 0 F) F))
           (a!74 (= (ite (>= (- O2) 0) 0 1) 0))
           (a!76 (= H3 (ite (not (= G3 true)) 0 1)))
           (a!77 (= G3 (and (= V2 true) (not (= Q1 true))))))
     (let ((a!6 (ite (and (not (= I3 true)) a!4) (ite (= D3 true) a!5 E3) R3))
           (a!9 (ite (= H2 true) 4 (ite (= G2 true) 5 (ite (= F2 true) 6 a!8))))
           (a!14 (ite (and (= F2 true) (= Q false))
                      6
                      (ite (and (= E2 true) (= P false)) 7 a!13)))
           (a!19 (ite (and (= D2 true) (not (= O true))) 8 a!18))
           (a!34 (ite (and (not (= I3 true)) a!4) (ite (= D3 true) a!33 B3) W2))
           (a!41 (ite (and (not (= I3 true)) a!4)
                      (ite (= H4 true) (+ (- 1) F4) F4)
                      S3))
           (a!53 (= W2 (ite (= I3 true) (ite (= P3 true) a!52 I4) E)))
           (a!70 (= N3 (and (= L3 true) a!69 (not (= M3 0)))))
           (a!75 (= I3
                    (and (= F3 true)
                         (= (+ (- 4) F) 0)
                         (not (= H3 0))
                         (not a!74)))))
     (let ((a!7 (- U1 (ite (= W1 true) (ite (= V1 true) a!3 a!6) F)))
           (a!10 (ite (= L2 true) 1 (ite (= J2 true) 2 (ite (= I2 true) 3 a!9))))
           (a!15 (ite (and (= H2 true) (= T false))
                      4
                      (ite (and (= G2 true) (= R false)) 5 a!14)))
           (a!20 (ite (and (= E2 true) (not (= P true))) 7 a!19))
           (a!35 (- T1 (ite (= W1 true) (ite (= V1 true) a!32 a!34) E)))
           (a!42 (- S1 (ite (= W1 true) (ite (= V1 true) D a!41) D))))
     (let ((a!11 (>= (- 9 (ite (= M2 true) 0 a!10)) 0))
           (a!16 (ite (and (= J2 true) (= V false))
                      2
                      (ite (and (= I2 true) (= U false)) 3 a!15)))
           (a!21 (ite (and (= F2 true) (not (= Q true))) 6 a!20)))
     (let ((a!12 (ite (= K2 true) 0 (ite a!11 (ite (= M2 true) 0 a!10) 0)))
           (a!17 (ite (and (= M2 true) (= X false))
                      0
                      (ite (and (= L2 true) (= W false)) 1 a!16)))
           (a!22 (ite (and (= G2 true) (not (= R true))) 5 a!21)))
     (let ((a!23 (ite (and (= H2 true) (not (= T true))) 4 a!22))
           (a!30 (ite (= K2 true) 0 (ite (>= (- 9 a!17) 0) J K)))
           (a!37 (ite (= K2 true) 0 (ite (>= (- 9 a!17) 0) K L))))
     (let ((a!24 (ite (and (= I2 true) (not (= U true))) 3 a!23))
           (a!31 (- Y1 (ite (= N2 true) (ite (= B2 true) 0 a!30) K)))
           (a!38 (- A2 (ite (= N2 true) (ite (= B2 true) 0 a!37) L))))
     (let ((a!25 (ite (and (= J2 true) (not (= V true))) 2 a!24)))
     (let ((a!26 (ite (and (= L2 true) (not (= W true))) 1 a!25)))
     (let ((a!27 (ite (and (= M2 true) (not (= X true))) 0 a!26)))
     (let ((a!28 (ite (= K2 true) 0 (ite (>= (- 9 a!17) 0) a!27 J))))
     (let ((a!29 (- X1 (ite (= N2 true) (ite (= B2 true) a!12 a!28) J))))
     (let ((a!78 (and (str_invariant Q1
                                     P1
                                     N1
                                     M1
                                     L1
                                     K1
                                     J1
                                     I1
                                     H1
                                     G1
                                     F1
                                     E1
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
                                     G
                                     F
                                     E
                                     D
                                     C)
                      (or (= 1 C) (not (= N2 true)))
                      a!1
                      (or (not (= 1 C)) (= N2 true))
                      (or (= S2 true) (not (= C2 true)))
                      (or a!2 (= B2 true))
                      (or (= T2 true) (not (= D2 true)))
                      (or (not (= S2 true)) (= C2 true))
                      (or (= U2 true) (not (= E2 true)))
                      (or (not (= T2 true)) (= D2 true))
                      (or (= F2 true) (not (= A true)))
                      (or (not (= U2 true)) (= E2 true))
                      (or (= G2 true) (not (= B true)))
                      (or (not (= F2 true)) (= A true))
                      (or (= H2 true) (not (= H true)))
                      (or (not (= G2 true)) (= B true))
                      (or (= I2 true) (not (= S true)))
                      (or (not (= H2 true)) (= H true))
                      (or (= J2 true) (not (= D1 true)))
                      (or (not (= I2 true)) (= S true))
                      (or (= L2 true) (not (= O1 true)))
                      (or (not (= J2 true)) (= D1 true))
                      (or (= M2 true) (not (= Z1 true)))
                      (or (not (= L2 true)) (= O1 true))
                      (or (not (= M2 true)) (= Z1 true))
                      (>= B4 0)
                      (= a!7 0)
                      (= a!29 0)
                      (>= M3 0)
                      (>= (- 1 B4) 0)
                      (= a!31 0)
                      (>= H3 0)
                      (>= (- 1 M3) 0)
                      (= a!35 0)
                      (or a!36 (not (= Q2 true)))
                      (= W1 true)
                      (= a!38 0)
                      a!39
                      (>= (- 1 H3) 0)
                      (= (- R1 T1) 0)
                      a!40
                      (= a!42 0)
                      (= (- O2 a!43) 0)
                      (or (= I true) (not (= G true)) (= V1 true))
                      (= E3 a!44)
                      (= D3 a!45)
                      (= C3 (ite (= H4 true) a!46 X2))
                      (= B3 (ite (= H4 true) a!47 A3))
                      (= A3 (ite (= C4 true) a!48 Z2))
                      (= Z2 (ite (= W3 true) a!49 Y2))
                      (= Y2 (ite (= T3 true) a!50 W2))
                      (= X2 a!51)
                      a!53
                      (= I4 (ite (= N3 true) a!54 E))
                      a!55
                      (= G4 (or (= C4 true) (= Z3 true)))
                      (= F4 (ite (= C4 true) 0 S3))
                      (= E4 (ite (= C4 true) a!56 D4))
                      (= D4 (ite (= C4 true) a!57 Y3))
                      a!58
                      a!59
                      a!60
                      (= Z3 (or (= W3 true) (= T3 true)))
                      (= Y3 (ite (= W3 true) a!61 X3))
                      (= X3 a!62)
                      a!63
                      (= V3 (ite (= T3 true) a!64 U3))
                      (= U3 (ite (= T3 true) (ite a!4 0 R3) R3))
                      a!65
                      (= S3 (ite (= F3 true) O2 D))
                      (= R3 (ite (= I3 true) Q3 J3))
                      (= Q3 (ite (= P3 true) a!66 O3))
                      a!67
                      (= O3 (ite (= N3 true) a!68 K3))
                      a!70
                      a!71
                      (= L3 (and a!72 a!69))
                      (= K3 (ite a!72 1 J3))
                      (= J3 a!73)
                      a!75
                      a!76
                      a!77
                      (= F3 (= (+ (- 4) F) 0))
                      (not (= P2 true)))))
       (=> a!78
           (str_invariant V2
                          K2
                          Z1
                          O1
                          D1
                          S
                          H
                          B
                          A
                          U2
                          T2
                          S2
                          R2
                          Q2
                          P2
                          O2
                          N2
                          M2
                          L2
                          J2
                          I2
                          H2
                          G2
                          F2
                          E2
                          D2
                          C2
                          B2
                          A2
                          Y1
                          X1
                          W1
                          V1
                          U1
                          T1
                          S1
                          R1)))))))))))))))
    ))


(check-sat)
(exit)
