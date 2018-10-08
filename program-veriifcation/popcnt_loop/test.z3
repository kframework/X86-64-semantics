(declare-const V (_ BitVec 64))


(assert
(not 
(= 
  (bvadd  
      (bvand ((_ extract 31 0) V) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000001)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000002)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000003)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000004)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000005)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000006)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000007)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000008)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000009)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000000a)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000000b)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000000c)) #x00000001) 
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000000d)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000000e)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000000f)) #x00000001)

      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000010)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000011)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000012)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000013)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000014)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000015)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000016)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000017)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000018)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000019)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000001a)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000001b)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000001c)) #x00000001) 
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000001d)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000001e)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000001f)) #x00000001)

      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000020)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000021)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000022)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000023)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000024)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000025)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000026)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000027)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000028)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000029)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000002a)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000002b)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000002c)) #x00000001) 
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000002d)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000002e)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000002f)) #x00000001)

      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000030)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000031)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000032)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000033)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000034)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000035)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000036)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000037)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000038)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x0000000000000039)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000003a)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000003b)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000003c)) #x00000001) 
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000003d)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000003e)) #x00000001)
      (bvand ((_ extract 31 0) (bvlshr V #x000000000000003f)) #x00000001)
  )

  (let ((a!1 (concat #b00
                   (bvadd (concat #b0 ((_ extract 63 63) V))
                          (concat #b0 ((_ extract 62 62) V)))))
      (a!2 (concat #b00
                   (bvadd (concat #b0 ((_ extract 61 61) V))
                          (concat #b0 ((_ extract 60 60) V)))))
      (a!3 (concat #b00
                   (bvadd (concat #b0 ((_ extract 59 59) V))
                          (concat #b0 ((_ extract 58 58) V)))))
      (a!4 (concat #b00
                   (bvadd (concat #b0 ((_ extract 57 57) V))
                          (concat #b0 ((_ extract 56 56) V)))))
      (a!6 (concat #b00
                   (bvadd (concat #b0 ((_ extract 55 55) V))
                          (concat #b0 ((_ extract 54 54) V)))))
      (a!7 (concat #b00
                   (bvadd (concat #b0 ((_ extract 53 53) V))
                          (concat #b0 ((_ extract 52 52) V)))))
      (a!8 (concat #b00
                   (bvadd (concat #b0 ((_ extract 51 51) V))
                          (concat #b0 ((_ extract 50 50) V)))))
      (a!9 (concat #b00
                   (bvadd (concat #b0 ((_ extract 49 49) V))
                          (concat #b0 ((_ extract 48 48) V)))))
      (a!11 (concat #b00
                    (bvadd (concat #b0 ((_ extract 47 47) V))
                           (concat #b0 ((_ extract 46 46) V)))))
      (a!12 (concat #b00
                    (bvadd (concat #b0 ((_ extract 45 45) V))
                           (concat #b0 ((_ extract 44 44) V)))))
      (a!13 (concat #b00
                    (bvadd (concat #b0 ((_ extract 43 43) V))
                           (concat #b0 ((_ extract 42 42) V)))))
      (a!14 (concat #b00
                    (bvadd (concat #b0 ((_ extract 41 41) V))
                           (concat #b0 ((_ extract 40 40) V)))))
      (a!16 (concat #b00
                    (bvadd (concat #b0 ((_ extract 39 39) V))
                           (concat #b0 ((_ extract 38 38) V)))))
      (a!17 (concat #b00
                    (bvadd (concat #b0 ((_ extract 37 37) V))
                           (concat #b0 ((_ extract 36 36) V)))))
      (a!18 (concat #b00
                    (bvadd (concat #b0 ((_ extract 35 35) V))
                           (concat #b0 ((_ extract 34 34) V)))))
      (a!19 (concat #b00
                    (bvadd (concat #b0 ((_ extract 33 33) V))
                           (concat #b0 ((_ extract 32 32) V)))))
      (a!22 (concat #b00
                    (bvadd (concat #b0 ((_ extract 31 31) V))
                           (concat #b0 ((_ extract 30 30) V)))))
      (a!23 (concat #b00
                    (bvadd (concat #b0 ((_ extract 29 29) V))
                           (concat #b0 ((_ extract 28 28) V)))))
      (a!24 (concat #b00
                    (bvadd (concat #b0 ((_ extract 27 27) V))
                           (concat #b0 ((_ extract 26 26) V)))))
      (a!25 (concat #b00
                    (bvadd (concat #b0 ((_ extract 25 25) V))
                           (concat #b0 ((_ extract 24 24) V)))))
      (a!27 (concat #b00
                    (bvadd (concat #b0 ((_ extract 23 23) V))
                           (concat #b0 ((_ extract 22 22) V)))))
      (a!28 (concat #b00
                    (bvadd (concat #b0 ((_ extract 21 21) V))
                           (concat #b0 ((_ extract 20 20) V)))))
      (a!29 (concat #b00
                    (bvadd (concat #b0 ((_ extract 19 19) V))
                           (concat #b0 ((_ extract 18 18) V)))))
      (a!30 (concat #b00
                    (bvadd (concat #b0 ((_ extract 17 17) V))
                           (concat #b0 ((_ extract 16 16) V)))))
      (a!32 (concat #b00
                    (bvadd (concat #b0 ((_ extract 15 15) V))
                           (concat #b0 ((_ extract 14 14) V)))))
      (a!33 (concat #b00
                    (bvadd (concat #b0 ((_ extract 13 13) V))
                           (concat #b0 ((_ extract 12 12) V)))))
      (a!34 (concat #b00
                    (bvadd (concat #b0 ((_ extract 11 11) V))
                           (concat #b0 ((_ extract 10 10) V)))))
      (a!35 (concat #b00
                    (bvadd (concat #b0 ((_ extract 9 9) V))
                           (concat #b0 ((_ extract 8 8) V)))))
      (a!37 (concat #b00
                    (bvadd (concat #b0 ((_ extract 7 7) V))
                           (concat #b0 ((_ extract 6 6) V)))))
      (a!38 (concat #b00
                    (bvadd (concat #b0 ((_ extract 5 5) V))
                           (concat #b0 ((_ extract 4 4) V)))))
      (a!39 (concat #b00
                    (bvadd (concat #b0 ((_ extract 3 3) V))
                           (concat #b0 ((_ extract 2 2) V)))))
      (a!40 (concat #b00
                    (bvadd (concat #b0 ((_ extract 1 1) V))
                           (concat #b0 ((_ extract 0 0) V))))))
(let ((a!5 (concat #x00
                   (bvadd (concat #x0 (bvadd a!1 a!2))
                          (concat #x0 (bvadd a!3 a!4)))))
      (a!10 (concat #x00
                    (bvadd (concat #x0 (bvadd a!6 a!7))
                           (concat #x0 (bvadd a!8 a!9)))))
      (a!15 (concat #x00
                    (bvadd (concat #x0 (bvadd a!11 a!12))
                           (concat #x0 (bvadd a!13 a!14)))))
      (a!20 (concat #x00
                    (bvadd (concat #x0 (bvadd a!16 a!17))
                           (concat #x0 (bvadd a!18 a!19)))))
      (a!26 (concat #x00
                    (bvadd (concat #x0 (bvadd a!22 a!23))
                           (concat #x0 (bvadd a!24 a!25)))))
      (a!31 (concat #x00
                    (bvadd (concat #x0 (bvadd a!27 a!28))
                           (concat #x0 (bvadd a!29 a!30)))))
      (a!36 (concat #x00
                    (bvadd (concat #x0 (bvadd a!32 a!33))
                           (concat #x0 (bvadd a!34 a!35)))))
      (a!41 (concat #x00
                    (bvadd (concat #x0 (bvadd a!37 a!38))
                           (concat #x0 (bvadd a!39 a!40))))))
(let ((a!21 (concat #x00000000
                    (bvadd (concat #x0000 (bvadd a!5 a!10))
                           (concat #x0000 (bvadd a!15 a!20)))))
      (a!42 (concat #x00000000
                    (bvadd (concat #x0000 (bvadd a!26 a!31))
                           (concat #x0000 (bvadd a!36 a!41))))))
  ((_ extract 31 0) (bvadd a!21 a!42)))))
)))

(check-sat)
