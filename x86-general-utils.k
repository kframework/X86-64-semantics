module STRING-WRAPPER
  imports STRING
endmodule

module MINT-WRAPPER
  imports MINT

  /*@
    Bitwise negation
  */  
  syntax MInt ::= negateMInt(MInt)   [function]
  rule negateMInt(MI) => xorMInt(MI, mi(bitwidthMInt(MI), -1))

  /*@ 
    Adding MInt List.
  */  
  syntax MInts ::= List{MInt, ""}
  syntax MInt ::= addListMInt(Int, MInts) [function]

  rule addListMInt(W:Int, MI1:MInt MI2:MInt Rest:MInts) => 
    addMInt(addMInt(MI1, MI2), addListMInt(W, Rest))
  rule addListMInt(W:Int, MI:MInt .MInts) => MI
  rule addListMInt(W:Int, .MInts) => mi(W,0) 

  /*@ 
    Conversion from/to MInt and Bool
  */  
  syntax Bool ::= toBool(MInt) [function]
  rule toBool(MI) => true
    requires uvalueMInt(MI) =/=Int 0
  rule toBool(MI) => false
    requires uvalueMInt(MI) ==Int 0

  syntax MInt ::= fromBool(Bool, Int) [function]
  rule fromBool(B:Bool, W:Int) => mi(W,1)
    requires B
  rule fromBool(B:Bool, W:Int) => mi(W,0)
    requires notBool B

  /*@ truncate(MI, To) Truncates a mi(From,V1) to mi(To,V2)
    Todo : type check
  */
  syntax MInt ::= truncate(MInt, Int) [function]

  rule truncate(MI, To) => 
    mi(To, svalueMInt(andMInt(MI, mi(bitwidthMInt(MI),umaxMInt(To)))))

  /*@ 
    zeroExtend(MI, N): Zero extend MInt MI to a MInt of
      N bitwidth.
  */
  syntax MInt ::= zeroExtend(MInt, Int) [function]

  rule zeroExtend(MI:MInt, N:Int) => mi(N, uvalueMInt(MI))
  requires N >Int bitwidthMInt(MI)
  rule zeroExtend(MI:MInt, N:Int) => MI
  requires N <=Int bitwidthMInt(MI)

  /*@ 
    updateLSB(MITarget, MISrc): 
      Let MITarget == mi(WT, VT)
      Let MISrc == mi(WS, VS)
      updateLSB updates the lower WS bits of VT with VS.
  */
  syntax MInt ::= updateLSB(MInt, MInt) [function]

  rule updateLSB(MITarget, MISrc) => MISrc
    requires bitwidthMInt(MISrc) >=Int bitwidthMInt(MITarget)

  rule updateLSB(MITarget, MISrc) => 
    orMInt(
      andMInt(
          MITarget, 
          negateMInt(
            mi(bitwidthMInt(MITarget), umaxMInt(bitwidthMInt(MISrc)))
          )
      ),
      zeroExtend(MISrc, bitwidthMInt(MITarget))
    )
    requires bitwidthMInt(MISrc) <Int bitwidthMInt(MITarget)

  /*@ 
    signExtend(MI, N): Sign extend MInt MI to a MInt of
      N bitwidth.
  */
  syntax MInt ::= signExtend(MInt, Int) [function]

  rule signExtend(MI:MInt, N:Int) => mi(N, svalueMInt(MI))
      requires N >Int bitwidthMInt(MI)
  
  rule signExtend(MI:MInt, N:Int) => MI
    requires N <=Int bitwidthMInt(MI)

  /*@ 
    popCount(MI, N): Count the number of set bits, V, in MI and
    create a Mint(N, V)
  */
  syntax MInt ::= popCount(MInt) [function]
  syntax MInt ::= countOnes(MInt, Int) [function]

  rule popCount(MI:MInt) => countOnes(MI, 0)

  rule countOnes(MI:MInt, C:Int) => 
    countOnes(andMInt(MI, subMInt(MI, mi(bitwidthMInt(MI),1))), C +Int 1)
      requires notBool zeroMInt(MI)

  rule countOnes(MI:MInt, C:Int) => mi(bitwidthMInt(MI), C) 
      requires zeroMInt(MI)

endmodule


module X86-GENERAL-UTILS
  imports MINT-WRAPPER
  imports STRING-WRAPPER
endmodule
























