(declare-const A (_ BitVec 64))
(declare-const B (_ BitVec 64))

(push)  
(assert
(and   
(=  ((_ extract 32 32) 
     (ite 
        
       ; Let R = A[31:0] + B[31:0]
       ; check if (R - A ) < 0
       (not (=
          ((_ extract 32 32)
            ; A + B - A
            (bvadd
              ; -A
              (bvadd 
                (concat #b0 (bvxor #xffffffff ((_ extract 31 0) A))) 
                (concat #b0 #x00000001)
              )
        
              ; A + B
              (concat #b0
                ((_ extract 31 0)
                  (bvadd 
                    (concat #b0 ((_ extract 31 0) A)) 
                    (concat #b0 ((_ extract 31 0) B)) 
                  )
                )
              )

            )

          )
          #b1      
       ))

       ; In case we have a carry
       (concat #b0 (bvxor #xffffffff ((_ extract 63 32) A))) 
       ; Else
       (bvadd 
        (concat #b0 (bvxor #xffffffff ((_ extract 63 32) A))) 
        (concat #b0 #x00000001)
       )
        
     )
    )  
    #b1
)

(>= (+ (bv2int A) (bv2int B)) (^ 2 32))
)  
)

(check-sat)
(get-model)
(pop)  
