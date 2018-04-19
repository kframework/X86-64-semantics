(declare-const TMP_ARR_64_8_8 (Array (_ BitVec 64) (_ BitVec 8)))
(declare-const TMP_ARR_64_8_9 (Array (_ BitVec 64) (_ BitVec 8)))
(declare-const TMP_ARR_64_8_18 (Array (_ BitVec 64) (_ BitVec 8)))
(declare-const TMP_ARR_64_8_164 (Array (_ BitVec 64) (_ BitVec 8)))

(simplify

(let ((a!1 (concat (select TMP_ARR_64_8_164 #x00000006ffffffeb)
                   (concat (select TMP_ARR_64_8_164 #x00000006ffffffea)
                           (concat (select TMP_ARR_64_8_164 #x00000006ffffffe9)
                                   (select TMP_ARR_64_8_164 #x00000006ffffffe8))))))
(let ((a!2 (concat (select TMP_ARR_64_8_164 #x00000006ffffffee)
                   (concat (select TMP_ARR_64_8_164 #x00000006ffffffed)
                           (concat (select TMP_ARR_64_8_164 #x00000006ffffffec)
                                   a!1)))))
  (concat #x00000000000000000000000000000000
          (concat (concat (select TMP_ARR_64_8_164 #x00000006ffffffef) a!2)
                  #x0000000000000001))))


)
