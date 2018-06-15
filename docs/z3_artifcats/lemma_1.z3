(declare-const A (_ BitVec 64))
(declare-const B (_ BitVec 64))


(assert
  (not (=

 ((_ extract 63 0) (bvadd  (concat #b0 A) (concat #b0 B)) )

    (bvadd A B )
  )))

(check-sat)
