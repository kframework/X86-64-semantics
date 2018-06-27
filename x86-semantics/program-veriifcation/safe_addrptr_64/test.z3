(declare-const A (_ BitVec 64))
(declare-const B (_ BitVec 64))

;(push)  
;(assert
;(and   
;(=  ((_ extract 64 64) 
;
;  (bvadd
;     (bvadd 
;       (concat #b0 (bvxor #xffffffffffffffff A)) 
;       (concat #b0 #x0000000000000001)
;     )
;     
;    (concat #b0
;      ((_ extract 63 0)
;        (bvadd 
;          (concat #b0 A) 
;          (concat #b0 B) 
;        )
;      )
;    )
;
;  )
;)  #b1)
;
;(>= (+ (bv2int A) (bv2int B)) (^ 2 64))
;)  
;)
;
;(check-sat)
;(get-model)
;(pop)  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(push)  
(assert
(and   
 (bvuge
  (bvadd A B)  
  A)

(>= (+ (bv2int A) (bv2int B)) (^ 2 64))
)  
)

(check-sat)
(get-model)
(pop)

