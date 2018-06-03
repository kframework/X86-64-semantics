; The first formula is beore the buggy simplification and 
; the later is after the simplication. 
; The test fail for the later formula
; where the hardware output should be  (concat #x5c67c78cf40e6fab #x7adc096200000000)



  (declare-const TMP_ARR_64_8_390470 (Array (_ BitVec 64) (_ BitVec 8)))
(declare-fun add_single ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))


(push)
(assert
  (not (=  

(concat (add_single (concat (select TMP_ARR_64_8_390470 #x00000006ffffffeb)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffea)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe9)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe8))
                    (concat (select TMP_ARR_64_8_390470 #x00000006ffffffef)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffee)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffed)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffec)))
        (add_single (concat (select TMP_ARR_64_8_390470 #x00000006ffffffe3)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe2)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe1)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe0))
                    (concat (select TMP_ARR_64_8_390470 #x00000006ffffffe7)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe6)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe5)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe4)))
        (add_single #xe2ea5321 #x7adc0962)
        (add_single #x80000000 #x00000000)) ;<-- Correct

  (concat (add_single (concat (select TMP_ARR_64_8_390470 #x00000006ffffffeb)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffea)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe9)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe8))
                    (concat (select TMP_ARR_64_8_390470 #x00000006ffffffef)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffee)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffed)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffec)))
        (add_single (concat (select TMP_ARR_64_8_390470 #x00000006ffffffe3)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe2)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe1)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe0))
                    (concat (select TMP_ARR_64_8_390470 #x00000006ffffffe7)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe6)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe5)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe4)))
        (add_single #xe2ea5321 #x7adc0962) ;<-- errror
        #x80000000)
))

)

(check-sat)
(pop)


; Formula before simplification matches with desired output

(push)
(assert
   (=  

(concat (add_single (concat (select TMP_ARR_64_8_390470 #x00000006ffffffeb)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffea)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe9)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe8))
                    (concat (select TMP_ARR_64_8_390470 #x00000006ffffffef)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffee)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffed)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffec)))
        (add_single (concat (select TMP_ARR_64_8_390470 #x00000006ffffffe3)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe2)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe1)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe0))
                    (concat (select TMP_ARR_64_8_390470 #x00000006ffffffe7)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe6)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe5)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe4)))
        (add_single #xe2ea5321 #x7adc0962)
        (add_single #x80000000 #x00000000)) ;<-- Correct

(concat #x5c67c78cf40e6fab #x7adc096200000000)
  
)

)

(check-sat)
(pop)
  

; Formula after simplification does not
(push)
(assert
   (=  

        (concat (add_single (concat (select TMP_ARR_64_8_390470 #x00000006ffffffeb)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffea)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe9)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe8))
                    (concat (select TMP_ARR_64_8_390470 #x00000006ffffffef)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffee)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffed)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffec)))
        (add_single (concat (select TMP_ARR_64_8_390470 #x00000006ffffffe3)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe2)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe1)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe0))
                    (concat (select TMP_ARR_64_8_390470 #x00000006ffffffe7)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe6)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe5)
                            (select TMP_ARR_64_8_390470 #x00000006ffffffe4)))
        (add_single #xe2ea5321 #x7adc0962) ;<-- errror
        #x80000000)




(concat #x5c67c78cf40e6fab #x7adc096200000000)
  
)

)

(check-sat)
(pop)
