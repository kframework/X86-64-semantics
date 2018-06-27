
;(declare-const B (_ BitVec 8))
;(declare-const x (_ BitVec 1))
;(declare-const y (_ BitVec 1))
;(declare-const N Int)
;
;(assert
;  (and
;  (not (= N 0))  
;   (=
;     ((_ extract 31 31)( (_ int2bv 33) (+  -4294967296 N))) 
;    #b1
;  )
; 
;  
;  (< N 255)
;  
;  )
;  
;)
;
;(check-sat)
;(get-model)

(push)
(declare-const N (_ BitVec 64))

(assert
  (and
    (=
      ((_ extract 31 31) N) 
      #b1
    )
 
    (not
    (=
      ((_ extract 31 0) N) 
      #x00000000
    )
    )
  )
  
)

(check-sat)
(get-model)
(pop)

(push)
(declare-const N (_ BitVec 64))

(assert
  (and
    (=
      ((_ extract 31 31) N) 
      #b0
    )
 
    (not
    (=
      ((_ extract 31 0) N) 
      #x00000000
    )
    )
  )
  
)

(check-sat)
(get-model)
(pop)

(push)
(declare-const N (_ BitVec 64))

(assert
    (=
      ((_ extract 31 0) N) 
      #x00000000
    )
  
)

(check-sat)
(get-model)
(pop)
