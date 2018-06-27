(declare-const A (_ BitVec 64))
(declare-const B (_ BitVec 64))

(push)  
(assert
(and   
(=  ((_ extract 32 32) 
     (ite 
        
       (not (=
          ((_ extract 32 32)
            (bvadd
              (bvadd 
                (concat #b0 (bvxor #xffffffff ((_ extract 31 0) A))) 
                (concat #b0 #x00000001)
              )
        
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(push)  
(assert
(and   
 (bvuge
  (concat #x00000000 ((_ extract 31 0) (bvadd A B)))  
  A)

(>= (+ (bv2int A) (bv2int B)) (^ 2 32))
)  
)

(check-sat)
(get-model)
(pop)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(push)  
(assert
(not (=  
 (bvuge
  (concat #x00000000 ((_ extract 31 0) (bvadd A B)))  
  A)

  (=  ((_ extract 32 32) 
     (ite 
        
       (not (=
          ((_ extract 32 32)
            (bvadd
              (bvadd 
                (concat #b0 (bvxor #xffffffff ((_ extract 31 0) A))) 
                (concat #b0 #x00000001)
              )
        
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
 )))


(check-sat)
(get-model)
(pop)
