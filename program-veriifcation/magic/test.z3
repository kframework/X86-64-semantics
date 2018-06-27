(declare-const I0 (_ BitVec 8))
(declare-const I1 (_ BitVec 8))
(declare-const I2 (_ BitVec 8))
(declare-const I3 (_ BitVec 8))
(declare-const I4 (_ BitVec 8))

(push)
(assert
  (and
    (= (bvadd I0 #b10010011) #x00) ; I0 + 147 == 0
    (= (bvadd I1 #b10011111) #x00) ; I1 + 159 == 0
    (= (bvadd I2 #b10011001) #x00) ; I2 + 153 == 0
    (= (bvadd I3 #b10010111) #x00) ; I3 + 151 == 0 
    (= (bvadd I4 #b10011101) #x00) ; I4 + 157 == 0

    (bvuge I0 #x00) (bvult I0 #xff)
    (bvuge I1 #x00) (bvult I1 #xff)
    (bvuge I2 #x00) (bvult I2 #xff)
    (bvuge I3 #x00) (bvult I3 #xff)
    (bvuge I4 #x00) (bvult I4 #xff)
  )
  
)

(check-sat)
(get-model)
(pop)

  
(push)
(assert
  (and
    (= (bvadd I0 #b10010011) #x00) ; I0 + 147 == 0
    (= (bvadd I1 #b10011111) #x00) ; I1 + 159 == 0
    (= (bvadd I2 #b10011001) #x00) ; I2 + 153 == 0
    (= (bvadd I3 #b10010111) #x00) ; I3 + 151 == 0 
    (not (= (bvadd I4 #b10011101) #x00)) ; I4 + 157 != 0

    (bvuge I0 #x00) (bvult I0 #xff)
    (bvuge I1 #x00) (bvult I1 #xff)
    (bvuge I2 #x00) (bvult I2 #xff)
    (bvuge I3 #x00) (bvult I3 #xff)
    (bvuge I4 #x00) (bvult I4 #xff)
  )
  
)

(check-sat)
(get-model)
(pop)

(push)
(assert
  (and
    (not (= (bvadd I0 #b10010011) #x00)) ; I0 + 147 == 0
    (= (bvadd I1 #b10011111) #x00) ; I1 + 159 == 0
    (= (bvadd I2 #b10011001) #x00) ; I2 + 153 == 0
    (= (bvadd I3 #b10010111) #x00) ; I3 + 151 == 0 
    (= (bvadd I4 #b10011101) #x00) ; I4 + 157 != 0

    (bvuge I0 #x00) (bvult I0 #xff)
    (bvuge I1 #x00) (bvult I1 #xff)
    (bvuge I2 #x00) (bvult I2 #xff)
    (bvuge I3 #x00) (bvult I3 #xff)
    (bvuge I4 #x00) (bvult I4 #xff)
  )
  
)

(check-sat)
(get-model)
(pop)
