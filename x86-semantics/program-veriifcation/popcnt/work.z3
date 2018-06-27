(declare-const rcx (_ BitVec 64))

(simplify  
  
(bvadd

 (bvand ((_ extract 32  1 ) 
         (bvlshr
          (concat
             (( _ extract 64 1)
               (bvlshr 
                 (concat 
                   (( _ extract 64 1) 
                     (bvlshr 
                       (concat rcx #b0) 
                       (concat #x0000000000000000 #b1))
                   ) #b0) 
                 (concat #x0000000000000000 #b1))
             )
             #b0
          ) (concat #x0000000000000000 #b1))
          )  #x00000001)

 (bvand ((_ extract 32 1 ) 
          (bvlshr 
            (concat 
              (( _ extract 64 1) 
              (bvlshr 
              (concat rcx #b0) 
              (concat #x0000000000000000 #b1))
              ) #b0) 

            (concat #x0000000000000000 #b1))
          )  #x00000001)

  (bvand ((_ extract 32  1 ) 
          (bvlshr 
           (concat rcx #b0) 
           (concat #x0000000000000000 #b1))
          )  #x00000001)

  (bvand ((_ extract 31  0 ) rcx)  #x00000001)
)

)
