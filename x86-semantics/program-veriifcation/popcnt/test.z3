(declare-const rcx (_ BitVec 64))

(assert
 (not
  (=
  
  (let ((a!1 (concat #b00
                   (bvadd (concat #b0 ((_ extract 63 63) rcx))
                          (concat #b0 ((_ extract 62 62) rcx)))))
      (a!2 (concat #b00
                   (bvadd (concat #b0 ((_ extract 61 61) rcx))
                          (concat #b0 ((_ extract 60 60) rcx)))))
      (a!3 (concat #b00
                   (bvadd (concat #b0 ((_ extract 59 59) rcx))
                          (concat #b0 ((_ extract 58 58) rcx)))))
      (a!4 (concat #b00
                   (bvadd (concat #b0 ((_ extract 57 57) rcx))
                          (concat #b0 ((_ extract 56 56) rcx)))))
      (a!6 (concat #b00
                   (bvadd (concat #b0 ((_ extract 55 55) rcx))
                          (concat #b0 ((_ extract 54 54) rcx)))))
      (a!7 (concat #b00
                   (bvadd (concat #b0 ((_ extract 53 53) rcx))
                          (concat #b0 ((_ extract 52 52) rcx)))))
      (a!8 (concat #b00
                   (bvadd (concat #b0 ((_ extract 51 51) rcx))
                          (concat #b0 ((_ extract 50 50) rcx)))))
      (a!9 (concat #b00
                   (bvadd (concat #b0 ((_ extract 49 49) rcx))
                          (concat #b0 ((_ extract 48 48) rcx)))))
      (a!11 (concat #b00
                    (bvadd (concat #b0 ((_ extract 47 47) rcx))
                           (concat #b0 ((_ extract 46 46) rcx)))))
      (a!12 (concat #b00
                    (bvadd (concat #b0 ((_ extract 45 45) rcx))
                           (concat #b0 ((_ extract 44 44) rcx)))))
      (a!13 (concat #b00
                    (bvadd (concat #b0 ((_ extract 43 43) rcx))
                           (concat #b0 ((_ extract 42 42) rcx)))))
      (a!14 (concat #b00
                    (bvadd (concat #b0 ((_ extract 41 41) rcx))
                           (concat #b0 ((_ extract 40 40) rcx)))))
      (a!16 (concat #b00
                    (bvadd (concat #b0 ((_ extract 39 39) rcx))
                           (concat #b0 ((_ extract 38 38) rcx)))))
      (a!17 (concat #b00
                    (bvadd (concat #b0 ((_ extract 37 37) rcx))
                           (concat #b0 ((_ extract 36 36) rcx)))))
      (a!18 (concat #b00
                    (bvadd (concat #b0 ((_ extract 35 35) rcx))
                           (concat #b0 ((_ extract 34 34) rcx)))))
      (a!19 (concat #b00
                    (bvadd (concat #b0 ((_ extract 33 33) rcx))
                           (concat #b0 ((_ extract 32 32) rcx)))))
      (a!22 (concat #b00
                    (bvadd (concat #b0 ((_ extract 31 31) rcx))
                           (concat #b0 ((_ extract 30 30) rcx)))))
      (a!23 (concat #b00
                    (bvadd (concat #b0 ((_ extract 29 29) rcx))
                           (concat #b0 ((_ extract 28 28) rcx)))))
      (a!24 (concat #b00
                    (bvadd (concat #b0 ((_ extract 27 27) rcx))
                           (concat #b0 ((_ extract 26 26) rcx)))))
      (a!25 (concat #b00
                    (bvadd (concat #b0 ((_ extract 25 25) rcx))
                           (concat #b0 ((_ extract 24 24) rcx)))))
      (a!27 (concat #b00
                    (bvadd (concat #b0 ((_ extract 23 23) rcx))
                           (concat #b0 ((_ extract 22 22) rcx)))))
      (a!28 (concat #b00
                    (bvadd (concat #b0 ((_ extract 21 21) rcx))
                           (concat #b0 ((_ extract 20 20) rcx)))))
      (a!29 (concat #b00
                    (bvadd (concat #b0 ((_ extract 19 19) rcx))
                           (concat #b0 ((_ extract 18 18) rcx)))))
      (a!30 (concat #b00
                    (bvadd (concat #b0 ((_ extract 17 17) rcx))
                           (concat #b0 ((_ extract 16 16) rcx)))))
      (a!32 (concat #b00
                    (bvadd (concat #b0 ((_ extract 15 15) rcx))
                           (concat #b0 ((_ extract 14 14) rcx)))))
      (a!33 (concat #b00
                    (bvadd (concat #b0 ((_ extract 13 13) rcx))
                           (concat #b0 ((_ extract 12 12) rcx)))))
      (a!34 (concat #b00
                    (bvadd (concat #b0 ((_ extract 11 11) rcx))
                           (concat #b0 ((_ extract 10 10) rcx)))))
      (a!35 (concat #b00
                    (bvadd (concat #b0 ((_ extract 9 9) rcx))
                           (concat #b0 ((_ extract 8 8) rcx)))))
      (a!37 (concat #b00
                    (bvadd (concat #b0 ((_ extract 7 7) rcx))
                           (concat #b0 ((_ extract 6 6) rcx)))))
      (a!38 (concat #b00
                    (bvadd (concat #b0 ((_ extract 5 5) rcx))
                           (concat #b0 ((_ extract 4 4) rcx)))))
      (a!39 (concat #b00
                    (bvadd (concat #b0 ((_ extract 3 3) rcx))
                           (concat #b0 ((_ extract 2 2) rcx)))))
      (a!40 (concat #b00
                    (bvadd (concat #b0 ((_ extract 1 1) rcx))
                           (concat #b0 ((_ extract 0 0) rcx))))))
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
  (bvadd a!21 a!42))))

(concat #x00000000  
(bvadd 
      (concat #b0000000000000000000000000000000 ((_ extract 0  0) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 1  1) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 2  2) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 3  3) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 4  4) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 5  5) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 6  6) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 7  7) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 8  8) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 9  9) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 10 10) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 11 11) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 12 12) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 13 13) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 14 14) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 15 15) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 16 16) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 17 17) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 18 18) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 19 19) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 20 20) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 21 21) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 22 22) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 23 23) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 24 24) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 25 25) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 26 26) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 27 27) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 28 28) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 29 29) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 30 30) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 31 31) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 32 32) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 33 33) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 34 34) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 35 35) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 36 36) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 37 37) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 38 38) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 39 39) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 40 40) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 41 41) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 42 42) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 43 43) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 44 44) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 45 45) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 46 46) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 47 47) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 48 48) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 49 49) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 50 50) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 51 51) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 52 52) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 53 53) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 54 54) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 55 55) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 56 56) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 57 57) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 58 58) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 59 59) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 60 60) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 61 61) rcx))
      (concat #b0000000000000000000000000000000 ((_ extract 62 62) rcx)) (concat #b0000000000000000000000000000000 ((_ extract 63 63) rcx))
))

)))

(check-sat)
