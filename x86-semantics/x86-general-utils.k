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

  /*@ truncate(MI, From, To) Truncates a mi(From,V1) to mi(To,V2)
    Todo : type check
  */
  syntax MInt ::= truncate(MInt, Int, Int) [function]

  rule truncate(MI, From, To) => 
    mi(To, svalueMInt(andMInt(MI, mi(From,umaxMInt(To)))))

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
endmodule


module X86-GENERAL-UTILS
  imports MINT-WRAPPER
  imports STRING-WRAPPER
endmodule
