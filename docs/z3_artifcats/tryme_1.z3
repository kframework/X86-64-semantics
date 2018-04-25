(declare-const TMP_ARR_64_8_32 (Array (_ BitVec 64) (_ BitVec 8)))


(assert (=
  
(let ((a!1 (concat (select TMP_ARR_64_8_32 #x00000006ffffffe3)
                   (concat (select TMP_ARR_64_8_32 #x00000006ffffffe2)
                           (concat (select TMP_ARR_64_8_32 #x00000006ffffffe1)
                                   (select TMP_ARR_64_8_32 #x00000006ffffffe0))))))
  (concat (concat #xa47b5fb3d9452bb3 #xe8cde421) a!1))

(concat #xa47b5fb3d9452bb3 #xe8cde4213a31d7f6)  
))

(check-sat)
